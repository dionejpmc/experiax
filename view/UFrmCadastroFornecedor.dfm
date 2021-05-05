inherited FrmCadastroFornecedor: TFrmCadastroFornecedor
  Left = 49
  Top = 55
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 638
  ClientWidth = 622
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitTop = -102
  ExplicitWidth = 638
  ExplicitHeight = 676
  PixelsPerInch = 96
  TextHeight = 13
  object TLblRS: TRzLabel [0]
    Left = 188
    Top = 10
    Width = 84
    Height = 13
    Caption = 'Raz'#227'o Social *'
  end
  object TLblFantasia: TRzLabel [1]
    Left = 5
    Top = 40
    Width = 58
    Height = 13
    Caption = 'Fantasia *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 0
    Top = 584
    ExplicitLeft = 0
    ExplicitTop = 584
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 361
    Top = 584
    ExplicitLeft = 361
    ExplicitTop = 584
  end
  object TLblCNPJ: TRzLabel [4]
    Left = 3
    Top = 340
    Width = 40
    Height = 13
    Caption = 'CNPJ *'
  end
  object TLblIE: TRzLabel [5]
    Left = 419
    Top = 340
    Width = 23
    Height = 13
    Caption = 'IE *'
  end
  object TLblIdFornecedor: TRzLabel [6]
    Left = 5
    Top = 13
    Width = 93
    Height = 13
    Caption = 'ID Fornecedor *'
  end
  inherited TBtnSalvar: TRzButton
    Left = 0
    Top = 608
    TabOrder = 11
    OnClick = TBtnSalvarClick
    ExplicitLeft = 0
    ExplicitTop = 608
  end
  inherited TBtnLimpar: TRzButton
    Left = 284
    Top = 608
    TabOrder = 12
    OnClick = TBtnLimparClick
    ExplicitLeft = 284
    ExplicitTop = 608
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 481
    Top = 583
    TabOrder = 9
    ExplicitLeft = 481
    ExplicitTop = 583
  end
  object TEdtRS: TRzEdit [10]
    Left = 289
    Top = 10
    Width = 324
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 0
    OnExit = TEdtRSExit
  end
  object TEdtFantasia: TRzEdit [11]
    Left = 102
    Top = 37
    Width = 279
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 1
    OnExit = TEdtFantasiaExit
  end
  object TGroupBoxEnderecoFornecedor: TRzGroupBox [12]
    Left = 23
    Top = 81
    Width = 569
    Height = 131
    Caption = 'DADOS DE ENDERE'#199'O'
    TabOrder = 3
    object TLblLogradouro: TRzLabel
      Left = 7
      Top = 18
      Width = 76
      Height = 13
      Caption = 'Logradouro *'
      Transparent = True
    end
    object TLblNumero: TRzLabel
      Left = 433
      Top = 18
      Width = 56
      Height = 13
      Caption = 'Numero *'
      Transparent = True
    end
    object TLblCEP: TRzLabel
      Left = 7
      Top = 44
      Width = 34
      Height = 13
      Caption = 'CEP *'
      Transparent = True
    end
    object TLblbairro: TRzLabel
      Left = 253
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Bairro *'
      Transparent = True
    end
    object TLblObservacoes: TRzLabel
      Left = 6
      Top = 105
      Width = 74
      Height = 13
      Caption = 'Observa'#231#245'es'
      Transparent = True
    end
    object TLblCidade: TRzLabel
      Left = 180
      Top = 75
      Width = 51
      Height = 13
      Caption = 'Cidade *'
      Transparent = True
    end
    object TLblIdCidade: TRzLabel
      Left = 9
      Top = 75
      Width = 69
      Height = 13
      Caption = 'ID Cidade *'
      Transparent = True
    end
    object TEdtCidade: TRzEdit
      Left = 237
      Top = 73
      Width = 243
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object TBtnBuscarCidade: TRzButton
      Left = 486
      Top = 71
      Width = 76
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = TBtnBuscarCidadeClick
    end
    object TEdtLogradouro: TRzEdit
      Left = 118
      Top = 16
      Width = 299
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 0
      OnExit = TEdtLogradouroExit
    end
    object TEdtCEP: TRzEdit
      Left = 118
      Top = 43
      Width = 129
      Height = 21
      MaxLength = 10
      TabOrder = 2
      OnExit = TEdtCEPExit
      OnKeyPress = TEdtCEPKeyPress
    end
    object TEdtBairro: TRzEdit
      Left = 305
      Top = 43
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 6
      OnExit = TEdtBairroExit
    end
    object TEdtObservacoe: TRzEdit
      Left = 115
      Top = 103
      Width = 447
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 7
    end
    object TEdtNumero: TRzEdit
      Left = 503
      Top = 16
      Width = 58
      Height = 21
      MaxLength = 5
      TabOrder = 1
      OnExit = TEdtNumeroExit
      OnKeyPress = TEdtNumeroKeyPress
    end
    object TEdtIdCidade: TRzEdit
      Left = 117
      Top = 71
      Width = 53
      Height = 21
      MaxLength = 5
      TabOrder = 3
      OnExit = TEdtIdCidadeExit
      OnKeyPress = TEdtIdCidadeKeyPress
    end
  end
  object TGroupBoxContatoFornecedor: TRzGroupBox [13]
    Left = 24
    Top = 214
    Width = 568
    Height = 118
    Caption = 'DADOS DE CONTATO DE FORNECEDOR'
    TabOrder = 4
    object TLblTelefoneComercial1: TRzLabel
      Left = 3
      Top = 24
      Width = 122
      Height = 13
      Caption = 'Telefone Comercial *'
      Transparent = True
    end
    object TLblCelular1: TRzLabel
      Left = 296
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Celular *'
      Transparent = True
    end
    object TLblFax: TRzLabel
      Left = 5
      Top = 60
      Width = 20
      Height = 13
      Caption = 'Fax'
      Transparent = True
    end
    object TLblEmail: TRzLabel
      Left = 297
      Top = 60
      Width = 38
      Height = 13
      Caption = 'E-Mail '
      Transparent = True
    end
    object TLblTelefoneComercial2: TRzLabel
      Left = 2
      Top = 91
      Width = 137
      Height = 13
      Caption = 'Telefone Comercial-II *'
      Transparent = True
    end
    object TLblCel2: TRzLabel
      Left = 294
      Top = 93
      Width = 56
      Height = 13
      Caption = 'Celular-II'
      Transparent = True
    end
    object TEdtTelefoneComercial: TRzEdit
      Left = 134
      Top = 21
      Width = 139
      Height = 21
      MaxLength = 10
      TabOrder = 0
      OnExit = TEdtTelefoneComercialExit
    end
    object TEdtTelefoneCelular: TRzEdit
      Left = 354
      Top = 21
      Width = 151
      Height = 21
      MaxLength = 10
      TabOrder = 1
      OnExit = TEdtTelefoneCelularExit
    end
    object TEdtFax: TRzEdit
      Left = 136
      Top = 56
      Width = 138
      Height = 21
      MaxLength = 10
      TabOrder = 2
    end
    object TEdtEmail: TRzEdit
      Left = 353
      Top = 56
      Width = 200
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
    object TEdtTelefoneComercial2: TRzEdit
      Left = 133
      Top = 90
      Width = 138
      Height = 21
      MaxLength = 10
      TabOrder = 4
    end
    object TEdtTelefoneCelular2: TRzEdit
      Left = 353
      Top = 91
      Width = 150
      Height = 21
      MaxLength = 10
      TabOrder = 5
    end
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 122
    Top = 580
    Enabled = False
    TabOrder = 8
    ExplicitLeft = 122
    ExplicitTop = 580
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 534
    Top = 610
    TabOrder = 13
    ExplicitLeft = 534
    ExplicitTop = 610
  end
  object TGroupBoxProdutoFornecedor: TRzGroupBox [16]
    Left = 0
    Top = 365
    Width = 613
    Height = 213
    Caption = 'PRODUTOS FORNECEDOR'
    GradientColorStyle = gcsMSOffice
    TabOrder = 7
    object TLblProduto: TRzLabel
      Left = 107
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Produto *'
      Transparent = True
    end
    object TLblMarca: TRzLabel
      Left = 109
      Top = 57
      Width = 45
      Height = 13
      Caption = 'Marca *'
      Transparent = True
    end
    object TLblIDProduto: TRzLabel
      Left = 4
      Top = 32
      Width = 25
      Height = 13
      Caption = 'ID *'
      Transparent = True
    end
    object TStringGridProdutofornecedor: TRzStringGrid
      Left = 10
      Top = 82
      Width = 526
      ColCount = 4
      RowCount = 2
      GradientStartColor = clBtnHighlight
      TabOrder = 6
      OnSelectCell = TStringGridProdutofornecedorSelectCell
      ColWidths = (
        60
        61
        239
        97)
    end
    object TBtnRemover: TRzBitBtn
      Left = 542
      Top = 116
      Width = 64
      Height = 23
      Caption = '&Remover'
      TabOrder = 3
      OnClick = TBtnRemoverClick
    end
    object TBtnAdicionar: TRzBitBtn
      Left = 542
      Top = 82
      Width = 65
      Height = 24
      Caption = '&Adicionar'
      TabOrder = 4
      OnClick = TBtnAdicionarClick
    end
    object TEdtProduto: TRzEdit
      Left = 167
      Top = 29
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 50
      TabOrder = 1
    end
    object TEdtIdProduto: TRzEdit
      Left = 37
      Top = 29
      Width = 55
      Height = 21
      MaxLength = 5
      TabOrder = 0
      OnExit = TEdtIdProdutoExit
      OnKeyPress = TEdtIdProdutoKeyPress
    end
    object TBtnBuscarProduto: TRzBitBtn
      Left = 423
      Top = 27
      Width = 64
      Height = 23
      Caption = 'Buscar'
      HotTrack = True
      TabOrder = 2
      OnClick = TBtnBuscarProdutoClick
    end
    object TEdtMarca: TRzEdit
      Left = 167
      Top = 55
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 50
      TabOrder = 5
    end
  end
  object TEdtIE: TRzEdit [17]
    Left = 464
    Top = 338
    Width = 149
    Height = 21
    MaxLength = 15
    TabOrder = 6
    OnExit = TEdtIEExit
  end
  object TEdtCNPJ: TRzEdit [18]
    Left = 57
    Top = 338
    Width = 194
    Height = 21
    MaxLength = 20
    TabOrder = 5
    OnExit = TEdtCNPJExit
    OnKeyPress = TEdtCNPJKeyPress
  end
  object TEdtIdFornecedor: TRzEdit [19]
    Left = 102
    Top = 10
    Width = 52
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object TRadioGroupTipo: TRzRadioGroup [20]
    Left = 457
    Top = 33
    Width = 136
    Height = 52
    Caption = 'Tipo de Forneceodor *'
    TabOrder = 2
    object TRadioBtnJuridico: TRzRadioButton
      Left = 8
      Top = 11
      Width = 62
      Height = 15
      Caption = 'Juridico'
      Checked = True
      HotTrack = True
      TabOrder = 0
      TabStop = True
      Transparent = True
      OnClick = TRadioBtnJuridicoClick
    end
    object TRadioBtnFisico: TRzRadioButton
      Left = 8
      Top = 32
      Width = 50
      Height = 15
      Caption = 'Fisico'
      HotTrack = True
      TabOrder = 1
      Transparent = True
      OnClick = TRadioBtnFisicoClick
    end
  end
end
