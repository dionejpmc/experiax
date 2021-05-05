inherited FrmConsultarReceita: TFrmConsultarReceita
  Caption = 'Consultar Receita'
  ClientHeight = 256
  ClientWidth = 623
  DefaultMonitor = dmDesktop
  Position = poDesktopCenter
  ExplicitWidth = 639
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  object TLblReceita: TRzLabel [0]
    Left = 166
    Top = 21
    Width = 45
    Height = 13
    Caption = 'Receita *'
  end
  object TLblIdReceita: TRzLabel [1]
    Left = 8
    Top = 21
    Width = 59
    Height = 13
    Caption = 'ID Receita *'
  end
  inherited TBtnNovo: TRzBitBtn
    Top = 231
    OnClick = TBtnNovoClick
    ExplicitTop = 231
  end
  inherited TBtnEditar: TRzBitBtn
    Top = 231
    ExplicitTop = 231
  end
  inherited TBtnExcluir: TRzBitBtn
    Top = 231
    ExplicitTop = 231
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 524
    Top = 231
    ExplicitLeft = 524
    ExplicitTop = 231
  end
  inherited TBtnLimpar: TRzButton
    Top = 231
    ExplicitTop = 231
  end
  object TGroupBoxReceita: TRzGroupBox [7]
    Left = 8
    Top = 45
    Width = 591
    Height = 170
    Caption = 'DADOS DA RECEITA'
    TabOrder = 5
    object TDBGridReceita: TRzDBGrid
      Left = 7
      Top = 16
      Width = 564
      Height = 145
      DataSource = DataModule1.TDataSourceReceita
      DefaultDrawing = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECEITA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDEITENS'
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
  object TEdtReceita: TRzEdit [8]
    Left = 224
    Top = 18
    Width = 289
    Height = 21
    CharCase = ecUpperCase
    FrameHotTrack = True
    FrameVisible = True
    MaxLength = 50
    TabOrder = 6
  end
  object TBtnBuscarReceita: TRzButton [9]
    Left = 524
    Top = 15
    FrameColor = 7617536
    Caption = 'Buscar'
    Color = 15791348
    HotTrack = True
    TabOrder = 7
  end
  object TEdtIdReceita: TRzEdit [10]
    Left = 80
    Top = 18
    Width = 57
    Height = 21
    MaxLength = 5
    TabOrder = 8
  end
  inherited dxSkinController1: TdxSkinController
    Left = 584
    Top = 176
  end
end
