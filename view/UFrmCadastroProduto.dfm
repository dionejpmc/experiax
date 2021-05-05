inherited FrmCadastroProduto: TFrmCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 366
  ClientWidth = 587
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 603
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  object TLblProduto: TRzLabel [0]
    Left = 181
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Produto *'
  end
  object TLblDescricao: TRzLabel [1]
    Left = 8
    Top = 41
    Width = 67
    Height = 13
    Caption = 'Descri'#231#227'o *'
  end
  object TLblMarca: TRzLabel [2]
    Left = 8
    Top = 72
    Width = 45
    Height = 13
    Caption = 'Marca *'
  end
  object TLblLocalizacao: TRzLabel [3]
    Left = 10
    Top = 104
    Width = 65
    Height = 13
    Caption = 'Localiza'#231#227'o'
  end
  object TLblObservacao: TRzLabel [4]
    Left = 8
    Top = 246
    Width = 68
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  inherited TLblDataCadastro: TRzLabel
    Left = 8
    Top = 304
    ExplicitLeft = 8
    ExplicitTop = 304
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 314
    Top = 304
    ExplicitLeft = 314
    ExplicitTop = 304
  end
  object TLblIdProduto: TRzLabel [7]
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = 'ID Produto *'
  end
  object TLblVlCompra: TRzLabel [8]
    Left = 8
    Top = 163
    Width = 80
    Height = 13
    Caption = 'Valor Compra'
  end
  object TLblVlVenda: TRzLabel [9]
    Left = 8
    Top = 210
    Width = 70
    Height = 13
    Caption = 'Valor Venda'
  end
  object TLblQtde: TRzLabel [10]
    Left = 208
    Top = 208
    Width = 65
    Height = 13
    Caption = 'Quantidade'
  end
  object TLblUnidadeMedida: TRzLabel [11]
    Left = 331
    Top = 208
    Width = 90
    Height = 13
    Caption = 'Unidade Medida'
  end
  object TLblIPI: TRzLabel [12]
    Left = 200
    Top = 163
    Width = 17
    Height = 13
    Caption = 'IPI'
  end
  object TLblICMS: TRzLabel [13]
    Left = 294
    Top = 163
    Width = 31
    Height = 13
    Caption = 'ICMS'
  end
  inherited TBtnSalvar: TRzButton
    Top = 336
    TabOrder = 15
    OnClick = TBtnSalvarClick
    ExplicitTop = 336
  end
  inherited TBtnLimpar: TRzButton
    Left = 256
    Top = 336
    TabOrder = 16
    OnClick = TBtnLimparClick
    ExplicitLeft = 256
    ExplicitTop = 336
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 450
    Top = 301
    TabOrder = 7
    ExplicitLeft = 450
    ExplicitTop = 301
  end
  object TEdtProduto: TRzEdit [17]
    Left = 242
    Top = 8
    Width = 263
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 0
    OnExit = TEdtProdutoExit
  end
  object TEdtDescricao: TRzEdit [18]
    Left = 117
    Top = 38
    Width = 273
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 1
    OnExit = TEdtDescricaoExit
  end
  object TEdtMarca: TRzEdit [19]
    Left = 117
    Top = 69
    Width = 168
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
    OnExit = TEdtMarcaExit
  end
  object TEdtLocalizacao: TRzEdit [20]
    Left = 117
    Top = 102
    Width = 168
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 25
    TabOrder = 3
    OnExit = TEdtLocalizacaoExit
  end
  object TEdtObservacao: TRzEdit [21]
    Left = 117
    Top = 243
    Width = 318
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 4
  end
  object TRadioGroupTipoProduto: TRzRadioGroup [22]
    Left = 442
    Top = 35
    Width = 137
    Height = 111
    Caption = 'Tipo de Produto *'
    TabOrder = 5
    object TRadioBtnProdutoComun: TRzRadioButton
      Left = 11
      Top = 56
      Width = 84
      Height = 15
      Caption = '2 - Comum'
      Checked = True
      HotTrack = True
      TabOrder = 0
      TabStop = True
      Transparent = True
    end
    object TRadioBtnProdutoProducao: TRzRadioButton
      Left = 11
      Top = 84
      Width = 92
      Height = 15
      Caption = '3 - Produ'#231#227'o'
      HotTrack = True
      TabOrder = 1
      Transparent = True
    end
    object TRadioBtnProdutoMateriaPrima: TRzRadioButton
      Left = 11
      Top = 26
      Width = 118
      Height = 15
      Caption = '1 - Mat'#233'ria Prima'
      HotTrack = True
      TabOrder = 2
      Transparent = True
    end
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 133
    Top = 301
    TabOrder = 8
    ExplicitLeft = 133
    ExplicitTop = 301
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 505
    Top = 336
    TabOrder = 17
    ExplicitLeft = 505
    ExplicitTop = 336
  end
  object TEdtIdProduto: TRzEdit [25]
    Left = 117
    Top = 8
    Width = 52
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object TEdtQtde: TRzEdit [26]
    Left = 279
    Top = 204
    Width = 52
    Height = 21
    Text = '0,00'
    Enabled = False
    TabOrder = 10
  end
  object TEdtVLCompra: TRzMaskEdit [27]
    Left = 117
    Top = 160
    Width = 62
    Height = 21
    Enabled = False
    TabOrder = 11
    Text = '0,00'
  end
  object TEdtVlVenda: TRzMaskEdit [28]
    Left = 117
    Top = 204
    Width = 62
    Height = 21
    Enabled = False
    MaxLength = 7
    TabOrder = 12
    Text = '0,00'
    OnExit = TEdtVlVendaExit
  end
  object TCheckBoxUnidadeMedida: TRzCheckGroup [29]
    Left = 441
    Top = 146
    Width = 138
    Height = 119
    Caption = ' Unidade de Medida'
    TabOrder = 6
    object TCheckKG: TRzCheckBox
      Left = 16
      Top = 19
      Width = 107
      Height = 15
      Caption = 'KG - Kilograma'
      Checked = True
      State = cbChecked
      TabOrder = 0
      Transparent = True
      OnClick = TCheckKGClick
    end
    object TCheckLitros: TRzCheckBox
      Left = 16
      Top = 56
      Width = 69
      Height = 15
      Caption = 'L - Litros'
      State = cbUnchecked
      TabOrder = 1
      Transparent = True
      OnClick = TCheckLitrosClick
    end
    object TCheckUnidades: TRzCheckBox
      Left = 16
      Top = 91
      Width = 71
      Height = 15
      Caption = 'Unidades'
      State = cbUnchecked
      TabOrder = 2
      Transparent = True
      OnClick = TCheckUnidadesClick
    end
  end
  object TEdtIPI: TRzEdit [30]
    Left = 223
    Top = 160
    Width = 52
    Height = 21
    Text = '0,00'
    Enabled = False
    TabOrder = 13
  end
  object TEdtICMS: TRzEdit [31]
    Left = 331
    Top = 160
    Width = 52
    Height = 21
    Text = '0,00'
    Enabled = False
    TabOrder = 14
  end
  inherited dxSkinController1: TdxSkinController
    Left = 344
    Top = 72
  end
end
