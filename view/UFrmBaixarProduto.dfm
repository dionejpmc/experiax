object FrmBaixarProduto: TFrmBaixarProduto
  Left = 0
  Top = 0
  Caption = 'Baixar Produto '
  ClientHeight = 159
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TLblIdProduto: TRzLabel
    Left = 8
    Top = 11
    Width = 60
    Height = 13
    Caption = 'Id Produto *'
  end
  object TLblMarca: TRzLabel
    Left = 8
    Top = 53
    Width = 38
    Height = 13
    Caption = 'Marca *'
  end
  object TLblProduto: TRzLabel
    Left = 151
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Produto *'
  end
  object TLblQTDE: TRzLabel
    Left = 296
    Top = 53
    Width = 65
    Height = 13
    Caption = 'Quantidade *'
  end
  object TLblMotivo: TRzLabel
    Left = 8
    Top = 93
    Width = 41
    Height = 13
    Caption = 'Motivo *'
  end
  object TLblDataBaixa: TRzLabel
    Left = 8
    Top = 138
    Width = 61
    Height = 13
    Caption = 'Data Baixa *'
  end
  object TEdtMarca: TRzEdit
    Left = 81
    Top = 50
    Width = 209
    Height = 21
    MaxLength = 50
    TabOrder = 0
  end
  object TEdtIdProduto: TRzEdit
    Left = 81
    Top = 8
    Width = 64
    Height = 21
    TabOrder = 1
  end
  object TEdtProduto: TRzEdit
    Left = 204
    Top = 8
    Width = 237
    Height = 21
    TabOrder = 2
  end
  object TEdtQTDE: TRzEdit
    Left = 367
    Top = 50
    Width = 73
    Height = 21
    MaxLength = 5
    TabOrder = 3
  end
  object TEdtMotivo: TRzEdit
    Left = 81
    Top = 90
    Width = 360
    Height = 21
    MaxLength = 100
    TabOrder = 4
  end
  object DateTime1: TRzDateTimePicker
    Left = 81
    Top = 135
    Width = 105
    Height = 21
    Date = 41222.718418217590000000
    Time = 41222.718418217590000000
    TabOrder = 5
  end
  object RzBitBtn1: TRzBitBtn
    Left = 453
    Top = 8
    Width = 60
    Caption = 'RzBitBtn1'
    TabOrder = 6
  end
end
