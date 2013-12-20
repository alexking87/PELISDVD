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
    Label3: TLabel;
    Label4: TLabel;
    afi_clientes: TADOQuery;
    clientes: TDataSource;
    txtApeNom: TEdit;
    txtCorreo: TEdit;
    txtTelefono: TEdit;
    txtDomicilio: TEdit;
    ADO: TADOConnection;
    procedure cmbGrabarClick(Sender: TObject);
    procedure txtTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
var valor:integer;
    resultado:integer;
begin
   if validar(txtApeNom.Text ,txtTelefono.Text)=true then begin
     //seteo de parametros
     ADO.Connected:=true;
     afi_clientes.Parameters.ParamByName('prm_ape_nom').Value := String(txtApeNom.Text);
     afi_clientes.Parameters.ParamByName('prm_tel').Value := txtTelefono.Text;
     afi_clientes.Parameters.ParamByName('prm_domicilio').Value := txtDomicilio.Text;
     afi_clientes.Parameters.ParamByName('prm_correo').Value := txtCorreo.Text;
     afi_clientes.Parameters.ParamByName('prm_id').Value := Null;
     afi_clientes.Parameters.ParamByName('prm_baja').Value := 'N';
     valor :=  Integer(afi_clientes.Parameters.ParamByName('pro_id').Value);
     if valor = 1 then
        showmessage('Alta de cliente satisfactoria')
     else
        showmessage('Ocurrio un error al grabar el alta');
     ADO.Connected:=false;
   end;
end;

procedure TfAltaClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Action = caHide then
  begin
     Hide;
     Exit;
  end;
end;

procedure TfAltaClientes.txtTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

end.
