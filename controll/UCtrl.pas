unit UCtrl;

interface
uses Classes,DB, uDM;

   type TCtrl = class

  private
  protected
  public
    constructor Create;
    destructor Destroy;

    function Salvar(Obj : TObject): string;      virtual;
    function GetDs : TDataSource;                virtual;
    function Carregar( Obj : TObject): Tobject;  virtual;
    function Buscar(keyId : Integer;keyStr:String): boolean;      virtual;
    function Excluir(Obj : TObject): string;     virtual;
   

end;

implementation

{ Controller }


{ TCtrl }

function TCtrl.Buscar(keyId: integer;keyStr:String): boolean;
begin

end;

function TCtrl.Carregar(Obj: TObject): Tobject;
begin

end;

constructor TCtrl.Create;
begin

end;

destructor TCtrl.Destroy;
begin

end;

function TCtrl.Excluir(Obj: TObject): string;
begin

end;

function TCtrl.GetDs: TDataSource;
begin

end;

function TCtrl.Salvar(Obj: TObject): string;
begin

end;

end.

