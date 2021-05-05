unit UCtrlOrdemProducao;

interface
uses  UDM,DB, UCtrl, UDaoOrdemProducao;
type
    TCtrlOP = class (TCtrl)
      private

      protected
        UmaDaoOP:TDaoOP;
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

{ TCtrlOP }

function TCtrlOP.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin

end;

function TCtrlOP.Carregar(Objeto: TObject): Tobject;
begin

end;

constructor TCtrlOP.Create;
begin
    UmaDaoOP:=TDaoOP.Create;
end;

destructor TCtrlOP.Destroy;
begin
   UmaDaoOP.Destroy;
end;

function TCtrlOP.Excluir(Objeto: TObject): string;
begin

end;

function TCtrlOP.GetDs: TDataSource;
begin
    Result:=UmaDaoOP.GetDs;
end;

function TCtrlOP.Salvar(Objeto: TObject): string;
begin

end;

end.
