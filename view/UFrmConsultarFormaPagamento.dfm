inherited FrmConsultarFormaPagamento: TFrmConsultarFormaPagamento
  Caption = 'Consultar Forma de  Pagamento'
  ClientHeight = 297
  ClientWidth = 597
  ExplicitWidth = 613
  ExplicitHeight = 335
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFP: TRzLabel [0]
    Left = 184
    Top = 11
    Width = 96
    Height = 13
    Caption = 'Forma Pagamento *'
  end
  object TLblIdFP: TRzLabel [1]
    Left = 8
    Top = 11
    Width = 35
    Height = 13
    Caption = 'ID FP *'
  end
  inherited TBtnNovo: TRzBitBtn
    OnClick = TBtnNovoClick
  end
  inherited TBtnEditar: TRzBitBtn
    OnClick = TBtnEditarClick
  end
  inherited TBtnExcluir: TRzBitBtn
    OnClick = TBtnExcluirClick
  end
  object TGroupBoxFormaPagamento: TRzGroupBox
    Left = 8
    Top = 64
    Width = 580
    Height = 169
    Caption = 'DADOS  DA FORMA  DE PAGAMENTO'
    TabOrder = 5
    object TDBGridFormaPagamento: TRzDBGrid
      Left = 16
      Top = 32
      Width = 545
      DataSource = DataModule1.TDataSourceFormaPagamento
      DefaultDrawing = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object TEdtFP: TRzEdit
    Left = 286
    Top = 9
    Width = 221
    Height = 21
    TabOrder = 6
  end
  object TBtnBuscarFP: TRzButton
    Left = 513
    Top = 8
    Caption = 'Buscar'
    TabOrder = 7
  end
  object RzEdit1: TRzEdit
    Left = 64
    Top = 9
    Width = 49
    Height = 21
    TabOrder = 8
  end
end
