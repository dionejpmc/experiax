inherited FrmCadastroClienteJuridico: TFrmCadastroClienteJuridico
  Caption = 'Cadastro de Cliente Juridico'
  ClientHeight = 511
  ExplicitTop = -196
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  object TLblFantasia: TRzLabel [0]
    Left = 8
    Top = 48
    Width = 58
    Height = 13
    Caption = 'Fantasia *'
  end
  object TLblCNPJ: TRzLabel [1]
    Left = 8
    Top = 88
    Width = 40
    Height = 13
    Caption = 'CNPJ *'
  end
  object TLblRS: TRzLabel [2]
    Left = 240
    Top = 8
    Width = 84
    Height = 13
    Caption = 'Ras'#227'o Social *'
  end
  object TLblIE: TRzLabel [3]
    Left = 331
    Top = 88
    Width = 115
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual *'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 7
    Top = 455
    ExplicitLeft = 7
    ExplicitTop = 455
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 305
    Top = 455
    ExplicitLeft = 305
    ExplicitTop = 455
  end
  object TLblIdCliente: TRzLabel [6]
    Left = 11
    Top = 8
    Width = 29
    Height = 13
    Caption = 'ID  *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 478
    ExplicitTop = 478
  end
  inherited TBtnLimpar: TRzButton
    Top = 478
    ExplicitTop = 478
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 425
    Top = 452
    TabOrder = 8
    ExplicitLeft = 425
    ExplicitTop = 452
  end
  object TGroupBoxEnderecoCliente: TRzGroupBox [10]
    Left = 8
    Top = 130
    Width = 546
    Height = 181
    Caption = 'DADOS DE ENDERE'#199'O'
    TabOrder = 2
    object TLblLogradouro: TRzLabel
      Left = 16
      Top = 30
      Width = 76
      Height = 13
      Caption = 'Logradouro *'
    end
    object TLblNumero: TRzLabel
      Left = 399
      Top = 30
      Width = 56
      Height = 13
      Caption = 'Numero *'
    end
    object TLblCEP: TRzLabel
      Left = 16
      Top = 63
      Width = 34
      Height = 13
      Caption = 'CEP *'
    end
    object TLblbairro: TRzLabel
      Left = 226
      Top = 62
      Width = 46
      Height = 13
      Caption = 'Bairro *'
    end
    object TLblObservacoes: TRzLabel
      Left = 15
      Top = 151
      Width = 74
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object TLblCidade: TRzLabel
      Left = 149
      Top = 93
      Width = 51
      Height = 13
      Caption = 'Cidade *'
    end
    object TLblIDCidade: TRzLabel
      Left = 15
      Top = 92
      Width = 25
      Height = 13
      Caption = 'ID *'
    end
    object TEdtCidade: TRzEdit
      Left = 219
      Top = 93
      Width = 227
      Height = 21
      TabOrder = 0
    end
    object TBtnBuscarCidade: TRzButton
      Left = 452
      Top = 90
      Caption = 'Buscar'
      TabOrder = 1
    end
    object TEdtLogradouro: TRzEdit
      Left = 91
      Top = 29
      Width = 284
      Height = 21
      TabOrder = 2
    end
    object TEdtCEP: TRzEdit
      Left = 91
      Top = 60
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object TEdtBairro: TRzEdit
      Left = 278
      Top = 62
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object TEdtNumero: TRzEdit
      Left = 461
      Top = 28
      Width = 63
      Height = 21
      TabOrder = 5
    end
    object TEdtObservacoes: TRzEdit
      Left = 91
      Top = 148
      Width = 435
      Height = 21
      TabOrder = 6
    end
    object TEdtIdCidade: TRzEdit
      Left = 91
      Top = 88
      Width = 52
      Height = 21
      TabOrder = 7
    end
  end
  object TGroupBoxContatoCliente: TRzGroupBox [11]
    Left = 8
    Top = 317
    Width = 546
    Height = 114
    Caption = 'DADOS DE CONTATO DE CLIENTE'
    TabOrder = 9
    object TLblTelefoneComercial: TRzLabel
      Left = 3
      Top = 24
      Width = 122
      Height = 13
      Caption = 'Telefone Comercial *'
    end
    object TLblCelular1: TRzLabel
      Left = 258
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Celular'
    end
    object TLblFax: TRzLabel
      Left = 258
      Top = 79
      Width = 20
      Height = 13
      Caption = 'Fax'
    end
    object TLblEmail: TRzLabel
      Left = 258
      Top = 51
      Width = 34
      Height = 13
      Caption = 'E-Mail'
    end
    object TLblTelefoneComercial2: TRzLabel
      Left = 5
      Top = 72
      Width = 125
      Height = 13
      Caption = 'Telefone Comercial II'
    end
    object TEdtTelefoneResidencial: TRzEdit
      Left = 136
      Top = 23
      Width = 119
      Height = 21
      TabOrder = 0
    end
    object TEdtTelefoneCelular: TRzEdit
      Left = 309
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object TEdtFax: TRzEdit
      Left = 309
      Top = 75
      Width = 119
      Height = 21
      TabOrder = 2
    end
    object TEdtEmail: TRzEdit
      Left = 309
      Top = 48
      Width = 185
      Height = 21
      TabOrder = 3
    end
    object RzEdit1: TRzEdit
      Left = 136
      Top = 70
      Width = 119
      Height = 21
      TabOrder = 4
    end
  end
  object TEdtCNPJ: TRzEdit [12]
    Left = 126
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object TEdtFantasia: TRzEdit [13]
    Left = 126
    Top = 45
    Width = 197
    Height = 21
    TabOrder = 5
  end
  object TEdtIE: TRzEdit [14]
    Left = 449
    Top = 85
    Width = 105
    Height = 21
    TabOrder = 6
  end
  object TEdtRS: TRzEdit [15]
    Left = 359
    Top = 8
    Width = 195
    Height = 21
    TabOrder = 7
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 129
    Top = 453
    TabOrder = 10
    ExplicitLeft = 129
    ExplicitTop = 453
  end
  inherited TBtnCancelar: TRzBitBtn
    Top = 478
    TabOrder = 3
    ExplicitTop = 478
  end
  object TEdtIdCliente: TRzEdit
    Left = 70
    Top = 7
    Width = 59
    Height = 21
    TabOrder = 11
  end
end
