inherited FrmConsultarFornecedor: TFrmConsultarFornecedor
  Caption = 'Consultar Fornecedor'
  ClientHeight = 259
  ClientWidth = 591
  ExplicitWidth = 607
  ExplicitHeight = 297
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFornecedor: TRzLabel [0]
    Left = 161
    Top = 8
    Width = 64
    Height = 13
    Caption = 'Fornecedor *'
  end
  object TLblIdFornecedor: TRzLabel [1]
    Left = 8
    Top = 8
    Width = 78
    Height = 13
    Caption = 'ID Fornecedor *'
  end
  inherited TBtnNovo: TRzBitBtn
    Left = 11
    Top = 231
    OnClick = TBtnNovoClick
    ExplicitLeft = 11
    ExplicitTop = 231
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 139
    Top = 231
    OnClick = TBtnEditarClick
    ExplicitLeft = 139
    ExplicitTop = 231
  end
  inherited TBtnExcluir: TRzBitBtn
    Left = 267
    Top = 231
    OnClick = TBtnExcluirClick
    ExplicitLeft = 267
    ExplicitTop = 231
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 231
    ExplicitTop = 231
  end
  inherited TBtnLimpar: TRzButton
    Left = 395
    Top = 231
    ExplicitLeft = 395
    ExplicitTop = 231
  end
  object TGroupBoxFornecedor: TRzGroupBox [7]
    Left = 8
    Top = 37
    Width = 580
    Height = 172
    Caption = 'DADOS DE FORNECEDOR'
    TabOrder = 5
    object TDBGridFornecedor: TRzDBGrid
      Left = 16
      Top = 16
      Width = 545
      Height = 137
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      DataSource = DataModule1.TDataSourceFornecedor
      DefaultDrawing = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTitleHotTrack]
      ParentBiDiMode = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = TDBGridFornecedorCellClick
    end
  end
  object TEdtFornecedor: TRzEdit [8]
    Left = 231
    Top = 8
    Width = 287
    Height = 21
    CharCase = ecUpperCase
    FrameHotTrack = True
    FrameVisible = True
    OEMConvert = True
    TabOrder = 6
  end
  object TBtnBuscarFornecedor: TRzButton [9]
    Left = 524
    Top = 6
    Width = 64
    FrameColor = 7617536
    Caption = 'Buscar'
    Color = 15791348
    HotTrack = True
    TabOrder = 7
    OnClick = TBtnBuscarFornecedorClick
  end
  object TEdtIdFornecedor: TRzEdit [10]
    Left = 97
    Top = 5
    Width = 57
    Height = 21
    TabOrder = 8
  end
end
