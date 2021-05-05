unit UCtrlFP;

interface
uses UCtrl, UDaoFP, UDM, DB;
type
    TCtrlFP = class (TCtrl)
      private
      protected
        UmaDaoFP:TDaoFP;
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

{ TCtrlFP }

function TCtrlFP.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
   Result:=UmaDaoFP.Buscar(KeyId,KeyStr) ;
end;

function TCtrlFP.Carregar(Objeto: TObject): Tobject;
begin
     Result:=UmaDaoFP.Carregar(Objeto);
end;

constructor TCtrlFP.Create;
begin
    UmaDaoFP:=TDaoFP.Create;
end;

destructor TCtrlFP.Destroy;
begin
   UmaDaoFP.Destroy;
end;

function TCtrlFP.Excluir(Objeto: TObject): string;
begin
   UmaDaoFP.Excluir(Objeto);
end;

function TCtrlFP.GetDs: TDataSource;
begin
  Result:=UmaDaoFP.GetDs;
end;

function TCtrlFP.Salvar(Objeto: TObject): string;
begin
   Result:=UmaDaoFP.Salvar(Objeto);
end;

end.
