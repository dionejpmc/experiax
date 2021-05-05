inherited FrmCadastroContasPagar: TFrmCadastroContasPagar
  Caption = 'Cadastro de Contas a Pagar'
  ClientHeight = 363
  ClientWidth = 666
  Position = poDesktopCenter
  OnCreate = FormCreate
  ExplicitWidth = 682
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFornecedor: TRzLabel [0]
    Left = 231
    Top = 100
    Width = 75
    Height = 13
    Caption = 'Fornecedor *'
  end
  object TLblNumNota: TRzLabel [1]
    Left = 12
    Top = 11
    Width = 104
    Height = 13
    Caption = 'Numero da Nota *'
    Transparent = True
  end
  object TLblValorConta: TRzLabel [2]
    Left = 8
    Top = 192
    Width = 97
    Height = 13
    Caption = 'Valor da Conta *'
    Transparent = True
  end
  object TLblObservacao: TRzLabel [3]
    Left = 8
    Top = 278
    Width = 68
    Height = 13
    Caption = 'Observa'#231#227'o'
    Transparent = True
  end
  object TLblCP: TRzLabel [4]
    Left = 231
    Top = 52
    Width = 115
    Height = 13
    Caption = 'Forma Pagamento *'
    Transparent = True
  end
  object TLblSerie: TRzLabel [5]
    Left = 279
    Top = 11
    Width = 41
    Height = 13
    Caption = 'Serie *'
    Transparent = True
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 10
    Top = 310
    Transparent = True
    ExplicitLeft = 10
    ExplicitTop = 310
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 405
    Top = 310
    Transparent = True
    ExplicitLeft = 405
    ExplicitTop = 310
  end
  object TLblDataVencimento: TRzLabel [8]
    Left = 306
    Top = 150
    Width = 127
    Height = 13
    Caption = 'Data de Vencimento *'
    Transparent = True
  end
  object RzLabel1: TRzLabel [9]
    Left = 8
    Top = 52
    Width = 133
    Height = 13
    Caption = 'ID Forma Pagamento *'
    Transparent = True
  end
  object RzLabel2: TRzLabel [10]
    Left = 8
    Top = 100
    Width = 93
    Height = 13
    Caption = 'ID Fornecedor *'
  end
  object TLblDataEntrada: TRzLabel [11]
    Left = 8
    Top = 151
    Width = 86
    Height = 13
    Caption = 'Data Entrada *'
    Transparent = True
  end
  object TLblStatus: TRzLabel [12]
    Left = 258
    Top = 192
    Width = 47
    Height = 13
    Caption = 'Status *'
    Transparent = True
  end
  object TLblDataPagamento: TRzLabel [13]
    Left = 433
    Top = 192
    Width = 110
    Height = 13
    Caption = 'Data  Pagamento *'
    Transparent = True
  end
  object TlblDesconto: TRzLabel [14]
    Left = 258
    Top = 228
    Width = 69
    Height = 13
    Caption = 'Desconto %'
    Transparent = True
  end
  object TLblMulta: TRzLabel [15]
    Left = 11
    Top = 228
    Width = 46
    Height = 13
    Caption = 'Multa %'
    Transparent = True
  end
  object TLblValorTotalConta: TRzLabel [16]
    Left = 433
    Top = 228
    Width = 73
    Height = 13
    Caption = 'Valor Total *'
    Transparent = True
  end
  object TLblNumeroParcela: TRzLabel [17]
    Left = 451
    Top = 12
    Width = 91
    Height = 13
    Caption = 'Numero Parcela'
  end
  inherited TBtnSalvar: TRzButton
    Left = 5
    Top = 337
    TabOrder = 16
    OnClick = TBtnSalvarClick
    ExplicitLeft = 5
    ExplicitTop = 337
  end
  inherited TBtnLimpar: TRzButton
    Left = 288
    Top = 337
    TabOrder = 17
    OnClick = TBtnLimparClick
    ExplicitLeft = 288
    ExplicitTop = 337
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 532
    Top = 310
    TabOrder = 15
    ExplicitLeft = 532
    ExplicitTop = 310
  end
  object TEdtFornecedor: TRzEdit [21]
    Left = 352
    Top = 97
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 20
  end
  object TBtnBuscarForneceodor: TRzButton [22]
    Left = 583
    Top = 95
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = TBtnBuscarForneceodorClick
  end
  object TEdtNumNota: TRzEdit [23]
    Left = 147
    Top = 8
    Width = 89
    Height = 21
    MaxLength = 7
    TabOrder = 0
  end
  object TedtValorConta: TRzEdit [24]
    Left = 147
    Top = 189
    Width = 89
    Height = 21
    MaxLength = 10
    TabOrder = 8
    TextHint = 'R$ 0,00'
    OnExit = TedtValorContaExit
    OnKeyPress = TedtValorContaKeyPress
  end
  object TEdtObservacao: TRzEdit [25]
    Left = 147
    Top = 276
    Width = 382
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 13
  end
  object TEdtFP: TRzEdit [26]
    Left = 352
    Top = 49
    Width = 225
    Height = 21
    Enabled = False
    TabOrder = 21
  end
  object TBtnBuscarCP: TRzButton [27]
    Left = 583
    Top = 46
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = TBtnBuscarCPClick
  end
  object TEdtSerie: TRzEdit [28]
    Left = 352
    Top = 8
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 5
    TabOrder = 1
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 134
    Top = 310
    Width = 126
    Enabled = False
    TabOrder = 14
    ExplicitLeft = 134
    ExplicitTop = 310
    ExplicitWidth = 126
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 587
    Top = 337
    TabOrder = 18
    ExplicitLeft = 587
    ExplicitTop = 337
  end
  object TEdtIDFp: TRzEdit [31]
    Left = 147
    Top = 49
    Width = 65
    Height = 21
    MaxLength = 5
    TabOrder = 2
    OnExit = TEdtIDFpExit
    OnKeyPress = TEdtIDFpKeyPress
  end
  object TEdtIdFornecedor: TRzEdit [32]
    Left = 147
    Top = 97
    Width = 65
    Height = 21
    MaxLength = 5
    TabOrder = 4
    OnExit = TEdtIdFornecedorExit
    OnKeyPress = TEdtIdFornecedorKeyPress
  end
  object TComboBoxStatus: TRzComboBox [33]
    Left = 314
    Top = 189
    Width = 105
    Height = 21
    TabOrder = 9
    OnClick = TComboBoxStatusClick
    OnKeyPress = TComboBoxStatusKeyPress
    Items.Strings = (
      'Pendente'
      'Paga')
  end
  object TDateTimePickerdataEntrada: TDateTimePicker [34]
    Left = 147
    Top = 148
    Width = 118
    Height = 21
    Date = 41159.652369189820000000
    Time = 41159.652369189820000000
    Enabled = False
    TabOrder = 6
  end
  object TDateTimePickerDataVencimento: TDateTimePicker [35]
    Left = 456
    Top = 148
    Width = 121
    Height = 21
    Date = 41159.652369189820000000
    Time = 41159.652369189820000000
    TabOrder = 7
  end
  object TDateTimePickerDataPagamento: TDateTimePicker [36]
    Left = 552
    Top = 189
    Width = 106
    Height = 21
    Date = 41159.705278611110000000
    Time = 41159.705278611110000000
    TabOrder = 10
    OnChange = TDateTimePickerDataPagamentoChange
  end
  object TEdtDesconto: TRzEdit [37]
    Left = 333
    Top = 224
    Width = 86
    Height = 21
    Text = '0,00'
    MaxLength = 5
    TabOrder = 12
    OnExit = TEdtDescontoExit
    OnKeyPress = TEdtDescontoKeyPress
  end
  object TEdtMulta: TRzEdit [38]
    Left = 147
    Top = 224
    Width = 78
    Height = 21
    Text = '0,00'
    MaxLength = 5
    TabOrder = 11
    OnExit = TEdtMultaExit
    OnKeyPress = TEdtMultaKeyPress
  end
  object TEdtValorTotalConta: TRzEdit [39]
    Left = 555
    Top = 224
    Width = 103
    Height = 21
    Enabled = False
    MaxLength = 10
    TabOrder = 19
    TextHint = 'R$ 0,00'
  end
  object TEdtNumeroParcela: TRzEdit [40]
    Left = 548
    Top = 8
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 5
    TabOrder = 22
  end
end
