inherited FrmCadastroPais: TFrmCadastroPais
  Caption = 'Cadastro de Pais'
  PixelsPerInch = 96
  TextHeight = 13
  object TLblPais: TRzLabel [0]
    Left = 152
    Top = 11
    Width = 34
    Height = 13
    Caption = 'Pais *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 10
    Top = 224
    ExplicitLeft = 10
    ExplicitTop = 224
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 332
    Top = 224
    ExplicitLeft = 332
    ExplicitTop = 224
  end
  object TLblSigla: TRzLabel [3]
    Left = 442
    Top = 11
    Width = 39
    Height = 13
    Caption = 'Sigla *'
  end
  object TLblDDI: TRzLabel [4]
    Left = 442
    Top = 59
    Width = 34
    Height = 13
    Caption = 'DDI *'
  end
  object TLblIdPais: TRzLabel [5]
    Left = 8
    Top = 11
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
    Left = 448
    Top = 224
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    ExplicitLeft = 448
    ExplicitTop = 224
  end
  object TEdtPais: TRzExpandEdit [9]
    Left = 192
    Top = 8
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    FrameHotTrack = True
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    FrameVisible = True
    MaxLength = 50
    TabOrder = 3
    OnKeyPress = TEdtPaisKeyPress
    ExpandedWidth = 0
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 132
    Top = 224
    Enabled = False
    TabOrder = 5
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    ExplicitLeft = 132
    ExplicitTop = 224
  end
  object TEdtSigla: TRzEdit [12]
    Left = 496
    Top = 8
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    FrameHotTrack = True
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    FrameVisible = True
    MaxLength = 3
    OEMConvert = True
    TabOrder = 6
    OnExit = TEdtSiglaExit
    OnKeyPress = TEdtSiglaKeyPress
  end
  object TEdtDDI: TRzEdit [13]
    Left = 495
    Top = 56
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    FrameHotColor = clRed
    FrameHotTrack = True
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    FrameVisible = True
    MaxLength = 3
    TabOrder = 7
    OnExit = TEdtDDIExit
    OnKeyPress = TEdtDDIKeyPress
  end
  object TEdtIdPais: TRzEdit [14]
    Left = 40
    Top = 8
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    FrameHotTrack = True
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    FrameVisible = True
    TabOrder = 8
    OnKeyPress = TEdtIdPaisKeyPress
  end
end
