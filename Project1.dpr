program Project1;

uses
  Vcl.Forms,
  prueba in 'prueba.pas' {fPrincipal},
  AltaClientes in 'AltaClientes.pas' {fAltaClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TfAltaClientes, fAltaClientes);
  Application.Run;
end.
