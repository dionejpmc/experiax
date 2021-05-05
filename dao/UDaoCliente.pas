unit UDaoCliente;

interface
uses UDao, UDM, DB, SysUtils, UClienteFisico, UClienteJuridico,Messages;
type
  TDaoCliente = class (TDao)
    private
    protected
    public
      constructor Create;                                            override;
      destructor Destroy;                                            override;
      function Salvar( Objeto : TObject;id:integer): string;
      function GetDs : TDataSource;                                  override;
      function TipoCliente:string;
      function BuscarCPF(vCPF:String):Boolean;
      function Carregar( Objeto: TObject): Tobject;                  override;
      function Buscar(KeyId : Integer;KeyStr:String): boolean;       override;
      function Excluir( Objeto : TObject): string;                   override;

  end;

implementation

{ TDaoCliente }

function TDaoCliente.Buscar(KeyId: Integer; KeyStr: String): boolean;
var
  TamStr: Integer;
  SQL: String;
begin
inherited;
  TamStr := Length(KeyStr);
  if (KeyId <> 0) then
    SQL := 'SELECT * FROM CLIENTE WHERE ID=' + Inttostr(KeyId)
  else if (TamStr <> 0) and (KeyId = 0) then
    SQL :='SELECT * FROM CLIENTE WHERE CLIENTEF_CLIENTEJ LIKE'+QuotedStr('%'+KeyStr+'%')
  else if (KeyId = 0) and (TamStr = 0) then
    SQL := 'SELECT * FROM CLIENTE ORDER BY CLIENTEF_CLIENTEJ';

  FDM.IBDataSetCliente.Close;
  FDM.IBDataSetCliente.SelectSQL.Clear;
  FDM.IBDataSetCliente.SelectSQL.Add(SQL);
  FDM.IBDataSetCliente.Open;

  if (FDM.IBDataSetClienteID.Value = KeyId) and (KeyId <> 0) then
      Result:=True
  else
      Result:=False;

end;


function TDaoCliente.BuscarCPF(vCPF: String): Boolean;
var
  TamStr: Integer;
  SQL: String;
begin
inherited;
  TamStr := Length(vCPF);
  if (TamStr <> 0)then
    SQL :='SELECT * FROM CLIENTE WHERE CPF_CNPJ LIKE'+QuotedStr(vCPF);

  FDM.IBDataSetCliente.Close;
  FDM.IBDataSetCliente.SelectSQL.Clear;
  FDM.IBDataSetCliente.SelectSQL.Add(SQL);
  FDM.IBDataSetCliente.Open;

  if (FDM.IBDataSetClienteCPF_CNPJ.Value = vCPF) and (TamStr > 0) then
      Result:=True
  else
      Result:=False;

end;

function TDaoCliente.Carregar(Objeto: TObject): Tobject;
var UmClienteF:TClienteFisico;
    UmClienteJ:TClienteJuridico;
    MSG,AUX:string;
begin
inherited;
  UmClienteF:=TClienteFisico(Objeto);
  UmClienteJ:=TClienteJuridico(Objeto);
 try
    if not FDM.IBDataSetCliente.Active then
    begin
      FDM.IBDataSetCliente.Active := True;
      FDM.IBDataSetCliente.Open;
    end;
    if FDM.IBDataSetClienteTIPO.Value = 'Fisico' then
    begin
      UmClienteF.Id:=FDM.IBDataSetClienteID.Value;
      UmClienteF.Nome:=FDM.IBDataSetClienteCLIENTEF_CLIENTEJ.Value;
      UmClienteF.RG:=FDM.IBDataSetClienteRG_IE.Value;
      UmClienteF.CPF:=FDM.IBDataSetClienteCPF_CNPJ.Value;
      UmClienteF.Sexo:=FDM.IBDataSetClienteSEXO.Value;
      UmClienteF.CP.IdCP:=FDM.IBDataSetClienteIDCONDICAOPAGAMENTO.Value;
      UmClienteF.CP.CP:= FDM.IBDataSetClienteCONDICAOPAGAMENTO.Value;
      UmClienteF.Cidade.IdCidade:=FDM.IBDataSetClienteIDCIDADE.Value;
      UmClienteF.Cidade.Cidade:=FDM.IBDataSetClienteCIDADE.Value;
      UmClienteF.Observacoes:=FDM.IBDataSetClienteOBSERVACOES.Value;
      UmClienteF.Bairro:=FDM.IBDataSetClienteBAIRRO.Value;
      UmClienteF.Logradouro:=FDM.IBDataSetClienteLOGRADOURO.Value;
      UmClienteF.Status:=  FDM.IBDataSetClienteSTATUS.Value;
      UmClienteF.Numero:=FDM.IBDataSetClienteNUMERO.Value;
      UmClienteF.Cep:=FDM.IBDataSetClienteCEP.Value;
      UmClienteF.Telefone:=FDM.IBDataSetClienteTELEFONERESIDENCIAL.Value;
      UmClienteF.Celular:= FDM.IBDataSetClienteCELULAR.Value;
      UmClienteF.Email:=FDM.IBDataSetClienteEMAIL.Value;
      UmClienteF.DataCadastro:=DateTimeToStr(FDM.IBDataSetClienteDATACADASTRO.Value);
      UmClienteF.DataAlteracao:=DateTimeToStr(FDM.IBDataSetClienteDATAALTERACAO.Value);
      Result:=UmClienteF;
    end
    else if FDM.IBDataSetClienteTIPO.Value = 'Juridico' then
    begin
      UmClienteJ.Id:=FDM.IBDataSetClienteID.Value;
      UmClienteJ.RS:=FDM.IBDataSetClienteCLIENTEF_CLIENTEJ.Value;
      UmClienteJ.IE:=FDM.IBDataSetClienteRG_IE.Value;
      UmClienteJ.CNPJ:=FDM.IBDataSetClienteCPF_CNPJ.Value;
      UmClienteJ.Fantasia:=FDM.IBDataSetClienteFANTASIA.Value;
      UmClienteJ.CP.IdCP:=FDM.IBDataSetClienteIDCONDICAOPAGAMENTO.Value;
      UmClienteJ.Cidade.IdCidade:=FDM.IBDataSetClienteIDCIDADE.Value;
      UmClientej.Cidade.Cidade:=FDM.IBDataSetClienteCIDADE.Value;
      UmClienteJ.Observacoes:=FDM.IBDataSetClienteOBSERVACOES.Value;
      UmClienteJ.Bairro:=FDM.IBDataSetClienteBAIRRO.Value;
      UmClienteJ.Logradouro:=FDM.IBDataSetClienteLOGRADOURO.Value;
      UmClienteJ.Numero:=FDM.IBDataSetClienteNUMERO.Value;
      UmClienteJ.Cep:=FDM.IBDataSetClienteCEP.Value;
      UmClienteJ.Status:=FDM.IBDataSetClienteSTATUS.Value;
      UmClienteJ.Telefone:=FDM.IBDataSetClienteTELEFONERESIDENCIAL.Value;
      UmClienteJ.Telefone2:=FDM.IBDataSetClienteTELEFONERESIDENCIAL2.Value;
      UmClienteJ.Celular:= FDM.IBDataSetClienteCELULAR.Value;
      UmClientej.Celular2:=FDM.IBDataSetClienteCELULAR2.Value;
      UmClienteJ.Email:=FDM.IBDataSetClienteEMAIL.Value;
      UmClienteJ.DataCadastro:=DateTimeToStr(FDM.IBDataSetClienteDATACADASTRO.Value);
      UmClienteJ.DataAlteracao:=DateTimeToStr(FDM.IBDataSetClienteDATAALTERACAO.Value);
      Result:=UmClienteJ;
    end;

 except
  
 end;

end;

constructor TDaoCliente.Create;
begin
  inherited;

end;

destructor TDaoCliente.Destroy;
begin
  inherited;
end;

function TDaoCliente.Excluir(Objeto: TObject): string;
var IdCliente:Integer;
  MSG: string;
  UmCliente: TClienteJuridico;
begin
  UmCliente := TClienteJuridico(Objeto);
  IdCliente:=UmCliente.Id;
  try
    if not FDM.IBTransaction1.Active then
    begin
      FDM.IBTransaction1.Active := True;
      FDM.IBTransaction1.StartTransaction;
    end;
    FDM.IBDataSetCliente.Close;
    FDM.IBDataSetCliente.SelectSQL.Text:='SELECT * FROM CLIENTE WHERE ID = ' + intToStr(IdCliente);
    FDM.IBDataSetCliente.Open;
    FDM.IBDataSetCliente.Delete;

    FDM.IBTransaction1.CommitRetaining;

    FDM.IBDataSetCliente.Close;
    FDM.IBDataSetCliente.SelectSQL.Text:='SELECT * FROM CLIENTE ORDER BY ID ';
    FDM.IBDataSetCliente.Open;

    FDM.IBTransaction1.CommitRetaining;
    MSG := UmCliente.RS + ' REMOVIDO COM SUCESSO.';

  except
    FDM.IBTransaction1.RollbackRetaining;
    MSG := UmCliente.RS + ' N�O PODE SER REMOVIDO.';
  end;

  Result := MSG;

end;

function TDaoCliente.GetDs: TDataSource;
begin
inherited;
  Result:=FDM.TDataSourceCliente;
end;

function TDaoCliente.Salvar(Objeto: TObject;id:integer): string;
var
  MSG: string;
  UmClienteF: TClienteFisico;
  UmClienteJ:TClienteJuridico;
begin
  UmClienteF:=TClienteFisico(Objeto);
  UmClienteJ:=TClienteJuridico(Objeto);
    try
        if not FDM.IBTransaction1.Active then
        begin
          FDM.IBTransaction1.Active := True;
          FDM.IBTransaction1.StartTransaction;
        end;
        if not FDM.IBDataSetCliente.Active then
        begin
          FDM.IBDataSetCliente.Active := True;
          FDM.IBDataSetCliente.Open;
        end;

        // SE FOR CLIENTE FISICO
        if id = 1 then
        begin
           if UmClienteF.Id = 0 then
           begin
                 FDM.IBDataSetCliente.Insert;
                 FDM.IBDataSetClienteCLIENTEF_CLIENTEJ.Value :=UmClienteF.Nome;
                 FDM.IBDataSetClienteRG_IE.Value:=  UmClienteF.RG;
                 FDM.IBDataSetClienteCPF_CNPJ.Value :=UmClienteF.CPF;
                 FDM.IBDataSetClienteSEXO.Value :=UmClienteF.Sexo;
                 FDM.IBDataSetClienteIDCIDADE.Value := UmClienteF.Cidade.IdCidade;
                 FDM.IBDataSetClienteIDCONDICAOPAGAMENTO.Value:=UmClienteF.CP.IdCP;
                 FDM.IBDataSetClienteOBSERVACOES.Value := UmClienteF.Observacoes;
                 FDM.IBDataSetClienteBAIRRO.Value :=UmClienteF.Bairro;
                 FDM.IBDataSetClienteLOGRADOURO.Value:= UmClienteF.Logradouro;
                 FDM.IBDataSetClienteNUMERO.Value:= UmClienteF.Numero;
                 FDM.IBDataSetClienteCEP.Value:= UmClienteF.Cep;
                 FDM.IBDataSetClienteTELEFONERESIDENCIAL.Value:= UmClienteF.Telefone;
                 FDM.IBDataSetClienteCELULAR.Value:= UmClienteF.Celular ;
                 FDM.IBDataSetClienteEMAIL.Value:= UmClienteF.Email;
                 FDM.IBDataSetClienteSTATUS.Value:=UmClienteF.Status;

                 FDM.IBDataSetClienteTIPO.Value:=UmClienteF.Tipo;
                 FDM.IBDataSetClienteFax.Value:=UmClienteF.Fax;
                 FDM.IBDataSetClienteDATACADASTRO.Value :=StrToDateTime(UmClienteF.DataCadastro);

                 MSG:= 'CLIENTE FISICO SALVO COM SUCESSO';
           end
           else
           begin
                 FDM.IBDataSetCliente.Edit;
                 FDM.IBDataSetClienteCLIENTEF_CLIENTEJ.Value :=UmClienteF.Nome;
                 FDM.IBDataSetClienteRG_IE.Value:=  UmClienteF.RG;
                 FDM.IBDataSetClienteCPF_CNPJ.Value :=UmClienteF.CPF;
                 FDM.IBDataSetClienteSEXO.Value :=UmClienteF.Sexo;
                 FDM.IBDataSetClienteIDCIDADE.Value := UmClienteF.Cidade.IdCidade;
                 FDM.IBDataSetClienteIDCONDICAOPAGAMENTO.Value:=UmClienteF.CP.IdCP;
                 FDM.IBDataSetClienteOBSERVACOES.Value := UmClienteF.Observacoes;
                 FDM.IBDataSetClienteBAIRRO.Value :=UmClienteF.Bairro;
                 FDM.IBDataSetClienteLOGRADOURO.Value:= UmClienteF.Logradouro;
                 FDM.IBDataSetClienteNUMERO.Value:= UmClienteF.Numero;
                 FDM.IBDataSetClienteCEP.Value:= UmClienteF.Cep;
                 FDM.IBDataSetClienteTELEFONERESIDENCIAL.Value:= UmClienteF.Telefone;
                 FDM.IBDataSetClienteCELULAR.Value:= UmClienteF.Celular ;
                 FDM.IBDataSetClienteEMAIL.Value:= UmClienteF.Email;
                 FDM.IBDataSetClienteSTATUS.Value:=UmClienteF.Status;

                 FDM.IBDataSetClienteTIPO.Value:=UmClienteF.Tipo;
                 FDM.IBDataSetClienteFax.Value:=UmClienteF.Fax;
                 FDM.IBDataSetClienteDATAALTERACAO.Value:= StrToDateTime(UmClienteF.DataAlteracao);

                 MSG:= 'CLIENTE FISICO EDITADO COM SUCESSO';
           end;
        end;
        // SE FOR CLIENTE JURIDICO
        if id = 2 then
        begin
          if UmClienteJ.Id = 0 then
          begin

             FDM.IBDataSetCliente.Insert;
             FDM.IBDataSetClienteCLIENTEF_CLIENTEJ.Value := UmClienteJ.RS;
             FDM.IBDataSetClienteFANTASIA.Value:= UmClienteJ.Fantasia;
             FDM.IBDataSetClienteRG_IE.Value:=  UmClienteJ.IE;
             FDM.IBDataSetClienteCPF_CNPJ.Value := UmClienteJ.CNPJ;
             FDM.IBDataSetClienteIDCONDICAOPAGAMENTO.Value:=  UmClienteJ.CP.IdCP;
             FDM.IBDataSetClienteIDCIDADE.Value := UmClienteJ.Cidade.IdCidade;
             FDM.IBDataSetClienteOBSERVACOES.Value := UmClienteJ.Observacoes;
             FDM.IBDataSetClienteBAIRRO.Value :=UmClienteJ.Bairro;
             FDM.IBDataSetClienteLOGRADOURO.Value:= UmClienteJ.Logradouro;
             FDM.IBDataSetClienteNUMERO.Value:= UmClienteJ.Numero;
             FDM.IBDataSetClienteSTATUS.Value:=UmClienteJ.Status;
             FDM.IBDataSetClienteCEP.Value:= UmClienteJ.Cep;
             FDM.IBDataSetClienteTELEFONERESIDENCIAL.Value:= UmClienteJ.Telefone;
             FDM.IBDataSetClienteTELEFONERESIDENCIAL2.Value:= UmClienteJ.Celular ;
             FDM.IBDataSetClienteEMAIL.Value:= UmClienteJ.Email;
             FDM.IBDataSetClienteTIPO.Value:=UmClienteJ.Tipo;
             FDM.IBDataSetClienteCELULAR.Value:=UmClienteJ.Celular;
             FDM.IBDataSetClienteCELULAR2.Value:=UmClienteJ.Celular2;

             FDM.IBDataSetClienteFAX.Value:=UmClienteJ.Fax;
             FDM.IBDataSetClienteDATACADASTRO.Value :=StrToDateTime(UmClienteJ.DataCadastro);


             MSG:= 'CLIENTE JURIDICO SALVO COM SUCESSO';
          end
          else
          begin
             FDM.IBDataSetCliente.Edit;
             FDM.IBDataSetClienteCLIENTEF_CLIENTEJ.Value := UmClienteJ.RS;
             FDM.IBDataSetClienteFANTASIA.Value:= UmClienteJ.Fantasia;
             FDM.IBDataSetClienteRG_IE.Value:=  UmClienteJ.IE;
             FDM.IBDataSetClienteCPF_CNPJ.Value := UmClienteJ.CNPJ;
             FDM.IBDataSetClienteIDCONDICAOPAGAMENTO.Value:=  UmClienteJ.CP.IdCP;
             FDM.IBDataSetClienteIDCIDADE.Value := UmClienteJ.Cidade.IdCidade;
             FDM.IBDataSetClienteOBSERVACOES.Value := UmClienteJ.Observacoes;
             FDM.IBDataSetClienteBAIRRO.Value :=UmClienteJ.Bairro;
             FDM.IBDataSetClienteLOGRADOURO.Value:= UmClienteJ.Logradouro;
             FDM.IBDataSetClienteNUMERO.Value:= UmClienteJ.Numero;
             FDM.IBDataSetClienteSTATUS.Value:=UmClienteJ.Status;
             FDM.IBDataSetClienteCEP.Value:= UmClienteJ.Cep;
             FDM.IBDataSetClienteTELEFONERESIDENCIAL.Value:= UmClienteJ.Telefone;
             FDM.IBDataSetClienteTELEFONERESIDENCIAL2.Value:= UmClienteJ.Celular ;
             FDM.IBDataSetClienteEMAIL.Value:= UmClienteJ.Email;
             FDM.IBDataSetClienteTIPO.Value:=UmClienteJ.Tipo;
             FDM.IBDataSetClienteFAX.Value:=UmClienteJ.Fax;
             FDM.IBDataSetClienteDATAALTERACAO.Value:= StrToDateTime(UmClienteJ.DataAlteracao);

             MSG:= 'CLIENTE JURIDICO EDITADO COM SUCESSO';
          end;
        end;

        FDM.IBDataSetCliente.Post;

        FDM.IBTransaction1.CommitRetaining;
    except
       FDM.IBTransaction1.RollbackRetaining;
       MSG:='ERRO AO SALVAR CLIENTE, VERIFIQUE SE ESSE CLIENTE JA ESTA CADASTRADO!';
    end;
  Result:=MSG;
end;

function TDaoCliente.TipoCliente: string;
begin
  Result:=FDM.IBDataSetClienteTIPO.Value;
end;

end.
