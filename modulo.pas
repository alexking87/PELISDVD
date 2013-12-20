unit modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tmodulos = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    var
  modulo: TModulos;
  ADO: TADOConnection;
  end;



implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tmodulos.DataModuleCreate(Sender: TObject);
begin
   ADO.Connected := true;
end;

end.
