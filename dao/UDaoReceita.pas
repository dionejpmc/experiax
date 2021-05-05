unit UDaoReceita;

interface
uses UDao, UReceita,UProduto,DB, SysUtils, Messages,Dialogs, Windows,classes, UCtrlProduto;
    type
        TDaoReceita = class (TDao)
          private
          protected

          public
              constructor Create;                                       override;
              destructor Destroy;                                       override;
              function Salvar(Objeto: TObject): string;                 override;
              function GetDs: TDataSource;                              override;
              function GetDsPR: TDataSource;
              function Carregar(Objeto: TObject): TObject;              override;
              function Buscar(KeyId: Integer; KeyStr: String): boolean; override;
              function BuscarPR(KeyId: Integer):Boolean;
              function BuscarProduto(KeyId: Integer):Boolean;
              function CarregarLista(UmaLista:TList):TList;
              function Excluir(Objeto: TObject):string;                override;

        end;

implementation

{ TDaoReceita }

function TDaoReceita.Buscar(KeyId: Integer; KeyStr: String): boolean;
var
  TamStr: Integer;
  SQL: String;
begin
  TamStr := Length(KeyStr);
  if (KeyId <> 0) then
    SQL := 'SELECT * FROM RECEITA WHERE ID=' + Inttostr(KeyId)
  else if (TamStr <> 0) and (KeyId = 0) then
    SQL :='SELECT * FROM RECEITA WHERE RECEITA LIKE'+QuotedStr('%'+KeyStr+'%')
  else if (KeyId = 0) and (TamStr = 0) then
    SQL := 'SELECT * FROM RECEITA ORDER BY RECEITA'
  else
    SQL := 'SELECT * FROM RECEITA ORDER BY ID';

  FDM.IBDataSetProduto.Close;
  FDM.IBDataSetProduto.SelectSQL.Clear;
  FDM.IBDataSetProduto.SelectSQL.Add(SQL);
  FDM.IBDataSetProduto.Open;

  Result := True;
end;

function TDaoReceita.BuscarPR(KeyId: Integer): Boolean;
var SQL: String;
begin
  if (KeyId <> 0) then
    SQL := 'SELECT * FROM PRODUTORECEITA WHERE IDRECEITA=' + Inttostr(KeyId)
  else
    SQL := 'SELECT * FROM PRODUTORECEITA ORDER BY IDRECEITA';

  FDM.IBDataSetProdutoReceita.Close;
  FDM.IBDataSetProdutoReceita.SelectSQL.Clear;
  FDM.IBDataSetProdutoReceita.SelectSQL.Add(SQL);
  FDM.IBDataSetProdutoReceita.Open;
  if FDM.IBDataSetProdutoReceita.RecordCount > 0 then
      Result := True
  ELSE
      Result:=False;

end;

function TDaoReceita.BuscarProduto(KeyId: Integer): Boolean;
var SQL:string;
begin
    if (KeyId <> 0) then
    SQL := 'SELECT * FROM PRODUTO WHERE TIPO = 3';

    FDM.IBDataSetProduto.Close;
    FDM.IBDataSetProduto.SelectSQL.Clear;
    FDM.IBDataSetProduto.SelectSQL.Add(SQL);
    FDM.IBDataSetProduto.Open;
    if FDM.IBDataSetProduto.RecordCount > 0 then
        Result := True
    else
        Result:=False;
end;

function TDaoReceita.Carregar(Objeto: TObject): TObject;
var
  UmaReceita: TReceita;
begin
  UmaReceita := TReceita(Objeto);
  try
    if not FDM.IBDataSetReceita.Active then
    begin
      FDM.IBDataSetReceita.Active := True;
      FDM.IBDataSetReceita.Open;
    end;
    UmaReceita.IdReceita := FDM.IBDataSetReceitaID.Value;
    UmaReceita.Observacao := FDM.IBDataSetReceitaOBSERVACAO.Value;
    UmaReceita.QtdeProdutos:=  FDM.IBDataSetReceitaQTDEITENS.Value;
    UmaReceita.DataCadastro := DateToStr(FDM.IBDataSetReceitaDATACADASTRO.Value);
    UmaReceita.DataAlteracao := DateToStr(FDM.IBDataSetReceitaDATAALTERACAO.Value);

    if  BuscarPR(UmaReceita.IdReceita) then
        CarregarLista(UmaReceita.UmaListaProduto)
    else
        ShowMessage('ERRO AO CARREGAR PRODUTOS DA RECEITA');
  Except
        ShowMessage('ERRO AO CARREGAR RECEITA');
  end;
      Result := UmaReceita;

end;

function TDaoReceita.CarregarLista(UmaLista: TList): TList;
var umProduto:TProduto;
    UmaCtrlProduto:TCtrlProduto;
begin
    if FDM.IBDataSetProdutoReceita.RecordCount > 0 then
    begin
        FDM.IBDataSetProdutoReceita.First;
        while not FDM.IBDataSetProdutoReceita.Eof do
        begin
             umProduto:=TProduto.Create;
             umProduto.Qtde:=FormatFloat('#0.00',FDM.IBDataSetProdutoReceitaQTDE.Value );
             umProduto.IdProduto:=FDM.IBDataSetProdutoReceitaIDPRODUTO.Value;
             umProduto.Produto:=FDM.IBDataSetProdutoReceitaPRODUTO.Value;
             UmaLista.Add(umProduto);
             umProduto:=nil;
             FDM.IBDataSetProdutoReceita.Next;
             UmaCtrlProduto.Destroy;
        end;
    end;

end;

constructor TDaoReceita.Create;
begin
  inherited;

end;

destructor TDaoReceita.Destroy;
begin

  inherited;
end;

function TDaoReceita.Excluir(Objeto: TObject): string;
begin

end;

function TDaoReceita.GetDs: TDataSource;
begin
   Result:= FDM.TDataSourceReceita;
end;

function TDaoReceita.GetDsPR: TDataSource;
begin
    Result:=FDM.TDataSourceProdutoReceita;
end;

function TDaoReceita.Salvar(Objeto: TObject): string;
var MSG:string;
    UmaReceita:TReceita;
    i:Integer;
begin
  UmaReceita:=TReceita(Objeto);
  try
      if not FDM.IBTransaction1.Active then
      begin
        FDM.IBTransaction1.Active := True;
        FDM.IBTransaction1.StartTransaction;
      end;

      if not FDM.IBDataSetReceita.Active then
      begin
        FDM.IBDataSetReceita.Active := True;
        FDM.IBDataSetReceita.Open;
      end;

      FDM.IBDataSetReceita.Insert;

      FDM.IBDataSetReceitaID.Value:=UmaReceita.IdReceita;
      FDM.IBDataSetReceitaOBSERVACAO.Value:=UmaReceita.Observacao;
      FDM.IBDataSetReceitaQTDEITENS.Value:=UmaReceita.QtdeProdutos;
      FDM.IBDataSetReceitaDATACADASTRO.Value:=StrToDateTime(UmaReceita.DataCadastro);
      FDM.IBDataSetReceitaDATAALTERACAO.Value:=StrToDateTime(UmaReceita.DataAlteracao);

      FDM.IBDataSetReceita.Post;


      if not FDM.IBDataSetProdutoReceita.Active then
      begin
        FDM.IBDataSetProdutoReceita.Active := True;
        FDM.IBDataSetProdutoReceita.Open;
      end;

      for I := 1 to  UmaReceita.UmaListaProduto.Count  do
      begin
        FDM.IBDataSetProdutoReceita.Insert;

        FDM.IBDataSetProdutoReceitaIDPRODUTO.Value:=UmaReceita.getProdutos(i-1).IdProduto;
        FDM.IBDataSetProdutoReceitaIDRECEITA.Value:= UmaReceita.IdReceita;
        FDM.IBDataSetProdutoReceitaQTDE.Value:= StrToFloat(UmaReceita.getProdutos(i-1).Qtde);

        FDM.IBDataSetProdutoReceita.Post;
      end;


      FDM.IBTransaction1.CommitRetaining;

      MSG := 'RECEITA SALVA COM SUCESSO';
  except
      FDM.IBTransaction1.RollbackRetaining;
      MSG :=  'ERRO AO SALVAR RECEITA';
  end;
    Result:=MSG;
end;

end.
