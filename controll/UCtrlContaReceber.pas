unit UCtrlContaReceber;

interface
uses UCtrl, UDaoContaReceber, UDM, DB;
type
    TCtrlContaReceber = class (TCtrl)
    private
    protected
        UmaDaoContaReceber:TDaoContaReceber;

    public
        Constructor Create;
        Destructor Destroy;
        function Salvar(Objeto : TObject): string;                   override;
        function GetDs : TDataSource;                                override;
        function Carregar( Objeto : TObject): Tobject;               override;
        function Buscar(KeyId : Integer;KeyStr:String): boolean;     override;
        function Excluir(Objeto : TObject): string;                  override;
    end;

implementation

{ TCtrlContaReceber }

function TCtrlContaReceber.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
    Result:=  UmaDaoContaReceber.Buscar(KeyId,KeyStr);
end;

function TCtrlContaReceber.Carregar(Objeto: TObject): Tobject;
begin
   Result:= UmaDaoContaReceber.Carregar(Objeto);
end;

constructor TCtrlContaReceber.Create;
begin
    UmaDaoContaReceber:=TDaoContaReceber.Create;
end;

destructor TCtrlContaReceber.Destroy;
begin
    UmaDaoContaReceber.Destroy;
end;

function TCtrlContaReceber.Excluir(Objeto: TObject): string;
begin
    UmaDaoContaReceber.Excluir(Objeto);
end;

function TCtrlContaReceber.GetDs: TDataSource;
begin
   Result:=  UmaDaoContaReceber.GetDs;
end;

function TCtrlContaReceber.Salvar(Objeto: TObject): string;
begin
   Result:= UmaDaoContaReceber.Salvar(Objeto);
end;

end.
