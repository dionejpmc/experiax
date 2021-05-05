unit UFornecedor;

interface
uses UPessoaJuridica,UProduto, ListActns, classes;
type
  TFornecedor = class(TPessoaJuridica)
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

{ TFornecedor }

procedure TFornecedor.AdicionarProduto(Objeto: TObject);
begin
    FUmaListaProduto.Add(Objeto);
end;

function TFornecedor.ContarItens: Integer;
begin
   Result:=FUmaListaProduto.Count;
end;

constructor TFornecedor.Create;
begin
inherited;
  FProduto:=TProduto.Create;
end;

destructor TFornecedor.Destroy;
begin
inherited;
    FProduto.Destroy;
end;
function TFornecedor.getProduto:TProduto;
begin
 Result:=FProduto;
end;

function TFornecedor.getProdutos(Index: integer): TProduto;
begin
  Result:=FUmaListaProduto.Items[Index];
end;

function TFornecedor.getUmaLIstaProduto: TList;
begin
    Result:=FUmaListaProduto;
end;

procedure TFornecedor.RemoverProduto(Index: integer);
begin
  FUmaListaProduto.Delete(Index);
end;

procedure TFornecedor.setProduto(vProduto: TProduto);
begin
   FProduto:=vProduto;
end;

procedure TFornecedor.setUmaLIstaProduto(vUmaListaProduto: Tlist);
begin
   FUmaListaProduto:=vUmaListaProduto;
end;

end.
