inherited FrmCadastroVenda: TFrmCadastroVenda
  Caption = 'Cadastro de Venda'
  ClientHeight = 563
  ClientWidth = 719
  OnCreate = FormCreate
  ExplicitWidth = 735
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCliente: TRzLabel [0]
    Left = 189
    Top = 88
    Width = 51
    Height = 13
    Caption = 'Cliente *'
  end
  object TLblNumNota: TRzLabel [1]
    Left = 1
    Top = 8
    Width = 104
    Height = 13
    Caption = 'Numero da Nota *'
    Transparent = True
  end
  object TLblValorTotalProdutos: TRzLabel [2]
    Left = 8
    Top = 392
    Width = 151
    Height = 13
    Caption = 'Valor Total dos Produtos *'
  end
  object TLblObservacao: TRzLabel [3]
    Left = 5
    Top = 457
    Width = 68
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object TLblSerie: TRzLabel [4]
    Left = 196
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Serie *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 6
    Top = 491
    ExplicitLeft = 6
    ExplicitTop = 491
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 458
    Top = 491
    ExplicitLeft = 458
    ExplicitTop = 491
  end
  object RzLabel2: TRzLabel [7]
    Left = 1
    Top = 88
    Width = 69
    Height = 13
    Caption = 'ID Cliente *'
  end
  object TLblCP: TRzLabel [8]
    Left = 139
    Top = 427
    Width = 132
    Height = 13
    Caption = 'Condi'#231#227'o Pagamento *'
  end
  object TLblIdCondicaoPagamento: TRzLabel [9]
    Left = 6
    Top = 427
    Width = 57
    Height = 13
    Caption = 'ID C. P. *'
  end
  object TLblValorFrete: TRzLabel [10]
    Left = 307
    Top = 389
    Width = 63
    Height = 13
    Caption = 'Valor Frete'
  end
  object Lbl4: TRzLabel [11]
    Left = 505
    Top = 392
    Width = 92
    Height = 13
    Caption = 'Valor Total Nota'
  end
  object Lbl3: TRzLabel [12]
    Left = 196
    Top = 35
    Width = 76
    Height = 13
    Caption = 'Funcionario *'
  end
  object Lbl5: TRzLabel [13]
    Left = 1
    Top = 35
    Width = 94
    Height = 13
    Caption = 'ID Funcionario *'
  end
  object TLblDataEmicao: TRzLabel [14]
    Left = 1
    Top = 62
    Width = 107
    Height = 13
    Caption = 'Data de Emiss'#227'o *'
  end
  object TLblCFOP: TRzLabel [15]
    Left = 365
    Top = 8
    Width = 31
    Height = 13
    Caption = 'CFOP'
  end
  inherited TBtnSalvar: TRzButton
    Left = 5
    Top = 534
    FrameColor = cl3DDkShadow
    Color = clBtnFace
    HotTrack = False
    TabOrder = 20
    OnClick = TBtnSalvarClick
    ExplicitLeft = 5
    ExplicitTop = 534
  end
  inherited TBtnLimpar: TRzButton
    Left = 339
    Top = 534
    FrameColor = cl3DDkShadow
    Color = clBtnFace
    HotTrack = False
    TabOrder = 17
    ExplicitLeft = 339
    ExplicitTop = 534
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 581
    Top = 489
    TabOrder = 14
    FrameColor = clBtnShadow
    FrameVisible = False
    ExplicitLeft = 581
    ExplicitTop = 489
  end
  object TEdtCliente: TRzEdit [19]
    Left = 273
    Top = 85
    Width = 301
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object TBtnBuscarCliente: TRzButton [20]
    Left = 584
    Top = 83
    Width = 53
    Caption = 'Buscar'
    TabOrder = 15
    OnClick = TBtnBuscarClienteClick
  end
  object TEdtNumNota: TRzEdit [21]
    Left = 116
    Top = 5
    Width = 74
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object TGroupBoxProdVenda: TRzGroupBox [22]
    Left = 5
    Top = 111
    Width = 710
    Height = 274
    Caption = 'PRODUTOS VENDA'
    FlatColor = clMedGray
    GroupStyle = gsStandard
    TabOrder = 9
    object TLblProduto: TRzLabel
      Left = 211
      Top = 18
      Width = 55
      Height = 13
      Caption = 'Produto *'
      Transparent = True
    end
    object Lbl1: TRzLabel
      Left = 5
      Top = 18
      Width = 73
      Height = 13
      Caption = 'ID Produto *'
      Transparent = True
    end
    object TLblMarca: TRzLabel
      Left = 5
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Marca *'
      Transparent = True
    end
    object TLblQtde: TRzLabel
      Left = 5
      Top = 83
      Width = 76
      Height = 13
      Caption = 'Quantidade *'
      Transparent = True
    end
    object TLblValorUnitario: TRzLabel
      Left = 236
      Top = 79
      Width = 89
      Height = 13
      Caption = 'Valor Unitario *'
      Transparent = True
    end
    object TLblDesconto: TRzLabel
      Left = 237
      Top = 110
      Width = 53
      Height = 13
      Caption = 'Desconto'
      Transparent = True
    end
    object TLblValorTotal: TRzLabel
      Left = 424
      Top = 83
      Width = 62
      Height = 13
      Caption = 'Valor Total'
      Transparent = True
    end
    object TLblICMS: TRzLabel
      Left = 613
      Top = 48
      Width = 31
      Height = 13
      Caption = 'ICMS'
      Transparent = True
    end
    object TLblIPI: TRzLabel
      Left = 534
      Top = 48
      Width = 21
      Height = 13
      Caption = 'IPI '
      Transparent = True
    end
    object TLblMedida: TLabel
      Left = 166
      Top = 84
      Width = 4
      Height = 13
    end
    object Lbl6: TRzLabel
      Left = 237
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Valor de Venda'
      Transparent = True
    end
    object TLblTotalGeral: TRzLabel
      Left = 424
      Top = 110
      Width = 63
      Height = 13
      Caption = 'Total Geral'
      Transparent = True
    end
    object Lbl2: TRzLabel
      Left = 415
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Estoque'
      Transparent = True
    end
    object TBtnRemover: TRzButton
      Left = 634
      Top = 164
      Width = 64
      Caption = '&Remover'
      TabOrder = 8
      OnClick = TBtnRemoverClick
    end
    object TStringGridProdutosVenda: TRzStringGrid
      Left = 5
      Top = 132
      Width = 623
      Height = 133
      ColCount = 11
      FixedColor = clInactiveBorder
      RowCount = 2
      GradientEndColor = clCream
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goRowSelect, goFixedHotTrack]
      TabOrder = 9
      OnSelectCell = TStringGridProdutosVendaSelectCell
      FrameColor = 12164479
      FrameVisible = True
      FramingPreference = fpCustomFraming
      FixedLineColor = clBlack
      LineColor = clInactiveCaption
      ColWidths = (
        60
        60
        169
        90
        111
        93
        124
        113
        143
        123
        116)
    end
    object TEdtProduto: TRzEdit
      Left = 272
      Top = 15
      Width = 337
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object TBtnBuscarProduto: TRzButton
      Left = 625
      Top = 12
      Width = 48
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = TBtnBuscarProdutoClick
    end
    object TEdtIdProduto: TRzEdit
      Left = 87
      Top = 15
      Width = 74
      Height = 21
      TabOrder = 0
      OnExit = TEdtIdProdutoExit
    end
    object TEdtMarca: TRzEdit
      Left = 87
      Top = 45
      Width = 144
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object TEdtQtde: TRzEdit
      Left = 87
      Top = 80
      Width = 75
      Height = 21
      Enabled = False
      MaxLength = 6
      TabOrder = 2
      TextHint = '0,00'
      TextHintVisibleOnFocus = True
      OnExit = TEdtQtdeExit
    end
    object TEdtValorUnitario: TRzEdit
      Left = 329
      Top = 75
      Width = 79
      Height = 21
      Enabled = False
      MaxLength = 6
      TabOrder = 3
      TextHint = 'R$ 0,00'
      TextHintVisibleOnFocus = True
      OnExit = TEdtValorUnitarioExit
    end
    object TEdtDesconto: TRzEdit
      Left = 329
      Top = 107
      Width = 79
      Height = 21
      Enabled = False
      MaxLength = 5
      TabOrder = 4
      TextHint = '0,00 %'
      TextHintVisibleOnFocus = True
      OnExit = TEdtDescontoExit
    end
    object TEdtValorTotal: TRzEdit
      Left = 500
      Top = 80
      Width = 75
      Height = 21
      Enabled = False
      TabOrder = 12
      TextHint = 'R$ 0,00'
      TextHintVisibleOnFocus = True
    end
    object TEdtICMS: TRzEdit
      Left = 650
      Top = 45
      Width = 55
      Height = 21
      Enabled = False
      MaxLength = 6
      TabOrder = 6
      TextHint = '0,00 %'
      TextHintVisibleOnFocus = True
    end
    object TEdtIPI: TRzEdit
      Left = 559
      Top = 45
      Width = 50
      Height = 21
      Enabled = False
      MaxLength = 6
      TabOrder = 5
      TextHint = '0,00 %'
      TextHintVisibleOnFocus = True
    end
    object TBtnAdd: TRzButton
      Left = 634
      Top = 130
      Width = 64
      Caption = '&Adicionar'
      TabOrder = 7
      OnClick = TBtnAddClick
    end
    object TEdtValorVenda: TRzEdit
      Left = 326
      Top = 45
      Width = 81
      Height = 21
      Enabled = False
      TabOrder = 13
      TextHint = 'R$ 0,00'
    end
    object TEdtTotalGeral: TRzEdit
      Left = 501
      Top = 107
      Width = 74
      Height = 21
      Enabled = False
      TabOrder = 14
      TextHint = 'R$ 0,00'
    end
    object TEdtEstoque: TRzEdit
      Left = 465
      Top = 46
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 15
      TextHint = '0,00'
    end
  end
  object TEdtValorTotalProdutos: TRzEdit [23]
    Left = 165
    Top = 389
    Width = 89
    Height = 21
    Enabled = False
    TabOrder = 13
    TextHint = 'R$ 0,00'
  end
  object TEdtObservacao: TRzEdit [24]
    Left = 91
    Top = 454
    Width = 537
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 12
  end
  object TEdtSerie: TRzEdit [25]
    Left = 278
    Top = 5
    Width = 74
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnExit = TEdtSerieExit
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 128
    Top = 489
    ShowCheckbox = True
    Enabled = False
    TabOrder = 16
    FrameColor = clBtnShadow
    FrameVisible = False
    ShowTodayCircle = True
    ExplicitLeft = 128
    ExplicitTop = 489
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 641
    Top = 534
    FrameColor = cl3DDkShadow
    Color = clBtnFace
    HotTrack = False
    TabOrder = 7
    ExplicitLeft = 641
    ExplicitTop = 534
  end
  object TEdtIdCliente: TRzEdit [28]
    Left = 107
    Top = 85
    Width = 74
    Height = 21
    TabOrder = 5
    OnExit = TEdtIdClienteExit
  end
  object TEdtCP: TRzEdit [29]
    Left = 277
    Top = 424
    Width = 351
    Height = 21
    Enabled = False
    TabOrder = 18
  end
  object TBtnBuscarFP: TRzButton [30]
    Left = 634
    Top = 421
    Caption = 'Buscar'
    TabOrder = 19
    OnClick = TBtnBuscarFPClick
  end
  object TEdtIdCP: TRzEdit [31]
    Left = 66
    Top = 424
    Width = 67
    Height = 21
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 11
    OnExit = TEdtIdCPExit
  end
  object TEdtValorFrete: TRzEdit [32]
    Left = 376
    Top = 389
    Width = 91
    Height = 21
    TabOrder = 10
    TextHint = 'R$ 0,00'
    OnExit = TEdtValorFreteExit
  end
  object TEdtValorTotalNota: TRzEdit [33]
    Left = 608
    Top = 389
    Width = 108
    Height = 21
    Enabled = False
    TabOrder = 21
    TextHint = 'R$ 0,00'
  end
  object TEdtFuncionario: TRzEdit [34]
    Left = 278
    Top = 34
    Width = 301
    Height = 21
    Enabled = False
    TabOrder = 22
  end
  object TBtnBuscarFuncionario: TRzButton [35]
    Left = 582
    Top = 31
    Width = 55
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = TBtnBuscarFuncionarioClick
  end
  object TEdtIdFuncionario: TRzEdit [36]
    Left = 116
    Top = 32
    Width = 74
    Height = 21
    TabOrder = 0
    OnExit = TEdtIdFuncionarioExit
  end
  object TDateTimePickerDataEmicaoNota: TRzDateTimePicker [37]
    Left = 116
    Top = 59
    Width = 105
    Height = 21
    Date = 41138.824553506940000000
    Time = 41138.824553506940000000
    TabOrder = 4
    OnExit = TDateTimePickerDataEmicaoNotaExit
  end
  object TEdtCFOP: TRzEdit [38]
    Left = 409
    Top = 5
    Width = 77
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 10
    TabOrder = 3
  end
  inherited dxSkinController1: TdxSkinController
    Left = 672
    Top = 9
  end
end
