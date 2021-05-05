unit UDaoVenda;

interface
uses UDao, UDM, DB, Classes,UVenda, SysUtils, UCtrlCP, UProduto, UContaReceber,UCtrlContaReceber, UCtrlProduto,Dialogs, Messages;
type
    TDaoVenda = class (TDao)

    private

    protected

    public
          constructor Create;                                            override;
          destructor Destroy;                                            override;
          function Salvar( Objeto : TObject): string;                    override;
          function GetDs : TDataSource;                                  override;
          function GetDsPV:TDataSource;
          function Carregar( Objeto: TObject): Tobject;                  override;
          function Buscar(KeyNumNota: Integer; KeyStr: String; KeyDataEmicao:String): boolean;
          function CarregarLista(UmaLista:Tlist):TList;
          function BuscarPV(KeyNumeroNota : Integer;KeySerie:string):Boolean;
          function Excluir( Objeto : TObject): string;                   override;
    end;

implementation

{ TDaoVenda }

function TDaoVenda.Buscar(KeyNumNota: Integer; KeyStr: String;KeyDataEmicao: String): boolean;
var TamStr:Integer;
    SQL:String;
begin
     TamStr:=Length(keyStr);
     if (KeyNumNota <> 0)  and (TamStr = 0) then
       SQL:='SELECT * FROM VENDA WHERE NUMERONOTA='+Inttostr(KeyNumNota)
     else if (TamStr <> 0)  and (KeyNumNota = 0) then
       SQL:='SELECT * FROM VENDA WHERE SERIE LIKE '+QuotedStr('%'+KeyStr+'%')
     else if (KeyNumNota <> 0) and (TamStr <> 0) and (KeyDataEmicao = '') then
       SQL:='SELECT * FROM VENDA WHERE SERIE LIKE '+QuotedStr(KeyStr+'%')+' AND NUMERONOTA = '+Inttostr(KeyNumNota)
     else if (keyNumNota <> 0) and (TamStr <> 0) and (KeyDataEmicao <> '') then
       SQL:='SELECT * FROM VENDA WHERE SERIE LIKE '+QuotedStr(KeyStr)+' AND NUMERONOTA = '+Inttostr(KeyNumNota)+' AND DATAEMICAO = '+ KeyDataEmicao;


    FDM.IBDataSetVenda.Close;
    FDM.IBDataSetVenda.SelectSQL.Clear;
    FDM.IBDataSetVenda.SelectSQL.Add(SQL);
    FDM.IBDataSetVenda.Open;

    if (Length(KeyStr) <> 0 ) and (KeyStr = FDM.IBDataSetVendaSERIE.Value) and (KeyNumNota = 0) then
        Result:=True
    else if (KeyNumNota <> 0) and (FDM.IBDataSetVendaNUMERONOTA.Value = KeyNumNota) and (Length(KeyStr) = 0) then
        Result:=True
    else if (Length(KeyStr) <> 0 ) and (KeyStr = FDM.IBDataSetVendaSERIE.Value) and (KeyNumNota <> 0) and (FDM.IBDataSetVendaNUMERONOTA.Value = KeyNumNota) then
        Result:=True
    else if (Length(KeyStr) <> 0 ) and (KeyStr = FDM.IBDataSetVendaSERIE.Value) and (KeyNumNota <> 0) and (FDM.IBDataSetVendaNUMERONOTA.Value = KeyNumNota) and (FDM.IBDataSetVendaDATAEMICAO.Value = StrToDateTime(KeyDAtaEmicao)) then
        Result:=True
    else
        Result:=False;

end;

function TDaoVenda.BuscarPV(KeyNumeroNota:Integer; KeySerie: string): Boolean;
var TamStr,intValue:Integer;
    SQL:String;
begin
     TamStr:=Length(KeySerie);

     if (KeyNumeroNota > 0) and (TamStr > 0) then
        SQL:='SELECT * FROM PRODUTOVENDA WHERE SERIE LIKE '+QuotedStr(KeySerie)+' AND NUMERONOTA = '+Inttostr(KeyNumeroNota)
     else
     begin
       Result:=False;
       Exit;
     end;



    FDM.IBDataSetProdutoVenda.Close;
    FDM.IBDataSetProdutoVenda.SelectSQL.Clear;
    FDM.IBDataSetProdutoVenda.SelectSQL.Add(SQL);
    FDM.IBDataSetProdutoVenda.Open;

    if (Length(KeySerie) > 0 ) and (KeySerie = FDM.IBDataSetVendaSERIE.Value) and (KeyNumeroNota > 0) and (FDM.IBDataSetVendaNUMERONOTA.Value = KeyNumeroNota) then
        Result:=True
    else
        Result:=False;
end;

function TDaoVenda.Carregar(Objeto: TObject): Tobject;
var UmaVenda:TVenda;
begin
   UmaVenda:=TVenda(Objeto);

   if not FDM.IBDataSetCompra.Active then
   begin
     FDM.IBDataSetCompra.Active:=True;
     FDM.IBDataSetCompra.Open;

   end;

   UmaVenda.NumeroNota:= FDM.IBDataSetVendaNUMERONOTA.Value;
   UmaVenda.Serie:= FDM.IBDataSetVendaSERIE.Value;
   UmaVenda.CFOP:=FDM.IBDataSetVendaCFOP.Value;
   UmaVenda.UmaCP.IdCP:=FDM.IBDataSetVendaIDCONDICAOPAGAMENTO.Value;
   UmaVenda.UmaCP.CP:=  FDM.IBDataSetVendaCONDICAOPAGAMENTO.Value;
   UmaVenda.DataEmicao:=DateTimeToStr( FDM.IBDataSetVendaDATAEMICAO.Value);
   UmaVenda.UmFuncionario.Id:=FDM.IBDataSetVendaIDFUNCIONARIO.Value;
   UmaVenda.UmFuncionario.Nome:=FDM.IBDataSetVendaFUNCIONARIO.Value;
   UmaVenda.UmClienteJuridico.Id:=FDM.IBDataSetVendaIDCLIENTE.Value;
   UmaVenda.UmClienteJuridico.RS:=FDM.IBDataSetVendaCLIENTE.Value;
   UmaVenda.Observacoes:=FDM.IBDataSetVendaOBSERVACOES.Value;
   UmaVenda.DataCadastro:=DateTimeToStr( FDM.IBDataSetVendaDATACADASTRO.Value);
   UmaVenda.DataAlteracao:=DateTimeToStr(FDM.IBDataSetVendaDATAALTERACAO.Value);
   UmaVenda.ValorTotalProdutos:=FDM.IBDataSetVendaVALORTOTALPRODUTOS.Value;
   UmaVenda.ValorTotalNota:=FDM.IBDataSetVendaVALORTOTALNOTA.Value;

   BuscarPV(UmaVenda.NumeroNota, UmaVenda.Serie);
   CarregarLista(UmaVenda.UmaListaProduto);

   Result:= UmaVenda;
end;

function TDaoVenda.CarregarLista(UmaLista: Tlist):TList;
var UmProduto:TProduto;
begin
   if FDM.IBDataSetProdutoVenda.RecordCount > 0 then
   begin
       FDM.IBDataSetProdutoVenda.First;
       while not FDM.IBDataSetProdutoVenda.Eof do
       begin
            UmProduto:=TProduto.Create;
            UmProduto.IdProduto:=FDM.IBDataSetProdutoVendaIDPRODUTO.Value;
            UmProduto.Produto:=FDM.IBDataSetProdutoVendaPRODUTO.Value ;
            UmProduto.Qtde:=FormatFloat('#0.00',FDM.IBDataSetProdutoVendaQTDEPRODUTO.Value );
            UmProduto.ICMS:=FDM.IBDataSetProdutoVendaICMS.Value;
            UmProduto.IPI:=FDM.IBDataSetProdutoVendaIPI.Value;
            UmProduto.Desconto :=FDM.IBDataSetProdutoVendaDESCONTO.Value;
            UmProduto.ValorVenda:=FDM.IBDataSetProdutoVendaVALORUNITARIO.Value;
            UmProduto.ValorTotalVenda:=FDM.IBDataSetProdutoVendaTOTALCOMIMPOSTOS.Value;
            UmaLista.Add(UmProduto);
            UmProduto:=nil;
            FDM.IBDataSetProdutoVenda.Next;
       end;
   end;
end;

constructor TDaoVenda.Create;
begin
  inherited;

end;

destructor TDaoVenda.Destroy;
begin
  inherited;

end;

function TDaoVenda.Excluir(Objeto: TObject): string;
begin

end;

function TDaoVenda.GetDs: TDataSource;
begin
   Result:= FDM.TDataSourceVenda;
end;

function TDaoVenda.GetDsPV: TDataSource;
begin
     Result:=FDM.TDataSourceProdutoVenda;
end;

function TDaoVenda.Salvar(Objeto: TObject): string;
var MSG:String;
    UmaVenda:TVenda;
    i,idProduto,qtdeParcelas:integer;
    ValorParcela, porcentagemParcela, totalCalculado, Aux:Double;
    UmaCtrlProduto:TCtrlProduto;
     AuxQtde1,AuxQtde2:Double;
     UmaCtrlCP:TCtrlCP;
begin
    UmaVenda:=TVenda(Objeto);
    try
      if not FDM.IBTransaction1.Active then
      begin
        FDM.IBTransaction1.Active := True;
        FDM.IBTransaction1.StartTransaction;
      end;

      if not FDM.IBDataSetCompra.Active then
      begin
        FDM.IBDataSetVenda.Active := True;
        FDM.IBDataSetVenda.Open;
      end;

      FDM.IBDataSetVenda.Insert;
      FDM.IBDataSetVendaSERIE.Value:= UmaVenda.Serie;
      FDM.IBDataSetVendaIDFUNCIONARIO.Value:=UmaVenda.UmFuncionario.Id;
      FDM.IBDataSetVendaIDCLIENTE.Value:=UmaVenda.UmClienteJuridico.Id;
      FDM.IBDataSetVendaDATAEMICAO.Value:=StrToDateTime(UmaVenda.DataEmicao);
      FDM.IBDataSetVendaVALORTOTALPRODUTOS.Value:=UmaVenda.ValorTotalProdutos;
      FDM.IBDataSetVendaVALORFRETE.Value:=UmaVenda.ValorFrete;
      FDM.IBDataSetVendaVALORTOTALNOTA.Value:=UmaVenda.ValorTotalNota;
      FDM.IBDataSetVendaDATACADASTRO.Value:=StrToDateTime(UmaVenda.DataCadastro);
      FDM.IBDataSetVendaIDCONDICAOPAGAMENTO.Value:=UmaVenda.UmaCP.IdCP;
      FDM.IBDataSetVendaQTDEPRODUTOS.Value:=UmaVenda.UmaListaProduto.Count;


      FDM.IBDataSetVenda.Post;


      if not FDM.IBDataSetProdutoCompra.Active then
      begin
        FDM.IBDataSetProdutoCompra.Active := True;
        FDM.IBDataSetProdutoCompra.Open;
      end;
      //ALIMENTA A TABELA PRODUTO VENDA
      for I := 1 to  UmaVenda.UmaListaProduto.Count  do
      begin
        FDM.IBDataSetProdutoVenda.Insert;

        idProduto:=UmaVenda.getProdutos(i-1).IdProduto;

        FDM.IBDataSetProdutoVendaIDPRODUTO.Value:=UmaVenda.getProdutos(i-1).IdProduto;

        FDM.IBDataSetProdutoVendaSERIE.Value:=UmaVenda.Serie;
        FDM.IBDataSetProdutoVendaNUMERONOTA.Value:=FDM.IBDataSetVendaNUMERONOTA.Value;
        FDM.IBDataSetProdutoVendaQTDEPRODUTO.Value:=StrToFloat(FormatFloat('#0.00', StrToFloat(UmaVenda.getProdutos(i-1).Qtde)));
        FDM.IBDataSetProdutoVendaVALORUNITARIO.Value:=UmaVenda.getProdutos(i-1).ValorVenda;
        FDM.IBDataSetProdutoVendaVALORTOTAL.Value:=StrToFloat(FormatFloat('#0.00', UmaVenda.getProdutos(i-1).ValorVenda * StrToFloat(UmaVenda.getProdutos(i-1).Qtde) ));
        FDM.IBDataSetProdutoVendaICMS.Value:=StrToFloat(FormatFloat('#0.00', UmaVenda.getProdutos(i-1).ICMS));
        FDM.IBDataSetProdutoVendaIPI.Value:=StrToFloat(FormatFloat('#0.00', UmaVenda.getProdutos(i-1).IPI));
        FDM.IBDataSetProdutoVendaTOTALCOMIMPOSTOS.Value:=StrToFloat(FormatFloat('#0.00', UmaVenda.getProdutos(i-1).ValorTotalVenda));


        FDM.IBDataSetProdutoVenda.Post;


        UmaCtrlProduto:=TCtrlProduto.Create;

          if UmaCtrlProduto.Buscar(idProduto,'') then
          begin
                //Fecha o DataSet  e faz um select  no banco depois reabre com os dados selecionados
               if not FDM.IBDataSetProduto.Active then
                  FDM.IBDataSetProduto.Active := True;
               FDM.IBDataSetProduto.Close;
               FDM.IBDataSetProduto.SelectSQL.Text:='SELECT * FROM PRODUTO WHERE ID = ' + intToStr(idProduto);
               FDM.IBDataSetProduto.Open;

               FDM.IBDataSetProduto.Edit;

               UmaCtrlProduto.Carregar(UmaVenda.UmProduto);

               if UmaVenda.UmProduto.IdProduto = UmaVenda.getProdutos(i-1).IdProduto then
               begin
                 if (UmaVenda.getProdutos(i-1).ValorVenda <> 0) and (StrToFloat(UmaVenda.UmProduto.Qtde) <> 0) then
                 begin
                    AuxQtde1:=StrToFloat(UmaVenda.UmProduto.Qtde); //Quantidade Atual em Estoque
                    AuxQtde2:=StrToFloat(UmaVenda.getProdutos(i-1).Qtde); //Quantidade solicitada na Venda
                    if AuxQtde1 < AuxQtde2 then
                    begin
                       FDM.IBTransaction1.RollbackRetaining;
                       ShowMessage('ERRO DE ATUALIZA��O DE ESTOQUE, QUANTIDADE SOLICITADA MAIOR QUE A A QUANTIDADE DISPON�VEL.');
                       Exit;
                    end
                    else
                    begin
                        FDM.IBDataSetProdutoQTDE.Clear;
                        FDM.IBDataSetProdutoQTDE.Value:= AuxQtde1-AuxQtde2;
                        if (AuxQtde1-AuxQtde2) < 0 then
                        begin
                          FDM.IBTransaction1.RollbackRetaining;
                          ShowMessage('ERRO DE ATUALIZA��O DE ESTOQUE, SALDO DE ESTOQUE NEGATIVO.');
                          Exit;
                        end
                        else if (AuxQtde1-AuxQtde2) = 0 then
                        begin
                             FDM.IBDataSetProduto.Post;
                             ShowMessage('ESTOQUE ZERADO.');
                        end
                        else
                        begin
                             FDM.IBDataSetProduto.Post;
                        end;

                    end;




                 end;
               end;
          end;
          UmaCtrlProduto.Destroy;
      end;

          {GERA AS CONTAS  A RECEBER}
      //****************************************************************************************************************\\
          UmaCtrlCP:=TCtrlCP.Create;
          UmaCtrlCP.Buscar(UmaVenda.UmaCP.IdCP, '');
          UmaCtrlCP.Carregar(UmaVenda.UmaCP);
          qtdeParcelas:=UmaVenda.UmaCP.QTDEParcelas;
          if qtdeParcelas <= 0 then
          begin
               FDM.IBTransaction1.RollbackRetaining;
               MSG:='ERRO AO GERAR PARCELA(S)';
               Result:=MSG;
               Exit;

          end;
          if qtdeParcelas > 0 then
              for  i:=1 to qtdeParcelas  do
              begin
                  if not FDM.IBDataSetContasPagar.Active then
                  begin
                        FDM.IBDataSetContaReceber.Active:=True;
                        FDM.IBDataSetContaReceber.Open;
                  end;

                  FDM.IBDataSetContaReceber.Insert;

                  FDM.IBDataSetContaReceberNUMERONOTA.Value:=FDM.IBDataSetVendaNUMERONOTA.Value;
                  FDM.IBDataSetContaReceberSERIE.Value:=UmaVenda.Serie;
                  FDM.IBDataSetContaReceberNUMEROPARCELA.Value:=UmaVenda.UmaCP.getParcelas(i-1).NumeroParcela;
                  FDM.IBDataSetContaReceberOBSERVACOES.Value:='GERADA NA VENDA';
                  FDM.IBDataSetContaReceberSTATUS.Value:='Pendente';
                  FDM.IBDataSetContaReceberIDFP.Value:=UmaVenda.UmaCP.UmaFP.Id;
                  FDM.IBDataSetContaReceberDATAENTRADA.Value:=Now;
                  FDM.IBDataSetContaReceberDATAVENCIMENTO.Value:=StrToInt( UmaVenda.UmaCP.getParcelas(i-1).DataVencimento) + Now;
                  FDM.IBDataSetContaReceberDATACADASTRO.Value:=Now;

                   if UmaVenda.UmaCP.getParcelas(i-1).JurosParcela > 0 then
                   begin
                      ValorParcela:=(UmaVenda.UmaCP.getParcelas(i-1).PorcentagemParcela/100) * UmaVenda.ValorTotalNota;
                      ValorParcela:=((UmaVenda.UmaCP.getParcelas(i-1).JurosParcela/100) * ValorParcela ) + ValorParcela;
                   end
                   else
                      ValorParcela:=(UmaVenda.UmaCP.getParcelas(i-1).PorcentagemParcela/100) * UmaVenda.ValorTotalNota;
                   totalCalculado:=totalCalculado+ValorParcela;
                   FDM.IBDataSetContaReceberVALORTOTALCONTA.Value:=StrToFloat(FormatFloat('#0.00', ValorParcela));
                   ShowMessage('Total Calculado: '+FloatToStr(totalCalculado)+ ' Valor Nota: '+ FloatToStr(FDM.IBDataSetVendaVALORTOTALNOTA.Value));
                   FDM.IBDataSetContaReceber.Post;
              end;
             UmaCtrlCP.Destroy;
      MSG:='VENDA EFETUADA COM SUCESSO';
      FDM.IBTransaction1.CommitRetaining;
    Except
      FDM.IBTransaction1.RollbackRetaining;
      MSG:='ERRO AO SALVAR VENDA. VERIFIQUE SE J� N�O EXISTE UMA VENDA CADASTRADA COM ESTE NUMERO DE NOTA E S�RIE.'
    end;
    Result:=MSG;
end;

end.
