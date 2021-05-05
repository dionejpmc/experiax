inherited FrmCadastroCidade: TFrmCadastroCidade
  Caption = 'Cadastro de Cidade'
  ClientHeight = 285
  ClientWidth = 623
  ExplicitWidth = 639
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCidade: TRzLabel [0]
    Left = 144
    Top = 13
    Width = 51
    Height = 13
    Caption = 'Cidade *'
  end
  object TLblEstado: TRzLabel [1]
    Left = 144
    Top = 56
    Width = 25
    Height = 13
    Caption = 'UF *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 6
    Top = 233
    ExplicitLeft = 6
    ExplicitTop = 233
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 358
    Top = 233
    ExplicitLeft = 358
    ExplicitTop = 233
  end
  object TLblSigla: TRzLabel [4]
    Left = 10
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Sigla'
  end
  object TLblID: TRzLabel [5]
    Left = 8
    Top = 11
    Width = 25
    Height = 13
    Caption = 'ID *'
  end
  object TLblIDEstado: TRzLabel [6]
    Left = 8
    Top = 55
    Width = 43
    Height = 13
    Caption = 'ID UF *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 258
    OnClick = TBtnSalvarClick
    ExplicitTop = 258
  end
  inherited TBtnLimpar: TRzButton
    Left = 271
    Top = 258
    OnClick = TBtnLimparClick
    ExplicitLeft = 271
    ExplicitTop = 258
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 486
    Top = 231
    TabOrder = 5
    ExplicitLeft = 486
    ExplicitTop = 231
  end
  object TEdtCidade: TRzEdit [10]
    Left = 208
    Top = 9
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
    OnKeyPress = TEdtCidadeKeyPress
  end
  object TEdtEstado: TRzEdit [11]
    Left = 208
    Top = 57
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    FrameHotTrack = True
    FrameVisible = True
    MaxLength = 50
    TabOrder = 6
    OnKeyPress = TEdtEstadoKeyPress
  end
  object TBtnBuscarEstado: TRzButton [12]
    Left = 415
    Top = 55
    FrameColor = 7617536
    Caption = 'Buscar'
    Color = 15791348
    HotTrack = True
    TabOrder = 4
    OnClick = TBtnBuscarEstadoClick
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 131
    Top = 231
    Enabled = False
    TabOrder = 7
    ExplicitLeft = 131
    ExplicitTop = 231
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 543
    Top = 258
    TabOrder = 3
    ExplicitLeft = 543
    ExplicitTop = 258
  end
  object TEdtSigla: TRzEdit [15]
    Left = 65
    Top = 93
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    MaxLength = 3
    TabOrder = 8
    OnKeyPress = TEdtSiglaKeyPress
  end
  object TEdtIdCidade: TRzEdit [16]
    Left = 65
    Top = 8
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 9
    OnKeyPress = TEdtIdCidadeKeyPress
  end
  object TEdtIdEstado: TRzEdit [17]
    Left = 65
    Top = 52
    Width = 57
    Height = 21
    TabOrder = 10
    OnExit = TEdtIdEstadoExit
    OnKeyPress = TEdtIdEstadoKeyPress
  end
end
