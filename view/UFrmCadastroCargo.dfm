inherited FrmCadastroCargo: TFrmCadastroCargo
  Caption = 'Cadastro de Cargo '
  ClientHeight = 290
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCargo: TRzLabel [0]
    Left = 307
    Top = 11
    Width = 46
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Cargo *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 8
    Top = 229
    Anchors = []
    AutoSize = False
    ExplicitLeft = 8
    ExplicitTop = 229
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 307
    Top = 229
    Anchors = []
    AutoSize = False
    ExplicitLeft = 307
    ExplicitTop = 229
  end
  object TLblId: TRzLabel [3]
    Left = 8
    Top = 11
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    Caption = 'ID *'
  end
  inherited TBtnSalvar: TRzButton
    Anchors = []
    OnClick = TBtnSalvarClick
  end
  inherited TBtnLimpar: TRzButton
    Anchors = []
    OnClick = TBtnLimparClick
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 441
    Top = 227
    Anchors = []
    ExplicitLeft = 441
    ExplicitTop = 227
  end
  object TEdtCargo: TRzEdit [7]
    Left = 368
    Top = 8
    Width = 193
    Height = 21
    Anchors = []
    AutoSize = False
    CharCase = ecUpperCase
    FrameColor = 12164479
    FrameHotTrack = True
    FrameVisible = True
    MaxLength = 50
    TabOrder = 3
    OnKeyPress = TEdtCargoKeyPress
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 145
    Top = 227
    Anchors = []
    Enabled = False
    TabOrder = 5
    ExplicitLeft = 145
    ExplicitTop = 227
  end
  inherited TBtnCancelar: TRzBitBtn
    Anchors = []
  end
  object TEdtId: TRzEdit [10]
    Left = 71
    Top = 8
    Width = 56
    Height = 21
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    Enabled = False
    MaxLength = 5
    TabOrder = 6
    OnKeyPress = TEdtIdKeyPress
  end
end
