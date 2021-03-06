unit uTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufModelo, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DBClient;

type
  TfTarefa3 = class(TfModelo)
    lNomeDoProjeto: TLabel;
    dbgProjetos: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    edtValorTotal: TEdit;
    edtTotalDivisao: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function Soma: Currency;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function TotalDivisao: Currency;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;
  dataSource: TDataSource;
  ClientDataSet: TClientDataSet;
  valores: array [1 .. 10] of Currency;
  valoresDividido: array [1 .. 10] of Currency;
  quantidadeRegistro: integer;

implementation

{$R *.dfm}

procedure TfTarefa3.Button1Click(Sender: TObject);
begin

  edtValorTotal.Text := FormatFloat('#,0.00', Soma);

end;

procedure TfTarefa3.Button2Click(Sender: TObject);
begin
  // inherited ;
  edtTotalDivisao.Text := FormatFloat('#,0.00', TotalDivisao);

end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(ClientDataSet);
  FreeAndNil(dataSource);
  Action := caFree;
  fTarefa3 := nil;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  // inherited;
  ClientDataSet := TClientDataSet.Create(nil);

  ClientDataSet.FieldDefs.Add('IdProjeto', ftInteger);
  ClientDataSet.FieldDefs.Add('Projeto', ftString, 15);
  ClientDataSet.FieldDefs.Add('Valor', ftFloat);

  ClientDataSet.CreateDataSet;

  dataSource := TDataSource.Create(nil);

  ClientDataSet.Aggregates.Add.Active := true;

  for quantidadeRegistro := 1 to 10 do
  begin
    ClientDataSet.Append;
    ClientDataSet.FieldByName('IdProjeto').AsInteger := Random(11);
    ClientDataSet.FieldByName('Projeto').AsString := 'Projeto - ' +
      IntToStr(Random(11));
    ClientDataSet.FieldByName('Valor').AsCurrency := Random(11);
    ClientDataSet.Post;
  end;

  dbgProjetos.dataSource := dataSource;

  dataSource.DataSet := ClientDataSet;

end;

function TfTarefa3.Soma: Currency;
var
  valor: Currency;
begin

  valor := 0;

  ClientDataSet.First;
  while not ClientDataSet.eof do
  begin
    valor := valor + ClientDataSet.FieldByName('Valor').AsCurrency;
    ClientDataSet.Next;
  end;

  result := valor

end;

function TfTarefa3.TotalDivisao: Currency;
var
  totalDivisoes: Currency;
begin
  ClientDataSet.First;

  try
    while not ClientDataSet.eof do
    begin
      valores[quantidadeRegistro] := ClientDataSet.FieldByName('Valor')
        .AsCurrency;
      ClientDataSet.Next;
    end;

    for quantidadeRegistro := 1 to ClientDataSet.RecordCount - 1 do
    begin
      valoresDividido[quantidadeRegistro] := valores[quantidadeRegistro + 1] /
        valores[quantidadeRegistro];

      totalDivisoes := totalDivisoes + valoresDividido[quantidadeRegistro];
    end;

    result := TotalDivisao;

  Except
    ShowMessage('Ocorreu um problema no c?lculo!');

  end;

end;

end.
