unit AltaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TfAltaClientes = class(TForm)
    cmbSalir: TButton;
    cmbGrabar: TButton;
    txtApeNom: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtCorreo: TEdit;
    txtDomicilio: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtTelefono: TEdit;
    ADOStoredProc1: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAltaClientes: TfAltaClientes;

implementation

{$R *.dfm}

end.
