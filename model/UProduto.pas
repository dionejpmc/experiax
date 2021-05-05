unit UProduto;

interface
type
    TProduto = class
    private
    protected
      FIdProduto:integer;
      FProduto:String;
      FDescricao:String;

      FTipoUnidade:Integer;
      FMarca:String;
      FQtde:String;
      FValorCompra:Double;
      FValorVenda:Double;
      FValorTotalCompra:Double;
      FValorTotalVenda:Double;

      FICMS:Double;
      FIPI:Double;
      FDesconto:Double;
      FLocalizacao:String;
      FDataFabricacao:String;
      FDataVencimento:String;
      FTipo:Integer;
      FDataCadastro:String;
      FDataAlteracao:String;
      FObservacao:String;
    public

      constructor Create;
      destructor Destroy;

      procedure setIdProduto(vIdProduto:Integer);
      procedure setProduto(vProduto:String);
      procedure setDescricao(vDescricao:string);
      procedure setTipoUnidade(vTipoUnidade:integer);
      procedure setMarca(vMarca:String);
      procedure setQtde(VQtde:String);
      procedure setValorCompra(VVlCompra:Double);
      procedure setValorVenda(VVlVenda:Double);
      procedure setICMS(vICMS:Double);
      procedure setIPI(vIPI:Double);
      procedure setDesconto(vDesconto:Double);
      procedure setValorTotalCompra(vValorTotalCompra:Double);
      procedure setLocalizacao(vLocalizacao:string);
      procedure setDataFabricacao(vDataFabricacao:string);
      procedure setDataVencimento(vDataVencimento:string);
      procedure setTipo(VTipo:integer);
      procedure setObservacao(vObservacao:string);
      procedure setDataCadastro(vDataCadastro:string);
      procedure setDataAlteracao(vDataAlteracao:string);
      procedure setValorTotalVenda(vValorTotalVenda:Double);

      function getValorTotalVenda:Double;
      function getIdProduto:integer;
      function getProduto:String;
      function getDescricao:string;
      function getTipoUnidade:integer;
      function getMarca:String;
      function getQtde:String;
      function getValorCompra:Double;
      function getValorVenda:Double;
      function getICMS:Double;
      function getIPI:Double;
      function getDesconto:Double;
      function getValorTotalCompra:Double;
      function getLocalizacao:string;
      function getDataFabricacao:string;
      function getDataVencimento:string;
      function getTipo:integer;
      function getObservacao:string;
      function getDataCadastro:string;
      function getDataAlteracao:string;

      property IdProduto:Integer read getIdProduto write setIdProduto;
      property Produto:string read getProduto write setProduto;
      property Descricao:string read getDescricao write setDescricao;
      property TipoUnidade:integer read getTipoUnidade write setTipoUnidade;
      property Marca:string read getMarca write setMarca;
      property Qtde:String read getQtde write setQtde;
      property ValorCompra:Double read getValorCompra write setValorCompra;
      property ValorVenda:Double read getValorVenda write setValorVenda;
      property ICMS:Double read getICMS write setICMS;
      property IPI:Double read getIPI write setIPI;
      property Desconto:Double read getDesconto write setDesconto;
      property ValorTotalCompra:Double read getValorTotalCompra write setValorTotalCompra;
      property ValorTotalVenda:Double read  getValorTotalVenda write setValorTotalVenda;
      property Localizacao:String read getLocalizacao write setLocalizacao;
      property DataFabricacao:String read getDataFabricacao write setDataFabricacao;
      property DataVencimento:String read getDataVencimento write setDataVencimento;
      property Tipo:Integer read getTipo write setTipo;
      property DataCadastro:String read getDataCadastro write setDataCadastro;
      property DataAlteracao:string read getDataAlteracao write setDataAlteracao;
      property Observacao:string read getObservacao write setObservacao;

end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
      FIdProduto:=0;
      FProduto:='';
      FDescricao:='';
      FTipoUnidade:=0;
      FMarca:='';
      FQtde:='';
      FValorCompra:=0.0;
      FValorVenda:=0.0;
      FICMS:=0.0;
      FIPI:=0.0;
      FDesconto:=0.0;
      FLocalizacao:='';
      FDataFabricacao:='';
      FDataVencimento:='';
      FValorTotalVenda:=0.0;
      FTipo:=0;
      FDataCadastro:='';
      FDataAlteracao:='';
      FObservacao:='';

end;

destructor TProduto.Destroy;
begin

end;

function TProduto.getDataAlteracao: string;
begin
  Result:=  FDataAlteracao;
end;

function TProduto.getDataCadastro: string;
begin
    Result:= FDataCadastro;
end;

function TProduto.getDataFabricacao: string;
begin
    Result:= FDataFabricacao;
end;

function TProduto.getDataVencimento: string;
begin
    Result :=FDataVencimento;
end;

function TProduto.getDesconto: Double;
begin
  Result:=FDesconto;
end;

function TProduto.getDescricao: string;
begin
   Result:= FDescricao;
end;

function TProduto.getICMS: Double;
begin
   Result:=FICMS;
end;

function TProduto.getIdProduto: integer;
begin
  Result:=FIdProduto;
end;

function TProduto.getIPI: Double;
begin
  Result:=FIPI;
end;

function TProduto.getLocalizacao: string;
begin
   Result:= FLocalizacao;
end;

function TProduto.getMarca: String;
begin
    Result:= FMarca;
end;

function TProduto.getObservacao: string;
begin
    Result:= FObservacao;
end;

function TProduto.getProduto: String;
begin
   Result:= FProduto;
end;


function TProduto.getQtde: string;
begin
  Result:=FQtde;
end;

function TProduto.getTipoUnidade: integer;
begin
   Result:=FTipoUnidade;
end;

function TProduto.getTipo: integer;
begin
   Result:= FTipo;
end;

function TProduto.getValorCompra: Double;
begin
    Result:= FValorCompra;
end;

function TProduto.getValorTotalCompra: Double;
begin
  Result:=FValorTotalCompra;
end;

function TProduto.getValorTotalVenda: Double;
begin
   Result:=FValorTotalVenda;
end;

function TProduto.getValorVenda: Double;
begin
   Result:= FValorVenda;
end;

procedure TProduto.setDataAlteracao(vDataAlteracao: string);
begin
     FDataAlteracao:=vDataAlteracao;
end;

procedure TProduto.setDataCadastro(vDataCadastro: string);
begin
    FDataCadastro:=vDataCadastro;
end;

procedure TProduto.setDataFabricacao(vDataFabricacao: string);
begin
     FDataFabricacao:=vDataFabricacao;
end;

procedure TProduto.setDataVencimento(vDataVencimento: string);
begin
     FDataVencimento:=vDataVencimento;
end;

procedure TProduto.setDesconto(vDesconto: Double);
begin
   FDesconto:=vDesconto;
end;

procedure TProduto.setDescricao(vDescricao: string);
begin
     FDescricao:=vDescricao;
end;

procedure TProduto.setICMS(vICMS: Double);
begin
  FICMS:=vICMS;
end;

procedure TProduto.setIdProduto(vIdProduto: Integer);
begin
   FIdProduto:=vIdProduto;
end;

procedure TProduto.setIPI(vIPI: Double);
begin
   FIPI:=vIPI;
end;

procedure TProduto.setLocalizacao(vLocalizacao: string);
begin
     FLocalizacao:=vLocalizacao;
end;

procedure TProduto.setMarca(vMarca: String);
begin
    FMarca:=vMarca;
end;

procedure TProduto.setObservacao(vObservacao: string);
begin
   FObservacao:=vObservacao;
end;

procedure TProduto.setProduto(vProduto: String);
begin
    FProduto:=vProduto;
end;


procedure TProduto.setQtde(VQtde: string);
begin
    FQtde:=VQtde;
end;

procedure TProduto.setTipoUnidade(vTipoUnidade: integer);
begin
     FTipoUnidade:=vTipoUnidade;
end;

procedure TProduto.setTipo(VTipo: integer);
begin
    FTipo:=vTipo;
end;

procedure TProduto.setValorCompra(VVlCompra: Double);
begin
   FValorCompra:=VVlCompra;
end;

procedure TProduto.setValorTotalCompra(vValorTotalCompra: Double);
begin
    FValorTotalCompra:=vValorTotalCompra;
end;

procedure TProduto.setValorTotalVenda(vValorTotalVenda: Double);
begin
    FValorTotalVenda:=vValorTotalVenda;
end;

procedure TProduto.setValorVenda(VVlVenda: Double);
begin
    FValorVenda:= VVlVenda;
end;

end.
