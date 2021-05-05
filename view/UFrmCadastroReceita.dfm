inherited FrmCadastroReceita: TFrmCadastroReceita
  Top = 80
  Anchors = []
  Caption = 'Cadastro de Receita'
  ClientHeight = 391
  ClientWidth = 652
  TransparentColor = False
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 668
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  object TLblReceita: TRzLabel [0]
    Left = 165
    Top = 14
    Width = 45
    Height = 13
    Caption = 'Receita *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    LightTextStyle = True
    HighlightColor = clGreen
    ShadowColor = clOlive
  end
  object TLblObservacao: TRzLabel [1]
    Left = 8
    Top = 298
    Width = 68
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 4
    Top = 337
    ExplicitLeft = 4
    ExplicitTop = 337
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 395
    Top = 337
    ExplicitLeft = 395
    ExplicitTop = 337
  end
  object TLblIdReceita: TRzLabel [4]
    Left = 8
    Top = 14
    Width = 71
    Height = 13
    Caption = 'ID Receita *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 364
    TabOrder = 7
    OnClick = TBtnSalvarClick
    ExplicitTop = 364
  end
  inherited TBtnLimpar: TRzButton
    Left = 295
    Top = 364
    TabOrder = 8
    OnClick = TBtnLimparClick
    ExplicitLeft = 295
    ExplicitTop = 364
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 515
    Top = 337
    TabOrder = 6
    ExplicitLeft = 515
    ExplicitTop = 337
  end
  object TEdtReceita: TRzEdit [8]
    Left = 216
    Top = 11
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 1
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 126
    Top = 337
    TabOrder = 5
    ExplicitLeft = 126
    ExplicitTop = 337
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 575
    Top = 364
    TabOrder = 9
    ExplicitLeft = 575
    ExplicitTop = 364
  end
  object TEdtIdReceita: TRzEdit [11]
    Left = 90
    Top = 11
    Width = 56
    Height = 21
    MaxLength = 5
    TabOrder = 0
    OnExit = TEdtIdReceitaExit
    OnKeyPress = TEdtIdReceitaKeyPress
  end
  object TGroupBoxProdutosReceita: TRzGroupBox [12]
    Left = 8
    Top = 48
    Width = 636
    Height = 238
    Caption = 'PRODUTOS DA RECEITA'
    TabOrder = 3
    object TLblMarca: TRzLabel
      Left = 11
      Top = 54
      Width = 34
      Height = 13
      Caption = 'Marca'
      Transparent = True
    end
    object TLblIdProduto: TRzLabel
      Left = 11
      Top = 19
      Width = 73
      Height = 13
      Caption = 'ID Produto *'
      Transparent = True
    end
    object TLblProduto: TRzLabel
      Left = 147
      Top = 19
      Width = 55
      Height = 13
      Caption = 'Produto *'
      Transparent = True
    end
    object TLblQtde: TRzLabel
      Left = 447
      Top = 19
      Width = 38
      Height = 13
      Caption = 'Qtde *'
      Transparent = True
    end
    object TEdtUnidadeMedida: TRzLabel
      Left = 491
      Top = 43
      Width = 90
      Height = 13
      Caption = 'Unidade Medida'
      Transparent = True
    end
    object TEdtIdProduto: TRzEdit
      Left = 85
      Top = 16
      Width = 56
      Height = 21
      MaxLength = 5
      TabOrder = 0
      OnExit = TEdtIdProdutoExit
    end
    object TEdtProduto: TRzEdit
      Left = 204
      Top = 16
      Width = 237
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
    end
    object TEdtMarca: TRzEdit
      Left = 85
      Top = 51
      Width = 151
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      FrameHotTrack = True
      FrameVisible = True
      TabOrder = 4
    end
    object TBtnBuscar: TRzButton
      Left = 567
      Top = 16
      Width = 66
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = TBtnBuscarClick
    end
    object TBtnAdicionar: TRzButton
      Left = 567
      Top = 87
      Width = 66
      Caption = 'Adicionar'
      TabOrder = 5
      OnClick = TBtnAdicionarClick
    end
    object TStringGridProdutoReceita: TRzStringGrid
      Left = 8
      Top = 88
      Width = 553
      Height = 134
      BevelInner = bvNone
      BevelKind = bkSoft
      Color = clCream
      FixedColor = clBtnHighlight
      RowCount = 2
      GradientEndColor = clWhite
      GradientStartColor = clCream
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect, goThumbTracking, goFixedColClick, goFixedRowClick, goFixedHotTrack]
      TabOrder = 7
      OnSelectCell = TStringGridProdutoReceitaSelectCell
      DisabledColor = clBtnHighlight
      FocusColor = clBtnFace
      FrameColor = clCream
      FrameHotColor = clHighlightText
      FrameHotTrack = True
      FrameVisible = True
      FramingPreference = fpCustomFraming
      FixedLineColor = clBtnHighlight
      LineColor = clMenuHighlight
      ColWidths = (
        60
        112
        190
        113
        109)
    end
    object TBtnDeletar: TRzBitBtn
      Left = 567
      Top = 118
      Width = 67
      Height = 24
      Caption = 'Deletar'
      TabOrder = 6
      OnClick = TBtnDeletarClick
    end
    object TEdtQtde: TRzEdit
      Left = 491
      Top = 16
      Width = 55
      Height = 21
      Hint = '0,0'
      ImeName = '0,0'
      TabOrder = 2
      TextHint = '0,0'
      OnExit = TEdtQtdeExit
    end
  end
  object TEdtObservacao: TRzExpandEdit [13]
    Left = 93
    Top = 295
    Width = 548
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    ExpandedWidth = 0
  end
  object RzButton1: TRzButton [14]
    Left = 575
    Top = 10
    Width = 66
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = RzButton1Click
  end
end
