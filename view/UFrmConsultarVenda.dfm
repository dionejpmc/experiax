inherited FrmConsultarVenda: TFrmConsultarVenda
  Width = 642
  Height = 298
  AutoScroll = True
  Caption = 'CONSULTAR VENDA'
  ExplicitWidth = 642
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  object TLblNumeroNota: TLabel [0]
    Left = 8
    Top = 11
    Width = 72
    Height = 13
    Caption = 'Numero Nota *'
  end
  object TLblSerie: TLabel [1]
    Left = 197
    Top = 11
    Width = 33
    Height = 13
    Caption = 'Serie *'
  end
  object TLblDataVenda: TLabel [2]
    Left = 336
    Top = 11
    Width = 56
    Height = 13
    Caption = 'Data Venda'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 231
    OnClick = TBtnNovoClick
    ExplicitTop = 231
  end
  inherited TBtnEditar: TRzBitBtn
    Left = 144
    Top = 231
    Caption = '&Visualizar'
    OnClick = TBtnEditarClick
    ExplicitLeft = 144
    ExplicitTop = 231
  end
  inherited TBtnExcluir: TRzBitBtn
    Left = 288
    Top = 231
    ExplicitLeft = 288
    ExplicitTop = 231
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 542
    Top = 231
    ExplicitLeft = 542
    ExplicitTop = 231
  end
  inherited TBtnLimpar: TRzButton
    Left = 424
    Top = 231
    Visible = False
    ExplicitLeft = 424
    ExplicitTop = 231
  end
  object RzGroupBox1: TRzGroupBox [8]
    Left = 9
    Top = 36
    Width = 609
    Height = 189
    Caption = 'DADOS DA VENDA'
    TabOrder = 5
    object TDBGridVenda: TRzDBGrid
      Left = 16
      Top = 16
      Width = 585
      Height = 153
      DataSource = DataModule1.TDataSourceVenda
      DefaultDrawing = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = TDBGridVendaCellClick
      OnDblClick = TDBGridVendaDblClick
    end
  end
  object TEdtNumeroNota: TRzEdit [9]
    Left = 86
    Top = 8
    Width = 81
    Height = 21
    TabOrder = 6
  end
  object TEdtSerie: TRzEdit [10]
    Left = 236
    Top = 8
    Width = 78
    Height = 21
    TabOrder = 7
  end
  object TDateTimePickerDataEmicao: TRzDateTimePicker [11]
    Left = 398
    Top = 8
    Width = 123
    Height = 21
    Date = 41192.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 41192.000000000000000000
    Color = clBtnHighlight
    TabOrder = 8
    OnClick = TDateTimePickerDataEmicaoClick
    FrameHotColor = clSkyBlue
    FrameHotStyle = fsButtonDown
    FrameHotTrack = True
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ShowToday = True
  end
  object TBtnBuscar: TRzButton [12]
    Left = 543
    Top = 5
    Caption = 'Buscar'
    TabOrder = 9
    OnClick = TBtnBuscarClick
  end
  inherited dxSkinController1: TdxSkinController
    Left = 592
    Top = 224
  end
end
