unit UPessoaJuridica;

interface
uses UPessoa, UCondicaoPagamento;
type
    TPessoaJuridica = Class(TPessoa)
    private

    protected
     FRS:string;
     FFantasia:string;
     FIE:String;
     FCNPJ:String;
     FTelefone2:string;
     FCelular2:string;
     FUmaCP: TCondicaoPagamento;
    public
      constructor Create;
      destructor Destroy;

      procedure setRS(vRS:string);
      procedure setFantasia(vFantasia:string);
      procedure setIE(vIE:string);
      procedure setCNPJ(vCNPJ:string);
      procedure setTelefone2(vTelefone2:string);
      procedure setCelular2(vCelular2:string);
      procedure setCP(vCP:TCondicaoPagamento);

      function getRS:string;
      function getFantasia:string;
      function getIE:string;
      function getCNPJ:string;
      function getTelefone2:string;
      function getCelular2:string;
      function getCP:TCondicaoPagamento;

      property RS:String read getRS write setRS;
      property Fantasia:string read getFantasia write setFantasia;
      property IE:string read getIE write setIE;
      property CNPJ:string read getCNPJ write setCNPJ;
      property Telefone2:string read getTelefone2 write setTelefone2;
      property Celular2:string read getCelular2 write setCelular2;
      property CP:TCondicaoPagamento read getCP write setCP;

    End;

implementation

{ TPessoaJuridica }

constructor TPessoaJuridica.Create;
begin
inherited;
     FRS:='';
     FFantasia:='';
     FIE:='';
     FCNPJ:='';
     FTelefone2:='';
     FCelular2:='';
     FUmaCP:=TCondicaoPagamento.create;
end;

destructor TPessoaJuridica.Destroy;
begin
inherited;
    FUmaCP.destroy;
end;

function TPessoaJuridica.getCelular2: string;
begin
  Result:=FCelular2;
end;

function TPessoaJuridica.getCNPJ: string;
begin
  Result:=FCNPJ;
end;

function TPessoaJuridica.getCP: TCondicaoPagamento;
begin
  Result:= FUmaCP;
end;

function TPessoaJuridica.getFantasia: string;
begin
  Result:=FFantasia;
end;

function TPessoaJuridica.getIE: string;
begin
  Result:=FIE;
end;

function TPessoaJuridica.getRS: string;
begin
  Result:=  FRS;
end;

function TPessoaJuridica.getTelefone2: string;
begin
  Result:=FTelefone2;
end;

procedure TPessoaJuridica.setCelular2(vCelular2: string);
begin
  FCelular2:=vCelular2;
end;

procedure TPessoaJuridica.setCNPJ(vCNPJ: string);
begin
  FCNPJ:=vCNPJ;
end;

procedure TPessoaJuridica.setCP(vCP: TCondicaoPagamento);
begin
     FUmaCP:=vCP;
end;

procedure TPessoaJuridica.setFantasia(vFantasia: string);
begin
  FFantasia:=vFantasia;
end;

procedure TPessoaJuridica.setIE(vIE: string);
begin
  FIE:=vIE;
end;

procedure TPessoaJuridica.setRS(vRS: string);
begin
  FRS:=vRS;
end;

procedure TPessoaJuridica.setTelefone2(vTelefone2: string);
begin
  FTelefone2:=vTelefone2;
end;

end.
