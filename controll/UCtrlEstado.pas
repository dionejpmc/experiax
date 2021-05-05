unit UCtrlEstado;

interface
uses UDaoEstado, UCtrl, DB;
type
    TCtrlEstado = class(TCtrl)

  private
  protected
    UmaDaoEstado:TDaoEstado;
  public
    constructor Create;
    destructor Destroy;

    function Salvar(Objeto : TObject): string;      override;
    function GetDs : TDataSource;                override;
    function Carregar( Objeto : TObject): Tobject;  override;
    function Buscar(KeyId : Integer;KeyStr:String): boolean;      override;
    function Excluir(Objeto : TObject): string;     override;

end;


implementation

{ TCtrlEstado }

function TCtrlEstado.Buscar(KeyId : Integer;KeyStr:String): boolean;
begin
   Result:=UmaDaoEstado.Buscar(keyId,KeyStr);
end;

function TCtrlEstado.Carregar(Objeto: TObject): Tobject;
begin
   Result:=UmaDaoEstado.Carregar(Objeto);
end;

constructor TCtrlEstado.Create;
begin
    UmaDaoEstado:=TDaoEstado.Create;
end;

destructor TCtrlEstado.Destroy;
begin
    UmaDaoEstado.Destroy;
end;

function TCtrlEstado.Excluir(Objeto: TObject): string;
begin
    Result:=UmaDaoEstado.Excluir(Objeto);
end;

function TCtrlEstado.GetDs: TDataSource;
begin
   Result:=UmaDaoEstado.GetDs;
end;

function TCtrlEstado.Salvar(Objeto: TObject): string;
begin
     Result:=UmaDaoEstado.Salvar(Objeto);
end;

end.
