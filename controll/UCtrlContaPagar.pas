unit UCtrlContaPagar;

interface
uses UCtrl,UDM,DB, UDaoContaPagar;
type
  TCtrlContaPagar = class (TCtrl)
    private
    protected
        UmaDaoContaPagar:TDaoContaPagar;
    public
        constructor Create;
        destructor Destroy;
        function Salvar(Objeto : TObject;Id:integer): string;
        function GetDs : TDataSource;                                override;
        function Carregar( Objeto : TObject): Tobject;               override;
        function Buscar(KeyId : Integer;KeyStr:String): boolean;     override;
        function Excluir(Objeto : TObject): string;                  override;


  end;

implementation

{ TCtrlContaPagar }

function TCtrlContaPagar.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin

end;

function TCtrlContaPagar.Carregar(Objeto: TObject): Tobject;
begin
  Result:=UmaDaoContaPagar.Carregar(Objeto);
end;

constructor TCtrlContaPagar.Create;
begin
  UmaDaoContaPagar:=TDaoContaPagar.Create;
end;

destructor TCtrlContaPagar.Destroy;
begin
  UmaDaoContaPagar.Destroy;
end;

function TCtrlContaPagar.Excluir(Objeto: TObject): string;
begin

end;

function TCtrlContaPagar.GetDs: TDataSource;
begin
   Result:=UmaDaoContaPagar.GetDs;
end;

function TCtrlContaPagar.Salvar(Objeto: TObject;Id:integer): string;
begin
    Result:=UmaDaoContaPagar.Salvar(Objeto,id);
end;

end.
