unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,ufModelo;

type
  TfTarefa1 = class(TfModelo)
    MemoColuna: TMemo;
    lblColunas: TLabel;
    lblTabelas: TLabel;
    lblCondicoes: TLabel;
    lblSqlGerado: TLabel;
    MemoTabelas: TMemo;
    MemoCondicoes: TMemo;
    MemoSQL: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure GeraSQL(strColuna,strTabela,strCondicao : String);
    procedure Button1Click(Sender: TObject);
    function validaCamposObrigatorios : String;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;
  strScriptSQL, strWhere, strListaCampoObrigatorio : String;


implementation

{$R *.dfm}

procedure TfTarefa1.Button1Click(Sender: TObject);
var
  mensagem : string;
begin
    mensagem := validaCamposObrigatorios;

 if  mensagem = ''  then
     GeraSQL(MemoColuna.Text,MemoTabelas.Text,MemoCondicoes.Text)
 else
    ShowMessage('Favor preencher os campos abaixo: '
                      + chr(13)
                      +  mensagem
          );

end;

procedure TfTarefa1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    ftarefa1:=nil;
end;

procedure TfTarefa1.GeraSQL(strColuna, strTabela, strCondicao: String);

var
 quantidadeItem : integer;
 montaLinhaColunas, montaLinhaTabelas, montaLinhaCondicoes : String;
begin

  quantidadeItem := 0;
  montaLinhaColunas :='';
  montaLinhaTabelas := '';
  montaLinhaCondicoes := '';
  strScriptSQL := '';

  if not ( (strColuna.IsEmpty) or (strTabela.IsEmpty) or (strCondicao.IsEmpty) ) then
   begin
      strScriptSQL := ' select ';

     for quantidadeItem := 0 to MemoColuna.Lines.Count -1 do
        montaLinhaColunas := montaLinhaColunas + MemoColuna.Lines.Strings[quantidadeItem]  + chr(13) + ',';

     for quantidadeItem := 0 to MemoTabelas.Lines.Count -1 do
        montaLinhaTabelas := montaLinhaTabelas + MemoTabelas.Lines.Strings[quantidadeItem]  + chr(13) + ','  ;

     for quantidadeItem := 0 to MemoCondicoes.Lines.Count -1 do
        if quantidadeItem = 0 then
           montaLinhaCondicoes := 'Where ' + MemoTabelas.Lines.Strings[quantidadeItem]
        else
          montaLinhaCondicoes := 'and '  +  montaLinhaCondicoes +  MemoTabelas.Lines.Strings[quantidadeItem] ;

     MemoSQL.Clear;

     MemoSQL.Text := 'select '  +  montaLinhaColunas + 'From '  + montaLinhaTabelas + chr(13) + montaLinhaCondicoes

  end;
end;

function TfTarefa1.validaCamposObrigatorios: String;
var
numItem : Integer;
begin
   strListaCampoObrigatorio := '';

  for numItem:= 0 to (fTarefa1.ComponentCount -1) do
  begin

    fTarefa1.Components[fTarefa1.ComponentIndex];

    if (fTarefa1.Components[numItem] is TMemo) then
    begin
        if trim(TMemo(fTarefa1.Components[numItem]).Text) = '' then
           strListaCampoObrigatorio := strListaCampoObrigatorio + chr(13) + TMemo(fTarefa1.Components[numItem]).Hint ;
     end;

  end;

  result := strListaCampoObrigatorio;

end;

end.
