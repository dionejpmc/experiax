unit UDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, RpDefine, RpCon, RpConDS,
  IBDatabase;

type
  TDataModule1 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    TDataSetConnection1: TRvDataSetConnection;
    IBQuery1: TIBQuery;
    TDataSourceEstado: TDataSource;
    IBDataSetEstado: TIBDataSet;
    IBDataSetProduto: TIBDataSet;
    TDataSourceProduto: TDataSource;
    TDataSourceReceita: TDataSource;
    IBDataSetFornecedor: TIBDataSet;
    TDataSourceFornecedor: TDataSource;
    TDataSourceProdutoReceita: TDataSource;
    IBDataSetReceita: TIBDataSet;
    IBDataSetReceitaID: TIntegerField;
    IBDataSetReceitaQTDEITENS: TIntegerField;
    IBDataSetReceitaOBSERVACAO: TIBStringField;
    IBDataSetReceitaDATACADASTRO: TDateField;
    IBDataSetReceitaDATAALTERACAO: TDateField;
    IBDataSetProdutoReceita: TIBDataSet;
    IBDataSetProdutoReceitaIDRECEITA: TIntegerField;
    IBDataSetProdutoReceitaIDPRODUTO: TIntegerField;
    IBDataSetProdutoReceitaQTDE: TFloatField;
    IBDataSetReceitaRECEITA: TStringField;
    IBDataSetProdutoReceitaPRODUTO: TStringField;
    TDataSourceFormaPagamento: TDataSource;
    IBDataSetFormaPagamento: TIBDataSet;
    TDataSourceCondicaoPagamento: TDataSource;
    IBDataSetCondicaoPagamento: TIBDataSet;
    IBDataSetParcela: TIBDataSet;
    TDataSourceParcela: TDataSource;
    TDataSourceCliente: TDataSource;
    IBDataSetCliente: TIBDataSet;
    TDataSourceProdutoFornecedor: TDataSource;
    IBDataSetProdutoFornecedor: TIBDataSet;
    IBDataSetProdutoFornecedorIDPRODUTO: TIntegerField;
    IBDataSetProdutoFornecedorIDFORNECEDOR: TIntegerField;
    IBDataSetProdutoFornecedorPRODUTO: TStringField;
    IBDataSetProdutoFornecedorFORNECEDOR: TStringField;
    IBDataSetCompra: TIBDataSet;
    TDataSourceCompra: TDataSource;
    IBDataSetProdutoCompra: TIBDataSet;
    TDataSourceProdutoCompra: TDataSource;
    IBDataSetProdutoCompraIDPRODUTO: TIntegerField;
    IBDataSetProdutoCompraNUMERONOTA: TIntegerField;
    IBDataSetProdutoCompraSERIE: TIBStringField;
    IBDataSetProdutoCompraIDFORNECEDOR: TIntegerField;
    IBDataSetProdutoCompraQTDE: TFloatField;
    IBDataSetProdutoCompraVALORUNITARIO: TFloatField;
    IBDataSetProdutoCompraDESCONTO: TFloatField;
    IBDataSetProdutoCompraVALORTOTAL: TFloatField;
    IBDataSetProdutoCompraICMS: TFloatField;
    IBDataSetProdutoCompraIPI: TFloatField;
    IBDataSetProdutoCompraTOTALCOMIMPOSTOS: TFloatField;
    IBDataSetProdutoCompraPRODUTO: TStringField;
    IBDataSetProdutoCompraMARCA: TStringField;
    TDataSourceContasPagar: TDataSource;
    IBDataSetContasPagar: TIBDataSet;
    IBDataSetCompraNUMERONOTA: TIntegerField;
    IBDataSetCompraSERIE: TIBStringField;
    IBDataSetCompraIDFORNECEDOR: TIntegerField;
    IBDataSetCompraIDCONDICAOPAGAMENTO: TIntegerField;
    IBDataSetCompraCFOP: TIBStringField;
    IBDataSetCompraDATAENTRADA: TDateField;
    IBDataSetCompraDATAEMICAO: TDateField;
    IBDataSetCompraQUANTIDADE: TFloatField;
    IBDataSetCompraVALORTOTALPRODUTOS: TFloatField;
    IBDataSetCompraVALORFRETE: TFloatField;
    IBDataSetCompraVALORTOTALNOTA: TFloatField;
    IBDataSetCompraOBSERVACOES: TIBStringField;
    IBDataSetCompraDATACADASTRO: TDateField;
    IBDataSetCompraDATAALTERACAO: TDateField;
    IBDataSetCondicaoPagamentoID: TIntegerField;
    IBDataSetCondicaoPagamentoIDFORMAPAGAMENTO: TIntegerField;
    IBDataSetCondicaoPagamentoCONDICAOPAGAMENTO: TIBStringField;
    IBDataSetCondicaoPagamentoQUANTIDADEPARCELAS: TIntegerField;
    IBDataSetCondicaoPagamentoDATACADASTRO: TDateField;
    IBDataSetCondicaoPagamentoDATAALTERACAO: TDateField;
    IBDataSetCondicaoPagamentoFORMAPAGAMENTO: TStringField;
    IBDataSetCargo: TIBDataSet;
    IBDataSetCargoID: TIntegerField;
    IBDataSetCargoCARGO: TIBStringField;
    IBDataSetCargoDATACADASTRO: TDateField;
    IBDataSetCargoDATAALTERACAO: TDateField;
    TDataSourceCargo: TDataSource;
    IBDataSetCidade: TIBDataSet;
    TDataSourceCidade: TDataSource;
    IBDataSetCidadeID: TIntegerField;
    IBDataSetCidadeIDESTADO: TIntegerField;
    IBDataSetCidadeCIDADE: TIBStringField;
    IBDataSetCidadeDATACADASTRO: TDateField;
    IBDataSetCidadeDATAALTERACAO: TDateField;
    IBDataSetCidadeUF: TStringField;
    IBDataSetCidadeESTADO: TStringField;
    IBDataSetPais: TIBDataSet;
    TDataSourcePais: TDataSource;
    IBDataSetFuncionario: TIBDataSet;
    TDataSourceFuncionario: TDataSource;
    IBDataSetFuncionarioID: TIntegerField;
    IBDataSetFuncionarioIDCARGO: TIntegerField;
    IBDataSetFuncionarioIDCIDADE: TIntegerField;
    IBDataSetFuncionarioSEXO: TIBStringField;
    IBDataSetFuncionarioCARGO: TStringField;
    IBDataSetFuncionarioFUNCIONARIO: TIBStringField;
    IBDataSetFuncionarioCTPS: TIBStringField;
    IBDataSetFuncionarioRG: TIBStringField;
    IBDataSetFuncionarioCPF: TIBStringField;
    IBDataSetFuncionarioSTATUS: TIntegerField;
    IBDataSetFuncionarioDATAADMICAO: TDateField;
    IBDataSetFuncionarioDATADEMICAO: TDateField;
    IBDataSetFuncionarioLOGRADOURO: TIBStringField;
    IBDataSetFuncionarioNUMERO: TIntegerField;
    IBDataSetFuncionarioCEP: TIBStringField;
    IBDataSetFuncionarioBAIRRO: TIBStringField;
    IBDataSetFuncionarioOBSERVACOES: TIBStringField;
    IBDataSetFuncionarioTELEFONERESIDENCIAL: TIBStringField;
    IBDataSetFuncionarioCELULAR: TIBStringField;
    IBDataSetFuncionarioFAX: TIBStringField;
    IBDataSetFuncionarioEMAIL: TIBStringField;
    IBDataSetFuncionarioDATACADASTRO: TDateField;
    IBDataSetFuncionarioDATAALTERACAO: TDateField;
    IBDataSetFuncionarioCIDADE: TStringField;
    IBDataSetFuncionarioDATANASCIMENTO: TDateField;
    IBDataSetVenda: TIBDataSet;
    TDataSourceVenda: TDataSource;
    IBDataSetVendaNUMERONOTA: TIntegerField;
    IBDataSetVendaSERIE: TIBStringField;
    IBDataSetVendaCFOP: TIBStringField;
    IBDataSetVendaIDCLIENTE: TIntegerField;
    IBDataSetVendaIDFUNCIONARIO: TIntegerField;
    IBDataSetVendaQTDEPRODUTOS: TFloatField;
    IBDataSetVendaVALORTOTALPRODUTOS: TFloatField;
    IBDataSetVendaIDCONDICAOPAGAMENTO: TIntegerField;
    IBDataSetVendaDATAEMICAO: TDateField;
    IBDataSetVendaVALORFRETE: TFloatField;
    IBDataSetVendaVALORTOTALNOTA: TFloatField;
    IBDataSetVendaOBSERVACOES: TIBStringField;
    IBDataSetVendaDATACADASTRO: TDateField;
    IBDataSetVendaDATAALTERACAO: TDateField;
    IBDataSetProdutoVenda: TIBDataSet;
    TDataSourceProdutoVenda: TDataSource;
    IBDataSetClienteCLIENTEF_CLIENTEJ: TIBStringField;
    IBDataSetClienteFANTASIA: TIBStringField;
    IBDataSetClienteCPF_CNPJ: TIBStringField;
    IBDataSetClienteRG_IE: TIBStringField;
    IBDataSetClienteSTATUS: TIBStringField;
    IBDataSetClienteID: TIntegerField;
    IBDataSetClienteIDCIDADE: TIntegerField;
    IBDataSetClienteIDCONDICAOPAGAMENTO: TIntegerField;
    IBDataSetClienteTIPO: TIBStringField;
    IBDataSetClienteSEXO: TIBStringField;
    IBDataSetClienteLOGRADOURO: TIBStringField;
    IBDataSetClienteNUMERO: TIntegerField;
    IBDataSetClienteCEP: TIBStringField;
    IBDataSetClienteBAIRRO: TIBStringField;
    IBDataSetClienteOBSERVACOES: TIBStringField;
    IBDataSetClienteTELEFONERESIDENCIAL: TIBStringField;
    IBDataSetClienteTELEFONERESIDENCIAL2: TIBStringField;
    IBDataSetClienteCELULAR: TIBStringField;
    IBDataSetClienteCELULAR2: TIBStringField;
    IBDataSetClienteFAX: TIBStringField;
    IBDataSetClienteEMAIL: TIBStringField;
    IBDataSetClienteDATACADASTRO: TDateField;
    IBDataSetClienteDATAALTERACAO: TDateField;
    IBDataSetVendaCONDICAOPAGAMENTO: TStringField;
    IBDataSetClienteCONDICAOPAGAMENTO: TStringField;
    IBDataSetProdutoVendaIDPRODUTO: TIntegerField;
    IBDataSetProdutoVendaNUMERONOTA: TIntegerField;
    IBDataSetProdutoVendaSERIE: TIBStringField;
    IBDataSetProdutoVendaQTDEPRODUTO: TFloatField;
    IBDataSetProdutoVendaVALORUNITARIO: TFloatField;
    IBDataSetProdutoVendaDESCONTO: TFloatField;
    IBDataSetProdutoVendaVALORTOTAL: TFloatField;
    IBDataSetProdutoVendaICMS: TFloatField;
    IBDataSetProdutoVendaIPI: TFloatField;
    IBDataSetProdutoVendaTOTALCOMIMPOSTOS: TFloatField;
    IBDataSetContaReceber: TIBDataSet;
    TDataSourceContasReceber: TDataSource;
    IBDataSetContasPagarNUMEROPARCELA: TIntegerField;
    IBDataSetContasPagarIDFORNECEDOR: TIntegerField;
    IBDataSetContasPagarIDFORMAPAGAMENTO: TIntegerField;
    IBDataSetContasPagarNUMERONOTA: TIntegerField;
    IBDataSetContasPagarSERIE: TIBStringField;
    IBDataSetContasPagarSTATUS: TIBStringField;
    IBDataSetContasPagarDATAPAGAMENTO: TDateField;
    IBDataSetContasPagarDATAVENCIMENTO: TDateField;
    IBDataSetContasPagarVALOR: TFloatField;
    IBDataSetContasPagarDESCONTO: TFloatField;
    IBDataSetContasPagarJUROS: TFloatField;
    IBDataSetContasPagarVALOTOTALCONTA: TFloatField;
    IBDataSetContasPagarDATAENTRADA: TDateField;
    IBDataSetContasPagarOBSERVACOES: TIBStringField;
    IBDataSetContasPagarDATACADASTRO: TDateField;
    IBDataSetContasPagarDATAALTERACAO: TDateField;
    IBDataSetContasPagarFORNECEDOR: TStringField;
    IBDataSetContasPagarFORMAPAGAMENTO: TStringField;
    IBDataSetParcelaID: TIntegerField;
    IBDataSetParcelaNUMEROPARCELA: TIntegerField;
    IBDataSetParcelaPORCENTAGEM: TFloatField;
    IBDataSetParcelaJUROSPARCELA: TFloatField;
    IBDataSetParcelaVENCIMENTO: TIBStringField;
    IBDataSetParcelaDATACADASTRO: TDateField;
    IBDataSetParcelaDATAALTERACAO: TDateField;
    IBDataSetVendaCLIENTE: TStringField;
    IBDataSetContaReceberNUMEROPARCELA: TIntegerField;
    IBDataSetContaReceberNUMERONOTA: TIntegerField;
    IBDataSetContaReceberSERIE: TIBStringField;
    IBDataSetContaReceberIDFP: TIntegerField;
    IBDataSetContaReceberVALORTOTALCONTA: TFloatField;
    IBDataSetContaReceberJUROS: TFloatField;
    IBDataSetContaReceberDESCONTO: TFloatField;
    IBDataSetContaReceberVALORPAGO: TFloatField;
    IBDataSetContaReceberOBSERVACOES: TIBStringField;
    IBDataSetContaReceberDATAENTRADA: TDateField;
    IBDataSetContaReceberDATAVENCIMENTO: TDateField;
    IBDataSetContaReceberDATAPAGAMENTO: TDateField;
    IBDataSetContaReceberDATACADASTRO: TDateField;
    IBDataSetContaReceberDATAALTERACAO: TDateField;
    IBDataSetContaReceberFORMAPAGAMENTO: TStringField;
    IBDataSetContaReceberIDCLIENTE: TIntegerField;
    IBDataSetContaReceberCLIENTE: TStringField;
    IBDataSetContaReceberSTATUS: TIBStringField;
    IBDataSetFormaPagamentoID: TIntegerField;
    IBDataSetFormaPagamentoFORMAPAGAMENTO: TIBStringField;
    IBDataSetFormaPagamentoDATACADASTRO: TDateField;
    IBDataSetFormaPagamentoDATAALTERACAO: TDateField;
    IBDataSetCompraFORNECEDOR: TStringField;
    IBDataSetCompraCONDICAOPAGAMENTO: TStringField;
    IBDataSetVendaFUNCIONARIO: TStringField;
    IBDataSetClienteCIDADE: TStringField;
    IBDataSetEstadoID: TIntegerField;
    IBDataSetEstadoIDPAIS: TIntegerField;
    IBDataSetEstadoESTADO: TIBStringField;
    IBDataSetEstadoSIGLA: TIBStringField;
    IBDataSetEstadoDDD: TIBStringField;
    IBDataSetEstadoDATACADASTRO: TDateField;
    IBDataSetEstadoDATAALTERACAO: TDateField;
    IBDataSetEstadoPAIS: TStringField;
    IBDataSetPaisID: TIntegerField;
    IBDataSetPaisPAIS: TIBStringField;
    IBDataSetPaisSIGLA: TIBStringField;
    IBDataSetPaisDDI: TIBStringField;
    IBDataSetPaisDATACADASTRO: TDateField;
    IBDataSetPaisDATAALTERACAO: TDateField;
    IBDataSetProdutoFornecedorMARCA: TStringField;
    IBDataSetFornecedorID: TIntegerField;
    IBDataSetFornecedorIDCIDADE: TIntegerField;
    IBDataSetFornecedorRAZAOSOCIAL: TIBStringField;
    IBDataSetFornecedorFANTASIA: TIBStringField;
    IBDataSetFornecedorINSCRICAOESTADUAL: TIBStringField;
    IBDataSetFornecedorCNPJ: TIBStringField;
    IBDataSetFornecedorTIPO: TIBStringField;
    IBDataSetFornecedorLOGRADOURO: TIBStringField;
    IBDataSetFornecedorNUMERO: TIntegerField;
    IBDataSetFornecedorCEP: TIBStringField;
    IBDataSetFornecedorBAIRRO: TIBStringField;
    IBDataSetFornecedorOBSERVACOES: TIBStringField;
    IBDataSetFornecedorTELEFONECOMERCIAL: TIBStringField;
    IBDataSetFornecedorTELEFONECOMERCIAL2: TIBStringField;
    IBDataSetFornecedorCELULAR: TIBStringField;
    IBDataSetFornecedorCELULAR2: TIBStringField;
    IBDataSetFornecedorFAX: TIBStringField;
    IBDataSetFornecedorEMAIL: TIBStringField;
    IBDataSetFornecedorDATACADASTRO: TDateField;
    IBDataSetFornecedorDATAALTERACAO: TDateField;
    IBDataSetFornecedorCIDADE: TStringField;
    IBDataSetCidadeDDD: TStringField;
    IBDataSetProdutoVendaPRODUTO: TStringField;
    IBDataSetProdutoCompraFORNECEDOR: TStringField;
    IBDataSetProdutoID: TIntegerField;
    IBDataSetProdutoTIPO: TIntegerField;
    IBDataSetProdutoDESCRICAO: TIBStringField;
    IBDataSetProdutoPRODUTO: TIBStringField;
    IBDataSetProdutoQTDE: TFloatField;
    IBDataSetProdutoVALORCOMPRA: TFloatField;
    IBDataSetProdutoVALORVENDA: TFloatField;
    IBDataSetProdutoIPI: TFloatField;
    IBDataSetProdutoICMS: TFloatField;
    IBDataSetProdutoTIPOUNIDADE: TIntegerField;
    IBDataSetProdutoMARCA: TIBStringField;
    IBDataSetProdutoLOCALIZACAO: TIBStringField;
    IBDataSetProdutoOBSERVACOES: TIBStringField;
    IBDataSetProdutoDATACADASTRO: TDateField;
    IBDataSetProdutoDATAALTERACAO: TDateField;
    IBDataSetOP: TIBDataSet;
    TDataSourceOP: TDataSource;
    IBDataSetOPNUMEROOP: TIntegerField;
    IBDataSetOPIDFUNCIONARIO: TIntegerField;
    IBDataSetOPIDRECEITA: TIntegerField;
    IBDataSetOPQTDE: TFloatField;
    IBDataSetOPDATAEMICAO: TDateField;
    IBDataSetOPSTATUS: TIBStringField;
    IBDataSetOPCUSTOTOTALPRODUTOPRODUCAO: TFloatField;
    IBDataSetOPOUTRASDESPESAS: TFloatField;
    IBDataSetOPCUSTOTOTALOP: TFloatField;
    IBDataSetOPOBSERVACOES: TIBStringField;
    IBDataSetOPDATACADASTRO: TDateField;
    IBDataSetOPDATAALTERACAO: TDateField;
    IBDataSetProdutoProducao: TIBDataSet;
    TDataSourceProdutoProducao: TDataSource;
    IBDataSetProdutoProducaoIDPRODUTO: TIntegerField;
    IBDataSetProdutoProducaoNUMEROOP: TSmallintField;
    IBDataSetProdutoProducaoQTDEPRODUTO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.







