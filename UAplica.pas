unit UAplica;

interface
Uses UInterface,UCtrlPais,UPais,UEstado,UCidade,UCargo,UFuncionario,UCtrlEstado,UCtrlCidade,
UCtrlCargo,UCtrlFuncionario,UProduto,UCtrlProduto,UReceita,UCtrlReceita, UFornecedor,
UCtrlfornecedor,UCtrlFP,UFornecedorFisico,
UFrmMenuPrincipal, UOrdemProducao, UFormaPagamento, UContaReceber, UContaPagar, UClienteFisico
,UClienteJuridico, UCompra, UVenda, UCondicaoPagamento,UCtrlOrdemProducao, UCtrlCP, UCtrlCliente, UCtrlCompra,UCtrlVenda,UCtrlContaReceber;

type   Aplicacao = class
  private
  protected
      UmPais:TPais;
      UmaCidade:TCidade;
      UmEstado:TEstado;
      UmCargo:TCargo;
      UmFuncionario:TFuncionario;
      UmProduto:TProduto;
      UmaReceita:TReceita;
      UmaCondicaoPagamento:TCondicaoPagamento;
      UmaFormaPagamento:TFormaPagamento;
      UmaContaReceber:TContaReceber;
      UmaContaPagar:TContaPagar;
      UmaCompra:TCompra;
      UmaVenda:TVenda;
      //UmCaixa:=OCAixa;
      UmFornecedor:TFornecedor;
      UmFornecedorFisico:TFornecedorFisico;
      UmClienteF:TClienteFisico;
      UmClienteJ:TClienteJuridico;
      UmaOP:TOrdemProducao;


      UmaCtrlPais:TCtrlPais;
      UmaCtrlEstado:TCtrlEstado;
      UmaCtrlCidade:TCtrlCidade;
      UmaCtrlCargo:TCtrlCargo;
       UmaCtrlOP:TctrlOP;
      UmaCtrlFuncionario:TCtrlFuncionario;
      UmaCtrlProduto:TCtrlProduto;
      UmaCtrlReceita:TCtrlReceita;
      UmaCtrlFornecedor:TCtrlFornecedor;
      UmaCtrlCliente:TCtrlCliente;
      UmaCTrlCompra:TCtrlCompra;
      UmaCtrlContaReceber:TCtrlContaReceber;
      UmaCtrlVenda:TCtrlVenda;
      UmaCtrlFP:TCtrlFP;
      UmaCtrlCP:TCtrlCP;

      UmaInterface:TInterface;
      UmMenu:TFrmMenuPrincipal;

  public
    constructor create;
    destructor Destroy;
    procedure Execute;

end;

implementation

{ Aplicacao }

constructor Aplicacao.create;
begin
      UmPais:=TPais.Create;
      UmEstado:=TEstado.Create;
      UmaCidade:=TCidade.Create;
      UmCargo:=TCargo.Create;
      UmFuncionario:=TFuncionario.Create;
      UmProduto:=TProduto.Create;
      UmaReceita:=TReceita.Create;
      UmFornecedor:= TFornecedor.Create;
      UmFornecedorFisico:=TFornecedorFisico.Create;
      UmaOP:= TOrdemProducao.Create;
      UmaCondicaoPagamento:=TCondicaoPagamento.create;
      UmaFormaPagamento:=TFormaPagamento.create;
      UmaContaReceber:=TContaReceber.create;
      UmaContaPagar:=TContaPagar.create;
      UmaCompra:=TCompra.create;
      UmaVenda:=TVenda.create;
      //UmCaixa:=OCAixa;
      UmClienteF:=TClienteFisico.Create;
      UmClienteJ:=TClienteJuridico.Create;



      UmaCtrlPais:=TCtrlPais.Create;
      UmaCtrlEstado:=TCtrlEstado.Create;
      UmaCtrlFuncionario:=TCtrlFuncionario.Create;
      UmaCtrlProduto:= TCtrlProduto.Create;
      UmaCtrlOP:=TCtrlOp.create;
      UmaCtrlReceita:=TCtrlReceita.Create;
      UmaCtrlFornecedor:=TCtrlFornecedor.Create;
      UmaCtrlCliente:=TCTrlCliente.Create;
      UmaCtrlCargo:=TCtrlCargo.Create;
      UmaCtrlCidade:=TCtrlCidade.Create;
      UmaCtrlCompra:=TCtrlCompra.Create;
      UmaCtrlVenda:=TCtrlVenda.Create;
      UmaCtrlContaReceber:=TCtrlContaReceber.Create;
      UmaCtrlFP:=TCtrlFP.Create;
      UmaCtrlCP:=TCtrlCP.Create;

      UmaInterface:=TInterface.Create;
      UmMenu:=TFrmMenuPrincipal.Create(nil);
end;

destructor Aplicacao.Destroy;
begin
  UmPais.Destroy;
  UmEstado.Destroy;
  UmaCidade.Destroy;
  UmCargo.Destroy;
  UmFuncionario.Destroy;
  UmProduto.Destroy;
  UmaReceita.Destroy;
  UmFornecedor.Destroy;
  UmFornecedorFisico.Destroy;
  UmaCondicaoPagamento.destroy;
  UmaFormaPagamento.destroy;
  UmaContaReceber.destroy;
  UmaContaPagar.destroy;
  UmaCompra.destroy;
  UmaVenda.destroy;
  //UmCaixa:=OCAixa;
  UmClienteF.Destroy;
  UmClienteJ.Destroy;
  UmaOP.Destroy;

  UmaCtrlPais.Destroy;
  UmaCtrlEstado.Destroy;
  UmaCtrlCidade.Destroy;
  UmaCtrlCargo.Destroy;
  UmaCtrlFuncionario.Destroy;
  UmaCtrlProduto.Destroy;
  UmaCtrlReceita.Destroy;
  UmaCtrlFornecedor.Destroy;
  UmaCtrlCliente.Destroy;
  UmaCTrlCompra.Destroy;
  UmaCtrlVenda.Destroy;
  UmaCtrlContaReceber.Destroy;
  UmaCtrlFP.Destroy;
  UmaCtrlCP.Destroy;

  UmaInterface.Destroy;
  UmMenu.Destroy;
end;

procedure Aplicacao.Execute;
begin
     UmMenu.ReconhecaObjeto(UmaInterface,UmPais,UmEstado,UmaCidade, UmCargo, UmFuncionario, UmProduto, UmaReceita, UmFornecedor,UmfornecedorFisico,UmaOP,
     UmaCondicaoPagamento,UmaFormaPagamento,UmaContaReceber,UmaContaPagar,UmaCompra,UmaVenda,UmClienteF,UmClienteJ );
     UmMenu.ShowModal;
end;

end.


