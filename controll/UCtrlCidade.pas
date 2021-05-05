Unit UCtrlCidade;

interface
uses UCidade, UDaoCidade, UCtrl,DB;
type
    TCtrlCidade = class (TCtrl)

    private
    protected
      UmaDaoCidade:TDaoCidade;
    public
    constructor Create;
    destructor Destroy;


    function Salvar(Objeto : TObject): string;                    override;
    function GetDs : TDataSource;                                 override;
    function Carregar( Objeto : TObject): Tobject;                override;
    function Buscar(KeyId : Integer;KeyStr:String): boolean;      override;
    function Excluir(Objeto : TObject): string;                   override;

end;

implementation

{ TCtrlCidade }

function TCtrlCidade.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
    Result:=UmaDaoCidade.Buscar(KeyId,KeyStr);
end;

function TCtrlCidade.Carregar(Objeto: TObject): Tobject;
begin
   Result:=UmaDaoCidade.Carregar(Objeto);
end;

constructor TCtrlCidade.Create;
begin
  UmaDaoCidade:=TDaoCidade.Create;
end;

destructor TCtrlCidade.Destroy;
begin
  UmaDaoCidade.Destroy;
end;

function TCtrlCidade.Excluir(Objeto: TObject): string;
begin
    Result:=UmaDaoCidade.Excluir(Objeto);
end;

function TCtrlCidade.GetDs: TDataSource;
begin
     Result:=UmaDaoCidade.GetDs;
end;

function TCtrlCidade.Salvar(Objeto: TObject): string;
begin
    Result:= UmaDaoCidade.Salvar(Objeto);
end;

end.
