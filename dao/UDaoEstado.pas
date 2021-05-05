unit UDaoEstado;

interface
Uses UDao,SysUtils,DB,UEstado,uDAOPAIS;
type
  TDaoEstado = class(TDAO)

  private

  protected
  UmaDaoPais : TDaoPais;
  public
    constructor Create;                                            override;
    destructor Destroy;                                             override;
    function Salvar( Objeto : TObject): string;                   override;
    function GetDs : TDataSource;                                  override;
    function Carregar( Objeto: TObject): Tobject;                 override;
    function Buscar(KeyId : Integer;KeyStr:String): boolean;       override;
    function Excluir( Objeto : TObject): string;                    override;

  end;

implementation

{ DaoEstado }

function TDaoEstado.Buscar(KeyId : Integer;KeyStr:String): boolean;
var TamStr:Integer;
    SQL:String;
begin
   TamStr:=Length(keyStr);
 if (keyId <> 0  ) then
   SQL:='SELECT * FROM ESTADO WHERE ID ='+Inttostr(keyId)
 else if (TamStr <> 0)  and (keyId = 0) then
   SQL:='SELECT * FROM ESTADO WHERE ESTADO LIKE'+QuotedStr(KeyStr+'%')
 else if (keyId = 0) and (TamStr = 0) then
    SQL:='SELECT * FROM ESTADO ORDER BY ESTADO';

    FDM.IBDataSetEstado.Close;
    FDM.IBDataSetEstado.SelectSQL.Clear;
    FDM.IBDataSetEstado.SelectSQL.Add(SQL);
    FDM.IBDataSetEstado.Open;

    if (FDM.IBDataSetEstadoID.Value = KeyId) and (KeyId <>0) then
      Result:=True
    else
      Result:=False;
end;

function TDaoEstado.Carregar(Objeto: TObject): Tobject;
var UmEstado:TEstado;
begin
     UmEstado:=TEstado(Objeto);
     if not FDM.IBDataSetEstado.Active then
     begin
       FDM.IBDataSetEstado.Active:=True;
       FDM.IBDataSetEstado.Open;
     end;
     UmEstado.IdEstado:=FDM.IBDataSetEstadoID.Value;
     UmEstado.Estado:=FDM.IBDataSetEstadoESTADO.Value;
     UmEstado.Sigla:=FDM.IBDataSetEstadoSIGLA.Value;
     UmEstado.DDD:=FDM.IBDataSetEstadoDDD.value;
     UmEstado.Pais.IdPais:=FDM.IBDataSetEstadoIDPAIS.Value;
     UmEstado.Pais.Pais:=FDM.IBDataSetEstadoPAIS.Value;
     UmEstado.DataCadastro:=DateToStr(FDM.IBDataSetEstadoDATACADASTRO.Value);
     UmEstado.DataAlteracao:=DateToStr(FDM.IBDataSetEstadoDATAALTERACAO.Value);
     Result:=UmEstado;

end;

constructor TDaoEstado.Create;
begin
  inherited;
  UMADAOPAIS:= TDAOPAIS.Create;

end;

destructor TDaoEstado.Destroy;
begin

  inherited;
  UMADAOPAIS.Destroy;
end;

function TDaoEstado.Excluir(Objeto: TObject): string;
var MSG:String;
    UmEstado:TEstado;
    IdEstado:integer;
begin
    UmEstado:=TEstado(Objeto);
    IdEstado:=UmEstado.IdEstado;
    try
     if not FDM.IBTransaction1.Active then
        FDM.IBTransaction1.StartTransaction;

        FDM.IBDataSetEstado.Close;
        FDM.IBDataSetEstado.SelectSQL.Text:='SELECT * FROM ESTADO WHERE ID = ' + intToStr(IdEstado);
        FDM.IBDataSetEstado.Open;

        FDM.IBDataSetEstado.Delete;

        FDM.IBDataSetEstado.Close;
        FDM.IBDataSetEstado.SelectSQL.Text:='SELECT * FROM ESTADO ORDER BY ID ';
        FDM.IBDataSetEstado.Open;

        FDM.IBTransaction1.CommitRetaining;
        MSG:=UmEstado.Estado+' REMOVIDO COM SUCESSO.';
    except
        FDM.IBTransaction1.RollbackRetaining;
        MSG:= UmEstado.Estado+' N�O PODE SER REMOVIDO.';
    end;
    Result:=MSG;
end;

function TDaoEstado.GetDs: TDataSource;
begin
    Result:=FDM.TDataSourceEstado;
end;

function TDaoEstado.Salvar(Objeto: TObject): string;
var MSG:String;
    UmEstado:TEstado;
begin
  UmEstado:=TEstado(Objeto);
  try
     if not FDM.IBTransaction1.Active then
     begin
         FDM.IBTransaction1.Active:=True;
         FDM.IBTransaction1.StartTransaction;
     end;
     if not FDM.IBDataSetEstado.Active then
     begin
        FDM.IBDataSetEstado.Active:=True;
        FDM.IBDataSetEstado.Open;
     end;
     if UmEstado.IdEstado = 0 then
     begin
         FDM.IBDataSetEstado.Insert;

         FDM.IBDataSetEstadoESTADO.Value:=UmEstado.Estado;
         FDM.IBDataSetEstadoSIGLA.Value:=UmEstado.Sigla;
         FDM.IBDataSetEstadoDDD.Value:=UmEstado.DDD;
         FDM.IBDataSetEstadoIDPAIS.Value:=UmEstado.Pais.IdPais;
         FDM.IBDataSetEstadoDATACADASTRO.Value:=now;
     end
     else
     begin
         FDM.IBDataSetEstado.Edit;
         FDM.IBDataSetEstadoESTADO.Value:=UmEstado.Estado;
         FDM.IBDataSetEstadoSIGLA.Value:=UmEstado.Sigla;
         FDM.IBDataSetEstadoDDD.Value:=UmEstado.DDD;
         FDM.IBDataSetEstadoIDPAIS.Value:=UmEstado.Pais.IdPais;
         FDM.IBDataSetEstadoDATAALTERACAO.Value:=now;
     end;
     FDM.IBDataSetEstado.Post;

     FDM.IBTransaction1.CommitRetaining;
     MSG:=UmEstado.Estado+' SALVO COM SUCESSO';

  except
    FDM.IBTransaction1.RollbackRetaining;
    MSG:=UmEstado.Estado + ' N�O PODE SER SALVO';

  end;

  Result:=MSG;
end;

end.
