unit UFornecedorFisico;

interface
uses UPessoaFisica,UProduto,Classes;
type
    TFornecedorFisico = class (TPessoaFisica)
        private

        protected
            FProduto:TProduto;
            FUmaListaProduto:TList;
        public
            constructor Create;
            destructor Destroy;


            procedure AdicionarProduto(Objeto:TObject);
            procedure RemoverProduto(Index:integer);
            function ContarItens:Integer;
            function getProdutos(Index:integer):TProduto;

            procedure setProduto(vProduto:TProduto);
            procedure setUmaLIstaProduto(vUmaListaProduto:Tlist);

            function getProduto:TProduto;
            Function getUmaLIstaProduto:TList;

            property Produto:TProduto read getProduto write setProduto;
            property UmaListaProduto:TList read getUmaLIstaProduto write setUmaListaProduto;

        end;


implementation

{ TFornecedorFisico }

procedure TFornecedorFisico.AdicionarProduto(Objeto: TObject);
begin
  FUmaListaProduto.Add(Objeto);
end;

function TFornecedorFisico.ContarItens: Integer;
begin
   Result:=FUmaListaProduto.Count;
end;

constructor TFornecedorFisico.Create;
begin
inherited;
   FTipo:='Fisico';
   FProduto:=TProduto.Create;
end;

destructor TFornecedorFisico.Destroy;
begin
inherited;
  FProduto.Destroy;
end;

function TFornecedorFisico.getProduto: TProduto;
begin
    Result:=FProduto;
end;

function TFornecedorFisico.getProdutos(Index: integer): TProduto;
begin
  Result:=FUmaListaProduto.Items[Index];
end;

function TFornecedorFisico.getUmaLIstaProduto: TList;
begin
   Result:=FUmaListaProduto;
end;

procedure TFornecedorFisico.RemoverProduto(Index: integer);
begin
   FUmaListaProduto.Delete(Index);
end;

procedure TFornecedorFisico.setProduto(vProduto: TProduto);
begin
   FProduto:=vProduto;
end;

procedure TFornecedorFisico.setUmaLIstaProduto(vUmaListaProduto: Tlist);
begin
     FUmaListaProduto:=vUmaListaProduto;
end;

end.
