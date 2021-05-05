inherited FrmConsultarClienteJuridico: TFrmConsultarClienteJuridico
  Caption = 'Consultar Cliente Juridico'
  PixelsPerInch = 96
  TextHeight = 13
  object TLblCliente: TRzLabel [0]
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Cliente *'
  end
  object TLblCNPJ: TRzLabel [1]
    Left = 418
    Top = 8
    Width = 34
    Height = 13
    Caption = 'CNPJ *'
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 502
    ExplicitLeft = 502
  end
  object TEdtCliente: TRzEdit
    Left = 72
    Top = 5
    Width = 241
    Height = 21
    TabOrder = 5
  end
  object TBtnBuscarCliente: TRzButton
    Left = 319
    Top = 2
    Caption = 'Buscar'
    TabOrder = 6
  end
  object TGroupBoxClienteJuridico: TRzGroupBox
    Left = 8
    Top = 72
    Width = 569
    Height = 161
    Caption = 'DADOS DE CLIENTE JURIDICO'
    TabOrder = 7
    object RzDBGridClienteJuridico: TRzDBGrid
      Left = 16
      Top = 24
      Width = 545
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
          FieldName = 'rs'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fantasia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpj'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'logradouro'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pais'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'observacoes'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefoneresidencial'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fax'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datacadastro'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataalteracao'
          Width = 85
          Visible = True
        end>
    end
  end
  object TEdtCNPJ: TRzEdit
    Left = 467
    Top = 5
    Width = 121
    Height = 21
    TabOrder = 8
  end
end
