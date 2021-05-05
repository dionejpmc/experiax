unit UCtrlCP;

interface
uses UCtrl, UDaoCP, DB;
type
    TCtrlCP = class (TCtrl)
      private
      protected
          UmaDaoCP:TDaoCP;
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

{ TCtrlCP }

function TCtrlCP.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
    Result:=UmaDaoCP.Buscar(KeyId, KeyStr);
end;

function TCtrlCP.Carregar(Objeto: TObject): Tobject;
begin
   Result:=UmaDaoCP.Carregar(Objeto);
end;

constructor TCtrlCP.Create;
begin
    UmaDaoCP:=TDaoCP.Create;
end;

destructor TCtrlCP.Destroy;
begin
    UmaDaoCP.Create;
end;

function TCtrlCP.Excluir(Objeto: TObject): string;
begin
  Result:=UmaDaoCP.Excluir(Objeto);
end;

function TCtrlCP.GetDs: TDataSource;
begin
  Result:=UmaDaoCP.GetDs;
end;

function TCtrlCP.Salvar(Objeto: TObject): string;
begin
   Result:=UmaDaoCP.Salvar(Objeto);
end;

end.
