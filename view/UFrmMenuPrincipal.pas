unit UFrmMenuPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,UInterface,UPais,UEstado,UCidade, Ucargo, UFuncionario,
  UProduto, UReceita, UFornecedor, UFornecedorFisico, UClienteFisico, UClienteJuridico, UCompra, UVenda,
  UOrdemProducao, UCondicaoPagamento, UFormaPagamento, UContaReceber, UContaPagar, UCAixa,
  dxGDIPlusClasses, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, RzCommon,
  UFrmRelatorioCompra;

type
  TFrmMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    CONSULTA1: TMenuItem;
    SAIR1: TMenuItem;
    PAIS1: TMenuItem;
    ESTADO1: TMenuItem;
    CIDADE1: TMenuItem;
    N1: TMenuItem;
    FUNCIONARIO1: TMenuItem;
    CARGO1: TMenuItem;
    N2: TMenuItem;
    EXIT1: TMenuItem;
    RECEITA1: TMenuItem;
    N3: TMenuItem;
    EXIT2: TMenuItem;
    N4: TMenuItem;
    FORNECEDOR1: TMenuItem;
    CLIENTE1: TMenuItem;
    N5: TMenuItem;
    FINANCEIRO1: TMenuItem;
    CAIXA1: TMenuItem;
    CPNTASAPAGAR1: TMenuItem;
    CONTASARECEBER1: TMenuItem;
    N6: TMenuItem;
    CON1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    CONDICAODEPAGAMENTO1: TMenuItem;
    N9: TMenuItem;
    EXIT3: TMenuItem;
    OP1: TMenuItem;
    compra: TMenuItem;
    img1: TImage;
    VENDA1: TMenuItem;
    RELATORIOS1: TMenuItem;
    COMPRA1: TMenuItem;
    VENDA2: TMenuItem;
    procedure ESTADO1Click(Sender: TObject);
    procedure PAIS1Click(Sender: TObject);
    procedure SAIR1Click(Sender: TObject);
    procedure CIDADE1Click(Sender: TObject);
    procedure CARGO1Click(Sender: TObject);
    procedure FUNCIONARIO1Click(Sender: TObject);
    procedure EXIT2Click(Sender: TObject);
    procedure EXIT1Click(Sender: TObject);
    procedure RECEITA1Click(Sender: TObject);
    procedure FORNECEDOR1Click(Sender: TObject);
    procedure EXIT4Click(Sender: TObject);
    procedure EXIT3Click(Sender: TObject);
    procedure OP1Click(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
    procedure CPNTASAPAGAR1Click(Sender: TObject);
    procedure CONTASARECEBER1Click(Sender: TObject);
    procedure CON1Click(Sender: TObject);
    procedure CONDICAODEPAGAMENTO1Click(Sender: TObject);
    procedure compraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VENDA1Click(Sender: TObject);
    procedure img1DblClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure COMPRA1Click(Sender: TObject);
    procedure PORDATA1Click(Sender: TObject);
  private
    { Private declarations }
  protected
   UmaOP:TOrdemProducao;
   UmaCondicaoPagamento:TCondicaoPagamento;
   UmaFormaPagamento:TFormaPagamento;
   UmaContaReceber:TContaReceber;
   UmaContaPagar:TContaPagar;
   UmaCompra:TCompra;
   UmaVenda:TVenda;
   UmCaixa:TCAixa;
   UmClienteF:TClienteFisico;
   UmClienteJ:TClienteJuridico;
   UmaInterface:TInterface;
   UmPais:TPais;
   UmEstado:TEstado;
   UmaCidade:TCidade;
   UmCargo:TCargo;
   UmFuncionario:TFuncionario;
   UmProduto:TProduto;
   UmaReceita:TReceita;
   UmFornecedor:TFornecedor;
   UmFornecedorFisico:TFornecedorFisico;

  public
    { Public declarations }
    procedure ReconhecaObjeto(AInterface:TInterface;OPais:TPais;
    OEstado:TEstado;ACidade:TCidade;Ocargo:TCargo;OFuncionario:TFuncionario;
    OProduto:TProduto;AReceita:TReceita;OFornecedor:TFornecedor;OFornecedorFisico:TFornecedorFisico;
    AOP:TOrdemProducao;ACondicaoPagamento:TCondicaoPagamento;AFormaPagamento:TFormaPagamento;
    AContaReceber:TContaReceber;AContaPagar:TContaPagar;ACompra:TCompra;AVenda:TVenda;
    OClienteF:TClienteFisico;OClienteJ:TClienteJuridico);
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.dfm}

procedure TFrmMenuPrincipal.CARGO1Click(Sender: TObject);
begin
    UmaInterface.PecaDadosCargo(UmCargo);
end;

procedure TFrmMenuPrincipal.CIDADE1Click(Sender: TObject);
begin
    UmaInterface.PecaDadosCidade(UmaCidade);
end;

procedure TFrmMenuPrincipal.CLIENTE1Click(Sender: TObject);
begin
    UmaInterface.PecaDadosCliente(UmClienteF,UmClienteJ);
end;

procedure TFrmMenuPrincipal.COMPRA1Click(Sender: TObject);
begin
    UmaInterface.GeraRelatorioCompra;
end;

procedure TFrmMenuPrincipal.compraClick(Sender: TObject);
begin
   UmaInterface.PecadadosCompra(UmaCompra);
end;

procedure TFrmMenuPrincipal.CON1Click(Sender: TObject);
begin
   UmaInterface.PecadadosFormaPagamento(UmaFormaPagamento);
end;

procedure TFrmMenuPrincipal.CONDICAODEPAGAMENTO1Click(Sender: TObject);
begin
     UmaInterface.PecadadosCondicaoPagamento(UmaCondicaoPagamento);
end;

procedure TFrmMenuPrincipal.CONTASARECEBER1Click(Sender: TObject);
begin
   UmaInterface.PecadadosContasReceber(UmaContaReceber);
end;

procedure TFrmMenuPrincipal.CPNTASAPAGAR1Click(Sender: TObject);
begin
    UmaInterface.PecadadosContasPagar(UmaContaPagar);
end;

procedure TFrmMenuPrincipal.ESTADO1Click(Sender: TObject);
begin
     UmaInterface.PecadadosEstado(UmEstado);
end;

procedure TFrmMenuPrincipal.EXIT1Click(Sender: TObject);
begin
   UmaInterface.PecaDadosProduto(UmProduto);
end;

procedure TFrmMenuPrincipal.EXIT2Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmMenuPrincipal.EXIT3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmMenuPrincipal.EXIT4Click(Sender: TObject);
begin
    close;
end;

procedure TFrmMenuPrincipal.FormClick(Sender: TObject);
begin
   Self.WindowState:=wsNormal;
end;

procedure TFrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Close;
end;
procedure TFrmMenuPrincipal.FORNECEDOR1Click(Sender: TObject);
begin
  UmaInterface.PecaDadosFornecedor(UmFornecedor,UmFornecedorFisico);
end;

procedure TFrmMenuPrincipal.FUNCIONARIO1Click(Sender: TObject);
begin
   UmaInterface.PecaDadosFuncionario(UmFuncionario);
end;

procedure TFrmMenuPrincipal.img1DblClick(Sender: TObject);
begin
   ShowWindow(WindowHandle, SW_SHOWNORMAL);
end;

procedure TFrmMenuPrincipal.OP1Click(Sender: TObject);
begin
  UmaInterface.PecadadosOP(UmaOP);
end;

procedure TFrmMenuPrincipal.PAIS1Click(Sender: TObject);
begin
     UmaInterface.PecadadosPais(UmPais);
end;

procedure TFrmMenuPrincipal.PORDATA1Click(Sender: TObject);
begin
   UmaInterface.GeraRelatorioCompra;
end;

procedure TFrmMenuPrincipal.RECEITA1Click(Sender: TObject);
begin
   UmaInterface.PecaDadosReceita(UmaReceita);
end;
procedure TFrmMenuPrincipal.VENDA1Click(Sender: TObject);
begin
    UmaInterface.PecaDadosVenda(UmaVenda);
end;

procedure TFrmMenuPrincipal.ReconhecaObjeto(AInterface: TInterface;
          OPais: TPais; OEstado: TEstado;ACidade:TCidade;OCargo:TCargo;
          OFuncionario:TFuncionario;OProduto:TProduto;AReceita:TReceita;oFornecedor:TFornecedor;OFornecedorFisico:TFornecedorFisico;
          AOP:TOrdemProducao;ACondicaoPagamento:TCondicaoPagamento;AFormaPagamento:TFormaPagamento;
          AContaReceber:TContaReceber;AContaPagar:TContaPagar;ACompra:TCompra;AVenda:TVenda;
          OClienteF:TClienteFisico;OClienteJ:TClienteJuridico);
begin
   UmPais:=OPais;
   UmEstado:=OEstado;
   UmaCidade:=ACidade;
   UmCargo:=OCargo;
   UmFuncionario:=OFuncionario;
   UmFornecedor:=OFornecedor;
   UmFornecedorFisico:=OFornecedorFisico;
   UmProduto:= OProduto;
   UmaReceita:=AReceita;
   UmaOP:=AOP;
   UmaCondicaoPagamento:=ACondicaoPagamento;
   UmaFormaPagamento:=AFormaPagamento;
   UmaContaReceber:=AContaReceber;
   UmaContaPagar:=AContaPagar;
   UmaCompra:=ACompra;
   UmaVenda:=AVenda;
   //UmCaixa:=OCAixa;
   UmClienteF:=OClienteF;
   UmClienteJ:=OClienteJ;
   UmaInterface:=Ainterface;
end;
procedure TFrmMenuPrincipal.SAIR1Click(Sender: TObject);
begin
   Close;
end;

end.
