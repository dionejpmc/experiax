unit UReceita;

interface
uses UProduto,Classes;
type
    TReceita = class
    private
    protected
       FIdReceita:integer;
       FReceita:String;
       FProduto:TProduto;
       FObservacao:String;
       FQtdeProdutos:integer;
       FDataCadastro:string;
       FDataAlteracao:string;
       FUmaListaProduto:TList;
    public
      constructor Create;
      destructor Destroy;


      procedure AdicionarProduto(Objeto:TObject);
      procedure RemoverProduto(Index:integer);
      function ContarItens:Integer;
      function getProdutos(Index:integer):TProduto;

      procedure setIdReceita(vIdReceita:integer);
      procedure setReceita(vReceita:String);
      procedure setQtdeprodutos(vQtdeProdutos:integer);
      procedure setProduto(vProduto:TProduto);
      procedure setObservacoes(vObservacoes:string);
      procedure setDataCadastro(vDataCadastro:string);
      procedure setDataAlteracao(vDataAlteracao:string);
      procedure setUmaListaProduto(vListaProduto:TList);

      function getIdReceita:integer;
      function getQtdeProdutos:integer;
      function getReceita:String;
      function getProduto:TProduto;
      function getObservacoes:string;
      function getDataCadastro:string;
      function getDataAlteracao:string;
      function getUmaListaProduto:TList;

      property IdReceita:integer read getIdReceita write setIdReceita;
      property Receita:String read getReceita write setReceita;
      property QtdeProdutos:integer read getQtdeProdutos write setQtdeprodutos;
      property Produto:TProduto read getProduto write setProduto;
      property Observacao:String read getObservacoes write setObservacoes;
      property DataCadastro:string read getDataCadastro write setDataCadastro;
      property DataAlteracao:string read getDataAlteracao write setDataAlteracao;
      property UmaListaProduto:TList read getUmaListaProduto write setUmaListaProduto;
    end;

implementation

{ TReceita }

procedure TReceita.AdicionarProduto(Objeto: TObject);
begin
   FUmaListaProduto.Add(TProduto(Objeto));
end;

function TReceita.ContarItens: Integer;
begin
   Result:=FUmaListaProduto.Count;
end;

constructor TReceita.Create;
var i:integer;
begin
       FReceita:='';
       FObservacao:='';
       FDataCadastro:=' ';
       FDataAlteracao:=' ';
       FProduto:=TProduto.Create;
       FUmaListaProduto:=TList.Create;
end;

destructor TReceita.Destroy;
begin
  FProduto.Destroy;
  FUmaListaProduto.Destroy;
end;

function TReceita.getDataAlteracao: string;
begin
    Result:=FDataAlteracao;
end;

function TReceita.getDataCadastro: string;
begin
    Result:=FDataCadastro;
end;

function TReceita.getIdReceita: integer;
begin
   Result:=FIdReceita;
end;

function TReceita.getObservacoes: string;
begin
    Result:=FObservacao;
end;

function TReceita.getProduto: TProduto;
begin
  Result:=FProduto;
end;

function TReceita.getProdutos(Index: integer): TProduto;
begin
     Result:= FUmaListaProduto.Items[Index];
end;

function TReceita.getQtdeProdutos: integer;
begin
   Result:=FQtdeProdutos;
end;

function TReceita.getReceita: string;
begin
     Result:=FReceita;
end;

function TReceita.getUmaListaProduto: TList;
begin
   Result:=FUmaListaProduto;
end;

procedure TReceita.RemoverProduto(Index: integer);
begin
   FUmaListaProduto.Delete(Index);
end;

procedure TReceita.setDataAlteracao(vDataAlteracao: string);
begin
  FDataAlteracao:=vDataAlteracao;
end;

procedure TReceita.setDataCadastro(vDataCadastro: string);
begin
     FDataCadastro:=vDataCadastro;
end;

procedure TReceita.setIdReceita(vIdReceita:integer);
begin
      FIdReceita:=vIdReceita;
end;

procedure TReceita.setObservacoes(vObservacoes: string);
begin
   FObservacao:=vObservacoes;
end;
procedure TReceita.setProduto(vProduto: TProduto);
begin
  FProduto:=vProduto;
end;

procedure TReceita.setQtdeprodutos(vQtdeProdutos: integer);
begin
  FQtdeProdutos:=vQtdeProdutos;
end;

procedure TReceita.setReceita(vReceita: String);
begin
   FReceita:= vReceita;
end;

procedure TReceita.setUmaListaProduto(vListaProduto: TList);
begin
    FUmaListaProduto:= vListaProduto;
end;

end.
