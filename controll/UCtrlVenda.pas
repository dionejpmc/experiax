unit UCtrlVenda;

interface
uses UCtrl, UDaoVenda, UDM, DB;
type
    TCtrlVenda = class (TCtrl)

    private

    protected
       UmaDaoVenda:TDaoVenda;
    public
        constructor Create;
        destructor Destroy;
        function Salvar(Objeto : TObject): string;                   override;
        function GetDs : TDataSource;                                override;
        function GetDsPV:TDataSource;
        function Carregar( Objeto : TObject): Tobject;               override;
        function Buscar(KeyNumNota: Integer; KeyStr: String; KeyDAtaEmicao:string): boolean;
        function BuscarPV(KeyNumeroNota : Integer; KeySerie:string):Boolean;
        function Excluir(Objeto : TObject): string;                  override;
    end;

implementation

{ TCtrlVenda }

function TCtrlVenda.Buscar(KeyNumNota: Integer; KeyStr: String;
  KeyDataEmicao: string): boolean;
begin
     Result:=UmaDaoVenda.Buscar(KeyNumNota,KeyStr,KeyDAtaEmicao);
end;

function TCtrlVenda.BuscarPV(KeyNumeroNota: Integer; KeySerie: string): Boolean;
begin
   UmaDaoVenda.BuscarPV(KeyNumeroNota,KeySerie);
end;

function TCtrlVenda.Carregar(Objeto: TObject): Tobject;
begin
   Result:=UmaDaoVenda.Carregar(Objeto);
end;

constructor TCtrlVenda.Create;
begin
    UmaDaoVenda:=TDaoVenda.Create;
end;

destructor TCtrlVenda.Destroy;
begin
     UmaDaoVenda.Destroy;
end;

function TCtrlVenda.Excluir(Objeto: TObject): string;
begin

end;

function TCtrlVenda.GetDs: TDataSource;
begin
   Result:=UmaDaoVenda.GetDs;
end;

function TCtrlVenda.GetDsPV: TDataSource;
begin
    Result:=UmaDaoVenda.GetDsPV;
end;

function TCtrlVenda.Salvar(Objeto: TObject): string;
begin
   Result:=UmaDaoVenda.Salvar(Objeto);
end;

end.
