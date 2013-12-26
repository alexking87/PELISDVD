unit AltaPeliculas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Data.Win.ADODB,modulo,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBLookup,FileCtrl;

type
  TfAltaPeliculas = class(TForm)
    txtNombre: TEdit;
    txtAño: TEdit;
    txtCaratula: TEdit;
    comCantDVDs: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbBuscar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cmbGuardar: TButton;
    cmbLimpiar: TButton;
    cmbSalir: TButton;
    afi_peliculas: TADOQuery;
    clientes: TDataSource;
    ADO: TADOConnection;
    afi_peliculas_idiomas: TADOQuery;
    afi_generos_peliculas: TADOQuery;
    ds_generos: TDataSource;
    ds_idiomas: TDataSource;
    afs_idiomas: TADOQuery;
    afs_generos: TADOQuery;
    ODCaratula: TOpenDialog;
    dbgIdiomas: TDBGrid;
    dbgGeneros: TDBGrid;
    procedure txtAñoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbBuscarClick(Sender: TObject);
    procedure cmbGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAltaPeliculas: TfAltaPeliculas;

implementation
  function validar(nom,año:String; gen:TDBGrid; idi:TDBGrid): boolean;
  begin
    if nom.IsEmpty = true then begin
      ShowMessage('Ingrese el nombre de la pelicula');
      Result := false;
      exit;
    end;
    if año.IsEmpty then begin
      ShowMessage('Ingrese el año de edición de la pelicula');
      Result := false;
      exit;
    end else
      if StrToInt(año) <= 0 then begin
        ShowMessage('El año de la pelicula no puede ser nulo');
        Result := false;
        exit;
      end;
    //valido que al menos seleccione un idioma
    if idi.SelectedRows.Count = 0 then begin
        ShowMessage('Debe seleccionar al menos un idioma para asociar a la pelicula');
        Result := false;
        exit;
    end;
    //valido que al menos seleccione un genero
    if gen.SelectedRows.Count = 0 then begin
        ShowMessage('Debe seleccionar al menos un genero para asociar a la pelicula');
        Result := false;
        exit;
    end;
    Result:=true;
  end;
{$R *.dfm}

procedure TfAltaPeliculas.cmbBuscarClick(Sender: TObject);
var
  ruta:String;
begin
  ODCaratula.Execute;
  txtCaratula.Text:=ODCaratula.FileName;
end;

procedure TfAltaPeliculas.cmbGuardarClick(Sender: TObject);
var I,id_peli, id_peli_genero:integer;
begin
  if validar(txtNombre.Text,txtAño.Text,dbgIdiomas,dbgGeneros) = true then begin
     ADO.Connected:=true;
     //alta en peliculas
     afi_peliculas.Active := false;
       afi_peliculas.Parameters.ParamByName('prm_nombre').Value := String(txtNombre.Text);
       afi_peliculas.Parameters.ParamByName('prm_año').Value := txtAño.Text;
       afi_peliculas.Parameters.ParamByName('prm_caratula').Value := txtCaratula.Text;
       afi_peliculas.Parameters.ParamByName('prm_cant_dvds').Value := Integer(comCantDvds.SelText);
       afi_peliculas.Parameters.ParamByName('prm_id').Value := Null;
       afi_peliculas.Parameters.ParamByName('prm_baja').Value := 'N';
     afi_peliculas.Active := true;
     id_peli :=  Integer(afi_peliculas.Parameters.ParamByName('pro_id').Value);
     if id_peli = -1 then
        showmessage('Ocurrio un error al grabar la pelicula');
     //alta de los idiomas asociados a la pelicula
     //alta de los generos asociados a la pelicula
      with dbgGeneros.DataSource.DataSet do begin
        afi_generos_peliculas.Parameters.ParamByName('prm_id_pelicula').Value := id_peli;
        for i := 0 to dbgGeneros.SelectedRows.Count-1 do
        begin
          GotoBookmark(Pointer(dbgGeneros.SelectedRows.Items[i]));
          afi_generos_peliculas.Active := false;
            afi_generos_peliculas.Parameters.ParamByName('prm_id_genero').Value :=  afi_generos_peliculas.FieldByName('id_genero').AsString;;
            afi_generos_peliculas.Parameters.ParamByName('prm_orden').Value := I;
            afi_generos_peliculas.Parameters.ParamByName('prm_baja').Value := 'N';
          afi_generos_peliculas.Active := true;
        id_peli_genero :=  Integer(afi_peliculas.Parameters.ParamByName('pro_id').Value);
        if id_peli_genero = -1 then
            showmessage('Ocurrio al asociar los generos a la pelicula');
      end;
     end;
     ADO.Connected:=false;
  end;
end;

procedure TfAltaPeliculas.txtAñoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

end.
