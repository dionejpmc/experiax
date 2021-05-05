object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 474
  Width = 1213
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'H:\Sincronisado\Dropbox\Faculdade-UDC\7\Estagio Supervisionado I' +
      'II\FDB\DBEXPERIAX.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 1157
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 1064
    Top = 64
  end
  object TDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = IBQuery1
    Left = 1064
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 1160
    Top = 64
  end
  object TDataSourceEstado: TDataSource
    DataSet = IBDataSetEstado
    Left = 136
    Top = 9
  end
  object IBDataSetEstado: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from ESTADO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ESTADO'
      '  (DATAALTERACAO, DATACADASTRO, DDD, ESTADO, ID, IDPAIS, SIGLA)'
      'values'
      
        '  (:DATAALTERACAO, :DATACADASTRO, :DDD, :ESTADO, :ID, :IDPAIS, :' +
        'SIGLA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDPAIS,'
      '  ESTADO,'
      '  SIGLA,'
      '  DDD,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from ESTADO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from ESTADO')
    ModifySQL.Strings = (
      'update ESTADO'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DDD = :DDD,'
      '  ESTADO = :ESTADO,'
      '  ID = :ID,'
      '  IDPAIS = :IDPAIS,'
      '  SIGLA = :SIGLA'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_ESTADO_ID'
    Active = True
    Left = 136
    Top = 71
    object IBDataSetEstadoID: TIntegerField
      FieldName = 'ID'
      Origin = '"ESTADO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetEstadoESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"ESTADO"."ESTADO"'
      Required = True
      Size = 50
    end
    object IBDataSetEstadoSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"ESTADO"."SIGLA"'
      Required = True
      Size = 3
    end
    object IBDataSetEstadoDDD: TIBStringField
      FieldName = 'DDD'
      Origin = '"ESTADO"."DDD"'
      Required = True
      Size = 5
    end
    object IBDataSetEstadoIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
      Origin = '"ESTADO"."IDPAIS"'
      Required = True
    end
    object IBDataSetEstadoPAIS: TStringField
      FieldKind = fkLookup
      FieldName = 'PAIS'
      LookupDataSet = IBDataSetPais
      LookupKeyFields = 'ID'
      LookupResultField = 'PAIS'
      KeyFields = 'IDPAIS'
      Size = 50
      Lookup = True
    end
    object IBDataSetEstadoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"ESTADO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetEstadoDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"ESTADO"."DATAALTERACAO"'
    end
  end
  object IBDataSetProduto: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (DATAALTERACAO, DATACADASTRO, DESCRICAO, ICMS, ID, IPI, LOCALI' +
        'ZACAO, '
      
        '   MARCA, OBSERVACOES, PRODUTO, QTDE, TIPO, TIPOUNIDADE, VALORCO' +
        'MPRA, VALORVENDA)'
      'values'
      
        '  (:DATAALTERACAO, :DATACADASTRO, :DESCRICAO, :ICMS, :ID, :IPI, ' +
        ':LOCALIZACAO, '
      
        '   :MARCA, :OBSERVACOES, :PRODUTO, :QTDE, :TIPO, :TIPOUNIDADE, :' +
        'VALORCOMPRA, '
      '   :VALORVENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  TIPO,'
      '  DESCRICAO,'
      '  PRODUTO,'
      '  QTDE,'
      '  VALORCOMPRA,'
      '  VALORVENDA,'
      '  IPI,'
      '  ICMS,'
      '  TIPOUNIDADE,'
      '  MARCA,'
      '  LOCALIZACAO,'
      '  OBSERVACOES,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from PRODUTO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from PRODUTO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ICMS = :ICMS,'
      '  ID = :ID,'
      '  IPI = :IPI,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  MARCA = :MARCA,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  PRODUTO = :PRODUTO,'
      '  QTDE = :QTDE,'
      '  TIPO = :TIPO,'
      '  TIPOUNIDADE = :TIPOUNIDADE,'
      '  VALORCOMPRA = :VALORCOMPRA,'
      '  VALORVENDA = :VALORVENDA'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PRODUTO_ID'
    Active = True
    Left = 690
    Top = 75
    object IBDataSetProdutoPRODUTO: TIBStringField
      DisplayWidth = 60
      FieldName = 'PRODUTO'
      Origin = '"PRODUTO"."PRODUTO"'
      Required = True
      Size = 50
    end
    object IBDataSetProdutoDESCRICAO: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object IBDataSetProdutoMARCA: TIBStringField
      DisplayWidth = 60
      FieldName = 'MARCA'
      Origin = '"PRODUTO"."MARCA"'
      Size = 50
    end
    object IBDataSetProdutoVALORVENDA: TFloatField
      DisplayWidth = 13
      FieldName = 'VALORVENDA'
      Origin = '"PRODUTO"."VALORVENDA"'
    end
    object IBDataSetProdutoVALORCOMPRA: TFloatField
      DisplayWidth = 15
      FieldName = 'VALORCOMPRA'
      Origin = '"PRODUTO"."VALORCOMPRA"'
    end
    object IBDataSetProdutoQTDE: TFloatField
      DisplayWidth = 12
      FieldName = 'QTDE'
      Origin = '"PRODUTO"."QTDE"'
    end
    object IBDataSetProdutoID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Origin = '"PRODUTO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoTIPO: TIntegerField
      DisplayWidth = 12
      FieldName = 'TIPO'
      Origin = '"PRODUTO"."TIPO"'
      Required = True
    end
    object IBDataSetProdutoIPI: TFloatField
      DisplayWidth = 12
      FieldName = 'IPI'
      Origin = '"PRODUTO"."IPI"'
    end
    object IBDataSetProdutoICMS: TFloatField
      DisplayWidth = 12
      FieldName = 'ICMS'
      Origin = '"PRODUTO"."ICMS"'
    end
    object IBDataSetProdutoTIPOUNIDADE: TIntegerField
      DisplayWidth = 14
      FieldName = 'TIPOUNIDADE'
      Origin = '"PRODUTO"."TIPOUNIDADE"'
      Required = True
    end
    object IBDataSetProdutoLOCALIZACAO: TIBStringField
      DisplayWidth = 30
      FieldName = 'LOCALIZACAO'
      Origin = '"PRODUTO"."LOCALIZACAO"'
      Size = 25
    end
    object IBDataSetProdutoOBSERVACOES: TIBStringField
      DisplayWidth = 36
      FieldName = 'OBSERVACOES'
      Origin = '"PRODUTO"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetProdutoDATACADASTRO: TDateField
      DisplayWidth = 17
      FieldName = 'DATACADASTRO'
      Origin = '"PRODUTO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetProdutoDATAALTERACAO: TDateField
      DisplayWidth = 18
      FieldName = 'DATAALTERACAO'
      Origin = '"PRODUTO"."DATAALTERACAO"'
    end
  end
  object TDataSourceProduto: TDataSource
    DataSet = IBDataSetProduto
    Left = 685
    Top = 8
  end
  object TDataSourceReceita: TDataSource
    DataSet = IBDataSetReceita
    Left = 584
    Top = 8
  end
  object IBDataSetFornecedor: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (BAIRRO, CELULAR, CELULAR2, CEP, CNPJ, DATAALTERACAO, DATACADA' +
        'STRO, EMAIL, '
      
        '   FANTASIA, FAX, ID, IDCIDADE, INSCRICAOESTADUAL, LOGRADOURO, N' +
        'UMERO, '
      
        '   OBSERVACOES, RAZAOSOCIAL, TELEFONECOMERCIAL, TELEFONECOMERCIA' +
        'L2, TIPO)'
      'values'
      
        '  (:BAIRRO, :CELULAR, :CELULAR2, :CEP, :CNPJ, :DATAALTERACAO, :D' +
        'ATACADASTRO, '
      
        '   :EMAIL, :FANTASIA, :FAX, :ID, :IDCIDADE, :INSCRICAOESTADUAL, ' +
        ':LOGRADOURO, '
      
        '   :NUMERO, :OBSERVACOES, :RAZAOSOCIAL, :TELEFONECOMERCIAL, :TEL' +
        'EFONECOMERCIAL2, '
      '   :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDCIDADE,'
      '  RAZAOSOCIAL,'
      '  FANTASIA,'
      '  INSCRICAOESTADUAL,'
      '  CNPJ,'
      '  TIPO,'
      '  LOGRADOURO,'
      '  NUMERO,'
      '  CEP,'
      '  BAIRRO,'
      '  OBSERVACOES,'
      '  TELEFONECOMERCIAL,'
      '  TELEFONECOMERCIAL2,'
      '  CELULAR,'
      '  CELULAR2,'
      '  FAX,'
      '  EMAIL,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from FORNECEDOR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from FORNECEDOR')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CELULAR2 = :CELULAR2,'
      '  CEP = :CEP,'
      '  CNPJ = :CNPJ,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  EMAIL = :EMAIL,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  ID = :ID,'
      '  IDCIDADE = :IDCIDADE,'
      '  INSCRICAOESTADUAL = :INSCRICAOESTADUAL,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NUMERO = :NUMERO,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  TELEFONECOMERCIAL = :TELEFONECOMERCIAL,'
      '  TELEFONECOMERCIAL2 = :TELEFONECOMERCIAL2,'
      '  TIPO = :TIPO'
      'where'
      '  ID = :OLD_ID')
    Filtered = True
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_FORNECEDOR_ID'
    Active = True
    Left = 805
    Top = 74
    object IBDataSetFornecedorRAZAOSOCIAL: TIBStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = '"FORNECEDOR"."RAZAOSOCIAL"'
      Required = True
      Size = 50
    end
    object IBDataSetFornecedorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"FORNECEDOR"."FANTASIA"'
      Size = 50
    end
    object IBDataSetFornecedorCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = IBDataSetCidade
      LookupKeyFields = 'ID'
      LookupResultField = 'CIDADE'
      KeyFields = 'IDCIDADE'
      Size = 50
      Lookup = True
    end
    object IBDataSetFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FORNECEDOR"."CNPJ"'
      Required = True
    end
    object IBDataSetFornecedorTELEFONECOMERCIAL: TIBStringField
      FieldName = 'TELEFONECOMERCIAL'
      Origin = '"FORNECEDOR"."TELEFONECOMERCIAL"'
      Required = True
      Size = 15
    end
    object IBDataSetFornecedorCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FORNECEDOR"."CELULAR"'
      Required = True
      Size = 15
    end
    object IBDataSetFornecedorID: TIntegerField
      FieldName = 'ID'
      Origin = '"FORNECEDOR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetFornecedorIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"FORNECEDOR"."IDCIDADE"'
      Required = True
    end
    object IBDataSetFornecedorINSCRICAOESTADUAL: TIBStringField
      FieldName = 'INSCRICAOESTADUAL'
      Origin = '"FORNECEDOR"."INSCRICAOESTADUAL"'
      Required = True
      Size = 15
    end
    object IBDataSetFornecedorTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FORNECEDOR"."TIPO"'
      Size = 8
    end
    object IBDataSetFornecedorLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"FORNECEDOR"."LOGRADOURO"'
      Required = True
      Size = 50
    end
    object IBDataSetFornecedorNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"FORNECEDOR"."NUMERO"'
      Required = True
    end
    object IBDataSetFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"FORNECEDOR"."CEP"'
      Required = True
      Size = 15
    end
    object IBDataSetFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FORNECEDOR"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBDataSetFornecedorOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"FORNECEDOR"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetFornecedorTELEFONECOMERCIAL2: TIBStringField
      FieldName = 'TELEFONECOMERCIAL2'
      Origin = '"FORNECEDOR"."TELEFONECOMERCIAL2"'
      Size = 15
    end
    object IBDataSetFornecedorCELULAR2: TIBStringField
      FieldName = 'CELULAR2'
      Origin = '"FORNECEDOR"."CELULAR2"'
      Size = 15
    end
    object IBDataSetFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"FORNECEDOR"."FAX"'
      Size = 15
    end
    object IBDataSetFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"FORNECEDOR"."EMAIL"'
      Size = 50
    end
    object IBDataSetFornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"FORNECEDOR"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetFornecedorDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"FORNECEDOR"."DATAALTERACAO"'
    end
  end
  object TDataSourceFornecedor: TDataSource
    DataSet = IBDataSetFornecedor
    Left = 799
    Top = 8
  end
  object TDataSourceProdutoReceita: TDataSource
    DataSet = IBDataSetProdutoReceita
    Left = 480
    Top = 136
  end
  object IBDataSetReceita: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from RECEITA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into RECEITA'
      '  (ID, QTDEITENS, OBSERVACAO, DATACADASTRO, DATAALTERACAO)'
      'values'
      '  (:ID,:QTDEITENS,:OBSERVACAO,:DATACADASTRO,:DATAALTERACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  QTDEITENS,'
      '  OBSERVACAO,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from RECEITA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from RECEITA')
    ModifySQL.Strings = (
      'update RECEITA'
      'set'
      '  QTDEITENS = :QTDEITENS,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAALTERACAO = :DATAALTERACAO'
      'where'
      '  ID = :OLD_ID')
    Left = 591
    Top = 75
    object IBDataSetReceitaID: TIntegerField
      FieldName = 'ID'
      Origin = '"RECEITA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetReceitaQTDEITENS: TIntegerField
      FieldName = 'QTDEITENS'
      Origin = '"RECEITA"."QTDEITENS"'
    end
    object IBDataSetReceitaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"RECEITA"."OBSERVACAO"'
      Size = 100
    end
    object IBDataSetReceitaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"RECEITA"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetReceitaDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"RECEITA"."DATAALTERACAO"'
      Required = True
    end
    object IBDataSetReceitaRECEITA: TStringField
      FieldKind = fkLookup
      FieldName = 'RECEITA'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'PRODUTO'
      KeyFields = 'ID'
      Size = 50
      Lookup = True
    end
  end
  object IBDataSetProdutoReceita: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from PRODUTORECEITA'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  IDRECEITA = :OLD_IDRECEITA')
    InsertSQL.Strings = (
      'insert into PRODUTORECEITA'
      '  ( IDRECEITA, IDPRODUTO, QTDE)'
      'values'
      '  ( :IDRECEITA, :IDPRODUTO, :QTDE)')
    RefreshSQL.Strings = (
      'Select '
      '  IDRECEITA,'
      '  IDPRODUTO,'
      '  QTDE'
      'from PRODUTORECEITA '
      'where'
      '  IDPRODUTO = :IDPRODUTO and'
      '  IDRECEITA = :IDRECEITA')
    SelectSQL.Strings = (
      'select * from PRODUTORECEITA')
    ModifySQL.Strings = (
      'update PRODUTORECEITA'
      'set'
      '  IDPRODUTO = :IDPRODUTO,'
      '  QTDE = :QTDE'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  IDRECEITA = :OLD_IDRECEITA')
    Left = 480
    Top = 200
    object IBDataSetProdutoReceitaIDRECEITA: TIntegerField
      FieldName = 'IDRECEITA'
      Origin = '"PRODUTORECEITA"."IDRECEITA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoReceitaPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'PRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoReceitaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTORECEITA"."IDPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoReceitaQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PRODUTORECEITA"."QTDE"'
      Required = True
    end
  end
  object TDataSourceFormaPagamento: TDataSource
    DataSet = IBDataSetFormaPagamento
    Left = 64
    Top = 136
  end
  object IBDataSetFormaPagamento: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from FORMAPAGAMENTO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FORMAPAGAMENTO'
      '  (DATAALTERACAO, DATACADASTRO, FORMAPAGAMENTO, ID)'
      'values'
      '  (:DATAALTERACAO, :DATACADASTRO, :FORMAPAGAMENTO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FORMAPAGAMENTO,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from FORMAPAGAMENTO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from FORMAPAGAMENTO')
    ModifySQL.Strings = (
      'update FORMAPAGAMENTO'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  FORMAPAGAMENTO = :FORMAPAGAMENTO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_FORMAPAGAMENTO_ID'
    Active = True
    Left = 64
    Top = 200
    object IBDataSetFormaPagamentoID: TIntegerField
      FieldName = 'ID'
      Origin = '"FORMAPAGAMENTO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetFormaPagamentoFORMAPAGAMENTO: TIBStringField
      FieldName = 'FORMAPAGAMENTO'
      Origin = '"FORMAPAGAMENTO"."FORMAPAGAMENTO"'
      Required = True
      Size = 25
    end
    object IBDataSetFormaPagamentoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"FORMAPAGAMENTO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetFormaPagamentoDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"FORMAPAGAMENTO"."DATAALTERACAO"'
    end
  end
  object TDataSourceCondicaoPagamento: TDataSource
    DataSet = IBDataSetCondicaoPagamento
    Left = 224
    Top = 136
  end
  object IBDataSetCondicaoPagamento: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from CONDICAOPAGAMENTO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CONDICAOPAGAMENTO'
      
        '  (CONDICAOPAGAMENTO, DATAALTERACAO, DATACADASTRO, ID, IDFORMAPA' +
        'GAMENTO, '
      '   QUANTIDADEPARCELAS)'
      'values'
      
        '  (:CONDICAOPAGAMENTO, :DATAALTERACAO, :DATACADASTRO, :ID, :IDFO' +
        'RMAPAGAMENTO, '
      '   :QUANTIDADEPARCELAS)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDFORMAPAGAMENTO,'
      '  CONDICAOPAGAMENTO,'
      '  QUANTIDADEPARCELAS,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from CONDICAOPAGAMENTO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from CONDICAOPAGAMENTO')
    ModifySQL.Strings = (
      'update CONDICAOPAGAMENTO'
      'set'
      '  CONDICAOPAGAMENTO = :CONDICAOPAGAMENTO,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  ID = :ID,'
      '  IDFORMAPAGAMENTO = :IDFORMAPAGAMENTO,'
      '  QUANTIDADEPARCELAS = :QUANTIDADEPARCELAS'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CONDICAOPAGAMENTO_ID'
    Active = True
    Left = 224
    Top = 200
    object IBDataSetCondicaoPagamentoCONDICAOPAGAMENTO: TIBStringField
      FieldName = 'CONDICAOPAGAMENTO'
      Origin = '"CONDICAOPAGAMENTO"."CONDICAOPAGAMENTO"'
      Required = True
      Size = 25
    end
    object IBDataSetCondicaoPagamentoFORMAPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'FORMAPAGAMENTO'
      LookupDataSet = IBDataSetFormaPagamento
      LookupKeyFields = 'ID'
      LookupResultField = 'FORMAPAGAMENTO'
      KeyFields = 'IDFORMAPAGAMENTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetCondicaoPagamentoQUANTIDADEPARCELAS: TIntegerField
      FieldName = 'QUANTIDADEPARCELAS'
      Origin = '"CONDICAOPAGAMENTO"."QUANTIDADEPARCELAS"'
      Required = True
    end
    object IBDataSetCondicaoPagamentoID: TIntegerField
      FieldName = 'ID'
      Origin = '"CONDICAOPAGAMENTO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetCondicaoPagamentoIDFORMAPAGAMENTO: TIntegerField
      FieldName = 'IDFORMAPAGAMENTO'
      Origin = '"CONDICAOPAGAMENTO"."IDFORMAPAGAMENTO"'
      Required = True
    end
    object IBDataSetCondicaoPagamentoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CONDICAOPAGAMENTO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetCondicaoPagamentoDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"CONDICAOPAGAMENTO"."DATAALTERACAO"'
      Required = True
    end
  end
  object IBDataSetParcela: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    ObjectView = True
    DeleteSQL.Strings = (
      'delete from PARCELA'
      'where'
      '  ID = :OLD_ID and'
      '  NUMEROPARCELA = :OLD_NUMEROPARCELA')
    InsertSQL.Strings = (
      'insert into PARCELA'
      
        '  (DATAALTERACAO, DATACADASTRO, ID, JUROSPARCELA, NUMEROPARCELA,' +
        ' PORCENTAGEM, '
      '   VENCIMENTO)'
      'values'
      
        '  (:DATAALTERACAO, :DATACADASTRO, :ID, :JUROSPARCELA, :NUMEROPAR' +
        'CELA, :PORCENTAGEM, '
      '   :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NUMEROPARCELA,'
      '  PORCENTAGEM,'
      '  JUROSPARCELA,'
      '  VENCIMENTO,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from PARCELA '
      'where'
      '  ID = :ID and'
      '  NUMEROPARCELA = :NUMEROPARCELA')
    SelectSQL.Strings = (
      'select * from PARCELA')
    ModifySQL.Strings = (
      'update PARCELA'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  ID = :ID,'
      '  JUROSPARCELA = :JUROSPARCELA,'
      '  NUMEROPARCELA = :NUMEROPARCELA,'
      '  PORCENTAGEM = :PORCENTAGEM,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  ID = :OLD_ID and'
      '  NUMEROPARCELA = :OLD_NUMEROPARCELA')
    Filtered = True
    Left = 360
    Top = 200
    object IBDataSetParcelaID: TIntegerField
      FieldName = 'ID'
      Origin = '"PARCELA"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetParcelaNUMEROPARCELA: TIntegerField
      FieldName = 'NUMEROPARCELA'
      Origin = '"PARCELA"."NUMEROPARCELA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetParcelaPORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
      Origin = '"PARCELA"."PORCENTAGEM"'
      Required = True
    end
    object IBDataSetParcelaJUROSPARCELA: TFloatField
      FieldName = 'JUROSPARCELA'
      Origin = '"PARCELA"."JUROSPARCELA"'
    end
    object IBDataSetParcelaVENCIMENTO: TIBStringField
      FieldName = 'VENCIMENTO'
      Origin = '"PARCELA"."VENCIMENTO"'
      Required = True
      Size = 4
    end
    object IBDataSetParcelaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"PARCELA"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetParcelaDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"PARCELA"."DATAALTERACAO"'
    end
  end
  object TDataSourceParcela: TDataSource
    DataSet = IBDataSetParcela
    Left = 360
    Top = 136
  end
  object TDataSourceCliente: TDataSource
    DataSet = IBDataSetCliente
    Left = 760
    Top = 136
  end
  object IBDataSetCliente: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (BAIRRO, CELULAR, CELULAR2, CEP, CLIENTEF_CLIENTEJ, CPF_CNPJ, ' +
        'DATAALTERACAO, '
      
        '   DATACADASTRO, EMAIL, FANTASIA, FAX, ID, IDCIDADE, IDCONDICAOP' +
        'AGAMENTO, '
      
        '   LOGRADOURO, NUMERO, OBSERVACOES, RG_IE, SEXO, STATUS, TELEFON' +
        'ERESIDENCIAL, '
      '   TELEFONERESIDENCIAL2, TIPO)'
      'values'
      
        '  (:BAIRRO, :CELULAR, :CELULAR2, :CEP, :CLIENTEF_CLIENTEJ, :CPF_' +
        'CNPJ, :DATAALTERACAO, '
      
        '   :DATACADASTRO, :EMAIL, :FANTASIA, :FAX, :ID, :IDCIDADE, :IDCO' +
        'NDICAOPAGAMENTO, '
      
        '   :LOGRADOURO, :NUMERO, :OBSERVACOES, :RG_IE, :SEXO, :STATUS, :' +
        'TELEFONERESIDENCIAL, '
      '   :TELEFONERESIDENCIAL2, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CLIENTEF_CLIENTEJ,'
      '  FANTASIA,'
      '  CPF_CNPJ,'
      '  RG_IE,'
      '  STATUS,'
      '  ID,'
      '  IDCIDADE,'
      '  IDCONDICAOPAGAMENTO,'
      '  TIPO,'
      '  SEXO,'
      '  LOGRADOURO,'
      '  NUMERO,'
      '  CEP,'
      '  BAIRRO,'
      '  OBSERVACOES,'
      '  TELEFONERESIDENCIAL,'
      '  TELEFONERESIDENCIAL2,'
      '  CELULAR,'
      '  CELULAR2,'
      '  FAX,'
      '  EMAIL,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from CLIENTE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from CLIENTE')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CELULAR2 = :CELULAR2,'
      '  CEP = :CEP,'
      '  CLIENTEF_CLIENTEJ = :CLIENTEF_CLIENTEJ,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  EMAIL = :EMAIL,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  ID = :ID,'
      '  IDCIDADE = :IDCIDADE,'
      '  IDCONDICAOPAGAMENTO = :IDCONDICAOPAGAMENTO,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NUMERO = :NUMERO,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  RG_IE = :RG_IE,'
      '  SEXO = :SEXO,'
      '  STATUS = :STATUS,'
      '  TELEFONERESIDENCIAL = :TELEFONERESIDENCIAL,'
      '  TELEFONERESIDENCIAL2 = :TELEFONERESIDENCIAL2,'
      '  TIPO = :TIPO'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CLIENTE_ID'
    Active = True
    Left = 768
    Top = 200
    object IBDataSetClienteCLIENTEF_CLIENTEJ: TIBStringField
      FieldName = 'CLIENTEF_CLIENTEJ'
      Origin = '"CLIENTE"."CLIENTEF_CLIENTEJ"'
      Required = True
      Size = 50
    end
    object IBDataSetClienteFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CLIENTE"."FANTASIA"'
      Size = 50
    end
    object IBDataSetClienteCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"CLIENTE"."CPF_CNPJ"'
      Required = True
      Size = 15
    end
    object IBDataSetClienteRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"CLIENTE"."RG_IE"'
      Required = True
      Size = 15
    end
    object IBDataSetClienteSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CLIENTE"."STATUS"'
      Required = True
      Size = 6
    end
    object IBDataSetClienteID: TIntegerField
      FieldName = 'ID'
      Origin = '"CLIENTE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetClienteIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"CLIENTE"."IDCIDADE"'
      Required = True
    end
    object IBDataSetClienteCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = IBDataSetCidade
      LookupKeyFields = 'ID'
      LookupResultField = 'CIDADE'
      KeyFields = 'IDCIDADE'
      Size = 50
      Lookup = True
    end
    object IBDataSetClienteIDCONDICAOPAGAMENTO: TIntegerField
      FieldName = 'IDCONDICAOPAGAMENTO'
      Origin = '"CLIENTE"."IDCONDICAOPAGAMENTO"'
      Required = True
    end
    object IBDataSetClienteTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CLIENTE"."TIPO"'
      Required = True
      Size = 10
    end
    object IBDataSetClienteCONDICAOPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'CONDICAOPAGAMENTO'
      LookupDataSet = IBDataSetCondicaoPagamento
      LookupKeyFields = 'ID'
      LookupResultField = 'CONDICAOPAGAMENTO'
      KeyFields = 'IDCONDICAOPAGAMENTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetClienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"CLIENTE"."SEXO"'
      Size = 10
    end
    object IBDataSetClienteLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"CLIENTE"."LOGRADOURO"'
      Required = True
      Size = 50
    end
    object IBDataSetClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"CLIENTE"."NUMERO"'
      Required = True
    end
    object IBDataSetClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTE"."CEP"'
      Required = True
      Size = 15
    end
    object IBDataSetClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTE"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBDataSetClienteOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"CLIENTE"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetClienteTELEFONERESIDENCIAL: TIBStringField
      FieldName = 'TELEFONERESIDENCIAL'
      Origin = '"CLIENTE"."TELEFONERESIDENCIAL"'
      Required = True
      Size = 15
    end
    object IBDataSetClienteTELEFONERESIDENCIAL2: TIBStringField
      FieldName = 'TELEFONERESIDENCIAL2'
      Origin = '"CLIENTE"."TELEFONERESIDENCIAL2"'
      Size = 15
    end
    object IBDataSetClienteCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"CLIENTE"."CELULAR"'
      Required = True
      Size = 15
    end
    object IBDataSetClienteCELULAR2: TIBStringField
      FieldName = 'CELULAR2'
      Origin = '"CLIENTE"."CELULAR2"'
      Size = 15
    end
    object IBDataSetClienteFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"CLIENTE"."FAX"'
      Size = 15
    end
    object IBDataSetClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTE"."EMAIL"'
      Size = 50
    end
    object IBDataSetClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CLIENTE"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetClienteDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"CLIENTE"."DATAALTERACAO"'
    end
  end
  object TDataSourceProdutoFornecedor: TDataSource
    DataSet = IBDataSetProdutoFornecedor
    Left = 632
    Top = 136
  end
  object IBDataSetProdutoFornecedor: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PRODUTOFORNECEDOR'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR')
    InsertSQL.Strings = (
      'insert into PRODUTOFORNECEDOR'
      '  (IDFORNECEDOR, IDPRODUTO)'
      'values'
      '  (:IDFORNECEDOR, :IDPRODUTO)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPRODUTO,'
      '  IDFORNECEDOR'
      'from PRODUTOFORNECEDOR '
      'where'
      '  IDFORNECEDOR = :IDFORNECEDOR and'
      '  IDPRODUTO = :IDPRODUTO')
    SelectSQL.Strings = (
      'select * from PRODUTOFORNECEDOR')
    ModifySQL.Strings = (
      'update PRODUTOFORNECEDOR'
      'set'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  IDPRODUTO = :IDPRODUTO'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  IDPRODUTO = :OLD_IDPRODUTO')
    Left = 632
    Top = 200
    object IBDataSetProdutoFornecedorIDPRODUTO: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTOFORNECEDOR"."IDPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoFornecedorPRODUTO: TStringField
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'PRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoFornecedorMARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'MARCA'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoFornecedorIDFORNECEDOR: TIntegerField
      DisplayWidth = 16
      FieldName = 'IDFORNECEDOR'
      Origin = '"PRODUTOFORNECEDOR"."IDFORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoFornecedorFORNECEDOR: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = IBDataSetFornecedor
      LookupKeyFields = 'ID'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'IDFORNECEDOR'
      Size = 50
      Lookup = True
    end
  end
  object IBDataSetCompra: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    ObjectView = True
    DeleteSQL.Strings = (
      'delete from COMPRA'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into COMPRA'
      
        '  (CFOP, DATAALTERACAO, DATACADASTRO, DATAEMICAO, DATAENTRADA, I' +
        'DCONDICAOPAGAMENTO, '
      
        '   IDFORNECEDOR, NUMERONOTA, OBSERVACOES, QUANTIDADE, SERIE, VAL' +
        'ORFRETE, '
      '   VALORTOTALNOTA, VALORTOTALPRODUTOS)'
      'values'
      
        '  (:CFOP, :DATAALTERACAO, :DATACADASTRO, :DATAEMICAO, :DATAENTRA' +
        'DA, :IDCONDICAOPAGAMENTO, '
      
        '   :IDFORNECEDOR, :NUMERONOTA, :OBSERVACOES, :QUANTIDADE, :SERIE' +
        ', :VALORFRETE, '
      '   :VALORTOTALNOTA, :VALORTOTALPRODUTOS)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERONOTA,'
      '  SERIE,'
      '  IDFORNECEDOR,'
      '  IDCONDICAOPAGAMENTO,'
      '  CFOP,'
      '  DATAENTRADA,'
      '  DATAEMICAO,'
      '  QUANTIDADE,'
      '  VALORTOTALPRODUTOS,'
      '  VALORFRETE,'
      '  VALORTOTALNOTA,'
      '  OBSERVACOES,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from COMPRA '
      'where'
      '  IDFORNECEDOR = :IDFORNECEDOR and'
      '  NUMERONOTA = :NUMERONOTA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from COMPRA')
    ModifySQL.Strings = (
      'update COMPRA'
      'set'
      '  CFOP = :CFOP,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAEMICAO = :DATAEMICAO,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  IDCONDICAOPAGAMENTO = :IDCONDICAOPAGAMENTO,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  NUMERONOTA = :NUMERONOTA,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SERIE = :SERIE,'
      '  VALORFRETE = :VALORFRETE,'
      '  VALORTOTALNOTA = :VALORTOTALNOTA,'
      '  VALORTOTALPRODUTOS = :VALORTOTALPRODUTOS'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    Active = True
    Left = 872
    Top = 200
    object IBDataSetCompraNUMERONOTA: TIntegerField
      FieldName = 'NUMERONOTA'
      Origin = '"COMPRA"."NUMERONOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetCompraSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"COMPRA"."SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetCompraFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = IBDataSetFornecedor
      LookupKeyFields = 'ID'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'IDFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object IBDataSetCompraCONDICAOPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'CONDICAOPAGAMENTO'
      LookupDataSet = IBDataSetCondicaoPagamento
      LookupKeyFields = 'ID'
      LookupResultField = 'CONDICAOPAGAMENTO'
      KeyFields = 'IDCONDICAOPAGAMENTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetCompraVALORTOTALPRODUTOS: TFloatField
      FieldName = 'VALORTOTALPRODUTOS'
      Origin = '"COMPRA"."VALORTOTALPRODUTOS"'
      Required = True
    end
    object IBDataSetCompraVALORTOTALNOTA: TFloatField
      FieldName = 'VALORTOTALNOTA'
      Origin = '"COMPRA"."VALORTOTALNOTA"'
      Required = True
    end
    object IBDataSetCompraIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"COMPRA"."IDFORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetCompraIDCONDICAOPAGAMENTO: TIntegerField
      FieldName = 'IDCONDICAOPAGAMENTO'
      Origin = '"COMPRA"."IDCONDICAOPAGAMENTO"'
      Required = True
    end
    object IBDataSetCompraCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"COMPRA"."CFOP"'
      Size = 10
    end
    object IBDataSetCompraDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = '"COMPRA"."DATAENTRADA"'
      Required = True
    end
    object IBDataSetCompraDATAEMICAO: TDateField
      FieldName = 'DATAEMICAO'
      Origin = '"COMPRA"."DATAEMICAO"'
      Required = True
    end
    object IBDataSetCompraQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"COMPRA"."QUANTIDADE"'
      Required = True
    end
    object IBDataSetCompraVALORFRETE: TFloatField
      FieldName = 'VALORFRETE'
      Origin = '"COMPRA"."VALORFRETE"'
    end
    object IBDataSetCompraOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"COMPRA"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetCompraDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"COMPRA"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetCompraDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"COMPRA"."DATAALTERACAO"'
    end
  end
  object TDataSourceCompra: TDataSource
    DataSet = IBDataSetCompra
    Left = 872
    Top = 136
  end
  object IBDataSetProdutoCompra: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PRODUTOCOMPRA'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into PRODUTOCOMPRA'
      
        '  (DESCONTO, ICMS, IDFORNECEDOR, IDPRODUTO, IPI, NUMERONOTA, QTD' +
        'E, SERIE, '
      '   TOTALCOMIMPOSTOS, VALORTOTAL, VALORUNITARIO)'
      'values'
      
        '  (:DESCONTO, :ICMS, :IDFORNECEDOR, :IDPRODUTO, :IPI, :NUMERONOT' +
        'A, :QTDE, '
      '   :SERIE, :TOTALCOMIMPOSTOS, :VALORTOTAL, :VALORUNITARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPRODUTO,'
      '  NUMERONOTA,'
      '  SERIE,'
      '  IDFORNECEDOR,'
      '  QTDE,'
      '  VALORUNITARIO,'
      '  DESCONTO,'
      '  VALORTOTAL,'
      '  ICMS,'
      '  IPI,'
      '  TOTALCOMIMPOSTOS'
      'from PRODUTOCOMPRA '
      'where'
      '  IDFORNECEDOR = :IDFORNECEDOR and'
      '  IDPRODUTO = :IDPRODUTO and'
      '  NUMERONOTA = :NUMERONOTA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from PRODUTOCOMPRA')
    ModifySQL.Strings = (
      'update PRODUTOCOMPRA'
      'set'
      '  NUMERONOTA = :NUMERONOTA,'
      '  SERIE = :SERIE,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  IDPRODUTO = :IDPRODUTO,'
      '  QTDE = :QTDE,'
      '  DESCONTO = :DESCONTO,'
      '  ICMS = :ICMS,'
      '  IPI = :IPI,'
      '  VALORUNITARIO = :VALORUNITARIO,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  TOTALCOMIMPOSTOS = :TOTALCOMIMPOSTOS'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    Left = 997
    Top = 201
    object IBDataSetProdutoCompraNUMERONOTA: TIntegerField
      FieldName = 'NUMERONOTA'
      Origin = '"PRODUTOCOMPRA"."NUMERONOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoCompraSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PRODUTOCOMPRA"."SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetProdutoCompraIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTOCOMPRA"."IDPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoCompraPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'PRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoCompraMARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'MARCA'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoCompraQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PRODUTOCOMPRA"."QTDE"'
      Required = True
    end
    object IBDataSetProdutoCompraIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"PRODUTOCOMPRA"."IDFORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoCompraFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = IBDataSetFornecedor
      LookupKeyFields = 'ID'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'IDFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoCompraVALORUNITARIO: TFloatField
      FieldName = 'VALORUNITARIO'
      Origin = '"PRODUTOCOMPRA"."VALORUNITARIO"'
      Required = True
    end
    object IBDataSetProdutoCompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"PRODUTOCOMPRA"."DESCONTO"'
    end
    object IBDataSetProdutoCompraVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = '"PRODUTOCOMPRA"."VALORTOTAL"'
      Required = True
    end
    object IBDataSetProdutoCompraICMS: TFloatField
      FieldName = 'ICMS'
      Origin = '"PRODUTOCOMPRA"."ICMS"'
    end
    object IBDataSetProdutoCompraIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"PRODUTOCOMPRA"."IPI"'
    end
    object IBDataSetProdutoCompraTOTALCOMIMPOSTOS: TFloatField
      FieldName = 'TOTALCOMIMPOSTOS'
      Origin = '"PRODUTOCOMPRA"."TOTALCOMIMPOSTOS"'
      Required = True
    end
  end
  object TDataSourceProdutoCompra: TDataSource
    DataSet = IBDataSetProdutoCompra
    Left = 997
    Top = 138
  end
  object TDataSourceContasPagar: TDataSource
    DataSet = IBDataSetContasPagar
    Left = 1133
    Top = 138
  end
  object IBDataSetContasPagar: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from CONTAPAGAR'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  NUMEROPARCELA = :OLD_NUMEROPARCELA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into CONTAPAGAR'
      
        '  (DATAALTERACAO, DATACADASTRO, DATAENTRADA, DATAPAGAMENTO, DATA' +
        'VENCIMENTO, '
      
        '   DESCONTO, IDFORMAPAGAMENTO, IDFORNECEDOR, JUROS, NUMERONOTA, ' +
        'NUMEROPARCELA, '
      '   OBSERVACOES, SERIE, STATUS, VALOR, VALOTOTALCONTA)'
      'values'
      
        '  (:DATAALTERACAO, :DATACADASTRO, :DATAENTRADA, :DATAPAGAMENTO, ' +
        ':DATAVENCIMENTO, '
      
        '   :DESCONTO, :IDFORMAPAGAMENTO, :IDFORNECEDOR, :JUROS, :NUMERON' +
        'OTA, :NUMEROPARCELA, '
      '   :OBSERVACOES, :SERIE, :STATUS, :VALOR, :VALOTOTALCONTA)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMEROPARCELA,'
      '  IDFORNECEDOR,'
      '  IDFORMAPAGAMENTO,'
      '  NUMERONOTA,'
      '  SERIE,'
      '  STATUS,'
      '  DATAPAGAMENTO,'
      '  DATAVENCIMENTO,'
      '  VALOR,'
      '  DESCONTO,'
      '  JUROS,'
      '  VALOTOTALCONTA,'
      '  DATAENTRADA,'
      '  OBSERVACOES,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from CONTAPAGAR '
      'where'
      '  IDFORNECEDOR = :IDFORNECEDOR and'
      '  NUMERONOTA = :NUMERONOTA and'
      '  NUMEROPARCELA = :NUMEROPARCELA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from CONTAPAGAR')
    ModifySQL.Strings = (
      'update CONTAPAGAR'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO,'
      '  DATAVENCIMENTO = :DATAVENCIMENTO,'
      '  DESCONTO = :DESCONTO,'
      '  IDFORMAPAGAMENTO = :IDFORMAPAGAMENTO,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  JUROS = :JUROS,'
      '  NUMERONOTA = :NUMERONOTA,'
      '  NUMEROPARCELA = :NUMEROPARCELA,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  SERIE = :SERIE,'
      '  STATUS = :STATUS,'
      '  VALOR = :VALOR,'
      '  VALOTOTALCONTA = :VALOTOTALCONTA'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  NUMEROPARCELA = :OLD_NUMEROPARCELA and'
      '  SERIE = :OLD_SERIE')
    Active = True
    Left = 1133
    Top = 201
    object IBDataSetContasPagarSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CONTAPAGAR"."STATUS"'
      Required = True
      Size = 8
    end
    object IBDataSetContasPagarNUMERONOTA: TIntegerField
      FieldName = 'NUMERONOTA'
      Origin = '"CONTAPAGAR"."NUMERONOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetContasPagarSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"CONTAPAGAR"."SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetContasPagarNUMEROPARCELA: TIntegerField
      FieldName = 'NUMEROPARCELA'
      Origin = '"CONTAPAGAR"."NUMEROPARCELA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetContasPagarFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = IBDataSetFornecedor
      LookupKeyFields = 'ID'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'IDFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object IBDataSetContasPagarFORMAPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'FORMAPAGAMENTO'
      LookupDataSet = IBDataSetFormaPagamento
      LookupKeyFields = 'ID'
      LookupResultField = 'FORMAPAGAMENTO'
      KeyFields = 'IDFORMAPAGAMENTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetContasPagarVALOTOTALCONTA: TFloatField
      FieldName = 'VALOTOTALCONTA'
      Origin = '"CONTAPAGAR"."VALOTOTALCONTA"'
      Required = True
    end
    object IBDataSetContasPagarIDFORMAPAGAMENTO: TIntegerField
      FieldName = 'IDFORMAPAGAMENTO'
      Origin = '"CONTAPAGAR"."IDFORMAPAGAMENTO"'
      Required = True
    end
    object IBDataSetContasPagarDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = '"CONTAPAGAR"."DATAPAGAMENTO"'
    end
    object IBDataSetContasPagarIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"CONTAPAGAR"."IDFORNECEDOR"'
      Required = True
    end
    object IBDataSetContasPagarDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Origin = '"CONTAPAGAR"."DATAVENCIMENTO"'
      Required = True
    end
    object IBDataSetContasPagarVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"CONTAPAGAR"."VALOR"'
      Required = True
    end
    object IBDataSetContasPagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"CONTAPAGAR"."DESCONTO"'
    end
    object IBDataSetContasPagarJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"CONTAPAGAR"."JUROS"'
    end
    object IBDataSetContasPagarDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = '"CONTAPAGAR"."DATAENTRADA"'
      Required = True
    end
    object IBDataSetContasPagarOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"CONTAPAGAR"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetContasPagarDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CONTAPAGAR"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetContasPagarDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"CONTAPAGAR"."DATAALTERACAO"'
    end
  end
  object IBDataSetCargo: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from CARGO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CARGO'
      '  (CARGO, DATAALTERACAO, DATACADASTRO, ID)'
      'values'
      '  (:CARGO, :DATAALTERACAO, :DATACADASTRO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CARGO,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from CARGO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from CARGO')
    ModifySQL.Strings = (
      'update CARGO'
      'set'
      '  CARGO = :CARGO,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CARGO_ID'
    Active = True
    Left = 473
    Top = 72
    object IBDataSetCargoID: TIntegerField
      FieldName = 'ID'
      Origin = '"CARGO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetCargoCARGO: TIBStringField
      FieldName = 'CARGO'
      Origin = '"CARGO"."CARGO"'
      Required = True
      Size = 25
    end
    object IBDataSetCargoDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CARGO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetCargoDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"CARGO"."DATAALTERACAO"'
    end
  end
  object TDataSourceCargo: TDataSource
    DataSet = IBDataSetCargo
    Left = 474
    Top = 13
  end
  object IBDataSetCidade: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from CIDADE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into CIDADE'
      '  (CIDADE, DATAALTERACAO, DATACADASTRO, IDESTADO)'
      'values'
      '  (:CIDADE, :DATAALTERACAO, :DATACADASTRO, :IDESTADO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDESTADO,'
      '  CIDADE,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from CIDADE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from CIDADE')
    ModifySQL.Strings = (
      'update CIDADE'
      'set'
      '  CIDADE = :CIDADE,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  IDESTADO = :IDESTADO'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CIDADE_ID'
    Active = True
    Left = 245
    Top = 72
    object IBDataSetCidadeID: TIntegerField
      FieldName = 'ID'
      Origin = '"CIDADE"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetCidadeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CIDADE"."CIDADE"'
      Required = True
      Size = 50
    end
    object IBDataSetCidadeIDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      Origin = '"CIDADE"."IDESTADO"'
      Required = True
    end
    object IBDataSetCidadeESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = IBDataSetEstado
      LookupKeyFields = 'ID'
      LookupResultField = 'ESTADO'
      KeyFields = 'IDESTADO'
      Size = 50
      Lookup = True
    end
    object IBDataSetCidadeUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = IBDataSetEstado
      LookupKeyFields = 'ID'
      LookupResultField = 'SIGLA'
      KeyFields = 'IDESTADO'
      Size = 3
      Lookup = True
    end
    object IBDataSetCidadeDDD: TStringField
      FieldKind = fkLookup
      FieldName = 'DDD'
      LookupDataSet = IBDataSetEstado
      LookupKeyFields = 'ID'
      LookupResultField = 'DDD'
      KeyFields = 'IDESTADO'
      Size = 3
      Lookup = True
    end
    object IBDataSetCidadeDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CIDADE"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetCidadeDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"CIDADE"."DATAALTERACAO"'
    end
  end
  object TDataSourceCidade: TDataSource
    DataSet = IBDataSetCidade
    Left = 245
    Top = 10
  end
  object IBDataSetPais: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from PAIS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PAIS'
      '  (DATAALTERACAO, DATACADASTRO, DDI, ID, PAIS, SIGLA)'
      'values'
      '  (:DATAALTERACAO, :DATACADASTRO, :DDI, :ID, :PAIS, :SIGLA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PAIS,'
      '  SIGLA,'
      '  DDI,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from PAIS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from PAIS')
    ModifySQL.Strings = (
      'update PAIS'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DDI = :DDI,'
      '  ID = :ID,'
      '  PAIS = :PAIS,'
      '  SIGLA = :SIGLA'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PAIS_ID'
    Active = True
    Left = 32
    Top = 72
    object IBDataSetPaisID: TIntegerField
      FieldName = 'ID'
      Origin = '"PAIS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetPaisPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = '"PAIS"."PAIS"'
      Required = True
      Size = 50
    end
    object IBDataSetPaisSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"PAIS"."SIGLA"'
      Required = True
      Size = 3
    end
    object IBDataSetPaisDDI: TIBStringField
      FieldName = 'DDI'
      Origin = '"PAIS"."DDI"'
      Required = True
      Size = 5
    end
    object IBDataSetPaisDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"PAIS"."DATACADASTRO"'
    end
    object IBDataSetPaisDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"PAIS"."DATAALTERACAO"'
    end
  end
  object TDataSourcePais: TDataSource
    DataSet = IBDataSetPais
    Left = 32
    Top = 8
  end
  object IBDataSetFuncionario: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO'
      
        '  (BAIRRO, CELULAR, CEP, CPF, CTPS, DATAADMICAO, DATAALTERACAO, ' +
        'DATACADASTRO, '
      
        '   DATADEMICAO, DATANASCIMENTO, EMAIL, FAX, FUNCIONARIO, ID, IDC' +
        'ARGO, IDCIDADE, '
      
        '   LOGRADOURO, NUMERO, OBSERVACOES, RG, SEXO, STATUS, TELEFONERE' +
        'SIDENCIAL)'
      'values'
      
        '  (:BAIRRO, :CELULAR, :CEP, :CPF, :CTPS, :DATAADMICAO, :DATAALTE' +
        'RACAO, '
      
        '   :DATACADASTRO, :DATADEMICAO, :DATANASCIMENTO, :EMAIL, :FAX, :' +
        'FUNCIONARIO, '
      
        '   :ID, :IDCARGO, :IDCIDADE, :LOGRADOURO, :NUMERO, :OBSERVACOES,' +
        ' :RG, :SEXO, '
      '   :STATUS, :TELEFONERESIDENCIAL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  IDCARGO,'
      '  IDCIDADE,'
      '  FUNCIONARIO,'
      '  SEXO,'
      '  CTPS,'
      '  RG,'
      '  CPF,'
      '  STATUS,'
      '  DATANASCIMENTO,'
      '  DATAADMICAO,'
      '  DATADEMICAO,'
      '  LOGRADOURO,'
      '  NUMERO,'
      '  CEP,'
      '  BAIRRO,'
      '  OBSERVACOES,'
      '  TELEFONERESIDENCIAL,'
      '  CELULAR,'
      '  FAX,'
      '  EMAIL,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from FUNCIONARIO '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from FUNCIONARIO')
    ModifySQL.Strings = (
      'update FUNCIONARIO'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CPF = :CPF,'
      '  CTPS = :CTPS,'
      '  DATAADMICAO = :DATAADMICAO,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATADEMICAO = :DATADEMICAO,'
      '  DATANASCIMENTO = :DATANASCIMENTO,'
      '  EMAIL = :EMAIL,'
      '  FAX = :FAX,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  ID = :ID,'
      '  IDCARGO = :IDCARGO,'
      '  IDCIDADE = :IDCIDADE,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NUMERO = :NUMERO,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  RG = :RG,'
      '  SEXO = :SEXO,'
      '  STATUS = :STATUS,'
      '  TELEFONERESIDENCIAL = :TELEFONERESIDENCIAL'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_FUNCIONARIO_ID'
    Active = True
    Left = 355
    Top = 72
    object IBDataSetFuncionarioID: TIntegerField
      FieldName = 'ID'
      Origin = '"FUNCIONARIO"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetFuncionarioFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = '"FUNCIONARIO"."FUNCIONARIO"'
      Required = True
      Size = 50
    end
    object IBDataSetFuncionarioCARGO: TStringField
      FieldKind = fkLookup
      FieldName = 'CARGO'
      LookupDataSet = IBDataSetCargo
      LookupKeyFields = 'ID'
      LookupResultField = 'CARGO'
      KeyFields = 'IDCARGO'
      Size = 50
      Lookup = True
    end
    object IBDataSetFuncionarioCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = IBDataSetCidade
      LookupKeyFields = 'ID'
      LookupResultField = 'CIDADE'
      KeyFields = 'IDCIDADE'
      Size = 50
      Lookup = True
    end
    object IBDataSetFuncionarioSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"FUNCIONARIO"."STATUS"'
      Required = True
    end
    object IBDataSetFuncionarioSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"FUNCIONARIO"."SEXO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IBDataSetFuncionarioIDCARGO: TIntegerField
      FieldName = 'IDCARGO'
      Origin = '"FUNCIONARIO"."IDCARGO"'
      Required = True
    end
    object IBDataSetFuncionarioIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"FUNCIONARIO"."IDCIDADE"'
      Required = True
    end
    object IBDataSetFuncionarioCTPS: TIBStringField
      FieldName = 'CTPS'
      Origin = '"FUNCIONARIO"."CTPS"'
      Required = True
      Size = 15
    end
    object IBDataSetFuncionarioRG: TIBStringField
      FieldName = 'RG'
      Origin = '"FUNCIONARIO"."RG"'
      Required = True
      Size = 15
    end
    object IBDataSetFuncionarioCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"FUNCIONARIO"."CPF"'
      Required = True
      Size = 15
    end
    object IBDataSetFuncionarioDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = '"FUNCIONARIO"."DATANASCIMENTO"'
      Required = True
    end
    object IBDataSetFuncionarioDATAADMICAO: TDateField
      FieldName = 'DATAADMICAO'
      Origin = '"FUNCIONARIO"."DATAADMICAO"'
      Required = True
    end
    object IBDataSetFuncionarioDATADEMICAO: TDateField
      FieldName = 'DATADEMICAO'
      Origin = '"FUNCIONARIO"."DATADEMICAO"'
    end
    object IBDataSetFuncionarioLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"FUNCIONARIO"."LOGRADOURO"'
      Required = True
      Size = 50
    end
    object IBDataSetFuncionarioNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"FUNCIONARIO"."NUMERO"'
      Required = True
    end
    object IBDataSetFuncionarioCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"FUNCIONARIO"."CEP"'
      Required = True
      Size = 15
    end
    object IBDataSetFuncionarioBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FUNCIONARIO"."BAIRRO"'
      Required = True
      Size = 50
    end
    object IBDataSetFuncionarioOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"FUNCIONARIO"."OBSERVACOES"'
      Size = 50
    end
    object IBDataSetFuncionarioTELEFONERESIDENCIAL: TIBStringField
      FieldName = 'TELEFONERESIDENCIAL'
      Origin = '"FUNCIONARIO"."TELEFONERESIDENCIAL"'
      Required = True
      Size = 15
    end
    object IBDataSetFuncionarioCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FUNCIONARIO"."CELULAR"'
      Required = True
      Size = 15
    end
    object IBDataSetFuncionarioFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"FUNCIONARIO"."FAX"'
      Size = 15
    end
    object IBDataSetFuncionarioEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"FUNCIONARIO"."EMAIL"'
      Size = 50
    end
    object IBDataSetFuncionarioDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"FUNCIONARIO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetFuncionarioDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"FUNCIONARIO"."DATAALTERACAO"'
    end
  end
  object TDataSourceFuncionario: TDataSource
    DataSet = IBDataSetFuncionario
    Left = 355
    Top = 11
  end
  object IBDataSetVenda: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from VENDA'
      'where'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into VENDA'
      
        '  (CFOP, DATAALTERACAO, DATACADASTRO, DATAEMICAO, IDCLIENTE, IDC' +
        'ONDICAOPAGAMENTO, '
      
        '   IDFUNCIONARIO, NUMERONOTA, OBSERVACOES, QTDEPRODUTOS, SERIE, ' +
        'VALORFRETE, '
      '   VALORTOTALNOTA, VALORTOTALPRODUTOS)'
      'values'
      
        '  (:CFOP, :DATAALTERACAO, :DATACADASTRO, :DATAEMICAO, :IDCLIENTE' +
        ', :IDCONDICAOPAGAMENTO, '
      
        '   :IDFUNCIONARIO, :NUMERONOTA, :OBSERVACOES, :QTDEPRODUTOS, :SE' +
        'RIE, :VALORFRETE, '
      '   :VALORTOTALNOTA, :VALORTOTALPRODUTOS)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMERONOTA,'
      '  SERIE,'
      '  CFOP,'
      '  IDCLIENTE,'
      '  IDFUNCIONARIO,'
      '  QTDEPRODUTOS,'
      '  VALORTOTALPRODUTOS,'
      '  IDCONDICAOPAGAMENTO,'
      '  DATAEMICAO,'
      '  VALORFRETE,'
      '  VALORTOTALNOTA,'
      '  OBSERVACOES,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from VENDA '
      'where'
      '  NUMERONOTA = :NUMERONOTA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from VENDA')
    ModifySQL.Strings = (
      'update VENDA'
      'set'
      '  CFOP = :CFOP,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAEMICAO = :DATAEMICAO,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  IDCONDICAOPAGAMENTO = :IDCONDICAOPAGAMENTO,'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  NUMERONOTA = :NUMERONOTA,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  QTDEPRODUTOS = :QTDEPRODUTOS,'
      '  SERIE = :SERIE,'
      '  VALORFRETE = :VALORFRETE,'
      '  VALORTOTALNOTA = :VALORTOTALNOTA,'
      '  VALORTOTALPRODUTOS = :VALORTOTALPRODUTOS'
      'where'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    GeneratorField.Field = 'NUMERONOTA'
    GeneratorField.Generator = 'GEN_VENDA_ID'
    Active = True
    Left = 40
    Top = 352
    object IBDataSetVendaNUMERONOTA: TIntegerField
      FieldName = 'NUMERONOTA'
      Origin = '"VENDA"."NUMERONOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetVendaSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"VENDA"."SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetVendaVALORTOTALPRODUTOS: TFloatField
      FieldName = 'VALORTOTALPRODUTOS'
      Origin = '"VENDA"."VALORTOTALPRODUTOS"'
      Required = True
    end
    object IBDataSetVendaVALORTOTALNOTA: TFloatField
      FieldName = 'VALORTOTALNOTA'
      Origin = '"VENDA"."VALORTOTALNOTA"'
      Required = True
    end
    object IBDataSetVendaCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = IBDataSetCliente
      LookupKeyFields = 'ID'
      LookupResultField = 'CLIENTEF_CLIENTEJ'
      KeyFields = 'IDCLIENTE'
      Size = 50
      Lookup = True
    end
    object IBDataSetVendaCONDICAOPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'CONDICAOPAGAMENTO'
      LookupDataSet = IBDataSetCondicaoPagamento
      LookupKeyFields = 'ID'
      LookupResultField = 'CONDICAOPAGAMENTO'
      KeyFields = 'IDCONDICAOPAGAMENTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetVendaFUNCIONARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'FUNCIONARIO'
      LookupDataSet = IBDataSetFuncionario
      LookupKeyFields = 'ID'
      LookupResultField = 'FUNCIONARIO'
      KeyFields = 'IDFUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object IBDataSetVendaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"VENDA"."IDCLIENTE"'
      Required = True
    end
    object IBDataSetVendaIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"VENDA"."IDFUNCIONARIO"'
      Required = True
    end
    object IBDataSetVendaIDCONDICAOPAGAMENTO: TIntegerField
      FieldName = 'IDCONDICAOPAGAMENTO'
      Origin = '"VENDA"."IDCONDICAOPAGAMENTO"'
      Required = True
    end
    object IBDataSetVendaCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"VENDA"."CFOP"'
      Size = 6
    end
    object IBDataSetVendaQTDEPRODUTOS: TFloatField
      FieldName = 'QTDEPRODUTOS'
      Origin = '"VENDA"."QTDEPRODUTOS"'
    end
    object IBDataSetVendaDATAEMICAO: TDateField
      FieldName = 'DATAEMICAO'
      Origin = '"VENDA"."DATAEMICAO"'
      Required = True
    end
    object IBDataSetVendaVALORFRETE: TFloatField
      FieldName = 'VALORFRETE'
      Origin = '"VENDA"."VALORFRETE"'
    end
    object IBDataSetVendaOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"VENDA"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"VENDA"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetVendaDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"VENDA"."DATAALTERACAO"'
    end
  end
  object TDataSourceVenda: TDataSource
    DataSet = IBDataSetVenda
    Left = 40
    Top = 280
  end
  object IBDataSetProdutoVenda: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from PRODUTOVENDA'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into PRODUTOVENDA'
      
        '  (DESCONTO, ICMS, IDPRODUTO, IPI, NUMERONOTA, QTDEPRODUTO, SERI' +
        'E, TOTALCOMIMPOSTOS, '
      '   VALORTOTAL, VALORUNITARIO)'
      'values'
      
        '  (:DESCONTO, :ICMS, :IDPRODUTO, :IPI, :NUMERONOTA, :QTDEPRODUTO' +
        ', :SERIE, '
      '   :TOTALCOMIMPOSTOS, :VALORTOTAL, :VALORUNITARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPRODUTO,'
      '  NUMERONOTA,'
      '  SERIE,'
      '  QTDEPRODUTO,'
      '  VALORUNITARIO,'
      '  DESCONTO,'
      '  VALORTOTAL,'
      '  ICMS,'
      '  IPI,'
      '  TOTALCOMIMPOSTOS'
      'from PRODUTOVENDA '
      'where'
      '  IDPRODUTO = :IDPRODUTO and'
      '  NUMERONOTA = :NUMERONOTA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from PRODUTOVENDA')
    ModifySQL.Strings = (
      'update PRODUTOVENDA'
      'set'
      '  DESCONTO = :DESCONTO,'
      '  ICMS = :ICMS,'
      '  IDPRODUTO = :IDPRODUTO,'
      '  IPI = :IPI,'
      '  NUMERONOTA = :NUMERONOTA,'
      '  QTDEPRODUTO = :QTDEPRODUTO,'
      '  SERIE = :SERIE,'
      '  TOTALCOMIMPOSTOS = :TOTALCOMIMPOSTOS,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  VALORUNITARIO = :VALORUNITARIO'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  SERIE = :OLD_SERIE')
    Filtered = True
    Active = True
    Left = 160
    Top = 352
    object IBDataSetProdutoVendaNUMERONOTA: TIntegerField
      FieldName = 'NUMERONOTA'
      Origin = '"PRODUTOVENDA"."NUMERONOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoVendaSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PRODUTOVENDA"."SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetProdutoVendaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTOVENDA"."IDPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoVendaPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = IBDataSetProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'PRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
    object IBDataSetProdutoVendaQTDEPRODUTO: TFloatField
      FieldName = 'QTDEPRODUTO'
      Origin = '"PRODUTOVENDA"."QTDEPRODUTO"'
      Required = True
    end
    object IBDataSetProdutoVendaVALORUNITARIO: TFloatField
      FieldName = 'VALORUNITARIO'
      Origin = '"PRODUTOVENDA"."VALORUNITARIO"'
      Required = True
    end
    object IBDataSetProdutoVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"PRODUTOVENDA"."DESCONTO"'
    end
    object IBDataSetProdutoVendaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = '"PRODUTOVENDA"."VALORTOTAL"'
      Required = True
    end
    object IBDataSetProdutoVendaICMS: TFloatField
      FieldName = 'ICMS'
      Origin = '"PRODUTOVENDA"."ICMS"'
    end
    object IBDataSetProdutoVendaIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"PRODUTOVENDA"."IPI"'
    end
    object IBDataSetProdutoVendaTOTALCOMIMPOSTOS: TFloatField
      FieldName = 'TOTALCOMIMPOSTOS'
      Origin = '"PRODUTOVENDA"."TOTALCOMIMPOSTOS"'
      Required = True
    end
  end
  object TDataSourceProdutoVenda: TDataSource
    DataSet = IBDataSetProdutoVenda
    Left = 160
    Top = 280
  end
  object IBDataSetContaReceber: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from CONTARECEBER'
      'where'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  NUMEROPARCELA = :OLD_NUMEROPARCELA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into CONTARECEBER'
      
        '  (DATAALTERACAO, DATACADASTRO, DATAENTRADA, DATAPAGAMENTO, DATA' +
        'VENCIMENTO, '
      
        '   DESCONTO, IDFP, JUROS, NUMERONOTA, NUMEROPARCELA, OBSERVACOES' +
        ', SERIE, '
      '   STATUS, VALORPAGO, VALORTOTALCONTA)'
      'values'
      
        '  (:DATAALTERACAO, :DATACADASTRO, :DATAENTRADA, :DATAPAGAMENTO, ' +
        ':DATAVENCIMENTO, '
      
        '   :DESCONTO, :IDFP, :JUROS, :NUMERONOTA, :NUMEROPARCELA, :OBSER' +
        'VACOES, '
      '   :SERIE, :STATUS, :VALORPAGO, :VALORTOTALCONTA)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMEROPARCELA,'
      '  NUMERONOTA,'
      '  SERIE,'
      '  IDFP,'
      '  VALORTOTALCONTA,'
      '  JUROS,'
      '  DESCONTO,'
      '  VALORPAGO,'
      '  STATUS,'
      '  OBSERVACOES,'
      '  DATAENTRADA,'
      '  DATAVENCIMENTO,'
      '  DATAPAGAMENTO,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from CONTARECEBER '
      'where'
      '  NUMERONOTA = :NUMERONOTA and'
      '  NUMEROPARCELA = :NUMEROPARCELA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * from CONTARECEBER')
    ModifySQL.Strings = (
      'update CONTARECEBER'
      'set'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO,'
      '  DATAVENCIMENTO = :DATAVENCIMENTO,'
      '  DESCONTO = :DESCONTO,'
      '  IDFP = :IDFP,'
      '  JUROS = :JUROS,'
      '  NUMERONOTA = :NUMERONOTA,'
      '  NUMEROPARCELA = :NUMEROPARCELA,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  SERIE = :SERIE,'
      '  STATUS = :STATUS,'
      '  VALORPAGO = :VALORPAGO,'
      '  VALORTOTALCONTA = :VALORTOTALCONTA'
      'where'
      '  NUMERONOTA = :OLD_NUMERONOTA and'
      '  NUMEROPARCELA = :OLD_NUMEROPARCELA and'
      '  SERIE = :OLD_SERIE')
    Filtered = True
    Active = True
    Left = 296
    Top = 352
    object IBDataSetContaReceberSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CONTARECEBER"."STATUS"'
      Required = True
      Size = 10
    end
    object IBDataSetContaReceberNUMEROPARCELA: TIntegerField
      FieldName = 'NUMEROPARCELA'
      Origin = '"CONTARECEBER"."NUMEROPARCELA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetContaReceberNUMERONOTA: TIntegerField
      FieldName = 'NUMERONOTA'
      Origin = '"CONTARECEBER"."NUMERONOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetContaReceberSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"CONTARECEBER"."SERIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetContaReceberIDFP: TIntegerField
      FieldName = 'IDFP'
      Origin = '"CONTARECEBER"."IDFP"'
      Required = True
    end
    object IBDataSetContaReceberFORMAPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'FORMAPAGAMENTO'
      LookupDataSet = IBDataSetFormaPagamento
      LookupKeyFields = 'ID'
      LookupResultField = 'FORMAPAGAMENTO'
      KeyFields = 'IDFP'
      Size = 50
      Lookup = True
    end
    object IBDataSetContaReceberVALORTOTALCONTA: TFloatField
      FieldName = 'VALORTOTALCONTA'
      Origin = '"CONTARECEBER"."VALORTOTALCONTA"'
      Required = True
    end
    object IBDataSetContaReceberIDCLIENTE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IDCLIENTE'
      LookupDataSet = IBDataSetVenda
      LookupKeyFields = 'NUMERONOTA'
      LookupResultField = 'IDCLIENTE'
      KeyFields = 'NUMERONOTA'
      Lookup = True
    end
    object IBDataSetContaReceberCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = IBDataSetVenda
      LookupKeyFields = 'NUMERONOTA'
      LookupResultField = 'CLIENTE'
      KeyFields = 'NUMERONOTA'
      Size = 50
      Lookup = True
    end
    object IBDataSetContaReceberJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"CONTARECEBER"."JUROS"'
    end
    object IBDataSetContaReceberDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"CONTARECEBER"."DESCONTO"'
    end
    object IBDataSetContaReceberVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Origin = '"CONTARECEBER"."VALORPAGO"'
    end
    object IBDataSetContaReceberOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"CONTARECEBER"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetContaReceberDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = '"CONTARECEBER"."DATAENTRADA"'
      Required = True
    end
    object IBDataSetContaReceberDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Origin = '"CONTARECEBER"."DATAVENCIMENTO"'
      Required = True
    end
    object IBDataSetContaReceberDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = '"CONTARECEBER"."DATAPAGAMENTO"'
    end
    object IBDataSetContaReceberDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"CONTARECEBER"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetContaReceberDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"CONTARECEBER"."DATAALTERACAO"'
    end
  end
  object TDataSourceContasReceber: TDataSource
    DataSet = IBDataSetContaReceber
    Left = 296
    Top = 280
  end
  object IBDataSetOP: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from ORDEMPRODUCAO'
      'where'
      '  NUMEROOP = :OLD_NUMEROOP')
    InsertSQL.Strings = (
      'insert into ORDEMPRODUCAO'
      
        '  (CUSTOTOTALOP, CUSTOTOTALPRODUTOPRODUCAO, DATAALTERACAO, DATAC' +
        'ADASTRO, '
      
        '   DATAEMICAO, IDFUNCIONARIO, IDRECEITA, NUMEROOP, OBSERVACOES, ' +
        'OUTRASDESPESAS, '
      '   QTDE, STATUS)'
      'values'
      
        '  (:CUSTOTOTALOP, :CUSTOTOTALPRODUTOPRODUCAO, :DATAALTERACAO, :D' +
        'ATACADASTRO, '
      
        '   :DATAEMICAO, :IDFUNCIONARIO, :IDRECEITA, :NUMEROOP, :OBSERVAC' +
        'OES, :OUTRASDESPESAS, '
      '   :QTDE, :STATUS)')
    RefreshSQL.Strings = (
      'Select '
      '  NUMEROOP,'
      '  IDFUNCIONARIO,'
      '  IDRECEITA,'
      '  QTDE,'
      '  DATAEMICAO,'
      '  STATUS,'
      '  CUSTOTOTALPRODUTOPRODUCAO,'
      '  OUTRASDESPESAS,'
      '  CUSTOTOTALOP,'
      '  OBSERVACOES,'
      '  DATACADASTRO,'
      '  DATAALTERACAO'
      'from ORDEMPRODUCAO '
      'where'
      '  NUMEROOP = :NUMEROOP')
    SelectSQL.Strings = (
      'select * from ORDEMPRODUCAO')
    ModifySQL.Strings = (
      'update ORDEMPRODUCAO'
      'set'
      '  CUSTOTOTALOP = :CUSTOTOTALOP,'
      '  CUSTOTOTALPRODUTOPRODUCAO = :CUSTOTOTALPRODUTOPRODUCAO,'
      '  DATAALTERACAO = :DATAALTERACAO,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  DATAEMICAO = :DATAEMICAO,'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  IDRECEITA = :IDRECEITA,'
      '  NUMEROOP = :NUMEROOP,'
      '  OBSERVACOES = :OBSERVACOES,'
      '  OUTRASDESPESAS = :OUTRASDESPESAS,'
      '  QTDE = :QTDE,'
      '  STATUS = :STATUS'
      'where'
      '  NUMEROOP = :OLD_NUMEROOP')
    Active = True
    Left = 424
    Top = 352
    object IBDataSetOPNUMEROOP: TIntegerField
      FieldName = 'NUMEROOP'
      Origin = '"ORDEMPRODUCAO"."NUMEROOP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetOPIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"ORDEMPRODUCAO"."IDFUNCIONARIO"'
      Required = True
    end
    object IBDataSetOPIDRECEITA: TIntegerField
      FieldName = 'IDRECEITA'
      Origin = '"ORDEMPRODUCAO"."IDRECEITA"'
      Required = True
    end
    object IBDataSetOPQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"ORDEMPRODUCAO"."QTDE"'
      Required = True
    end
    object IBDataSetOPDATAEMICAO: TDateField
      FieldName = 'DATAEMICAO'
      Origin = '"ORDEMPRODUCAO"."DATAEMICAO"'
      Required = True
    end
    object IBDataSetOPSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ORDEMPRODUCAO"."STATUS"'
      Required = True
      Size = 10
    end
    object IBDataSetOPCUSTOTOTALPRODUTOPRODUCAO: TFloatField
      FieldName = 'CUSTOTOTALPRODUTOPRODUCAO'
      Origin = '"ORDEMPRODUCAO"."CUSTOTOTALPRODUTOPRODUCAO"'
      Required = True
    end
    object IBDataSetOPOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
      Origin = '"ORDEMPRODUCAO"."OUTRASDESPESAS"'
    end
    object IBDataSetOPCUSTOTOTALOP: TFloatField
      FieldName = 'CUSTOTOTALOP'
      Origin = '"ORDEMPRODUCAO"."CUSTOTOTALOP"'
      Required = True
    end
    object IBDataSetOPOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"ORDEMPRODUCAO"."OBSERVACOES"'
      Size = 100
    end
    object IBDataSetOPDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = '"ORDEMPRODUCAO"."DATACADASTRO"'
      Required = True
    end
    object IBDataSetOPDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = '"ORDEMPRODUCAO"."DATAALTERACAO"'
    end
  end
  object TDataSourceOP: TDataSource
    DataSet = IBDataSetOP
    Left = 424
    Top = 280
  end
  object IBDataSetProdutoProducao: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    DeleteSQL.Strings = (
      'delete from PRODUTOPRODUCAO'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  NUMEROOP = :OLD_NUMEROOP')
    InsertSQL.Strings = (
      'insert into PRODUTOPRODUCAO'
      '  (IDPRODUTO, NUMEROOP, QTDEPRODUTO)'
      'values'
      '  (:IDPRODUTO, :NUMEROOP, :QTDEPRODUTO)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPRODUTO,'
      '  NUMEROOP,'
      '  QTDEPRODUTO'
      'from PRODUTOPRODUCAO '
      'where'
      '  IDPRODUTO = :IDPRODUTO and'
      '  NUMEROOP = :NUMEROOP')
    SelectSQL.Strings = (
      'select * from PRODUTOPRODUCAO')
    ModifySQL.Strings = (
      'update PRODUTOPRODUCAO'
      'set'
      '  IDPRODUTO = :IDPRODUTO,'
      '  NUMEROOP = :NUMEROOP,'
      '  QTDEPRODUTO = :QTDEPRODUTO'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO and'
      '  NUMEROOP = :OLD_NUMEROOP')
    Active = True
    Left = 544
    Top = 352
    object IBDataSetProdutoProducaoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTOPRODUCAO"."IDPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoProducaoNUMEROOP: TSmallintField
      FieldName = 'NUMEROOP'
      Origin = '"PRODUTOPRODUCAO"."NUMEROOP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetProdutoProducaoQTDEPRODUTO: TFloatField
      FieldName = 'QTDEPRODUTO'
      Origin = '"PRODUTOPRODUCAO"."QTDEPRODUTO"'
      Required = True
    end
  end
  object TDataSourceProdutoProducao: TDataSource
    DataSet = IBDataSetProdutoProducao
    Left = 544
    Top = 280
  end
end
