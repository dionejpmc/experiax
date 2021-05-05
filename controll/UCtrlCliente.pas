unit UCtrlCliente;

interface
uses UCtrl, UDaoCliente, UDM, DB;
type
  TCTrlCliente = class (TCtrl)
  private
  protected
       UmaDaoCliente:TDaoCliente;
  public
        constructor Create;
        destructor Destroy;
        function Salvar(Objeto : TObject;Id:integer): string;        //Virtual
        function GetDs : TDataSource;                                override;
        function Carregar( Objeto : TObject): Tobject;               override;
        function GetTipoCliente:string;
        function BuscarCPF_CNPJ(vCPF_CNPJ:string):Boolean;
        function Buscar(KeyId : Integer;KeyStr:String): boolean;     override;
        function Excluir(Objeto : TObject): string;                  override;
  end;

implementation

{ TCTrlCliente }

function TCTrlCliente.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
    Result:= UmaDaoCliente.Buscar(KeyId, KeyStr);
end;

function TCTrlCliente.BuscarCPF_CNPJ(vCPF_CNPJ:string): Boolean;
begin
    Result:=UmaDaoCliente.BuscarCPF(vCPF_CNPJ);
end;

function TCTrlCliente.Carregar(Objeto: TObject): Tobject;
begin
   Result:=UmaDaoCliente.Carregar(Objeto);
end;

constructor TCTrlCliente.Create;
begin
    UmaDaoCliente:=TDaoCliente.Create;
end;

destructor TCTrlCliente.Destroy;
begin
   UmaDaoCliente.Destroy;
end;

function TCTrlCliente.Excluir(Objeto: TObject): string;
begin
    result:=UmaDaoCliente.Excluir(Objeto);
end;

function TCTrlCliente.GetDs: TDataSource;
begin
  Result:= UmaDaoCliente.GetDs;
end;

function TCTrlCliente.GetTipoCliente: string;
begin
    Result:=UmaDaoCliente.TipoCliente;
end;

function TCTrlCliente.Salvar(Objeto: TObject;id:Integer): string;
begin
      result:=UmaDaoCliente.Salvar(Objeto,id);
end;

end.
