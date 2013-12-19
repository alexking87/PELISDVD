unit sp_afi_clientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  sp_afi_clientes = class(TADOStoredProc)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [sp_afi_clientes]);
end;

end.
