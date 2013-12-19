unit AltaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,modulo,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfAltaClientes = class(TForm)
    cmbSalir: TButton;
    cmbGrabar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    txtCorreo: TEdit;
    txtDomicilio: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtTelefono: TEdit;
    afi_clientes: TADOStoredProc;
    clientes: TDataSource;
    txtApeNom: TDBEdit;
    DBEdit1: TDBEdit;
    procedure cmbGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fAltaClientes: TfAltaClientes;

implementation
  function validar(ape,tel:String): boolean;
  begin
    if ape.IsEmpty = true then begin
      ShowMessage('Ingrese Apellido y nombre del cliente');
      Result := false;
    end;
    if tel.IsEmpty then begin
      ShowMessage('Ingrese Telefono del cliente');
      Result := false;
    end;
    Result:=true;
  end;
{$R *.dfm}

procedure TfAltaClientes.cmbGrabarClick(Sender: TObject);
begin
   if validar(txtApeNom.Text ,txtTelefono.Text)=true then begin
     //seteo de parametros
     afi_clientes.Parameters.ParamByName('prm_ape_nom').Value := String(txtApeNom.Text);
     afi_clientes.Parameters.ParamByName('prm_tel').Value := txtTelefono.Text;
     afi_clientes.Parameters.ParamByName('prm_domicilio').Value := txtDomicilio.Text;
     afi_clientes.Parameters.ParamByName('prm_correo').Value := txtCorreo.Text;
     afi_clientes.Parameters.ParamByName('prm_id').Value := Null;
     afi_clientes.Parameters.ParamByName('prm_baja').Value := 'N';
     afi_clientes.Open;
   end;
end;

end.
