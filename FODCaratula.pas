unit FODCaratula;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs;

type
  od_file = class(TFileOpenDialog)
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
  RegisterComponents('Samples', [od_file]);
end;

end.
