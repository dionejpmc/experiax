unit UOrdemProducao;

interface
uses UFuncionario,UReceita,classes, UProduto;
type
    TOrdemProducao = class
      private

      protected
        FUmaReceita:TReceita;
        FUmFuncionario:TFuncionario;
        FUmaListaProdutos:TList;
        FDataEmicao:String;
        FCustoTotalMateriaPrima:Double;
        FOutrasDespesas:Double;
        FValorTotalOP:Double;
        FObservacao:String;
        FDataCadastro:string;
        FDataAlteracao:string;

      public
        constructor Create;
        destructor Destroy;

        procedure setUmaReceita(vUmaReceita:TReceita);
        Procedure setUmFuncionario(vUmFuncionario:TFuncionario);
        Procedure setDataEmicao(vDataEmicao:String);
        Procedure setCustoTotalMateriaPrima(vCustoTotalMateriaPrima:Double);
        Procedure setOutrasDespesas(vOutrasDespesas:Double);
        Procedure setValorTotalOP(vValorTotalOP:Double);
        Procedure setObservacao(vObservacao:String);
        Procedure setDataCadastro(vDataCadastro:string);
        Procedure setDataAlteracao(vDataAlteracao:string);

        procedure setUmaListaProduto(vUmaListaProduto:TList);
        procedure AdicionarProduto(Objeto:TObject);
        procedure RemoverProduto(Index:integer);



        function getUmaReceita:TReceita;
        function getUmFuncionario:TFuncionario;
        function getDataEmicao:String;
        function getCustoTotalMateriaPrima:Double;
        function getOutrasDespesas:Double;
        function getValorTotalOP:Double;
        function getObservacao:String;
        function getDataCadastro:string;
        function getDataAlteracao:string;

        function getUmaListaProduto:TList;
        function getProdutos(Index:integer):TProduto;

        property UmaReceita:TReceita read  getUmaReceita write setUmaReceita;
        property UmFuncionario:TFuncionario read getUmFuncionario write setUmFuncionario;
        property DataEmicao:string read getDataEmicao write setDataEmicao;
        property CustoTotalMateriaPrima:Double read getCustoTotalMateriaPrima write setCustoTotalMateriaPrima;
        property OutrasDespesas:Double read getOutrasDespesas write setOutrasDespesas;
        property ValorTotalOP:Double read getValorTotalOP write setValorTotalOP;
        property Observacao:string read getObservacao write setObservacao;
        property DataCadastro:string read getDataCadastro write setDataCadastro;
        property DataAlteracao:string read getDataAlteracao write setDataAlteracao;
        property UmaListaProduto:TList read getUmaListaProduto write setUmaListaProduto;

    end;

implementation

{ TOrdemProducao }

procedure TOrdemProducao.AdicionarProduto(Objeto: TObject);
begin
   FUmaListaProdutos.Add(TProduto(Objeto));
end;

constructor TOrdemProducao.Create;
begin
        FUmaReceita:= TReceita.Create;
        FUmFuncionario:=TFuncionario.Create;
        FDataEmicao:='';
        FCustoTotalMateriaPrima:=0.0;
        FOutrasDespesas:=0.0;
        FValorTotalOP:=0.0;
        FObservacao:='';
        FDataCadastro:='';
        FDataAlteracao:='';
        FUmaListaProdutos:=nil;
end;

destructor TOrdemProducao.Destroy;
begin
     FUmaReceita.Destroy;
     FUmFuncionario.Destroy;
end;

function TOrdemProducao.getCustoTotalMateriaPrima: Double;
begin
  Result:=FCustoTotalMateriaPrima;
end;

function TOrdemProducao.getDataAlteracao: string;
begin
 Result:=FDataAlteracao;
end;

function TOrdemProducao.getDataCadastro: string;
begin
 Result:=FDataCadastro;
end;

function TOrdemProducao.getDataEmicao: String;
begin
  Result:=FDataEmicao;
end;

function TOrdemProducao.getObservacao: String;
begin
   Result:=FObservacao;
end;

function TOrdemProducao.getOutrasDespesas: Double;
begin
  Result:=FOutrasDespesas;
end;

function TOrdemProducao.getProdutos(Index: integer): TProduto;
begin
  Result:=FUmaListaProdutos.Items[Index];
end;

function TOrdemProducao.getUmaListaProduto: TList;
begin
   Result:=FUmaListaProdutos;
end;

function TOrdemProducao.getUmaReceita: TReceita;
begin
     Result:=FUmaReceita;
end;

function TOrdemProducao.getUmFuncionario: TFuncionario;
begin
 Result:=FUmFuncionario;
end;

function TOrdemProducao.getValorTotalOP: Double;
begin
    Result:=FValorTotalOP;
end;

procedure TOrdemProducao.RemoverProduto(Index: integer);
begin
    FUmaListaProdutos.Delete(Index);
end;

procedure TOrdemProducao.setCustoTotalMateriaPrima(
  vCustoTotalMateriaPrima: Double);
begin
    FCustoTotalMateriaPrima:=vCustoTotalMateriaPrima;
end;

procedure TOrdemProducao.setDataAlteracao(vDataAlteracao: string);
begin
   FDataAlteracao:=vDataAlteracao;
end;

procedure TOrdemProducao.setDataCadastro(vDataCadastro: string);
begin
    FDataCadastro:=vDataCadastro;
end;

procedure TOrdemProducao.setDataEmicao(vDataEmicao: String);
begin
     FDataEmicao:=vDataEmicao;
end;

procedure TOrdemProducao.setObservacao(vObservacao: String);
begin
    FObservacao:=vObservacao;
end;

procedure TOrdemProducao.setOutrasDespesas(vOutrasDespesas: Double);
begin
   FOutrasDespesas:=vOutrasDespesas;
end;

procedure TOrdemProducao.setUmaListaProduto(vUmaListaProduto: TList);
begin
     FUmaListaProdutos:=vUmaListaProduto;

end;

procedure TOrdemProducao.setUmaReceita(vUmaReceita: TReceita);
begin
   FUmaReceita:=VUmaReceita;
end;

procedure TOrdemProducao.setUmFuncionario(vUmFuncionario: TFuncionario);
begin
   FUmFuncionario:=vUmFuncionario;
end;

procedure TOrdemProducao.setValorTotalOP(vValorTotalOP: Double);
begin
   FValorTotalOP:=vValorTotalOP;
end;

end.
