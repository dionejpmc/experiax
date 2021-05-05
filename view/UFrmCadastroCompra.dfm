inherited FrmCadastroCompra: TFrmCadastroCompra
  Caption = 'Cadastro de Compra'
  ClientHeight = 582
  ClientWidth = 707
  OnCreate = FormCreate
  ExplicitWidth = 723
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFornecedor: TRzLabel [0]
    Left = 200
    Top = 37
    Width = 75
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Fornecedor *'
    Transparent = True
  end
  object TLblNumNota: TRzLabel [1]
    Left = 5
    Top = 7
    Width = 104
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Numero da Nota *'
    Transparent = True
  end
  object TLblValorTotalProdutos: TRzLabel [2]
    Left = 5
    Top = 429
    Width = 140
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Valor Total dos Produtos'
    Transparent = True
  end
  object TLblCP: TRzLabel [3]
    Left = 144
    Top = 467
    Width = 132
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Condi'#231#227'o Pagamento *'
    Transparent = True
  end
  object TLblObservacao: TRzLabel [4]
    Left = 9
    Top = 498
    Width = 68
    Height = 13
    Anchors = []
    Caption = 'Observa'#231#227'o'
    Transparent = True
  end
  object TLblSerie: TRzLabel [5]
    Left = 200
    Top = 7
    Width = 41
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Serie *'
    Transparent = True
  end
  object TLblDataEntrada: TRzLabel [6]
    Left = 248
    Top = 68
    Width = 86
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Data Entrada *'
    Transparent = True
  end
  object TLblvalorTotalNota: TRzLabel [7]
    Left = 503
    Top = 427
    Width = 110
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Valor Total da Nota'
    Transparent = True
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 10
    Top = 535
    Anchors = []
    AutoSize = False
    Transparent = True
    ExplicitLeft = 10
    ExplicitTop = 535
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 474
    Top = 531
    Anchors = []
    AutoSize = False
    Transparent = True
    ExplicitLeft = 474
    ExplicitTop = 531
  end
  object RzLabel1: TRzLabel [10]
    Left = 5
    Top = 35
    Width = 108
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'ID Fornecedor *'
    Transparent = True
  end
  object TLblIdCondicaoPagamento: TRzLabel [11]
    Left = 8
    Top = 467
    Width = 57
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'ID C. P. *'
    Transparent = True
  end
  object TLblCFOP: TRzLabel [12]
    Left = 474
    Top = 68
    Width = 31
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'CFOP'
    Transparent = True
  end
  object TLblDataEmicao: TRzLabel [13]
    Left = 5
    Top = 68
    Width = 107
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Data de Emiss'#227'o *'
    Transparent = True
  end
  object TLblFrete: TRzLabel [14]
    Left = 305
    Top = 429
    Width = 63
    Height = 13
    Anchors = []
    AutoSize = False
    Caption = 'Valor Frete'
    Transparent = True
  end
  inherited TBtnSalvar: TRzButton
    Top = 554
    Anchors = []
    TabOrder = 18
    OnClick = TBtnSalvarClick
    ExplicitTop = 554
  end
  inherited TBtnLimpar: TRzButton
    Left = 342
    Top = 554
    Anchors = []
    TabOrder = 19
    OnClick = TBtnLimparClick
    ExplicitLeft = 342
    ExplicitTop = 554
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 594
    Top = 527
    Width = 104
    Anchors = []
    TabOrder = 16
    ExplicitLeft = 594
    ExplicitTop = 527
    ExplicitWidth = 104
  end
  object TEdtNumNota: TRzEdit [18]
    Left = 119
    Top = 5
    Width = 65
    Height = 21
    Anchors = []
    MaxLength = 8
    TabOrder = 0
    OnExit = TEdtNumNotaExit
    OnKeyPress = TEdtNumNotaKeyPress
  end
  object TEdtFornecedor: TRzEdit [19]
    Left = 283
    Top = 35
    Width = 334
    Height = 21
    Anchors = []
    Enabled = False
    TabOrder = 4
  end
  object TBtnBuscarForneceodor: TRzButton [20]
    Left = 623
    Top = 35
    Width = 58
    Anchors = []
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = TBtnBuscarForneceodorClick
  end
  object TGroupBoxProdCompra: TRzGroupBox [21]
    AlignWithMargins = True
    Left = 8
    Top = 91
    Width = 691
    Height = 326
    Anchors = [akLeft, akRight]
    BiDiMode = bdLeftToRight
    BorderInner = fsButtonDown
    BorderOuter = fsButtonDown
    Caption = 'PRODUTOS DA COMPRA'
    ParentBiDiMode = False
    TabOrder = 8
    DesignSize = (
      687
      322)
    object TLblProduto: TRzLabel
      Left = 157
      Top = 24
      Width = 55
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'Produto *'
      Transparent = True
      ExplicitLeft = 159
    end
    object TLblQtde: TRzLabel
      Left = 9
      Top = 100
      Width = 76
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'Quantidade *'
      Transparent = True
      ExplicitTop = 102
    end
    object TLblValorUnitario: TRzLabel
      Left = 213
      Top = 100
      Width = 89
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'Valor Unitario *'
      Transparent = True
      ExplicitLeft = 215
      ExplicitTop = 102
    end
    object TLblDesconto: TRzLabel
      Left = 382
      Top = 100
      Width = 53
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'Desconto'
      Transparent = True
      ExplicitLeft = 386
      ExplicitTop = 102
    end
    object RzLabel2: TRzLabel
      Left = 9
      Top = 24
      Width = 73
      Height = 13
      Anchors = []
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'ID Produto *'
      ParentBiDiMode = False
      Transparent = True
    end
    object TLblMarca: TRzLabel
      Left = 9
      Top = 57
      Width = 45
      Height = 13
      Anchors = []
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Marca *'
      ParentBiDiMode = False
      Transparent = True
      ExplicitTop = 59
    end
    object TLblValorTotal: TRzLabel
      Left = 509
      Top = 100
      Width = 62
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'Valor Total'
      Transparent = True
      ExplicitLeft = 515
      ExplicitTop = 102
    end
    object TLblMedida: TRzLabel
      Left = 162
      Top = 103
      Width = 4
      Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object TLblICMS: TRzLabel
      Left = 214
      Top = 128
      Width = 31
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'ICMS'
      Transparent = True
      ExplicitLeft = 216
      ExplicitTop = 132
    end
    object TLblIPI: TRzLabel
      Left = 56
      Top = 128
      Width = 21
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'IPI '
      Transparent = True
      ExplicitTop = 132
    end
    object RzLabel3: TRzLabel
      Left = 382
      Top = 128
      Width = 116
      Height = 13
      Anchors = []
      AutoSize = False
      Caption = 'Total Com Impostos'
      Transparent = True
      ExplicitLeft = 388
      ExplicitTop = 132
    end
    object TBtnRemover: TRzButton
      Left = 609
      Top = 190
      Width = 66
      Anchors = []
      BiDiMode = bdLeftToRight
      Caption = '&Remover'
      ParentBiDiMode = False
      TabOrder = 13
      OnClick = TBtnRemoverClick
    end
    object TBtnAdd: TRzButton
      Left = 609
      Top = 161
      Width = 67
      Anchors = []
      BiDiMode = bdLeftToRight
      Caption = '&Adicionar'
      ParentBiDiMode = False
      TabOrder = 12
      OnClick = TBtnAddClick
    end
    object TStringGridProdutosCompra: TRzStringGrid
      Left = 8
      Top = 154
      Width = 599
      Height = 161
      Anchors = []
      ColCount = 11
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 14
      OnSelectCell = TStringGridProdutosCompraSelectCell
      DisabledColor = clSkyBlue
      FocusColor = clMenuHighlight
      ColWidths = (
        60
        86
        118
        118
        102
        123
        109
        105
        83
        88
        124)
    end
    object TEdtProduto: TRzEdit
      Left = 223
      Top = 21
      Width = 375
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      Enabled = False
      TabOrder = 2
    end
    object TBtnBuscarProduto: TRzButton
      Left = 600
      Top = 18
      Width = 57
      Anchors = []
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = TBtnBuscarProdutoClick
    end
    object TEdtQtde: TRzEdit
      Left = 89
      Top = 97
      Width = 75
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 6
      ParentBiDiMode = False
      TabOrder = 4
      TextHint = '0,00'
      TextHintVisibleOnFocus = True
      OnExit = TEdtQtdeExit
      OnKeyPress = TEdtQtdeKeyPress
    end
    object TEdtValorUnitario: TRzEdit
      Left = 302
      Top = 97
      Width = 79
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 6
      ParentBiDiMode = False
      TabOrder = 5
      TextHint = 'R$ 0,00'
      TextHintVisibleOnFocus = True
      OnExit = TEdtValorUnitarioExit
      OnKeyPress = TEdtValorUnitarioKeyPress
    end
    object TEdtDesconto: TRzEdit
      Left = 433
      Top = 97
      Width = 75
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 5
      ParentBiDiMode = False
      TabOrder = 6
      TextHint = '0,00 %'
      TextHintVisibleOnFocus = True
      OnExit = TEdtDescontoExit
      OnKeyPress = TEdtDescontoKeyPress
    end
    object TEdtIdProduto: TRzEdit
      Left = 86
      Top = 21
      Width = 65
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      MaxLength = 5
      TabOrder = 0
      OnExit = TEdtIdProdutoExit
      OnKeyPress = TEdtIdProdutoKeyPress
    end
    object TEdtMarca: TRzEdit
      Left = 86
      Top = 54
      Width = 145
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      Enabled = False
      TabOrder = 3
    end
    object TEdtValorTotal: TRzEdit
      Left = 578
      Top = 97
      Width = 99
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      Enabled = False
      TabOrder = 7
      TextHint = 'R$ 0,00'
      TextHintVisibleOnFocus = True
    end
    object TEdtICMS: TRzEdit
      Left = 249
      Top = 125
      Width = 59
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 6
      ParentBiDiMode = False
      TabOrder = 9
      TextHint = '0,00 %'
      TextHintVisibleOnFocus = True
      OnExit = TEdtICMSExit
      OnKeyPress = TEdtICMSKeyPress
    end
    object TEdtIPI: TRzEdit
      Left = 89
      Top = 125
      Width = 54
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 6
      ParentBiDiMode = False
      TabOrder = 8
      TextHint = '0,00 %'
      TextHintVisibleOnFocus = True
      OnExit = TEdtIPIExit
      OnKeyPress = TEdtIPIKeyPress
    end
    object TEdtTotalComImpostos: TRzEdit
      Left = 504
      Top = 125
      Width = 94
      Height = 21
      Anchors = []
      AutoSelect = False
      AutoSize = False
      BiDiMode = bdLeftToRight
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 10
      TextHint = 'R$ 0,00'
      TextHintVisibleOnFocus = True
    end
    object TBtnLimpaValores: TRzBitBtn
      Left = 617
      Top = 124
      Width = 58
      Height = 22
      Anchors = []
      Caption = 'Limpar'
      TabOrder = 11
      OnClick = TBtnLimpaValoresClick
    end
  end
  object TedtValorTotalProdutos: TRzEdit [22]
    Left = 153
    Top = 429
    Width = 83
    Height = 21
    Anchors = []
    Enabled = False
    TabOrder = 9
    TextHint = 'R$ 0,00'
    TextHintVisibleOnFocus = True
  end
  object TEdtCP: TRzEdit [23]
    Left = 282
    Top = 465
    Width = 327
    Height = 21
    Anchors = []
    Enabled = False
    TabOrder = 13
  end
  object TEdtObservacao: TRzEdit [24]
    Left = 96
    Top = 496
    Width = 546
    Height = 21
    Anchors = []
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 15
  end
  object TBtnBuscarFP: TRzButton [25]
    Left = 624
    Top = 462
    Anchors = []
    Caption = 'Buscar'
    TabOrder = 14
    OnClick = TBtnBuscarFPClick
  end
  object TEdtSerie: TRzEdit [26]
    Left = 283
    Top = 7
    Width = 67
    Height = 21
    Anchors = []
    CharCase = ecUpperCase
    MaxLength = 5
    TabOrder = 1
    OnExit = TEdtSerieExit
  end
  object TEdtValorTotalNota: TRzEdit [27]
    Left = 619
    Top = 427
    Width = 81
    Height = 21
    Anchors = []
    Enabled = False
    TabOrder = 11
    TextHint = 'R$ 0,00'
    TextHintVisibleOnFocus = True
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 132
    Top = 531
    Width = 109
    Anchors = []
    Enabled = False
    TabOrder = 17
    OnClick = TDateTimePickerDataCadastroClick
    ExplicitLeft = 132
    ExplicitTop = 531
    ExplicitWidth = 109
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 624
    Top = 554
    Anchors = []
    TabOrder = 20
    ExplicitLeft = 624
    ExplicitTop = 554
  end
  object TDateTimeDataEntrada: TRzDateTimePicker [30]
    Left = 352
    Top = 65
    Width = 110
    Height = 21
    Anchors = []
    Date = 41073.435948599540000000
    Time = 41073.435948599540000000
    Checked = False
    TabOrder = 6
    OnClick = TDateTimeDataEntradaClick
    OnExit = TDateTimeDataEntradaExit
    FocusColor = clHighlight
  end
  object TEdtIdFornecedor: TRzEdit [31]
    Left = 119
    Top = 32
    Width = 65
    Height = 21
    Anchors = []
    MaxLength = 5
    TabOrder = 2
    OnExit = TEdtIdFornecedorExit
    OnKeyPress = TEdtIdFornecedorKeyPress
  end
  object TEdtIdCP: TRzEdit [32]
    Left = 71
    Top = 465
    Width = 55
    Height = 21
    Anchors = []
    FrameHotTrack = True
    FrameVisible = True
    MaxLength = 5
    TabOrder = 12
    OnExit = TEdtIdCPExit
  end
  object TEdtCFOP: TRzEdit [33]
    Left = 532
    Top = 65
    Width = 77
    Height = 21
    Anchors = []
    CharCase = ecUpperCase
    MaxLength = 10
    TabOrder = 7
  end
  object TDateTimePickerDataEmicaoNota: TRzDateTimePicker [34]
    Left = 119
    Top = 65
    Width = 105
    Height = 21
    Anchors = []
    Date = 41138.824553506940000000
    Time = 41138.824553506940000000
    TabOrder = 5
    OnClick = TDateTimePickerDataEmicaoNotaClick
    OnExit = TDateTimePickerDataEmicaoNotaExit
  end
  object TEdtValorFrete: TRzEdit [35]
    Left = 374
    Top = 427
    Width = 90
    Height = 21
    Anchors = []
    MaxLength = 6
    TabOrder = 10
    TextHint = 'R$ 0,00'
    TextHintVisibleOnFocus = True
    OnExit = TEdtValorFreteExit
    OnKeyPress = TEdtValorFreteKeyPress
  end
end
