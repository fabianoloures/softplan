inherited fTarefa3: TfTarefa3
  Caption = 'Tarefa 3'
  ClientHeight = 275
  ClientWidth = 731
  Position = poDesktopCenter
  OnCreate = FormCreate
  ExplicitWidth = 747
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  object lNomeDoProjeto: TLabel
    Left = 8
    Top = 8
    Width = 88
    Height = 13
    Caption = 'Valores do Projeto'
  end
  object dbgProjetos: TDBGrid
    Left = 8
    Top = 27
    Width = 441
    Height = 240
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 504
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 455
    Top = 76
    Width = 124
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 2
    OnClick = Button2Click
  end
  object edtValorTotal: TEdit
    Left = 602
    Top = 29
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '0.00'
  end
  object edtTotalDivisao: TEdit
    Left = 602
    Top = 78
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
    Text = '0.00'
  end
end
