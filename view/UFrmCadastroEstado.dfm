inherited FrmCadastroEstado: TFrmCadastroEstado
  Caption = 'Cadastro de Estado'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TLblDataCadastro: TRzLabel
    Left = 8
    Top = 235
    ExplicitLeft = 8
    ExplicitTop = 235
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 323
    Top = 235
    ExplicitLeft = 323
    ExplicitTop = 235
  end
  object TLblId: TRzLabel [2]
    Left = 16
    Top = 16
    Width = 25
    Height = 13
    Caption = 'ID *'
  end
  object TLblEstado: TRzLabel [3]
    Left = 160
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Estado *'
  end
  object TLblDDD: TRzLabel [4]
    Left = 441
    Top = 16
    Width = 38
    Height = 13
    Caption = 'DDD *'
  end
  object TLblSigla: TRzLabel [5]
    Left = 16
    Top = 72
    Width = 39
    Height = 13
    Caption = 'Sigla *'
  end
  object TLblPais: TRzLabel [6]
    Left = 160
    Top = 128
    Width = 34
    Height = 13
    Caption = 'Pais *'
  end
  object TLblIDPais: TRzLabel [7]
    Left = 16
    Top = 128
    Width = 52
    Height = 13
    Caption = 'ID Pais *'
  end
  inherited TBtnSalvar: TRzButton
    OnClick = TBtnSalvarClick
  end
  inherited TBtnLimpar: TRzButton
    OnClick = TBtnLimparClick
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 440
    Top = 235
    ExplicitLeft = 440
    ExplicitTop = 235
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 130
    Top = 235
    ExplicitLeft = 130
    ExplicitTop = 235
  end
  object TEdtIdEstado: TRzEdit
    Left = 72
    Top = 13
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 5
    OnKeyPress = TEdtIdEstadoKeyPress
  end
  object TEdtEstado: TRzEdit
    Left = 226
    Top = 13
    Width = 183
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 6
    OnKeyPress = TEdtEstadoKeyPress
  end
  object TEdtDDD: TRzEdit
    Left = 505
    Top = 13
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 7
    OnExit = TEdtDDDExit
    OnKeyPress = TEdtDDDKeyPress
  end
  object TEdtSigla: TRzEdit
    Left = 72
    Top = 69
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 8
    OnExit = TEdtSiglaExit
    OnKeyPress = TEdtSiglaKeyPress
  end
  object TEdtPais: TRzEdit
    Left = 226
    Top = 125
    Width = 183
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    MaxLength = 50
    TabOrder = 9
    OnKeyPress = TEdtPaisKeyPress
  end
  object TEdtIdPais: TRzEdit
    Left = 74
    Top = 125
    Width = 63
    Height = 21
    TabOrder = 10
    OnExit = TEdtIdPaisExit
    OnKeyPress = TEdtIdPaisKeyPress
  end
  object TBtnBuscarPais: TRzBitBtn
    Left = 415
    Top = 122
    Width = 74
    FrameColor = 7617536
    BiDiMode = bdLeftToRight
    Caption = 'Buscar'
    Color = clWindow
    HotTrack = True
    HotTrackColor = clBlack
    HotTrackColorType = htctComplement
    ParentBiDiMode = False
    TabOrder = 11
    OnClick = TBtnBuscarPaisClick
  end
end
