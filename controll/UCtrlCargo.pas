unit UCtrlCargo;

interface
uses UCtrl, UDaoCargo, DB, UDM;
type
    TCtrlCargo = class (TCtrl)

    private
    protected
        UmaDaoCargo:TDaoCargo;
    public
        constructor Create;
        destructor Destroy;
        function Salvar(Objeto : TObject): string;                   override;
        function GetDs : TDataSource;                                override;
        function Carregar( Objeto : TObject): Tobject;               override;
        function Buscar(KeyId : Integer;KeyStr:String): boolean;     override;
        function Excluir(Objeto : TObject): string;                  override;

    end;



implementation

{ TCtrlCargo }

function TCtrlCargo.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
     Result:= UmaDaoCargo.Buscar(KeyId,KeyStr);
end;

function TCtrlCargo.Carregar(Objeto: TObject): Tobject;
begin
    Result:=UmaDaoCargo.Carregar(Objeto);
end;

constructor TCtrlCargo.Create;
begin
    UmaDaoCargo:=TDaoCargo.Create;
end;

destructor TCtrlCargo.Destroy;
begin
    UmaDaoCargo.Destroy;
end;

function TCtrlCargo.Excluir(Objeto: TObject): string;
begin
  Result:=UmaDaoCargo.Excluir(Objeto);
end;

function TCtrlCargo.GetDs: TDataSource;
begin
  Result:=  UmaDaoCargo.GetDs;
end;

function TCtrlCargo.Salvar(Objeto: TObject): string;
begin
    Result:=UmaDaoCargo.Salvar(Objeto);
end;

end.
