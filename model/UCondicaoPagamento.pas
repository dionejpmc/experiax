unit UCondicaoPagamento;

interface
uses UFormaPagamento,UParcela, SysUtils, Classes;
type
    TCondicaoPagamento = class
       private

       protected
           FIdCP:integer;
           FCP:String[50];
           FUmaFP:TFormaPagamento;
           FUmaParcela:TParcela;
           FUmaListaParcela:TList;
           FQTDEParcelas:Integer;
           FDataCadastro:string[10];
           FDataAlteracao:string[10];

       public
      constructor create;
      destructor destroy;

      procedure AdicionarParcela(Objeto:TObject);
      procedure RemoverParcela(Index:integer);
      function ContarItens:Integer;
      function getParcelas(Index:integer):TParcela;


      procedure setIdCP(vIdCP:Integer);
      procedure setCP(vCP:string);
      procedure setUmaFP(vUmaFP:TFormaPagamento);
      procedure setQTDEParcelas(vQTDEParcelas:integer);
      procedure setUmaParcela(VParcela:TParcela);
      procedure setDataCadastro(vDataCadastro:string);
      procedure setDataAlteracao(VDataAlteracao:string);
      procedure setUmaListaParcela(vListaParcela:TList);


      function getIdCP:Integer;
      function getCP:string;
      function getUmaFP:TFormaPagamento;
      function getQTDEParcelas:integer;
      function getUmaParcela:TParcela;
      function getDataCadastro:string;
      function getDataAlteracao:string;
      function getUmaListaParcela:TList;



      property IdCP:integer read getIdCP write setIdCP;
      property CP:String read getCP write setCP;
      property UmaFP:TFormaPagamento read getUmaFP write setUmaFP;
      property UmaParcela:TParcela read getUmaParcela write setUmaParcela;
      property UmaListaParcela:TList read getUmaListaParcela write setUmaListaParcela;
      property QTDEParcelas:Integer read getQTDEParcelas write setQTDEParcelas;
      property DataCadastro:string read getDataCadastro write setDataCadastro;
      property DataAlteracao:string read getDataAlteracao write setDataAlteracao;
    end;

implementation

{ TCondicaoPagamento }

procedure TCondicaoPagamento.AdicionarParcela(Objeto:TObject);
begin
  FUmaListaParcela.Add(Objeto);
end;

function TCondicaoPagamento.ContarItens: Integer;
begin
  Result:= FUmaListaParcela.Count;
end;

constructor TCondicaoPagamento.create;
begin
           FIdCP:=0;
           FCP:='';
           FUmaFP:=TFormaPagamento.Create;
           FQTDEParcelas:=0;
           FUmaParcela:=TParcela.Create;
           FUmaListaParcela:=TList.Create;
           FDataCadastro:='';
           FDataAlteracao:='';
end;

destructor TCondicaoPagamento.destroy;
begin
   FUmaFP.Destroy;
   FUmaParcela.Destroy;
   FUmaListaParcela:=nil;
end;

function TCondicaoPagamento.getCP: string;
begin
   Result:=FCP;
end;

function TCondicaoPagamento.getDataAlteracao: string;
begin
  Result:=FDataAlteracao;
end;

function TCondicaoPagamento.getDataCadastro: string;
begin
    Result:=FDataCadastro;
end;

function TCondicaoPagamento.getIdCP: Integer;
begin
   Result:=FIdCP;
end;

function TCondicaoPagamento.getParcelas(Index: integer): TParcela;
begin
    Result:= FUmaListaParcela.Items[Index];
end;

function TCondicaoPagamento.getQTDEParcelas: integer;
begin
  Result:=FQTDEParcelas;
end;

function TCondicaoPagamento.getUmaFP: TFormaPagamento;
begin
   Result:=FUmaFP;
end;

function TCondicaoPagamento.getUmaListaParcela: TList;
begin
  Result:=FUmaListaParcela;
end;

function TCondicaoPagamento.getUmaParcela: TParcela;
begin
   Result:=FUmaParcela;
end;

procedure TCondicaoPagamento.RemoverParcela(Index:integer);
begin
    FUmaListaParcela.Delete(Index);
end;

procedure TCondicaoPagamento.setCP(vCP: string);
begin
   FCP:=vCP;
end;

procedure TCondicaoPagamento.setDataAlteracao(VDataAlteracao: string);
begin
   FDataAlteracao:=VDataAlteracao;
end;

procedure TCondicaoPagamento.setDataCadastro(vDataCadastro: string);
begin
  FDataCadastro:=vDataCadastro;
end;

procedure TCondicaoPagamento.setIdCP(vIdCP: Integer);
begin
  FIdCP:=vIdCP;
end;

procedure TCondicaoPagamento.setQTDEParcelas(vQTDEParcelas: integer);
begin
  FQTDEParcelas:=vQTDEParcelas;
end;

procedure TCondicaoPagamento.setUmaFP(vUmaFP: TFormaPagamento);
begin
  FUmaFP:=vUmaFP;
end;

procedure TCondicaoPagamento.setUmaListaParcela(vListaParcela: TList);
begin
  FUmaListaParcela:=vListaParcela;
end;

procedure TCondicaoPagamento.setUmaParcela(VParcela: TParcela);
begin
   FUmaParcela:=VParcela;
end;

end.
