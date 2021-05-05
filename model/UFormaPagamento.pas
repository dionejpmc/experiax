unit UFormaPagamento;

interface
type
    TFormaPagamento = class
    private
    protected
      FId:integer;
      FFP:String[50];
      FDataCadastro:String[10];
      FDataAlteracao:String[10];
    public
      constructor create;
      destructor destroy;

      procedure setId(vId:integer);
      procedure setFP(vFP:String);
      procedure setDataCadastro(vDataCadastro:String);
      procedure setDataAlteracao(vDataAlteracao:String);

      function getId:Integer;
      function getFP:string;
      function getDataCadastro:string;
      function getDataAlteracao:string;


      property Id:Integer read getId write setId;
      property FP:string read getFP write setFP;
      property DataCadastro:string read getDataCadastro write setDataCadastro;
      property DataAlteracao:string read getDataAlteracao write setDataAlteracao;

    end;


implementation

{ TFormaPagamento }

constructor TFormaPagamento.create;
begin
      FId:=0;
      FFP:='';
      FDataCadastro:='';
      FDataAlteracao:='';
end;

destructor TFormaPagamento.destroy;
begin

end;

function TFormaPagamento.getDataAlteracao: string;
begin
    Result:=FDataAlteracao;
end;

function TFormaPagamento.getDataCadastro: string;
begin
   Result:=FDataCadastro;
end;

function TFormaPagamento.getFP: string;
begin
   Result:=FFP;
end;

function TFormaPagamento.getId: Integer;
begin
    Result:=FId;
end;

procedure TFormaPagamento.setDataAlteracao(vDataAlteracao: String);
begin
   FDataAlteracao:=vDataAlteracao;
end;

procedure TFormaPagamento.setDataCadastro(vDataCadastro: String);
begin
    FDataCadastro:=vDataCadastro;
end;

procedure TFormaPagamento.setFP(vFP: String);
begin
   FFP:=vFP;
end;

procedure TFormaPagamento.setId(vId: integer);
begin
    FId:=vId;
end;

end.
