inherited FrmConsultarContasPagar: TFrmConsultarContasPagar
  Caption = 'Consultar Contas Pagar'
  ClientHeight = 290
  ClientWidth = 748
  ExplicitWidth = 764
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 13
  object TLblNumNota: TRzLabel [0]
    Left = 13
    Top = 8
    Width = 87
    Height = 13
    Caption = 'Numero da Nota *'
  end
  object TLblSerie: TRzLabel [1]
    Left = 198
    Top = 11
    Width = 33
    Height = 13
    Caption = 'Serie *'
  end
  inherited TBtnNovo: TRzBitBtn
    OnClick = TBtnNovoClick
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 184
    OnClick = TBtnEditarClick
    ExplicitLeft = 184
  end
  inherited TBtnExcluir: TRzBitBtn
    Left = 352
    ExplicitLeft = 352
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 665
    ExplicitLeft = 665
  end
  inherited TBtnLimpar: TRzButton
    Left = 520
    ExplicitLeft = 520
  end
  object TEdtSerie: TRzEdit [7]
    Left = 244
    Top = 8
    Width = 78
    Height = 21
    TabOrder = 5
  end
  object TEdtNumNota: TRzEdit [8]
    Left = 106
    Top = 8
    Width = 86
    Height = 21
    TabOrder = 6
  end
  object TGroupBoxContasReceber: TRzGroupBox [9]
    Left = 8
    Top = 37
    Width = 732
    Height = 212
    Caption = 'Consultar Contas Pagar'
    TabOrder = 7
    object TDBGridContasPagar: TRzDBGrid
      Left = 16
      Top = 24
      Width = 713
      Height = 169
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Color = clBtnFace
      Ctl3D = True
      DataSource = DataModule1.TDataSourceContasPagar
      DefaultDrawing = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTitleClick]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      FrameHotTrack = True
      FrameVisible = True
      FixedLineColor = clHotLight
    end
  end
  object TBtnBuscarForneceodor: TRzButton [10]
    Left = 328
    Top = 6
    Caption = 'Buscar'
    TabOrder = 8
  end
end
