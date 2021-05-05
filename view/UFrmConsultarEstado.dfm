inherited FrmConsultarEstado: TFrmConsultarEstado
  Caption = 'Consultar Estado'
  ClientHeight = 254
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  object TLblEstado: TRzLabel [0]
    Left = 168
    Top = 13
    Width = 42
    Height = 13
    Caption = 'Estado *'
  end
  object TLblID: TRzLabel [1]
    Left = 16
    Top = 13
    Width = 20
    Height = 13
    Caption = 'ID *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 224
    OnClick = TBtnNovoClick
    ExplicitTop = 224
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 135
    Top = 224
    OnClick = TBtnEditarClick
    ExplicitLeft = 135
    ExplicitTop = 224
  end
  inherited TBtnExcluir: TRzBitBtn
    Top = 224
    OnClick = TBtnExcluirClick
    ExplicitTop = 224
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 224
    ExplicitTop = 224
  end
  inherited TBtnLimpar: TRzButton
    Top = 224
    ExplicitTop = 224
  end
  object TEdtEstado: TRzEdit [7]
    Left = 216
    Top = 8
    Width = 281
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 5
    OnKeyPress = TEdtEstadoKeyPress
  end
  object TBtnEstado: TRzBitBtn [8]
    Left = 514
    Top = 8
    Width = 74
    Height = 27
    Caption = 'Buscar'
    TabOrder = 6
    OnClick = TBtnEstadoClick
  end
  object TGroupBoxEstado: TRzGroupBox [9]
    Left = 8
    Top = 41
    Width = 580
    Height = 177
    Caption = 'Dados de Estado'
    TabOrder = 7
    object TDBGridEstado: TRzDBGrid
      Left = 8
      Top = 24
      Width = 553
      Height = 137
      Color = clCream
      DataSource = DataModule1.TDataSourceEstado
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
      AltRowShading = True
      AltRowShadingColor = clWhite
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTADO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPAIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAIS'
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
  object TEdtIdEstado: TRzEdit [10]
    Left = 64
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 8
    OnKeyPress = TEdtIdEstadoKeyPress
  end
end
