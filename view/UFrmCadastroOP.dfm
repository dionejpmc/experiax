inherited FrmCadastroOP: TFrmCadastroOP
  Caption = 'Ordem de Produ'#231#227'o'
  ClientHeight = 527
  ClientWidth = 765
  Font.Name = 'Tahoma'
  OnCreate = FormCreate
  ExplicitWidth = 781
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  object TLblNumOP: TRzLabel [0]
    Left = 17
    Top = 8
    Width = 66
    Height = 13
    Caption = 'N'#250'mero OP  *'
  end
  object TLblDataEmicao: TRzLabel [1]
    Left = 202
    Top = 8
    Width = 88
    Height = 13
    Caption = 'Data de Emiss'#227'o *'
  end
  object TLblReceita: TRzLabel [2]
    Left = 202
    Top = 75
    Width = 45
    Height = 13
    Caption = 'Receita *'
  end
  object TLblCustoMtP: TRzLabel [3]
    Left = 8
    Top = 411
    Width = 132
    Height = 13
    Caption = 'Custo Total Materia Prima *'
  end
  object TLblOutrasDespesas: TRzLabel [4]
    Left = 304
    Top = 411
    Width = 91
    Height = 13
    Caption = 'Outras Despesas *'
  end
  object TLblvalorTotalOP: TRzLabel [5]
    Left = 566
    Top = 411
    Width = 92
    Height = 13
    Caption = 'Valor Total da OP *'
  end
  object TLblFuncionario: TRzLabel [6]
    Left = 202
    Top = 41
    Width = 64
    Height = 13
    Caption = 'Funcionario *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 7
    Top = 477
    Width = 97
    ExplicitLeft = 7
    ExplicitTop = 477
    ExplicitWidth = 97
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 537
    Top = 477
    Width = 96
    ExplicitLeft = 537
    ExplicitTop = 477
    ExplicitWidth = 96
  end
  object TLblObservacoes: TRzLabel [9]
    Left = 8
    Top = 444
    Width = 63
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object TLblIdFuncionario: TRzLabel [10]
    Left = 17
    Top = 42
    Width = 78
    Height = 13
    Caption = 'ID Funcionario *'
  end
  object TLblIDReceita: TRzLabel [11]
    Left = 17
    Top = 76
    Width = 56
    Height = 13
    Caption = 'ID Receita*'
  end
  object RzLabel1: TRzLabel [12]
    Left = 17
    Top = 111
    Width = 36
    Height = 13
    Caption = 'QTDE *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 498
    AlignmentVertical = avBottom
    Caption = '&Iniciar'
    ExplicitTop = 498
  end
  inherited TBtnLimpar: TRzButton
    Left = 352
    Top = 502
    AlignmentVertical = avBottom
    OnClick = TBtnLimparClick
    ExplicitLeft = 352
    ExplicitTop = 502
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 639
    Top = 473
    Width = 118
    TabOrder = 12
    ExplicitLeft = 639
    ExplicitTop = 473
    ExplicitWidth = 118
  end
  object TEdtFuncionario: TRzExpandEdit [16]
    Left = 272
    Top = 36
    Width = 311
    Height = 21
    Enabled = False
    TabOrder = 2
    ExpandedWidth = 0
  end
  object TEdtNumeroOP: TRzEdit [17]
    Left = 99
    Top = 5
    Width = 51
    Height = 21
    TabOrder = 13
  end
  object TDateTimeDtEmicao: TRzDateTimePicker [18]
    Left = 304
    Top = 8
    Width = 99
    Height = 21
    Date = 40986.648728159720000000
    Time = 40986.648728159720000000
    TabOrder = 4
  end
  object TEdtReceita: TRzEdit [19]
    Left = 272
    Top = 73
    Width = 311
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object TBtnBuscarReceita: TRzButton [20]
    Left = 601
    Top = 72
    Caption = 'Buscar'
    HotTrack = True
    LightTextStyle = True
    TabOrder = 6
  end
  object TEdtCustoMtP: TRzEdit [21]
    Left = 145
    Top = 408
    Width = 80
    Height = 21
    TabOrder = 7
    TextHint = '00,00 R$'
  end
  object TGroupBoxMateriaProducao: TRzGroupBox [22]
    Left = 7
    Top = 130
    Width = 737
    Height = 272
    Caption = 'Materia Produ'#231#227'o'
    TabOrder = 8
    object TLblIDProduro: TRzLabel
      Left = 10
      Top = 19
      Width = 61
      Height = 13
      Caption = 'ID Produro *'
    end
    object TLblProduto: TRzLabel
      Left = 152
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Produto *'
    end
    object TLblMarca: TRzLabel
      Left = 451
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Marca *'
    end
    object Lbl1: TRzLabel
      Left = 10
      Top = 60
      Width = 65
      Height = 13
      Caption = 'Qunatidade *'
    end
    object TLblUnidadeMedida: TRzLabel
      Left = 150
      Top = 60
      Width = 76
      Height = 13
      Caption = 'Unidade Medida'
    end
    object TStringGridProdutoReceita: TRzStringGrid
      Left = 10
      Top = 84
      Width = 640
      Height = 175
      ColCount = 6
      RowCount = 2
      TabOrder = 0
      ColWidths = (
        60
        67
        181
        136
        91
        91)
    end
    object RzBitBtn1: TRzBitBtn
      Left = 675
      Top = 84
      Width = 58
      Caption = '&Adicionar'
      TabOrder = 1
    end
    object RzBitBtn2: TRzBitBtn
      Left = 675
      Top = 115
      Width = 58
      Caption = '&Remover'
      TabOrder = 2
    end
    object RzBitBtn3: TRzBitBtn
      Left = 675
      Top = 146
      Width = 58
      Caption = '&Editar'
      TabOrder = 3
    end
    object TEdtIdProduto: TRzEdit
      Left = 80
      Top = 16
      Width = 53
      Height = 21
      TabOrder = 4
      OnExit = TEdtIdProdutoExit
    end
    object TEdtProduto: TRzEdit
      Left = 205
      Top = 13
      Width = 236
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object TEdtMarca: TRzEdit
      Left = 495
      Top = 13
      Width = 174
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object TEdtQtdeProduto: TRzEdit
      Left = 80
      Top = 57
      Width = 63
      Height = 21
      TabOrder = 7
    end
  end
  object TEdtOutrasDespesas: TRzEdit [23]
    Left = 397
    Top = 408
    Width = 80
    Height = 21
    TabOrder = 9
    TextHint = '0,00 R$'
  end
  object TEdtValorTotalOP: TRzEdit [24]
    Left = 664
    Top = 408
    Width = 81
    Height = 21
    TabOrder = 10
    TextHint = '0,00 R$'
  end
  object TBtnBuscarFuncionario: TRzButton [25]
    Left = 601
    Top = 34
    Caption = 'Buscar'
    HotTrack = True
    TabOrder = 11
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 122
    Top = 474
    TabOrder = 14
    ExplicitLeft = 122
    ExplicitTop = 474
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 682
    Top = 502
    AlignmentVertical = avBottom
    TabOrder = 3
    ExplicitLeft = 682
    ExplicitTop = 502
  end
  object TEdtObservacoe: TRzEdit [28]
    Left = 145
    Top = 441
    Width = 612
    Height = 21
    TabOrder = 15
  end
  object TEdtIdFuncionario: TRzEdit [29]
    Left = 99
    Top = 39
    Width = 51
    Height = 21
    TabOrder = 16
    OnExit = TEdtIdFuncionarioExit
  end
  object TEdtIdReceita: TRzEdit [30]
    Left = 99
    Top = 73
    Width = 51
    Height = 21
    TabOrder = 17
    OnExit = TEdtIdReceitaExit
  end
  object TEdtQtdeReceita: TRzEdit [31]
    Left = 99
    Top = 103
    Width = 71
    Height = 21
    TabOrder = 18
  end
  object TBtnAdicionarReceita: TRzBitBtn [32]
    Left = 176
    Top = 105
    Width = 71
    Caption = 'Adicionar'
    TabOrder = 19
    OnClick = TBtnAdicionarReceitaClick
  end
end
