unit UDaoFornecedor;

interface
uses UDao, DB, UFornecedor,UFornecedorFisico,SysUtils,Dialogs;
type
    TDaoFornecedor = class (TDao)
      private
      protected
      public
          constructor Create;                                       override;
          destructor Destroy;                                       override;
          function Salvar(Objeto: TObject;Id:integer): string;
          function GetDs: TDataSource;                              override;
          function GetDsPF: TDataSource;
          function BuscarPF(KeyId: Integer; KeyStr: String): boolean;
          function TipoFornecedor:string;
          function BuscarProduto(KeyID:integer):Boolean;
          function Carregar(Objeto: TObject;Id:integer): TObject;
          function Buscar(KeyId: Integer; KeyStr: String): boolean; override;
          function Excluir(Objeto: TObject): string;                override;
    end;

implementation

{ TDaoFornecedor }

function TDaoFornecedor.Buscar(KeyId: Integer; KeyStr: String): boolean;
var
  TamStr: Integer;
  SQL: String;
begin
inherited;
  TamStr := Length(KeyStr);
  if (KeyId <> 0) then
    SQL := 'SELECT * FROM FORNECEDOR WHERE ID=' + Inttostr(KeyId)
  else if (TamStr <> 0) and (KeyId = 0) then
    SQL :='SELECT * FROM FORNECEDOR WHERE RAZAOSOCIAL LIKE'+QuotedStr('%'+KeyStr+'%')
  else if (KeyId = 0) and (TamStr = 0) then
    SQL := 'SELECT * FROM FORNECEDOR ORDER BY RAZAOSOCIAL';

  FDM.IBDataSetFornecedor.Close;
  FDM.IBDataSetFornecedor.SelectSQL.Clear;
  FDM.IBDataSetFornecedor.SelectSQL.Add(SQL);
  FDM.IBDataSetFornecedor.Open;

  if (FDM.IBDataSetFornecedorID.Value = KeyId) and (KeyId <> 0) then
  begin
    Self.BuscarPF(KeyId,FDM.IBDataSetFornecedorRAZAOSOCIAL.Value);
    Result:=True;
  end
  else
    Result:=False;
end;

function TDaoFornecedor.BuscarPF(KeyId: Integer; KeyStr: String): boolean;
var
  TamStr: Integer;
  SQL: String;
begin
  TamStr := Length(KeyStr);
  if (KeyId <> 0) then
  begin
    SQL := 'SELECT * FROM PRODUTOFORNECEDOR WHERE IDFORNECEDOR=' + Inttostr(KeyId);

    FDM.IBDataSetProdutoFornecedor.Close;
    FDM.IBDataSetProdutoFornecedor.SelectSQL.Clear;
    FDM.IBDataSetProdutoFornecedor.SelectSQL.Add(SQL);
    FDM.IBDataSetProdutoFornecedor.Open;
  end;
  if FDM.IBDataSetProdutoFornecedorIDPRODUTO.Value = KeyId then
    Result:=True
  else
    Result:=False;
end;

function TDaoFornecedor.BuscarProduto(KeyID: integer): Boolean;
var
  SQL: String;
begin

  if (KeyId <> 0) then
  begin
    SQL := 'SELECT * FROM PRODUTOFORNECEDOR WHERE IDPRODUTO=' + Inttostr(KeyId);

    FDM.IBDataSetProdutoFornecedor.Close;
    FDM.IBDataSetProdutoFornecedor.SelectSQL.Clear;
    FDM.IBDataSetProdutoFornecedor.SelectSQL.Add(SQL);
    FDM.IBDataSetProdutoFornecedor.Open;
  end;
  if FDM.IBDataSetProdutoFornecedorIDPRODUTO.Value = KeyID then
      Result:=True
  else
      Result:=False
end;

function TDaoFornecedor.Carregar(Objeto: TObject;Id:integer): TObject;
var UmFornecedorF:TFornecedorFisico;
    UmFornecedor:TFornecedor;
begin

  if (id = 2) and (FDM.IBDataSetFornecedorTIPO.Value = 'Juridico') then
  begin
      UmFornecedor:=TFornecedor(Objeto);
      UmFornecedor:=TFornecedor(Objeto);
      UmFornecedor.Id:=FDM.IBDataSetFornecedorID.Value;
      UmFornecedor.RS:=FDM.IBDataSetFornecedorRAZAOSOCIAL.Value;
      UmFornecedor.IE:=FDM.IBDataSetFornecedorINSCRICAOESTADUAL.Value;
      UmFornecedor.CNPJ:=FDM.IBDataSetFornecedorCNPJ.Value;
      UmFornecedor.Fantasia:=FDM.IBDataSetFornecedorFANTASIA.Value;
      UmFornecedor.Cidade.IdCidade:=FDM.IBDataSetFornecedorIDCIDADE.Value;
      UmFornecedor.Cidade.Cidade:=  FDM.IBDataSetFornecedorCIDADE.Value;
      UmFornecedor.Observacoes:=FDM.IBDataSetFornecedorOBSERVACOES.Value;
      UmFornecedor.Bairro:=FDM.IBDataSetFornecedorBAIRRO.Value;
      UmFornecedor.Logradouro:=FDM.IBDataSetFornecedorLOGRADOURO.Value;
      UmFornecedor.Numero:=FDM.IBDataSetFornecedorNUMERO.Value;
      UmFornecedor.Cep:=FDM.IBDataSetFornecedorCEP.Value;
      UmFornecedor.Telefone:=FDM.IBDataSetFornecedorTELEFONECOMERCIAL.Value;
      UmFornecedor.Telefone2:= FDM.IBDataSetFornecedorTELEFONECOMERCIAL2.Value;
      UmFornecedor.Celular:=  FDM.IBDataSetFornecedorCELULAR.Value;
      UmFornecedor.Celular2:=FDM.IBDataSetFornecedorCELULAR2.Value;
      UmFornecedor.Email:= FDM.IBDataSetFornecedorEMAIL.Value;
      UmFornecedor.DataCadastro:= DateTimeToStr(FDM.IBDataSetFornecedorDATACADASTRO.Value);
      UmFornecedor.DataAlteracao:=DateTimeToStr(FDM.IBDataSetFornecedorDATAALTERACAO.Value);

      Result:=UmFornecedor;
  end
  else if (id =1) and (FDM.IBDataSetFornecedorTIPO.Value = 'Fisico') then
  begin
     UmFornecedorF:=TFornecedorFisico(Objeto);
     UmFornecedorF:=TFornecedorFisico(Objeto);
     UmFornecedorF.Id:=FDM.IBDataSetFornecedorID.Value;
     UmFornecedorF.Nome:=FDM.IBDataSetFornecedorRAZAOSOCIAL.Value;
     UmFornecedorF.RG:=FDM.IBDataSetFornecedorINSCRICAOESTADUAL.Value;
     UmFornecedorF.CPF:=FDM.IBDataSetFornecedorCNPJ.Value;
     UmFornecedorF.Cidade.IdCidade:=FDM.IBDataSetFornecedorIDCIDADE.Value;
     UmFornecedorF.Cidade.Cidade:=  FDM.IBDataSetFornecedorCIDADE.Value;
     UmFornecedorF.Observacoes:=FDM.IBDataSetFornecedorOBSERVACOES.Value;
     UmFornecedorF.Bairro:=FDM.IBDataSetFornecedorBAIRRO.Value;
     UmFornecedorF.Logradouro:=FDM.IBDataSetFornecedorLOGRADOURO.Value;
     UmFornecedorF.Numero:=FDM.IBDataSetFornecedorNUMERO.Value;
     UmFornecedorF.Cep:=FDM.IBDataSetFornecedorCEP.Value;
     UmFornecedorF.Telefone:=FDM.IBDataSetFornecedorTELEFONECOMERCIAL.Value;
     UmFornecedorF.Celular:=  FDM.IBDataSetFornecedorCELULAR.Value;
     UmFornecedorF.Email:= FDM.IBDataSetFornecedorEMAIL.Value;
     UmFornecedorF.DataCadastro:= DateTimeToStr(FDM.IBDataSetFornecedorDATACADASTRO.Value);
     UmFornecedorF.DataAlteracao:=DateTimeToStr(FDM.IBDataSetFornecedorDATAALTERACAO.Value);

     Result:=UmFornecedorF;
  end;

end;

constructor TDaoFornecedor.Create;
begin
  inherited;

end;

destructor TDaoFornecedor.Destroy;
begin

  inherited;
end;

function TDaoFornecedor.Excluir(Objeto: TObject): string;
var UmFornecedor:TFornecedor;
    MSG:string;
    idFornecedor:Integer;
begin
     UmFornecedor:=TFornecedor(Objeto);
   try
   if Self.Buscar(UmFornecedor.Id,'') then
   begin
       idFornecedor:=UmFornecedor.Id;
       if not (FDM.IBTransaction1.Active) then
          FDM.IBTransaction1.StartTransaction;
       //DELETAR OS PRODUTOS DO FORNECEDOR
       FDM.IBDataSetProdutoFornecedor.Close;
       FDM.IBDataSetProdutoFornecedor.SelectSQL.Text:='SELECT * FROM PRODUTOFORNECEDOR WHERE IDFORNECEDOR = ' + intToStr(idFornecedor);
       FDM.IBDataSetProdutoFornecedor.Open;
       while not FDM.IBDataSetProdutoFornecedor.Eof do
       begin
          FDM.IBDataSetProdutoFornecedor.Last;
          FDM.IBDataSetProdutoFornecedor.Delete;
       end;
       //DELETAR O FORNECEDOR
       FDM.IBDataSetFornecedor.Close;
       FDM.IBDataSetFornecedor.SelectSQL.Text:='SELECT * FROM FORNECEDOR WHERE ID = ' + intToStr(idFornecedor);
       FDM.IBDataSetFornecedor.Open;
       FDM.IBDataSetFornecedor.Delete;


       ///////////////////////////////////

       FDM.IBTransaction1.CommitRetaining;


       FDM.IBDataSetFornecedor.Close;
       FDM.IBDataSetProdutoFornecedor.Close;
       FDM.IBDataSetFornecedor.SelectSQL.Text:='SELECT * FROM FORNECEDOR ORDER BY ID ';
       FDM.IBDataSetFornecedor.Open;
       FDM.IBDataSetProdutoFornecedor.Open;





       MSG:='FORNECEDOR EXCLUIDO COM SUCESSO.';
       Result:=MSG;
   end;
   except
      FDM.IBTransaction1.RollbackRetaining;
      MSG:='ERRO AO EXCLUIR FORNECEDOR.';
      Result:=MSG;
   end;

end;

function TDaoFornecedor.GetDs: TDataSource;
begin
    Result:=FDM.TDataSourceFornecedor;
end;

function TDaoFornecedor.GetDsPF: TDataSource;
begin
     Result:=FDM.TDataSourceProdutoFornecedor;
end;

function TDaoFornecedor.Salvar(Objeto: TObject;Id:integer): string;
var UmForneceodorF:TFornecedorFisico;
    UmFornecedorJ:TFornecedor;
    I:integer;
    MSG,SQL:String;
begin
try
    if not FDM.IBTransaction1.Active then
    begin
      FDM.IBTransaction1.Active := True;
      FDM.IBTransaction1.StartTransaction;
    end;

    if not FDM.IBDataSetFornecedor.Active then
    begin
      FDM.IBDataSetFornecedor.Active := True;
      FDM.IBDataSetFornecedor.Open;
    end;


    if id = 1 then
    begin


       UmForneceodorF:=TFornecedorFisico(Objeto);
       if UmForneceodorF.Id = 0 then
       begin
           FDM.IBDataSetFornecedor.Insert;

           FDM.IBDataSetFornecedorRAZAOSOCIAL.Value:=UmForneceodorF.Nome;
           FDM.IBDataSetFornecedorINSCRICAOESTADUAL.Value:=UmForneceodorF.RG;
           FDM.IBDataSetFornecedorCNPJ.Value:=UmForneceodorF.CPF;
           FDM.IBDataSetFornecedorTIPO.value:='Fisico';
           FDM.IBDataSetFornecedorIDCIDADE.Value:=UmForneceodorF.Cidade.IdCidade;
           FDM.IBDataSetFornecedorBAIRRO.Value:=UmForneceodorF.Bairro;
           FDM.IBDataSetFornecedorCEP.Value:=UmForneceodorF.Cep;
           FDM.IBDataSetFornecedorLOGRADOURO.Value:=UmForneceodorF.Logradouro;
           FDM.IBDataSetFornecedorNUMERO.Value:=UmForneceodorF.Numero;
           FDM.IBDataSetFornecedorOBSERVACOES.Value:=UmForneceodorF.Observacoes;
           FDM.IBDataSetFornecedorTELEFONECOMERCIAL.Value:=UmForneceodorF.Telefone;
           FDM.IBDataSetFornecedorCELULAR.Value:=UmForneceodorF.Celular;
           FDM.IBDataSetFornecedorDATACADASTRO.Value:= StrToDateTime(UmForneceodorF.DataCadastro);

           FDM.IBDataSetFornecedor.Post;
       end
       else
       begin
           FDM.IBDataSetFornecedor.Edit;

           FDM.IBDataSetFornecedorRAZAOSOCIAL.Value:=UmForneceodorF.Nome;
           FDM.IBDataSetFornecedorINSCRICAOESTADUAL.Value:=UmForneceodorF.RG;
           FDM.IBDataSetFornecedorCNPJ.Value:=UmForneceodorF.CPF;
           FDM.IBDataSetFornecedorTIPO.value:='Fisico';
           FDM.IBDataSetFornecedorIDCIDADE.Value:=UmForneceodorF.Cidade.IdCidade;
           FDM.IBDataSetFornecedorBAIRRO.Value:=UmForneceodorF.Bairro;
           FDM.IBDataSetFornecedorCEP.Value:=UmForneceodorF.Cep;
           FDM.IBDataSetFornecedorLOGRADOURO.Value:=UmForneceodorF.Logradouro;
           FDM.IBDataSetFornecedorNUMERO.Value:=UmForneceodorF.Numero;
           FDM.IBDataSetFornecedorOBSERVACOES.Value:=UmForneceodorF.Observacoes;
           FDM.IBDataSetFornecedorTELEFONECOMERCIAL.Value:=UmForneceodorF.Telefone;
           FDM.IBDataSetFornecedorCELULAR.Value:=UmForneceodorF.Celular;
           FDM.IBDataSetFornecedorDATAALTERACAO.Value:= StrToDateTime(UmForneceodorF.DataAlteracao);

           FDM.IBDataSetFornecedor.Post;
       end;


       if not FDM.IBDataSetProdutoFornecedor.Active then
       begin
         FDM.IBDataSetProdutoFornecedor.Active := True;
         FDM.IBDataSetProdutoFornecedor.Open;
       end;
       if UmForneceodorF.UmaListaProduto.Count > 0 then
           for I := 1 to  UmForneceodorF.UmaListaProduto.Count  do
           begin
               FDM.IBDataSetProdutoFornecedor.Insert;

               FDM.IBDataSetProdutoFornecedorIDFORNECEDOR.Value:= FDM.IBDataSetFornecedorID.Value;
               FDM.IBDataSetProdutoFornecedorIDPRODUTO.Value:= UmForneceodorF.getProdutos(i-1).IdProduto;

               FDM.IBDataSetProdutoFornecedor.Post;
           end;

          FDM.IBTransaction1.CommitRetaining;

          MSG := UmForneceodorF.Nome + ' SALVO COM SUCESSO';

    end
    else if id = 2 then
    begin
       UmFornecedorJ:=TFornecedor(Objeto);
       if UmFornecedorJ.Id = 0 then
       begin
           FDM.IBDataSetFornecedor.Insert;

           FDM.IBDataSetFornecedorRAZAOSOCIAL.Value:=UmFornecedorJ.RS ;
           FDM.IBDataSetFornecedorFANTASIA.Value:=UmFornecedorJ.Fantasia;
           FDM.IBDataSetFornecedorINSCRICAOESTADUAL.Value:=UmFornecedorJ.IE;
           FDM.IBDataSetFornecedorCNPJ.Value:=UmFornecedorJ.CNPJ;
           FDM.IBDataSetFornecedorTIPO.Value:='Juridico';
           FDM.IBDataSetFornecedorIDCIDADE.Value:=UmFornecedorJ.Cidade.IdCidade;
           FDM.IBDataSetFornecedorBAIRRO.Value:=UmFornecedorJ.Bairro;
           FDM.IBDataSetFornecedorCEP.Value:=UmFornecedorJ.Cep;
           FDM.IBDataSetFornecedorLOGRADOURO.Value:=UmFornecedorJ.Logradouro;
           FDM.IBDataSetFornecedorNUMERO.Value:=UmFornecedorJ.Numero;
           FDM.IBDataSetFornecedorOBSERVACOES.Value:=UmFornecedorJ.Observacoes;
           FDM.IBDataSetFornecedorTELEFONECOMERCIAL.Value:=UmFornecedorJ.Telefone;
           FDM.IBDataSetFornecedorTELEFONECOMERCIAL2.Value:=UmFornecedorJ.Telefone2;
           FDM.IBDataSetFornecedorCELULAR.Value:=UmFornecedorJ.Celular;
           FDM.IBDataSetFornecedorCELULAR2.Value:=UmFornecedorJ.Celular2;
           FDM.IBDataSetFornecedorFAX.Value:=UmFornecedorJ.Fax;
           FDM.IBDataSetFornecedorDATACADASTRO.Value:= StrToDateTime(UmFornecedorJ.DataCadastro);


           FDM.IBDataSetFornecedor.Post;
       end
       else
       begin
           FDM.IBDataSetFornecedor.Edit;
           FDM.IBDataSetFornecedorRAZAOSOCIAL.Value:=UmFornecedorJ.RS ;
           FDM.IBDataSetFornecedorFANTASIA.Value:=UmFornecedorJ.Fantasia;
           FDM.IBDataSetFornecedorINSCRICAOESTADUAL.Value:=UmFornecedorJ.IE;
           FDM.IBDataSetFornecedorCNPJ.Value:=UmFornecedorJ.CNPJ;
           FDM.IBDataSetFornecedorTIPO.Value:='Fisico';
           FDM.IBDataSetFornecedorIDCIDADE.Value:=UmFornecedorJ.Cidade.IdCidade;
           FDM.IBDataSetFornecedorBAIRRO.Value:=UmFornecedorJ.Bairro;
           FDM.IBDataSetFornecedorCEP.Value:=UmFornecedorJ.Cep;
           FDM.IBDataSetFornecedorLOGRADOURO.Value:=UmFornecedorJ.Logradouro;
           FDM.IBDataSetFornecedorNUMERO.Value:=UmFornecedorJ.Numero;
           FDM.IBDataSetFornecedorOBSERVACOES.Value:=UmFornecedorJ.Observacoes;
           FDM.IBDataSetFornecedorTELEFONECOMERCIAL.Value:=UmFornecedorJ.Telefone;
           FDM.IBDataSetFornecedorTELEFONECOMERCIAL2.Value:=UmFornecedorJ.Telefone2;
           FDM.IBDataSetFornecedorCELULAR.Value:=UmFornecedorJ.Celular;
           FDM.IBDataSetFornecedorCELULAR2.Value:=UmFornecedorJ.Celular2;
           FDM.IBDataSetFornecedorFAX.Value:=UmFornecedorJ.Fax;
           FDM.IBDataSetFornecedorDATAALTERACAO.Value:= StrToDateTime(UmFornecedorJ.DataAlteracao);
           FDM.IBDataSetFornecedor.Post;
       end;

       if not FDM.IBDataSetProdutoFornecedor.Active then
       begin
            FDM.IBDataSetProdutoFornecedor.Active := True;
            FDM.IBDataSetProdutoFornecedor.Open;
       end;

       if UmFornecedorJ.UmaListaProduto.Count > 0 then
           for I := 1 to  UmFornecedorJ.UmaListaProduto.Count  do
           begin
               FDM.IBDataSetProdutoFornecedor.Insert;

               FDM.IBDataSetProdutoFornecedorIDPRODUTO.Value:=UmFornecedorJ.getProdutos(i-1).IdProduto;
               FDM.IBDataSetProdutoFornecedorIDFORNECEDOR .Value:=  FDM.IBDataSetFornecedorID.Value;


               FDM.IBDataSetProdutoFornecedor.Post;
           end;


          FDM.IBTransaction1.CommitRetaining;

          MSG := UmFornecedorJ.RS + ' SALVO COM SUCESSO';

    end;

except

      FDM.IBTransaction1.RollbackRetaining;

      MSG := 'ERRO AO SALVAR FORNECEDOR';
  end;
    Result:=MSG;
end;

function TDaoFornecedor.TipoFornecedor: string;
begin
   Result:=FDM.IBDataSetFornecedorTIPO.Value;
end;

end.
