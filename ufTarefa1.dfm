object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tarefa 1'
  ClientHeight = 284
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblColunas: TLabel
    Left = 8
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTabelas: TLabel
    Left = 168
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lblCondicoes: TLabel
    Left = 327
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSqlGerado: TLabel
    Left = 8
    Top = 128
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object MemoColuna: TMemo
    Left = 8
    Top = 35
    Width = 129
    Height = 87
    Hint = 'Colunas'
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object MemoTabelas: TMemo
    Left = 168
    Top = 35
    Width = 129
    Height = 89
    Hint = 'Tabelas'
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object MemoCondicoes: TMemo
    Left = 327
    Top = 35
    Width = 146
    Height = 89
    Hint = 'Condi'#231#245'es'
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object MemoSQL: TMemo
    Left = 8
    Top = 147
    Width = 465
    Height = 89
    CharCase = ecUpperCase
    Lines.Strings = (
      'RESULTADO SCRIPT')
    TabOrder = 3
  end
  object Button1: TButton
    Left = 488
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 488
    Top = 211
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = Button2Click
  end
end
