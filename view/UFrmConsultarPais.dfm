inherited FrmConsultarPais: TFrmConsultarPais
  Caption = 'Consultar Pais'
  ClientHeight = 252
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  object TLblPais: TRzLabel [0]
    AlignWithMargins = True
    Left = 136
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Pais *'
  end
  object TLblID: TRzLabel [1]
    Left = 16
    Top = 24
    Width = 20
    Height = 13
    Caption = 'ID *'
  end
  inherited TBtnNovo: TRzBitBtn
    AlignWithMargins = True
    Top = 219
    OnClick = TBtnNovoClick
    ExplicitTop = 219
  end
  inherited TBtnEditar: TRzBitBtn
    AlignWithMargins = True
    Top = 219
    OnClick = TBtnEditarClick
    ExplicitTop = 219
  end
  inherited TBtnExcluir: TRzBitBtn
    AlignWithMargins = True
    Top = 219
    OnClick = TBtnExcluirClick
    ExplicitTop = 219
  end
  inherited TBtnCancelar: TRzBitBtn
    AlignWithMargins = True
    Top = 219
    ExplicitTop = 219
  end
  inherited TBtnLimpar: TRzButton
    AlignWithMargins = True
    Top = 219
    ExplicitTop = 219
  end
  object TEdtPais: TRzEdit [7]
    AlignWithMargins = True
    Left = 184
    Top = 21
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    FrameHotTrack = True
    FrameHotStyle = fsButtonDown
    FrameStyle = fsButtonDown
    FrameVisible = True
    MaxLength = 50
    TabOrder = 5
    OnKeyPress = TEdtPaisKeyPress
  end
  object TBtnBuscarPais: TRzBitBtn [8]
    AlignWithMargins = True
    Left = 415
    Top = 20
    Width = 73
    Height = 26
    FrameColor = 7617536
    Caption = 'Buscar'
    Color = 15791348
    HotTrack = True
    TabOrder = 6
    OnClick = TBtnBuscarPaisClick
  end
  object TGroupBoxPais: TRzGroupBox [9]
    AlignWithMargins = True
    Left = 16
    Top = 52
    Width = 572
    Height = 161
    BorderColor = clBlack
    Caption = 'Dodos de Pais'
    Color = clBtnHighlight
    DragMode = dmAutomatic
    EnableControlsOnCheck = False
    FlatColor = clCream
    GradientColorStyle = gcsMSOffice
    GradientColorStop = clBtnHighlight
    GroupStyle = gsStandard
    TabOrder = 7
    object TDbGridPais: TRzDBGrid
      Left = 8
      Top = 16
      Width = 553
      Color = clBtnHighlight
      DataSource = DataModule1.TDataSourcePais
      DefaultDrawing = True
      FixedColor = clCream
      GradientEndColor = clCream
      GradientStartColor = clCream
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentColor = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      DisabledColor = clCream
      FrameColor = clCream
      FrameHotColor = clCream
      FrameHotStyle = fsBump
      FrameHotTrack = True
      FrameStyle = fsBump
      FrameVisible = True
      FramingPreference = fpCustomFraming
      FixedLineColor = clCream
      LineColor = clCream
      AltRowShadingColor = clCream
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAIS'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDI'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATACADASTRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAALTERACAO'
          Visible = True
        end>
    end
  end
  object TEdtIdPais: TRzEdit [10]
    Left = 49
    Top = 21
    Width = 60
    Height = 21
    FrameHotTrack = True
    FrameVisible = True
    TabOrder = 8
    OnChange = TEdtIdPaisChange
    OnKeyPress = TEdtIdPaisKeyPress
  end
end
