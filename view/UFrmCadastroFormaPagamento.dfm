inherited FrmCadastroFP: TFrmCadastroFP
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 297
  ClientWidth = 572
  ExplicitWidth = 588
  ExplicitHeight = 335
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFormaPagemento: TRzLabel [0]
    Left = 150
    Top = 8
    Width = 133
    Height = 13
    Caption = 'Forma de Pagemento *'
    LightTextStyle = True
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 8
    Top = 218
    ExplicitLeft = 8
    ExplicitTop = 218
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 305
    Top = 218
    ExplicitLeft = 305
    ExplicitTop = 218
  end
  object TLblId: TRzLabel [3]
    Left = 8
    Top = 8
    Width = 25
    Height = 13
    Caption = 'ID *'
  end
  inherited TBtnSalvar: TRzButton
    OnClick = TBtnSalvarClick
  end
  inherited TBtnLimpar: TRzButton
    OnClick = TBtnLimparClick
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 433
    Top = 216
    FrameHotStyle = fsButtonDown
    ExplicitLeft = 433
    ExplicitTop = 216
  end
  object TEdtFormaPagamento: TRzEdit [7]
    Left = 289
    Top = 8
    Width = 273
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 3
    OnKeyPress = TEdtFormaPagamentoKeyPress
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 132
    Top = 216
    TabOrder = 5
    ExplicitLeft = 132
    ExplicitTop = 216
  end
  object TEdtId: TRzEdit
    Left = 64
    Top = 8
    Width = 62
    Height = 21
    Enabled = False
    TabOrder = 6
  end
end
