inherited FrmConsultarOrdemProducao: TFrmConsultarOrdemProducao
  Caption = 'Consultar Odem de Produ'#231#227'o'
  ClientHeight = 259
  ExplicitHeight = 297
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCliente: TRzLabel [0]
    Left = 8
    Top = 14
    Width = 72
    Height = 13
    Caption = 'Numro da OP *'
  end
  object TLblDataEmicao: TRzLabel [1]
    Left = 244
    Top = 14
    Width = 83
    Height = 13
    Caption = 'Data de Emi'#231#227'o *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 223
    OnClick = TBtnNovoClick
    ExplicitTop = 223
  end
  inherited TBtnEditar: TRzBitBtn
    Top = 223
    Visible = False
    ExplicitTop = 223
  end
  inherited TBtnExcluir: TRzBitBtn
    Top = 223
    Caption = 'Finalizar'
    ExplicitTop = 223
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 223
    ExplicitTop = 223
  end
  inherited TBtnLimpar: TRzButton
    Top = 223
    Visible = False
    ExplicitTop = 223
  end
  object TGroupBoxOP: TRzGroupBox [7]
    Left = 8
    Top = 39
    Width = 580
    Height = 178
    Caption = 'DADOS DA ORDEM DE PRODU'#199#195'O'
    Color = clWhite
    FlatColor = clAppWorkSpace
    GradientColorStyle = gcsMSOffice
    TabOrder = 5
    VisualStyle = vsGradient
    object TDBGridOP: TRzDBGrid
      Left = 8
      Top = 24
      Width = 555
      Height = 137
      DataSource = DataModule1.TDataSourceOP
      DefaultDrawing = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object TBtnBuscarCliente: TRzButton [8]
    Left = 488
    Top = 8
    Caption = 'Buscar'
    HotTrack = True
    TabOrder = 6
  end
  object RzEdit1: TRzEdit [9]
    Left = 90
    Top = 11
    Width = 71
    Height = 21
    TabOrder = 7
  end
  object RzDateTimePicker1: TRzDateTimePicker [10]
    Left = 346
    Top = 10
    Width = 121
    Height = 21
    Date = 41124.668648321760000000
    Time = 41124.668648321760000000
    TabOrder = 8
  end
  inherited dxSkinController1: TdxSkinController
    Top = 216
  end
end
