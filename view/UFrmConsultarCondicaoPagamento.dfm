inherited FrmConsultarCondicaoPagamento: TFrmConsultarCondicaoPagamento
  Caption = 'Consultar Condi'#231#227'o Pagamento'
  ClientHeight = 273
  ClientWidth = 731
  ExplicitWidth = 747
  ExplicitHeight = 311
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCondicaoPagamento: TRzLabel [0]
    Left = 248
    Top = 8
    Width = 110
    Height = 13
    Caption = 'Condicao Pagamento *'
  end
  object TLblIdCondicaoPagamento: TRzLabel [1]
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'ID C. P. *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 247
    OnClick = TBtnNovoClick
    ExplicitTop = 247
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 160
    Top = 247
    Caption = '&Visualizar'
    OnClick = TBtnEditarClick
    ExplicitLeft = 160
    ExplicitTop = 247
  end
  inherited TBtnExcluir: TRzBitBtn
    Left = 336
    Top = 247
    Visible = False
    ExplicitLeft = 336
    ExplicitTop = 247
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 648
    Top = 247
    ExplicitLeft = 648
    ExplicitTop = 247
  end
  inherited TBtnLimpar: TRzButton
    Left = 496
    Top = 247
    HotTrack = True
    ExplicitLeft = 496
    ExplicitTop = 247
  end
  object TGroupBoxCondicaoPagamento: TRzGroupBox [7]
    Left = 3
    Top = 32
    Width = 720
    Height = 209
    Caption = 'DADOS DA CONDI'#199#195'O DE PAGAMENTO'
    TabOrder = 5
    Transparent = True
    object TDBGridCondicaoPagamento: TRzDBGrid
      Left = 5
      Top = 24
      Width = 708
      Height = 169
      DataSource = DataModule1.TDataSourceCondicaoPagamento
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
  object TEdtCondicaoPagamento: TRzEdit [8]
    Left = 384
    Top = 5
    Width = 258
    Height = 21
    TabOrder = 6
  end
  object TBtnBuscarCondicaoPagamento: TRzButton [9]
    Left = 649
    Top = 2
    Caption = 'Buscar'
    HotTrack = True
    TabOrder = 7
    OnClick = TBtnBuscarCondicaoPagamentoClick
  end
  object TEdtIdCondicaoPagamento: TRzEdit [10]
    Left = 72
    Top = 5
    Width = 57
    Height = 21
    TabOrder = 8
  end
  inherited dxSkinController1: TdxSkinController
    Left = 584
    Top = 240
  end
end
