inherited FrmConsultarFuncionario: TFrmConsultarFuncionario
  Caption = 'Consultar Funcionario'
  ClientHeight = 270
  ExplicitHeight = 308
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFuncionario: TRzLabel [0]
    Left = 147
    Top = 12
    Width = 64
    Height = 13
    Caption = 'Funcionario *'
  end
  object TLblId: TRzLabel [1]
    Left = 8
    Top = 11
    Width = 20
    Height = 13
    Caption = 'ID *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 239
    TabOrder = 4
    OnClick = TBtnNovoClick
    ExplicitTop = 239
  end
  inherited TBtnEditar: TRzBitBtn
    Top = 239
    TabOrder = 5
    OnClick = TBtnEditarClick
    ExplicitTop = 239
  end
  inherited TBtnExcluir: TRzBitBtn
    Top = 239
    TabOrder = 6
    OnClick = TBtnExcluirClick
    ExplicitTop = 239
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 239
    TabOrder = 7
    ExplicitTop = 239
  end
  object TGroupBoxFuncionario: TRzGroupBox [6]
    Left = 8
    Top = 37
    Width = 580
    Height = 196
    Caption = 'DADOS DE FUNCIONARIO'
    GradientColorStyle = gcsCustom
    TabOrder = 3
    object TDBGridFuncionario: TRzDBGrid
      Left = 8
      Top = 24
      Width = 561
      Height = 161
      DataSource = DataModule1.TDataSourceFuncionario
      DefaultDrawing = True
      FixedColor = cl3DLight
      GradientEndColor = clCream
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      FrameColor = 12164479
      FrameHotTrack = True
      FrameStyle = fsBump
      FrameVisible = True
      FramingPreference = fpCustomFraming
      FixedLineColor = 12164479
      LineColor = clMenu
    end
  end
  object TEdtFuncionario: TRzEdit [7]
    Left = 232
    Top = 8
    Width = 265
    Height = 21
    MaxLength = 50
    TabOrder = 1
  end
  object TBtnBuscarFuncionario: TRzButton [8]
    Left = 512
    Top = 6
    FrameColor = 7617536
    Caption = 'Buscar'
    Color = 15791348
    HotTrack = True
    TabOrder = 2
  end
  object TEdtIdFuncionario: TRzEdit [9]
    Left = 56
    Top = 8
    Width = 49
    Height = 21
    MaxLength = 5
    TabOrder = 0
    OnKeyPress = TEdtIdFuncionarioKeyPress
  end
  inherited TBtnLimpar: TRzButton
    Top = 239
    TabOrder = 8
    ExplicitTop = 239
  end
end
