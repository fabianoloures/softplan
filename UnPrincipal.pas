unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    arefa11: TMenuItem;
    arefa21: TMenuItem;
    arefa31: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure arefa11Click(Sender: TObject);
    procedure arefa21Click(Sender: TObject);
    procedure arefa31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, uTarefa3;

procedure TfPrincipal.arefa11Click(Sender: TObject);
begin

inherited;
try
  if not Assigned(fTarefa1) then
    ftarefa1 := TfTarefa1.Create(Self);
    ftarefa1.Show;
except on
  Exception do
    MessageDlg('Formulário indisponível no momento!',mtInformation, [mbOk],0);

end;

end;


procedure TfPrincipal.arefa21Click(Sender: TObject);
begin
try
  if not Assigned(fTarefa2) then
    ftarefa2 := TfTarefa2.Create(Self);
    ftarefa2.Show;
except on
  Exception do
    MessageDlg('Formulário indisponível no momento!',mtInformation, [mbOk],0);

end;

end;

procedure TfPrincipal.arefa31Click(Sender: TObject);
begin
 try
  if not Assigned(fTarefa3) then
    ftarefa3 := TfTarefa3.Create(Self);
    ftarefa3.Show;
except on
  Exception do
    MessageDlg('Formulário indisponível no momento!',mtInformation, [mbOk],0);

end;

end;

procedure TfPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
