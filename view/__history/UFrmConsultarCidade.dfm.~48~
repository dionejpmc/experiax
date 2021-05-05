inherited FrmConsultarCidade: TFrmConsultarCidade
  Caption = 'Consultar Cidade'
  ClientHeight = 232
  ExplicitHeight = 270
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCidade: TRzLabel [0]
    Left = 169
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Cidade *'
  end
  object TLblID: TRzLabel [1]
    Left = 8
    Top = 8
    Width = 20
    Height = 13
    Caption = 'ID *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 202
    OnClick = TBtnNovoClick
    ExplicitTop = 202
  end
  inherited TBtnEditar: TRzBitBtn
    Top = 202
    OnClick = TBtnEditarClick
    ExplicitTop = 202
  end
  inherited TBtnExcluir: TRzBitBtn
    Top = 202
    OnClick = TBtnExcluirClick
    ExplicitTop = 202
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 202
    ExplicitTop = 202
  end
  inherited TBtnLimpar: TRzButton
    Top = 202
    ExplicitTop = 202
  end
  object TGroupBoxCidade: TRzGroupBox [7]
    Left = 0
    Top = 35
    Width = 580
    Height = 161
    Caption = 'Dados de Cidade'
    TabOrder = 5
    object TDBGridCidade: TRzDBGrid
      Left = 16
      Top = 24
      Width = 553
      DataSource = DataModule1.TDataSourceCidade
      DefaultDrawing = True
      FixedColor = clCream
      GradientEndColor = clCream
      GradientStartColor = clCream
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      DisabledColor = clCream
      FrameColor = clCream
      FrameHotColor = clCream
      FrameHotStyle = fsButtonDown
      FrameHotTrack = True
      FrameStyle = fsButtonDown
      FrameVisible = True
      FixedLineColor = clCream
      LineColor = clCream
      AltRowShadingColor = clCream
    end
  end
  object TEdtCidade: TRzEdit [8]
    Left = 232
    Top = 5
    Width = 257
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 6
    OnKeyPress = TEdtCidadeKeyPress
  end
  object TBtnBuscarCidade: TRzButton [9]
    Left = 505
    Top = 4
    Height = 24
    Caption = 'Buscar'
    TabOrder = 7
    OnClick = TBtnBuscarCidadeClick
  end
  object TEdtIdCidade: TRzMaskEdit [10]
    Left = 40
    Top = 8
    Width = 73
    Height = 21
    TabOrder = 8
    OnKeyPress = TEdtIdCidadeKeyPress
  end
end
