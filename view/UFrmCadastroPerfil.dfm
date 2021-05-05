inherited FrmCadastroPerfilAcesso: TFrmCadastroPerfilAcesso
  Caption = 'CADASTRO DE PERFIL DE ACESSO'
  ClientHeight = 360
  ClientWidth = 596
  TransparentColorValue = clCream
  ExplicitWidth = 612
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited TLblDataCadastro: TRzLabel
    Left = 18
    Top = 307
    ExplicitLeft = 18
    ExplicitTop = 307
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 334
    Top = 307
    ExplicitLeft = 334
    ExplicitTop = 307
  end
  object TLblNivel: TRzLabel [2]
    Left = 8
    Top = 8
    Width = 94
    Height = 13
    Caption = 'Nome do N'#237'vel *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 334
    ExplicitTop = 334
  end
  inherited TBtnLimpar: TRzButton
    Left = 268
    Top = 331
    ExplicitLeft = 268
    ExplicitTop = 331
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 459
    Top = 307
    ExplicitLeft = 459
    ExplicitTop = 307
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 140
    Top = 304
    ExplicitLeft = 140
    ExplicitTop = 304
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 513
    Top = 334
    ExplicitLeft = 513
    ExplicitTop = 334
  end
  object TEdtnivel: TRzEdit
    Left = 132
    Top = 5
    Width = 211
    Height = 21
    TabOrder = 5
  end
  object TGroupBoxNivelAcesso: TRzGroupBox
    Left = 8
    Top = 32
    Width = 580
    Height = 250
    BorderColor = clGreen
    BorderOuter = fsButtonDown
    BorderWidth = 1
    Caption = 'N'#237'vel de Acesso'
    FlatColor = clHotLight
    ParentColor = True
    TabOrder = 6
    object RzTabControl1: TRzTabControl
      Left = 16
      Top = 24
      Width = 558
      Height = 225
      AlignTabs = True
      BackgroundColor = clCream
      BoldCurrentTab = True
      ButtonColor = clBtnHighlight
      Color = clBtnHighlight
      DragIndicatorColor = clGreen
      FlatColor = clGreen
      HotTrackColor = clHighlight
      MultiLine = True
      ParentBackgroundColor = False
      ParentColor = False
      TabColors.HighlightBar = 1350640
      TabColors.Shadow = cl3DLight
      TabIndex = 2
      TabOrder = 0
      Tabs = <
        item
          Caption = 'N'#205'VEL DE CADASTRO'
        end
        item
          Caption = 'N'#205'VEL DE CONSULTA'
        end
        item
          Caption = 'N'#205'VEL FINANCEIRO'
        end>
      Transparent = True
      FixedDimension = 19
    end
  end
end
