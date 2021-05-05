inherited FrmConsultarProduto: TFrmConsultarProduto
  Caption = 'Consultar Produto'
  ClientHeight = 232
  ClientWidth = 608
  ExplicitWidth = 624
  ExplicitHeight = 270
  PixelsPerInch = 96
  TextHeight = 13
  object TLblProduto: TRzLabel [0]
    Left = 176
    Top = 11
    Width = 47
    Height = 13
    Caption = 'Produto *'
  end
  object TLblIDProduto: TRzLabel [1]
    Left = 8
    Top = 11
    Width = 61
    Height = 13
    Caption = 'ID Produto *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 200
    OnClick = TBtnNovoClick
    ExplicitTop = 200
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 120
    Top = 199
    OnClick = TBtnEditarClick
    ExplicitLeft = 120
    ExplicitTop = 199
  end
  inherited TBtnExcluir: TRzBitBtn
    Left = 248
    Top = 199
    OnClick = TBtnExcluirClick
    ExplicitLeft = 248
    ExplicitTop = 199
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 526
    Top = 199
    ExplicitLeft = 526
    ExplicitTop = 199
  end
  object TGroupBoxProduto: TRzGroupBox [6]
    Left = 8
    Top = 39
    Width = 593
    Height = 154
    Caption = 'DADOS DE PRODUTO'
    TabOrder = 4
    object TDBGridProduto: TRzDBGrid
      Left = 16
      Top = 16
      Width = 560
      DataSource = DataModule1.TDataSourceProduto
      DefaultDrawing = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      FrameHotTrack = True
      FrameVisible = True
    end
  end
  object TEdtProduto: TRzEdit [7]
    Left = 229
    Top = 8
    Width = 274
    Height = 21
    TabOrder = 5
  end
  object TBtnBuscarProduto: TRzButton [8]
    Left = 509
    Top = 8
    Caption = 'Buscar'
    TabOrder = 6
    OnClick = TBtnBuscarProdutoClick
  end
  object TEdtId: TRzEdit [9]
    Left = 85
    Top = 8
    Width = 47
    Height = 21
    TabOrder = 7
    OnKeyPress = TEdtIdKeyPress
  end
  inherited TBtnLimpar: TRzButton
    Left = 381
    Top = 199
    TabOrder = 8
    ExplicitLeft = 381
    ExplicitTop = 199
  end
end
