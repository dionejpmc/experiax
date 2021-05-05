inherited FrmConsultarCargo: TFrmConsultarCargo
  Caption = 'Consultar Cargo'
  ClientHeight = 250
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCargo: TRzLabel [0]
    Left = 208
    Top = 11
    Width = 38
    Height = 13
    Caption = 'Cargo *'
    HighlightColor = clRed
  end
  object TLblId: TRzLabel [1]
    Left = 8
    Top = 11
    Width = 20
    Height = 13
    Caption = 'ID *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 210
    OnClick = TBtnNovoClick
    ExplicitTop = 210
  end
  inherited TBtnEditar: TRzBitBtn
    Top = 210
    OnClick = TBtnEditarClick
    ExplicitTop = 210
  end
  inherited TBtnExcluir: TRzBitBtn
    Top = 210
    OnClick = TBtnExcluirClick
    ExplicitTop = 210
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 210
    ExplicitTop = 210
  end
  inherited TBtnLimpar: TRzButton
    Top = 210
    ExplicitTop = 210
  end
  object TGroupBoxCargo: TRzGroupBox
    Left = 8
    Top = 35
    Width = 580
    Height = 169
    Caption = 'DADOS DE CARGO'
    TabOrder = 5
    object TDBGridCargo: TRzDBGrid
      Left = 16
      Top = 24
      Width = 537
      DataSource = DataModule1.TDataSourceCargo
      DefaultDrawing = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      FrameHotTrack = True
      FrameVisible = True
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CARGO'
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
  object TEdtCargo: TRzEdit
    Left = 264
    Top = 8
    Width = 233
    Height = 21
    TabOrder = 6
    OnKeyPress = TEdtCargoKeyPress
  end
  object TBtnBuscarCargo: TRzBitBtn
    Left = 512
    Top = 4
    Caption = 'Buscar'
    TabOrder = 7
    OnClick = TBtnBuscarCargoClick
    NumGlyphs = 2
  end
  object TEdtId: TRzEdit
    Left = 66
    Top = 8
    Width = 56
    Height = 21
    TabOrder = 8
    OnKeyPress = TEdtIdKeyPress
  end
end
