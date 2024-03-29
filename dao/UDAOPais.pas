unit UDAOPais;
interface
Uses UDao,DB,UPais,SysUtils,Messages;
type
  TDAOPais = Class(TDAO)
  Private

  protected

  public
   constructor Create;                            override;
    destructor Destroy;                           override;

    function Salvar( Objeto : TObject): string;   override;
    function GetDs : TDataSource;                 override;
    function Carregar( Objeto: TObject): Tobject; override;
    function Buscar(keyId: integer;keyStr:String): boolean;       override;
    function Excluir( Objeto : TObject): string;  override;

  End;

implementation

{ TDAOPais }



{ TDAOPais }

function TDAOPais.Buscar(keyId: integer;keyStr:String): boolean;
var TamStr:Integer;
    SQL:String;
begin
  TamStr:=Length(keyStr);
 if (keyId <> 0  ) then
   SQL:='SELECT * FROM PAIS WHERE ID='+Inttostr(keyId)
 else if (TamStr <> 0)  and (keyId = 0) then
   SQL:='SELECT * FROM PAIS WHERE PAIS LIKE'+QuotedStr('%'+KeyStr+'%')
 else if (keyId = 0) and (TamStr = 0) then
    SQL:='SELECT * FROM PAIS ORDER BY PAIS';


  FDM.IBDataSetPais.Close;
  FDM.IBDataSetPais.SelectSQL.Clear;
  FDM.IBDataSetPais.SelectSQL.ADD(SQL);
  FDM.IBDataSetPais.Open;
  if ((FDM.IBDataSetPaisPAIS.Value = keyStr) or (FDM.IBDataSetPaisID.Value = keyId)  and (keyId <> 0)) then
      Result:=True
  else
      Result:=False;
end;

function TDAOPais.Carregar(Objeto: TObject): Tobject;
var UmPais:TPais;
begin
    UmPais:=TPais(Objeto);
  if not FDM.IBDataSetPais.Active then
    FDM.IBDataSetPais.Open;

  UmPais.IdPais:=FDM.IBDataSetPaisID.Value;
  UmPais.Pais:=FDM.IBDataSetPaisPAIS.Value;
  UmPais.Sigla:=FDM.IBDataSetPaisSIGLA.Value;
  UmPais.DDI:=FDM.IBDataSetPaisDDI.Value;
  UmPais.DataCadastro:=DateTimeToStr( FDM.IBDataSetPaisDATACADASTRO.Value);
  UmPais.DataAlteracao:=DateTimeToStr(FDM.IBDataSetPaisDATAALTERACAO.Value);

  Result:=UmPais;

end;

constructor TDAOPais.Create;
begin
  inherited;

end;

destructor TDAOPais.Destroy;
begin

  inherited;
end;
function TDAOPais.Excluir(Objeto: TObject): string;
var MSG:string;
    UmPais:TPais;
    IdPais:integer;
begin
  UmPais:=TPais(Objeto);
  IdPais:=UmPais.IdPais;
  try
     if not FDM.IBTransaction1.Active then
        FDM.IBTransaction1.StartTransaction;

     FDM.IBDataSetPais.Close;
     FDM.IBDataSetPais.SelectSQL.Text:='SELECT * FROM PAIS WHERE ID = ' + intToStr(IdPais);
     FDM.IBDataSetPais.Open;

     FDM.IBDataSetPais.Delete;

     FDM.IBDataSetPais.Close;
     FDM.IBDataSetPais.SelectSQL.Text:='SELECT * FROM PAIS ORDER BY ID';
     FDM.IBDataSetPais.Open;

     FDM.IBTransaction1.CommitRetaining;
     MSG:=UmPais.Pais+' REMOVIDO COM SUCESSO.';
  Except
      FDM.IBTransaction1.RollbackRetaining;
      MSG:=UmPais.Pais+' N�O PODE SER REMOVIDO.';
  end;
  Result:=MSG;
end;

function TDAOPais.GetDs: TDataSource;
begin
  Result:= FDM.TDataSourcePais;
end;

function TDAOPais.Salvar(Objeto: TObject): string;
var MSG:String;
    UmPais:TPais;
begin
    UmPais:=TPais(Objeto);
    try
     if not FDM.IBTransaction1.Active then
     begin
         FDM.IBTransaction1.Active:=True;
         FDM.IBTransaction1.StartTransaction;
     end;
     if not FDM.IBDataSetPais.Active then
     begin
        FDM.IBDataSetPais.Active:=True;
        FDM.IBDataSetPais.Open;
     end;
     if UmPais.IdPais = 0 then
     begin
         FDM.IBDataSetPais.Insert;

         FDM.IBDataSetPaisPAIS.Value:=UmPais.Pais;
         FDM.IBDataSetPaisSIGLA.Value:=UmPais.Sigla;
         FDM.IBDataSetPaisDDI.Value:=UmPais.DDI;
         FDM.IBDataSetPaisDATACADASTRO.Value:=Now;

         FDM.IBDataSetPais.Post;
     end
     else
     Begin
        FDM.IBDataSetPais.Edit;

        FDM.IBDataSetPaisPAIS.Value:=UmPais.Pais;
        FDM.IBDataSetPaisSIGLA.Value:=UmPais.Sigla;
        FDM.IBDataSetPaisDDI.Value:=UmPais.DDI;
        FDM.IBDataSetPaisDATAALTERACAO.Value:=Now;

        FDM.IBDataSetPais.Post;
     End;

     FDM.IBTransaction1.CommitRetaining;
     MSG:=UmPais.Pais +' SALVO COM SUCESSO.';

   except
     FDM.IBTransaction1.RollbackRetaining;
     MSG:=UmPais.Pais+' N�O PODE SER SALVO.';
    end;
     Result:=MSG;
end;

end.
