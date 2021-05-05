inherited FrmCadastroCliente: TFrmCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 549
  ClientWidth = 595
  Scaled = False
  ScreenSnap = False
  ShowHint = False
  OnCreate = FormCreate
  ExplicitTop = -247
  ExplicitWidth = 611
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCliente: TRzLabel [0]
    Left = 7
    Top = 80
    Width = 51
    Height = 13
    Caption = 'Cliente *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 8
    Top = 497
    ExplicitLeft = 8
    ExplicitTop = 497
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 327
    Top = 495
    ExplicitLeft = 327
    ExplicitTop = 495
  end
  object TLblID: TRzLabel [3]
    Left = 8
    Top = 8
    Width = 25
    Height = 13
    Caption = 'ID *'
  end
  object TLblFantasia: TRzLabel [4]
    Left = 7
    Top = 119
    Width = 58
    Height = 13
    Caption = 'Fantasia *'
  end
  object TLblCondicaoPagamento: TRzLabel [5]
    Left = 129
    Top = 153
    Width = 39
    Height = 13
    Caption = 'C. P. *'
  end
  object TLblIDCondicaoPagamento: TRzLabel [6]
    Left = 5
    Top = 153
    Width = 57
    Height = 13
    Caption = 'ID C. P. *'
  end
  object Lbl1: TRzLabel [7]
    Left = 473
    Top = 98
    Width = 109
    Height = 13
    Caption = 'Status do Cliente *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 524
    TabOrder = 13
    OnClick = TBtnSalvarClick
    ExplicitTop = 524
  end
  inherited TBtnLimpar: TRzButton
    Left = 263
    Top = 524
    TabOrder = 14
    OnClick = TBtnLimparClick
    ExplicitLeft = 263
    ExplicitTop = 524
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 463
    Top = 493
    TabOrder = 12
    ExplicitLeft = 463
    ExplicitTop = 493
  end
  object TEdtCliente: TRzEdit [11]
    Left = 71
    Top = 77
    Width = 308
    Height = 21
    CharCase = ecUpperCase
    FrameHotTrack = True
    FrameVisible = True
    MaxLength = 50
    TabOrder = 3
    OnExit = TEdtClienteExit
    OnKeyPress = TEdtClienteKeyPress
  end
  object TGroupBoxEnderecoCliente: TRzGroupBox [12]
    Left = 2
    Top = 179
    Width = 585
    Height = 161
    Caption = 'DADOS DE ENDERE'#199'O'
    TabOrder = 9
    object TLblLogradouro: TRzLabel
      Left = 14
      Top = 22
      Width = 76
      Height = 13
      Caption = 'Logradouro *'
      Transparent = True
    end
    object TLblNumero: TRzLabel
      Left = 455
      Top = 22
      Width = 56
      Height = 13
      Caption = 'Numero *'
      Transparent = True
    end
    object TLblCEP: TRzLabel
      Left = 14
      Top = 62
      Width = 34
      Height = 13
      Caption = 'CEP *'
      Transparent = True
    end
    object TLblbairro: TRzLabel
      Left = 217
      Top = 62
      Width = 46
      Height = 13
      Caption = 'Bairro *'
      Transparent = True
    end
    object TLblObservacoes: TRzLabel
      Left = 15
      Top = 127
      Width = 74
      Height = 13
      Caption = 'Observa'#231#245'es'
      Transparent = True
    end
    object TLblCidade: TRzLabel
      Left = 213
      Top = 92
      Width = 51
      Height = 13
      Caption = 'Cidade *'
      Transparent = True
    end
    object TLblIDCidade: TRzLabel
      Left = 14
      Top = 92
      Width = 69
      Height = 13
      Caption = 'ID Cidade *'
      Transparent = True
    end
    object TBtnBuscarCidade: TRzButton
      Left = 503
      Top = 88
      FrameColor = 7617536
      Caption = 'Buscar'
      Color = 15791348
      HotTrack = True
      TabOrder = 6
      OnClick = TBtnBuscarCidadeClick
    end
    object TEdtLogradouro: TRzEdit
      Left = 96
      Top = 19
      Width = 305
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 0
      OnExit = TEdtLogradouroExit
    end
    object TEdtCEP: TRzEdit
      Left = 56
      Top = 61
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 9
      TabOrder = 2
      OnExit = TEdtCEPExit
    end
    object TEdtIdCidade: TRzEdit
      Left = 90
      Top = 88
      Width = 52
      Height = 21
      TabOrder = 4
      OnExit = TEdtIdCidadeExit
      OnKeyPress = TEdtIdCidadeKeyPress
    end
    object TEdtCidade: TRzEdit
      Left = 270
      Top = 89
      Width = 227
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 5
    end
    object TEdtBairro: TRzEdit
      Left = 270
      Top = 59
      Width = 227
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 3
      OnExit = TEdtBairroExit
    end
    object TEdtNumero: TRzEdit
      Left = 522
      Top = 18
      Width = 57
      Height = 21
      MaxLength = 5
      TabOrder = 1
      OnExit = TEdtNumeroExit
      OnKeyPress = TEdtNumeroKeyPress
    end
    object TEdtObservacoes: TRzEdit
      Left = 95
      Top = 122
      Width = 483
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 7
      OnExit = TEdtObservacoesExit
    end
  end
  object TGroupBoxContatoCliente: TRzGroupBox [13]
    Left = 2
    Top = 346
    Width = 585
    Height = 142
    Caption = 'DADOS DE CONTATO DE CLIENTE'
    TabOrder = 10
    object TLblTelefoneResidencial1: TRzLabel
      Left = 3
      Top = 57
      Width = 128
      Height = 13
      Caption = 'Telefone Residencial *'
      Transparent = True
    end
    object TLblCelular1: TRzLabel
      Left = 310
      Top = 57
      Width = 52
      Height = 13
      Caption = 'Celular *'
      Transparent = True
    end
    object TLblFax: TRzLabel
      Left = 311
      Top = 116
      Width = 20
      Height = 13
      Caption = 'Fax'
      Transparent = True
    end
    object TLblEmail: TRzLabel
      Left = 312
      Top = 88
      Width = 34
      Height = 13
      Caption = 'E-Mail'
      Transparent = True
    end
    object TLblTelefoneComercial2: TRzLabel
      Left = 5
      Top = 88
      Width = 125
      Height = 13
      Caption = 'Telefone Comercial II'
      Transparent = True
    end
    object TLblRG: TRzLabel
      Left = 309
      Top = 22
      Width = 28
      Height = 13
      Caption = 'RG *'
      Transparent = True
    end
    object TLblCPF: TRzLabel
      Left = 6
      Top = 22
      Width = 33
      Height = 13
      Caption = 'CPF *'
      Transparent = True
    end
    object TEdtTelefoneResidencial: TRzEdit
      Left = 145
      Top = 57
      Width = 144
      Height = 21
      MaxLength = 15
      TabOrder = 0
      OnExit = TEdtTelefoneResidencialExit
    end
    object TEdtTelefoneCelular: TRzEdit
      Left = 367
      Top = 57
      Width = 148
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 1
      OnExit = TEdtTelefoneCelularExit
    end
    object TEdtFax: TRzEdit
      Left = 367
      Top = 113
      Width = 146
      Height = 21
      Text = '_'
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 4
    end
    object TEdtEmail: TRzEdit
      Left = 367
      Top = 86
      Width = 201
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
    object TEdtTelComercial: TRzEdit
      Left = 145
      Top = 86
      Width = 144
      Height = 21
      MaxLength = 15
      TabOrder = 2
    end
    object TEdtRG: TRzEdit
      Left = 367
      Top = 17
      Width = 146
      Height = 21
      CharCase = ecUpperCase
      FrameHotTrack = True
      FrameVisible = True
      MaxLength = 12
      TabOrder = 5
      OnExit = TEdtRGExit
    end
    object TEdtCPF: TMaskEdit
      Left = 145
      Top = 17
      Width = 144
      Height = 21
      MaxLength = 20
      TabOrder = 6
      OnExit = TEdtCPFExit
      OnKeyPress = TEdtCPFKeyPress
    end
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 128
    Top = 494
    Width = 133
    TabOrder = 11
    OnExit = TDateTimePickerDataCadastroExit
    ExplicitLeft = 128
    ExplicitTop = 494
    ExplicitWidth = 133
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 518
    Top = 524
    TabOrder = 15
    ExplicitLeft = 518
    ExplicitTop = 524
  end
  object TRadioGroupSexo: TRzRadioGroup [16]
    Left = 385
    Top = 3
    Width = 107
    Height = 66
    Caption = 'Sexo *'
    Columns = 2
    TabOrder = 2
    object TRadioBtnM: TRzRadioButton
      Left = 8
      Top = 19
      Width = 74
      Height = 15
      Caption = 'Masculino'
      Checked = True
      FrameColor = 8409372
      HighlightColor = 2203937
      HotTrack = True
      TabOrder = 0
      TabStop = True
      Transparent = True
    end
    object TRadioBtnF: TRzRadioButton
      Left = 8
      Top = 40
      Width = 70
      Height = 15
      Caption = 'Feminino'
      FrameColor = 8409372
      HighlightColor = 2203937
      HotTrack = True
      TabOrder = 1
      Transparent = True
    end
  end
  object TEdtIdCliente: TRzEdit [17]
    Left = 65
    Top = 8
    Width = 52
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object TRadioGroupTipo: TRzRadioGroup [18]
    Left = 221
    Top = 3
    Width = 107
    Height = 65
    Caption = 'Tipo de Cliente *'
    TabOrder = 1
    object TRadioBtnJuridico: TRzRadioButton
      Left = 8
      Top = 18
      Width = 62
      Height = 15
      Caption = 'Juridico'
      HotTrack = True
      TabOrder = 0
      Transparent = True
      OnClick = TRadioBtnJuridicoClick
    end
    object TRadioBtnFisico: TRzRadioButton
      Left = 8
      Top = 39
      Width = 50
      Height = 15
      Caption = 'Fisico'
      Checked = True
      HotTrack = True
      TabOrder = 1
      TabStop = True
      Transparent = True
      OnClick = TRadioBtnFisicoClick
    end
  end
  object TEdtFantasia: TRzEdit [19]
    Left = 71
    Top = 116
    Width = 308
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 4
    OnExit = TEdtFantasiaExit
  end
  object TEdtCondicaoPagamento: TRzEdit [20]
    Left = 183
    Top = 150
    Width = 329
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 7
  end
  object TEdtIdCondicaoPagamento: TRzEdit [21]
    Left = 65
    Top = 150
    Width = 52
    Height = 21
    TabOrder = 6
    OnExit = TEdtIdCondicaoPagamentoExit
    OnKeyPress = TEdtIdCondicaoPagamentoKeyPress
  end
  object TBtnBuscarCP: TRzBitBtn [22]
    Left = 518
    Top = 148
    Height = 24
    Caption = 'Buscar'
    HotTrack = True
    TabOrder = 8
    OnClick = TBtnBuscarCPClick
  end
  object TComboBoxStatus: TRzComboBox [23]
    Left = 467
    Top = 119
    Width = 122
    Height = 21
    TabOrder = 5
    OnClick = TComboBoxStatusClick
    OnExit = TComboBoxStatusExit
    OnKeyPress = TComboBoxStatusKeyPress
    Items.Strings = (
      'Ativo'
      'Inativo')
  end
end
