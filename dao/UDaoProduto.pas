unit UDaoProduto;

interface
uses UDao, UProduto, DB, SysUtils,SysConst,Controls, Dialogs,DateUtils ;
     Type TDaoProduto =  class (TDao)


     private

     protected
     public
        constructor Create;                                       override;
        destructor Destroy;                                       override;
        function Salvar(Objeto: TObject): string;                 override;
        function GetDs: TDataSource;                              override;
        function Carregar(Objeto: TObject): TObject;              override;
        function BuscarProduto(KeyId: Integer): Boolean;
        function Buscar(KeyId: Integer; KeyStr: String): boolean; override;
        function Excluir(Objeto: TObject): string;                override;

     end;


implementation

{ TDaoProduto }
function TDaoProduto.BuscarProduto(KeyId: Integer): Boolean;
var SQL:string;
begin
    if (KeyId <> 0) then
    SQL := 'SELECT * FROM PRODUTO WHERE TIPO ='+ IntToStr(KeyId);

    FDM.IBDataSetProduto.Close;
    FDM.IBDataSetProduto.SelectSQL.Clear;
    FDM.IBDataSetProduto.SelectSQL.Add(SQL);
    FDM.IBDataSetProduto.Open;
    if FDM.IBDataSetProduto.RecordCount > 0 then
        Result := True
    else
        Result:=False;
end;

function TDaoProduto.Buscar(KeyId: Integer; KeyStr: String): boolean;
var
  TamStr: Integer;
  SQL: String;
begin
  TamStr := Length(KeyStr);
  if (KeyId <> 0) then
    SQL := 'SELECT * FROM PRODUTO WHERE ID=' + Inttostr(KeyId)
  else if (TamStr <> 0) and (KeyId = 0) then
    SQL :='SELECT * FROM PRODUTO WHERE PRODUTO LIKE'+QuotedStr('%'+KeyStr+'%')
  else if (KeyId = 0) and (TamStr = 0) then
    SQL := 'SELECT * FROM PRODUTO ORDER BY PRODUTO'
  else
    SQL := 'SELECT * FROM PRODUTO ORDER BY ID';

  FDM.IBDataSetProduto.Close;
  FDM.IBDataSetProduto.SelectSQL.Clear;
  FDM.IBDataSetProduto.SelectSQL.Add(SQL);
  FDM.IBDataSetProduto.Open;

  if KeyId =  FDM.IBDataSetProdutoID.Value  then
      Result := True
  else
      Result:=False;

end;

function TDaoProduto.Carregar(Objeto: TObject): TObject;
Var UmProduto:TProduto;
    SQL:string;
begin
  UmProduto:=TProduto(Objeto);
  try
    if not FDM.IBDataSetProduto.Active then
    begin
      FDM.IBDataSetFuncionario.Active := True;
      FDM.IBDataSetFuncionario.Open;
    end;
    {SQL := 'SELECT * FROM PRODUTO WHERE ID=' + Inttostr(UmProduto.IdProduto);

    FDM.IBDataSetProduto.Close;
    FDM.IBDataSetProduto.SelectSQL.Clear;
    FDM.IBDataSetProduto.SelectSQL.Add(SQL);
    FDM.IBDataSetProduto.Open;}

    UmProduto.IdProduto:= FDM.IBDataSetProdutoID.Value;
    UmProduto.Tipo:= FDM.IBDataSetProdutoTIPO.Value;
    UmProduto.Produto:= FDM.IBDataSetProdutoPRODUTO.Value;
    UmProduto.ValorCompra:=StrToFloat(FormatFloat('#0.00' , FDM.IBDataSetProdutoVALORCOMPRA.Value));
    UmProduto.ValorVenda:=StrToFloat( FormatFloat('#0.00' ,FDM.IBDataSetProdutoVALORVENDA.Value));
    UmProduto.ICMS:=StrToFloat(FormatFloat('#0.00',FDM.IBDataSetProdutoICMS.Value));
    UmProduto.IPI:=StrToFloat(FormatFloat('#0.00' ,FDM.IBDataSetProdutoIPI.Value));
    UmProduto.Qtde:= FloattoStr( FDM.IBDataSetProdutoQTDE.Value);
    UmProduto.TipoUnidade:= FDM.IBDataSetProdutoTIPOUNIDADE.Value;
    UmProduto.Descricao:= FDM.IBDataSetProdutoDESCRICAO.Value;
    UmProduto.Marca:= FDM.IBDataSetProdutoMARCA.Value;
    UmProduto.Localizacao:= FDM.IBDataSetProdutoLOCALIZACAO.Value;
    UmProduto.Observacao:= FDM.IBDataSetProdutoOBSERVACOES.Value;
    UmProduto.DataCadastro:= DateTimeToStr( FDM.IBDataSetProdutoDATACADASTRO.Value );
    UmProduto.DataAlteracao:=DateTimeToStr( FDM.IBDataSetProdutoDATAALTERACAO.Value );

  except

  end;
  Result:= UmProduto;
end;

constructor TDaoProduto.Create;
begin
  inherited;

end;

destructor TDaoProduto.Destroy;
begin

  inherited;
end;

function TDaoProduto.Excluir(Objeto: TObject): string;
var IdProduto:Integer;
  MSG: string;
  UmProduto: TProduto;
begin
  UmProduto := TProduto(Objeto);
  IdProduto:=UmProduto.IdProduto;
  try
    if not FDM.IBTransaction1.Active then
    begin
      FDM.IBTransaction1.Active := True;
      FDM.IBTransaction1.StartTransaction;
    end;
    FDM.IBDataSetProduto.Close;
    FDM.IBDataSetProduto.SelectSQL.Text:='SELECT * FROM PRODUTO WHERE ID = ' + intToStr(IdProduto);
    FDM.IBDataSetProduto.Open;
    FDM.IBDataSetProduto.Delete;

    FDM.IBTransaction1.CommitRetaining;

    FDM.IBDataSetProduto.Close;
    FDM.IBDataSetProduto.SelectSQL.Text:='SELECT * FROM PRODUTO ORDER BY ID ';
    FDM.IBDataSetProduto.Open;

    FDM.IBTransaction1.CommitRetaining;
    MSG := UmProduto.Produto + ' REMOVIDO COM SUCESSO.';

  except
    FDM.IBTransaction1.RollbackRetaining;
    MSG := UmProduto.Produto + ' N�O PODE SER REMOVIDO.';
  end;

  Result := MSG;
end;

function TDaoProduto.GetDs: TDataSource;
begin
   Result:= FDM.TDataSourceProduto;
end;

function TDaoProduto.Salvar(Objeto: TObject): string;
var MSG,SQL:String;
    UmProduto:TProduto;
begin
  UmProduto:=TProduto(Objeto);
  try
     if not FDM.IBTransaction1.Active then
     begin
         FDM.IBTransaction1.Active:=True;
         FDM.IBTransaction1.StartTransaction;
     end;
     if not FDM.IBDataSetProduto.Active then
     begin
        FDM.IBDataSetProduto.Active:=True;
        FDM.IBDataSetProduto.Open;
     end;
     if (UmProduto.IdProduto  = 0) then
     begin
         FDM.IBDataSetProduto.Insert;

         FDM.IBDataSetProdutoTIPO.Value:= UmProduto.Tipo;
         FDM.IBDataSetProdutoPRODUTO.Value:= UmProduto.Produto;
         FDM.IBDataSetProdutoTIPOUNIDADE.Value:= UmProduto.TipoUnidade;
         FDM.IBDataSetProdutoDESCRICAO.Value:= UmProduto.Descricao;
         FDM.IBDataSetProdutoMARCA.Value:= UmProduto.Marca;
         FDM.IBDataSetProdutoLOCALIZACAO.Value:= UmProduto.Localizacao;
         FDM.IBDataSetProdutoOBSERVACOES.Value:= UmProduto.Observacao;
         FDM.IBDataSetProdutoDATACADASTRO.Value:=Now;
         FDM.IBDataSetProduto.Post;
     end
     else
     begin
       SQL := 'SELECT * FROM PRODUTO WHERE ID=' + Inttostr(UmProduto.IdProduto);


        FDM.IBDataSetProduto.Close;
        FDM.IBDataSetProduto.SelectSQL.Clear;
        FDM.IBDataSetProduto.SelectSQL.Add(SQL);
        FDM.IBDataSetProduto.Open;
        FDM.IBDataSetProduto.Edit;
        if UmProduto.IdProduto <> FDM.IBDataSetProdutoID.Value then
        begin
            FDM.IBTransaction1.RollbackRetaining;
            MSG:='ERRO AO SALVAR PRODUTO';
        end;


        FDM.IBDataSetProdutoTIPO.Value:= UmProduto.Tipo;
        FDM.IBDataSetProdutoPRODUTO.Value:= UmProduto.Produto;
        FDM.IBDataSetProdutoTIPOUNIDADE.Value:= UmProduto.TipoUnidade;
        FDM.IBDataSetProdutoDESCRICAO.Value:= UmProduto.Descricao;
        FDM.IBDataSetProdutoMARCA.Value:= UmProduto.Marca;
        FDM.IBDataSetProdutoLOCALIZACAO.Value:= UmProduto.Localizacao;
        FDM.IBDataSetProdutoOBSERVACOES.Value:= UmProduto.Observacao;
        FDM.IBDataSetProdutoDATAALTERACAO.Value:=StrToDateTime( UmProduto.DataAlteracao);
        FDM.IBDataSetProdutoQTDE.Value:=StrtoFloat(UmProduto.Qtde);
        FDM.IBDataSetProdutoVALORVENDA.Value:=StrToFloat(FormatFloat('#0.00',UmProduto.ValorVenda));

        FDM.IBDataSetProduto.Post;
     end;

     FDM.IBTransaction1.CommitRetaining;
     MSG:='PRODUTO SALVO COM SUCESSO';
  except
     FDM.IBTransaction1.RollbackRetaining;
     MSG:='ERRO AO SALVAR PRODUTO';

  end;
  Result:=MSG;
end;

end.
