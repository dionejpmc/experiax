unit UFuncionario;

interface
uses UPessoaFisica, UCargo, UCidade;
type
    TFuncionario = Class (TPessoaFisica)
      private
      protected
        FIdFuncionario:integer;
        FCTPS:String;
        FStatus:Integer;
        FCargo:TCargo;
        FCidade:TCidade;
        FDataNascimento:string;
        FDataAdmicao:String;
        FDataDemicao:String;
      public
        constructor Create;
        destructor Destroy;

        procedure setCTPS(vCTPS:string);
        procedure setStatus(vStatus:integer);
        procedure setCargo(vCargo:TCargo);
        procedure setCidade(vCidade:TCidade);
        procedure setDataNascimento(vDataNascimento:string);
        procedure setDataAdmicao(vDataAdmicao:String);
        procedure setDataDemicao(vDatademicao:String);

        function getCTPS:String;
        function getCargo:TCargo;
        function getCidade:TCidade;
        function getStatus:Integer;
        function getDataNascimento:string;
        function getDataAdmicao:string;
        function getDataDemicao:string;

        property CTPS:string read getCTPS write setCTPS;
        property Status:Integer read getStatus write setStatus;
        property Cargo:TCargo read getCargo write setcargo;
        property Cidade:TCidade read getCidade write setCidade;
        property DataNascimento:string read getDataNascimento write setDataNascimento;
        property DataAdmicao:string read getDataAdmicao write setDataAdmicao;
        property DataDemicao:string read getDataDemicao write setDataDemicao;

    End;


implementation

{ TFuncionario }

constructor TFuncionario.Create;
begin
        FCTPS:='';
        FStatus:=0;
        FDataAdmicao:='';
        FDataDemicao:='';
        FDataNascimento:='';
        FCargo:=TCargo.Create;
        FCidade:=TCidade.Create;


end;

destructor TFuncionario.Destroy;
begin
  FCargo.Destroy;
  FCidade.Destroy;
end;

function TFuncionario.getCargo: TCargo;
begin
   Result:=FCargo;
end;

function TFuncionario.getCidade: TCidade;
begin
  Result:=FCidade;
end;

function TFuncionario.getCTPS: String;
begin
   Result:=FCTPS;
end;

function TFuncionario.getDataAdmicao: string;
begin
   Result:=FDataAdmicao;
end;

function TFuncionario.getDataDemicao: string;
begin
   Result:=FDataDemicao;
end;

function TFuncionario.getDataNascimento: string;
begin
    Result:=FDataNascimento;
end;

function TFuncionario.getStatus: Integer;
begin
   Result:= FStatus;
end;

procedure TFuncionario.setCargo(vCargo: TCargo);
begin
  FCargo:=vCargo;
end;

procedure TFuncionario.setCidade(vCidade: TCidade);
begin
  FCidade:=VCidade;
end;

procedure TFuncionario.setCTPS(vCTPS: string);
begin
  FCTPS:=vCTPS;
end;

procedure TFuncionario.setDataAdmicao(vDataAdmicao: String);
begin
  FDataAdmicao:=vDataAdmicao;
end;

procedure TFuncionario.setDataDemicao(vDatademicao: String);
begin
  FDataDemicao:=vDatademicao;
end;

procedure TFuncionario.setDataNascimento(vDataNascimento: string);
begin
   FDataNascimento:=vDataNascimento;
end;

procedure TFuncionario.setStatus(vStatus: integer);
begin
  FStatus:=vStatus;
end;

end.
