program PELISDVDFULL;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {fPrincipal},
  AltaClientes in 'AltaClientes.pas' {fAltaClientes},
  AltaPeliculas in 'AltaPeliculas.pas' {fAltaPeliculas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TfAltaClientes, fAltaClientes);
  Application.CreateForm(TfAltaPeliculas, fAltaPeliculas);
  //Application.CreateForm(Tmodulos, modulos);
  Application.Run;
end.
