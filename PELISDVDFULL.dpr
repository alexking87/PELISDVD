program PELISDVDFULL;

uses
  Vcl.Forms,
  prueba in 'prueba.pas' {fPrincipal},
  AltaClientes in 'AltaClientes.pas' {fAltaClientes},
  modulo in 'modulo.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TfAltaClientes, fAltaClientes);
  Application.Run;
end.
