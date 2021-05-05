inherited FrmConsultarCompra: TFrmConsultarCompra
  Left = 366
  Top = 269
  Caption = 'Consultar Compra'
  ClientHeight = 264
  ClientWidth = 583
  Position = poDesigned
  ExplicitWidth = 599
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  object TLblNumNota: TRzLabel [0]
    Left = 16
    Top = 8
    Width = 87
    Height = 13
    Caption = 'Numero da Nota *'
  end
  object TLblSerie: TRzLabel [1]
    Left = 183
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Serie da Nota *'
  end
  object TlblIdFornecedor: TRzLabel [2]
    Left = 16
    Top = 43
    Width = 71
    Height = 13
    Caption = 'Id Fornecedor '
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 241
    TabOrder = 4
    OnClick = TBtnNovoClick
    ExplicitTop = 241
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 182
    Top = 241
    Caption = '&Visualizar'
    TabOrder = 5
    OnClick = TBtnEditarClick
    ExplicitLeft = 182
    ExplicitTop = 241
  end
  inherited TBtnExcluir: TRzBitBtn
    Left = 368
    Top = 241
    Caption = '&Cancelar'
    TabOrder = 6
    ExplicitLeft = 368
    ExplicitTop = 241
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 505
    Top = 241
    Caption = '&Sair'
    TabOrder = 7
    ExplicitLeft = 505
    ExplicitTop = 241
  end
  inherited TBtnLimpar: TRzButton
    Left = 424
    Top = 241
    TabOrder = 8
    ExplicitLeft = 424
    ExplicitTop = 241
  end
  object TBtnBuscarCompra: TRzButton [8]
    Left = 516
    Top = 8
    Width = 64
    Height = 56
    Caption = 'Buscar'
    LightTextStyle = True
    TabOrder = 3
    OnClick = TBtnBuscarCompraClick
  end
  object TEdtNumNota: TRzEdit [9]
    Left = 112
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object TEdtSerie: TRzEdit [10]
    Left = 263
    Top = 8
    Width = 67
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object TGroupBoxCompra: TRzGroupBox [11]
    Left = 8
    Top = 70
    Width = 570
    Height = 165
    Caption = 'DADOS DA COMPRA'
    TabOrder = 9
    object TDBGridCompra: TRzDBGrid
      Left = 8
      Top = 24
      Width = 553
      Height = 129
      DataSource = DataModule1.TDataSourceContasPagar
      DefaultDrawing = True
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = TDBGridCompraCellClick
      OnDblClick = TDBGridCompraDblClick
    end
  end
  object TEdtFornecedor: TRzEdit [12]
    Left = 199
    Top = 43
    Width = 219
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object TEdtIdFornecedor: TRzEdit [13]
    Left = 112
    Top = 43
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnExit = TEdtIdFornecedorExit
  end
  object TBtnBuscarFornecedor: TBitBtn [14]
    Left = 424
    Top = 41
    Width = 49
    Height = 25
    Caption = 'Buscar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 11
    OnClick = btn1Click
  end
end
