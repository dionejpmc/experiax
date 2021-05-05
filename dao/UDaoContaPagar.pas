unit UDaoContaPagar;

interface
uses UDAO, UContaPagar, UDM,DB,SysUtils;
type
    TDaoContaPagar = class(TDao)
    private
    protected
    public
            constructor Create;                                      override;
            destructor Destroy;                                      override;
            function Salvar(Objeto: TObject;Id:integer): string;
            function GetDs: TDataSource;                             override;
            function Carregar(Objeto: TObject): TObject;             override;
            function Buscar(KeyId: Integer; KeyStr: String;KeyParcela:integer): boolean;
            function Excluir(Objeto: TObject): string;               override;
    end;
implementation

{ TDaoContaPagar }

function TDaoContaPagar.Buscar(KeyId: Integer; KeyStr: String;KeyParcela:integer): boolean;
var Sql:string;
begin
    SQL:='SELECT * FROM CONTAPAGAR WHERE SERIE LIKE '+QuotedStr(KeyStr+'%')+' AND NUMERONOTA = '+Inttostr(KeyId)+' AND NUMEROPARCELA = '+ IntToStr(KeyParcela);

    FDM.IBDataSetContasPagar.Close;
    FDM.IBDataSetContasPagar.SelectSQL.Clear;
    FDM.IBDataSetContasPagar.SelectSQL.Add(SQL);
    FDM.IBDataSetContasPagar.Open;
    if  (FDM.IBDataSetContasPagarNUMEROPARCELA.Value = KeyParcela) and  (FDM.IBDataSetContasPagarSERIE.Value  = KeyStr) and  (FDM.IBDataSetContasPagarNUMERONOTA.Value = KeyId) then
        Result:=True
    else
      Result:=False;

end;

function TDaoContaPagar.Carregar(Objeto: TObject): TObject;
var UmaContaPagar:TContaPagar;
begin
    UmaContaPagar:=TContaPagar(Objeto);

   if not FDM.IBDataSetContasPagar.Active then
   begin
     FDM.IBDataSetContasPagar.Active:=True;
     FDM.IBDataSetContasPagar.Open;
   end;

   UmaContaPagar.NumeroNota:=FDM.IBDataSetContasPagarNUMERONOTA.Value;
   UmaContaPagar.Serie:=FDM.IBDataSetContasPagarSERIE.Value;
   UmaContaPagar.NumeroParcela:= FDM.IBDataSetContasPagarNUMEROPARCELA.Value;
   UmaContaPagar.UmFornecedor.Id:=FDM.IBDataSetContasPagarIDFORNECEDOR.Value;
   UmaContaPagar.UmFornecedor.RS:=FDM.IBDataSetContasPagarFORNECEDOR.Value;

   UmaContaPagar.UmaFP.Id:=FDM.IBDataSetContasPagarIDFORMAPAGAMENTO.Value;
   UmaContaPagar.UmaFP.FP:=FDM.IBDataSetContasPagarFORMAPAGAMENTO.Value;
   UmaContaPagar.DataVencimento:=DateTimeToStr(FDM.IBDataSetContasPagarDATAVENCIMENTO.Value);
   UmaContaPagar.DataPagamento:=DateTimeToStr(FDM.IBDataSetContasPagarDATAPAGAMENTO.Value);
   UmaContaPagar.DataCadastro:=DateTimeToStr(FDM.IBDataSetContasPagarDATACADASTRO.Value);
   UmaContaPagar.DataAlteracao:=DateTimeToStr(FDM.IBDataSetContasPagarDATAALTERACAO.Value);
   UmaContaPagar.Valor:=  FDM.IBDataSetContasPagarVALOR.Value;
   UmaContaPagar.ValorNota:=FDM.IBDataSetContasPagarVALOTOTALCONTA.Value;
   UmaContaPagar.Observacoes:=FDM.IBDataSetContasPagarOBSERVACOES.Value;
   if FDM.IBDataSetContasPagarSTATUS.Value = 'Paga' then
      UmaContaPagar.Status:= 0
   else if FDM.IBDataSetContasPagarSTATUS.Value = 'Pendente' then
       UmaContaPagar.Status:= 1
   else
       UmaContaPagar.Status:= 2;


   Result:=UmaContaPagar;

end;

constructor TDaoContaPagar.Create;
begin
  inherited;

end;

destructor TDaoContaPagar.Destroy;
begin

  inherited;
end;

function TDaoContaPagar.Excluir(Objeto: TObject): string;
begin

end;

function TDaoContaPagar.GetDs: TDataSource;
begin
   Result:=FDM.TDataSourceContasPagar;
end;

function TDaoContaPagar.Salvar(Objeto: TObject;Id:integer): string;
var UmaContaPAgar:TContaPagar;
    MSG:string;
begin
      UmaContaPAgar:=TContaPagar(Objeto);
      try
           if not FDM.IBTransaction1.Active then
           begin
               FDM.IBTransaction1.Active:=True;
               FDM.IBTransaction1.StartTransaction;
           end;


           if not FDM.IBDataSetContasPagar.Active then
           begin
              FDM.IBDataSetContasPagar.Active:=True;
              FDM.IBDataSetContasPagar.Open;
           end;

          if (id = 1) then
          begin

               FDM.IBDataSetContasPagar.Insert;

               FDM.IBDataSetContasPagarNUMEROPARCELA.Value:= UmaContaPAgar.NumeroParcela;
               FDM.IBDataSetContasPagarIDFORNECEDOR.Value:=UmaContaPAgar.UmFornecedor.Id;
               FDM.IBDataSetContasPagarIDFORMAPAGAMENTO.Value:=UmaContaPAgar.UmaFP.Id;
               FDM.IBDataSetContasPagarNUMERONOTA.Value:=UmaContaPAgar.NumeroNota;
               FDM.IBDataSetContasPagarSERIE.Value:=UmaContaPAgar.Serie;
               //Valor da conta sem juros ou desconto
               FDM.IBDataSetContasPagarVALOR.Value:=UmaContaPAgar.Valor;

               FDM.IBDataSetContasPagarJUROS.Value:=UmaContaPAgar.Juros;
               FDM.IBDataSetContasPagarDESCONTO.Value:=UmaContaPAgar.Desconto;

               //Valor Da Conta Com Juroso ou desconto
               FDM.IBDataSetContasPagarVALOTOTALCONTA.Value:=StrToFloat(FormatFloat('#0.00', UmaContaPAgar.ValorNota));
               FDM.IBDataSetContasPagarVALOR.Value:=StrToFloat(FormatFloat('#0.00',UmaContaPAgar.Valor));
               FDM.IBDataSetContasPagarJUROS.Value:=UmaContaPAgar.Juros;
               FDM.IBDataSetContasPagarDESCONTO.Value:=UmaContaPAgar.Desconto;
               FDM.IBDataSetContasPagarOBSERVACOES.Value:=UmaContaPAgar.Observacoes;
               FDM.IBDataSetContasPagarDATAENTRADA.Value:= Now;
               FDM.IBDataSetContasPagarDATAVENCIMENTO.Value:= StrToDateTime(UmaContaPAgar.DataVencimento);
               FDM.IBDataSetContasPagarDATACADASTRO.Value:=Now;

               FDM.IBDataSetContasPagarDATAPAGAMENTO.Value:=StrToDateTime(UmaContaPAgar.DataPagamento);
               if UmaContaPAgar.Status = 1 then
                  FDM.IBDataSetContasPagarSTATUS.Value:= 'Pendente'
               else if UmaContaPAgar.Status = 0 then
                  FDM.IBDataSetContasPagarSTATUS.Value:= 'Paga'
               else
                  FDM.IBDataSetContasPagarSTATUS.Value:= 'Cancelada';
               MSG:='CONTA CADASTRADA COM SUCESSO!';
          end
          else
          begin
                 if Buscar(UmaContaPAgar.NumeroNota,UmaContaPAgar.Serie,UmaContaPAgar.NumeroParcela) then
                    FDM.IBDataSetContasPagar.Edit
                 else
                 begin
                   FDM.IBTransaction1.RollbackRetaining;
                   MSG:='ERRO AO SALVAR CONTA A PAGAR, VERIFIQUE SE JA N�O EXISTE UMA CONTA CADASTRADA COM ESTES DADOS!!!';
                   Result:=MSG;
                 end;

                 UmaContaPAgar.NumeroNota;
                 UmaContaPAgar.Serie;
                 UmaContaPAgar.NumeroParcela;

                 FDM.IBDataSetContasPagarJUROS.Value:=UmaContaPAgar.Juros;
                 FDM.IBDataSetContasPagarDESCONTO.Value:=UmaContaPAgar.Desconto;
                 FDM.IBDataSetContasPagarVALOTOTALCONTA.Value:=StrToFloat(FormatFloat('#0.00',UmaContaPAgar.ValorNota));
                 FDM.IBDataSetContasPagarOBSERVACOES.Value:=UmaContaPAgar.Observacoes;
                 FDM.IBDataSetContasPagarDATAALTERACAO.Value:=StrToDateTime(UmaContaPAgar.DataAlteracao);
                 FDM.IBDataSetContasPagarDATAPAGAMENTO.Value:=StrToDateTime(UmaContaPAgar.DataPagamento);
                 if UmaContaPAgar.Status = 1 then
                    FDM.IBDataSetContasPagarSTATUS.Value:= 'Pendente'
                 else if UmaContaPAgar.Status = 0 then
                    FDM.IBDataSetContasPagarSTATUS.Value:= 'Paga'
                 else
                    FDM.IBDataSetContasPagarSTATUS.Value:= 'Cancelada';

          end;

           FDM.IBDataSetContasPagar.Post;

           FDM.IBTransaction1.CommitRetaining;
           MSG:='CONTA BAIXADA COM SUCESSO!!!';
      except
            FDM.IBTransaction1.RollbackRetaining;
            MSG:='ERRO AO SALVAR CONTA A PAGAR, VERIFIQUE SE JA N�O EXISTE UMA CONTA CADASTRADA COM ESTES DADOS!!!';
      end;
   Result:=MSG;
end;

end.
