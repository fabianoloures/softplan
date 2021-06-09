unit TspQuery;

interface

uses
  System.SysUtils, System.Classes;

type
  TFDQuery = class(TComponent)
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
  RegisterComponents('TspQuery', [TFDQuery]);
end;

end.
