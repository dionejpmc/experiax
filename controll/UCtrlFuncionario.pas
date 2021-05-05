unit UCtrlFuncionario;

interface
uses UCtrl, UDaoFuncionario, DB;
type
    TCtrlFuncionario = class(TCtrl)
      private
      protected
          UmaDaoFuncionario:TDaoFuncionario;
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

{ TCtrlFuncionario }

function TCtrlFuncionario.Buscar(KeyId: Integer; KeyStr: String): boolean;
begin
    Result:= UmaDaoFuncionario.Buscar(KeyId, KeyStr);
end;

function TCtrlFuncionario.Carregar(Objeto: TObject): Tobject;
begin
    Result:= UmaDaoFuncionario.Carregar(Objeto);
end;

constructor TCtrlFuncionario.Create;
begin
    UmaDaoFuncionario:=TDaoFuncionario.Create;
end;

destructor TCtrlFuncionario.Destroy;
begin
     UmaDaoFuncionario.Destroy;
end;

function TCtrlFuncionario.Excluir(Objeto: TObject): string;
begin
 Result:= UmaDaoFuncionario.Excluir(Objeto);
end;

function TCtrlFuncionario.GetDs: TDataSource;
begin
   Result:= UmaDaoFuncionario.GetDs;
end;

function TCtrlFuncionario.Salvar(Objeto: TObject): string;
begin
   Result:= UmaDaoFuncionario.Salvar(Objeto);
end;

end.
