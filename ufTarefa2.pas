unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufModelo, Vcl.StdCtrls;

type
  TfTarefa2 = class(TfModelo)
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    Action := caFree;
    ftarefa2:=nil;
end;

end.
