unit UParcela;

interface
type
    TParcela = class(TObject)
      private
      protected
          FIdParcela:integer;
          FNumeroParcela:Integer;
          FValorParcela:Double;
          FPorcentagemParcela:Double;
          FJurosParcela:Double;
          FDataVencimento:String[10];
          FObservacao:string[100];
          FDataCadastro:String[10];
          FDataAlteracao:String[10];

      public
         constructor Create;
         destructor Destroy;

         procedure setIdParcela(vIdParcela:Integer);
         procedure setNumeroParcela(vNumeroParcela:integer);
         procedure setValorParcela(vValorParcela:Double);
         procedure setPorcentagemParcela(vPorcentagemParcela:Double);
         procedure setJurosParcela(vJurosParcela:Double);
         procedure setDataVencimento(VDataVencimento:string);
         procedure setObservacao(vObservacao:string);
         procedure setDataCadastro(vDataCadastro:string);
         procedure setDataAlteracao(vDataAlteracao:string);

         function getIdParcela:Integer;
         function getNumeroParcela:integer;
         function getValorParcela:Double;
         function getPorcentagemParcela:Double;
         function getJurosParcela:Double;
         function getDataVencimento:string;
         function getObservacao:string;
         function getDataCadastro:string;
         function getDataAlteracao:string;

         property IdParcela:Integer read getIdParcela write setIdParcela;
         property NumeroParcela:Integer read getNumeroParcela write setNumeroParcela;
         property ValorParcela:Double read getValorParcela write setValorParcela;
         property PorcentagemParcela:Double read getPorcentagemParcela write setPorcentagemParcela;
         property JurosParcela:Double read getJurosParcela write setJurosParcela;
         property DataVencimento:string read getDataVencimento write setDataVencimento;
         property Observacao:string read getObservacao write setObservacao;
         property DataCadastro:string read getDataCadastro write setDataCadastro;
         property DataAlteracao:string read getDataAlteracao write setDataAlteracao;

    end;

implementation

{ TParcela }

constructor TParcela.Create;
begin
          FIdParcela:=0;
          FNumeroParcela:=0;
          FValorParcela:=0.0;
          FPorcentagemParcela:=0.0;
          FJurosParcela:=0.0;
          FDataVencimento:='';
          FObservacao:='';
          FDataCadastro:='';
          FDataAlteracao:='';
end;

destructor TParcela.Destroy;
begin

end;

function TParcela.getDataAlteracao: string;
begin
   Result:=FDataAlteracao;
end;

function TParcela.getDataCadastro: string;
begin
   Result:=FDataCadastro;
end;

function TParcela.getDataVencimento: string;
begin
   Result:=FDataVencimento;
end;

function TParcela.getIdParcela: Integer;
begin
   Result:=FIdParcela;
end;

function TParcela.getJurosParcela: Double;
begin
   Result:=FJurosParcela;
end;

function TParcela.getNumeroParcela: integer;
begin
   Result:=FNumeroParcela;
end;

function TParcela.getObservacao: string;
begin
   Result:=FObservacao;
end;

function TParcela.getPorcentagemParcela: Double;
begin
   Result:=FPorcentagemParcela;
end;

function TParcela.getValorParcela: Double;
begin
   Result:=FValorParcela;
end;

procedure TParcela.setDataAlteracao(vDataAlteracao: string);
begin
 FDataAlteracao:=vDataAlteracao;
end;

procedure TParcela.setDataCadastro(vDataCadastro: string);
begin
   FDataCadastro:=vDataCadastro;
end;

procedure TParcela.setDataVencimento(VDataVencimento: string);
begin
 FDataVencimento:=VDataVencimento;
end;

procedure TParcela.setIdParcela(vIdParcela: Integer);
begin
   FIdParcela:=vIdParcela;
end;

procedure TParcela.setJurosParcela(vJurosParcela: Double);
begin
   FJurosParcela:=vJurosParcela
end;

procedure TParcela.setNumeroParcela(vNumeroParcela: integer);
begin
   FNumeroParcela:=vNumeroParcela;
end;

procedure TParcela.setObservacao(vObservacao: string);
begin
   FObservacao:=vObservacao;
end;

procedure TParcela.setPorcentagemParcela(vPorcentagemParcela: Double);
begin
  FPorcentagemParcela:=vPorcentagemParcela;
end;

procedure TParcela.setValorParcela(vValorParcela: Double);
begin
  FValorParcela:=vValorParcela;
end;

end.
