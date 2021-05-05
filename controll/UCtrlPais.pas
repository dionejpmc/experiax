unit UCtrlPais;

interface
uses
    UCtrl,DB, UDaoPais;

type TCtrlPais  = class (TCtrl)

    private

    protected
        DaoPais: TDaoPais;
    public
      constructor Create;
      destructor Destroy;
      function Salvar(Objeto:TObject):String;    override;
      function GetDS:TDataSource;                    override;
      function Carregar(Objeto:TObject):TObject;     override;
      function Buscar(keyId: integer;keyStr:String):boolean;           override;
      function Excluir(Objeto:TObject):String;       override;
end;

implementation

{ TCtrlPais }
function TCtrlPais.Buscar(keyId: integer;keyStr:String): boolean;
begin
  Result:=DaoPais.Buscar(keyId,keyStr);
end;

function TCtrlPais.Carregar(Objeto: TObject): TObject;
begin
  Result:=DaoPais.Carregar(Objeto);
end;

constructor TCtrlPais.Create;
begin
  inherited;
  DaoPais:=TDAOPais.Create;
end;

destructor TCtrlPais.Destroy;
begin
  inherited;
  DaoPais.Destroy;
end;

function TCtrlPais.Excluir(Objeto: TObject): String;
begin
   Result:=DaoPais.Excluir(Objeto);
end;

function TCtrlPais.GetDS: TDataSource;
begin
  Result:=DaoPais.GetDS;
end;

function TCtrlPais.Salvar(Objeto: TObject): String;
begin
    Result:=DaoPais.Salvar(Objeto);
end;

end.
