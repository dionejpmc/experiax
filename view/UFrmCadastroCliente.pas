unit UFrmCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, RzButton, RzRadChk, StdCtrls, ExtCtrls, Mask,
  RzEdit, RzLabel, RzPanel, ComCtrls, RzDTP, dxSkinsCore,
  dxSkinsDefaultPainters, cxRadioGroup, RzRadGrp, UClienteFisico, UClienteJuridico, UCtrlCliente,UFrmConsultarCidade,
  UFrmConsultarCondicaoPagamento, UCtrlCP, UCtrlCidade, RzCmboBx, UCtrlEstado,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmCadastroCliente = class(TFormCadastroPai)
    TLblCliente: TRzLabel;
    TEdtCliente: TRzEdit;
    TGroupBoxEnderecoCliente: TRzGroupBox;
    TLblLogradouro: TRzLabel;
    TLblNumero: TRzLabel;
    TLblCEP: TRzLabel;
    TLblbairro: TRzLabel;
    TLblObservacoes: TRzLabel;
    TLblCidade: TRzLabel;
    TGroupBoxContatoCliente: TRzGroupBox;
    TLblTelefoneResidencial1: TRzLabel;
    TLblCelular1: TRzLabel;
    TLblFax: TRzLabel;
    TEdtTelefoneResidencial: TRzEdit;
    TEdtTelefoneCelular: TRzEdit;
    TEdtFax: TRzEdit;
    TLblEmail: TRzLabel;
    TEdtEmail: TRzEdit;
    TBtnBuscarCidade: TRzButton;
    TRadioGroupSexo: TRzRadioGroup;
    TRadioBtnM: TRzRadioButton;
    TRadioBtnF: TRzRadioButton;
    TLblID: TRzLabel;
    TEdtIdCliente: TRzEdit;
    TLblIDCidade: TRzLabel;
    TRadioGroupTipo: TRzRadioGroup;
    TRadioBtnJuridico: TRzRadioButton;
    TRadioBtnFisico: TRzRadioButton;
    TEdtTelComercial: TRzEdit;
    TLblTelefoneComercial2: TRzLabel;
    TLblFantasia: TRzLabel;
    TEdtFantasia: TRzEdit;
    TLblCondicaoPagamento: TRzLabel;
    TEdtCondicaoPagamento: TRzEdit;
    TLblIDCondicaoPagamento: TRzLabel;
    TEdtIdCondicaoPagamento: TRzEdit;
    TBtnBuscarCP: TRzBitBtn;
    TEdtLogradouro: TRzEdit;
    TEdtCEP: TRzEdit;
    TEdtIdCidade: TRzEdit;
    TEdtCidade: TRzEdit;
    TEdtBairro: TRzEdit;
    TEdtNumero: TRzEdit;
    TEdtObservacoes: TRzEdit;
    TComboBoxStatus: TRzComboBox;
    Lbl1: TRzLabel;
    TLblRG: TRzLabel;
    TLblCPF: TRzLabel;
    TEdtRG: TRzEdit;
    TEdtCPF: TMaskEdit;
    procedure TRadioBtnFisicoClick(Sender: TObject);
    procedure TRadioBtnJuridicoClick(Sender: TObject);
    procedure TBtnLimparClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TBtnBuscarCidadeClick(Sender: TObject);
    procedure TBtnBuscarCPClick(Sender: TObject);
    procedure TEdtIdCondicaoPagamentoExit(Sender: TObject);
    procedure TEdtIdCidadeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TEdtIdCondicaoPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtClienteKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtNumeroExit(Sender: TObject);
    procedure TEdtClienteExit(Sender: TObject);
    procedure TEdtFantasiaExit(Sender: TObject);
    procedure TEdtCPFExit(Sender: TObject);
    procedure TEdtRGExit(Sender: TObject);
    procedure TEdtLogradouroExit(Sender: TObject);
    procedure TEdtCEPExit(Sender: TObject);
    procedure TEdtBairroExit(Sender: TObject);
    procedure TEdtObservacoesExit(Sender: TObject);
    procedure TEdtTelefoneResidencialExit(Sender: TObject);
    procedure TEdtTelefoneCelularExit(Sender: TObject);
    procedure TEdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure TDateTimePickerDataCadastroExit(Sender: TObject);
    procedure TComboBoxStatusKeyPress(Sender: TObject; var Key: Char);
    procedure TComboBoxStatusClick(Sender: TObject);
    procedure TComboBoxStatusExit(Sender: TObject);
  private
    { Private declarations }
  protected
    UmaCtrlCliente:TCtrlCliente;
    UmClienteF:TClienteFisico;
    UmClienteJ:TClienteJuridico;
    UmFrmConCidade:TFrmConsultarCidade;
    UmFrmConCP:TFrmConsultarCondicaoPagamento;
  public
    { Public declarations }
    procedure ReconhecaObjeto(OClinteF:TClienteFisico;OClienteJ:TClienteJuridico;ACtrlCliente:TCTrlCliente);
    function ValidaCampos:Boolean;
    procedure LimpaCampos;
    procedure Carregar;
    function ValidarCNPJ(CNPJ: String): Boolean;

  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

{$R *.dfm}

procedure TFrmCadastroCliente.Carregar;
begin

end;

procedure TFrmCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
if Self.TRadioBtnFisico.Checked then
begin
     Self.TLblCliente.Caption:='Nome *';
     Self.TLblCPF.Caption:='CPF *';
     Self.TLblRG.Caption:='RG *';
     Self.TLblTelefoneComercial2.Caption:='Telefone Residencial II';
     Self.TLblTelefoneResidencial1.Caption:='Telefone Residencial I *';
     Self.TLblFantasia.Visible:=false;
     Self.TEdtFantasia.Visible:=False;
     Self.TRadioGroupSexo.Visible:=true;
end;
if Self.TRadioBtnJuridico.Checked then
begin
      Self.TLblTelefoneResidencial1.Caption:='Telefone Comercial I *';
      Self.TLblTelefoneComercial2.Caption:='Telefone Comercial II';
      Self.TLblCliente.Caption:= 'RS *';
      Self.TLblRG.Caption:='IE *';
      Self.TLblCPF.Caption:='CNPJ *';
      Self.TRadioGroupSexo.Visible:=false;
      Self.TLblFantasia.Visible:=true;
      Self.TEdtFantasia.Visible:=true;
end;

end;

procedure TFrmCadastroCliente.LimpaCampos;
begin
    Self.TEdtCliente.Clear;
    Self.TEdtIdCliente.Clear;
    Self.TEdtRG.Clear;
    Self.TEdtFantasia.Clear;
    Self.TEdtCPF.Clear;
    Self.TEdtIdCidade.Clear;
    Self.TEdtCidade.Clear;
    Self.TEdtCondicaoPagamento.Clear;
    Self.TEdtIdCondicaoPagamento.Clear;
    Self.TEdtObservacoes.Clear;
    Self.TEdtNumero.Clear;
    Self.TEdtTelefoneResidencial.Clear;
    Self.TEdtTelComercial.Clear;
    Self.TEdtCEP.Clear;
    Self.TEdtBairro.Clear;
    Self.TEdtLogradouro.Clear;
    Self.TEdtTelefoneCelular.Clear;
    Self.TEdtFax.Clear;
    Self.TEdtEmail.Clear;
    Self.TRadioBtnFisico.Checked:=True;
end;

procedure TFrmCadastroCliente.ReconhecaObjeto(OClinteF: TClienteFisico;
  OClienteJ: TClienteJuridico; ACtrlCliente: TCTrlCliente);
begin
    UmClienteF:=OClinteF;
    UmClienteJ:=OClienteJ;
    UmaCtrlCliente:=ACtrlCliente;
    Self.LimpaCampos;
end;

procedure TFrmCadastroCliente.TBtnBuscarCidadeClick(Sender: TObject);
var Aux:string;
begin
  inherited;
  if Self.TRadioBtnFisico.Checked then
  begin
      UmFrmConCidade:=TFrmConsultarCidade.Create(nil);
      UmFrmConCidade.ReconhecaObjeto(UmClienteF.Cidade);
      UmFrmConCidade.TBtnCancelar.Caption:='Selecionar';
      UmFrmConCidade.ShowModal;
      Self.TEdtIdCidade.Text:=IntToStr(UmClienteF.Cidade.IdCidade);
      Self.TEdtCidade.Text:=UmClienteF.Cidade.Cidade;
      Aux:=Self.TEdtTelefoneCelular.Text;
      Self.TEdtTelefoneCelular.Text:='('+UmClienteF.Cidade.Estado.DDD+')'+ Aux;
      Aux:=Self.TEdtTelefoneResidencial.Text;
      Self.TEdtTelefoneResidencial.Text:='('+UmClienteF.Cidade.Estado.DDD+')'+ Aux;
      UmFrmConCidade.Free;
  end
  else if Self.TRadioBtnJuridico.Checked then
  begin
      UmFrmConCidade:=TFrmConsultarCidade.Create(nil);
      UmFrmConCidade.ReconhecaObjeto(UmClienteJ.Cidade);
      UmFrmConCidade.TBtnCancelar.Caption:='Selecionar';
      UmFrmConCidade.ShowModal;
      Self.TEdtIdCidade.Text:=IntToStr(UmClienteJ.Cidade.IdCidade);
      Self.TEdtCidade.Text:=UmClienteJ.Cidade.Cidade;
      Aux:=Self.TEdtTelefoneCelular.Text;
      Self.TEdtTelefoneCelular.Text:='('+UmClienteF.Cidade.Estado.DDD+')'+ Aux;
      Aux:=Self.TEdtTelefoneResidencial.Text;
      Self.TEdtTelefoneResidencial.Text:='('+UmClienteF.Cidade.Estado.DDD+')'+ Aux;
      UmFrmConCidade.Free;
  end;

end;

procedure TFrmCadastroCliente.TBtnBuscarCPClick(Sender: TObject);
begin
  inherited;
  if Self.TRadioBtnJuridico.Checked then
  begin
      UmFrmConCP:=TFrmConsultarCondicaoPagamento.Create(nil);
      UmFrmConCP.ReconhecaObjeto(UmClienteJ.CP);
      UmFrmConCP.TBtnCancelar.Caption:='Selecionar';
      UmFrmConCP.ShowModal;
      Self.TEdtIdCondicaoPagamento.Text:=IntToStr(UmClienteJ.CP.IdCP);
      Self.TEdtCondicaoPagamento.Text:=UmClienteJ.CP.CP;
      UmFrmConCP.Free;
  end
  else if Self.TRadioBtnFisico.Checked then
  begin
      UmFrmConCP:=TFrmConsultarCondicaoPagamento.Create(nil);
      UmFrmConCP.ReconhecaObjeto(UmClienteF.CP);
      UmFrmConCP.TBtnCancelar.Caption:= 'Selecionar';
      UmFrmConCP.ShowModal;
      Self.TEdtIdCondicaoPagamento.Text:= IntToStr(UmClienteF.CP.IdCP);
      Self.TEdtCondicaoPagamento.Text:= UmClienteF.CP.CP;
      UmFrmConCP.Free;
  end;
end;

procedure TFrmCadastroCliente.TBtnLimparClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroCliente.TBtnSalvarClick(Sender: TObject);
var MSG:String;
    AuxInt:integer;
begin
  inherited;
  if Self.ValidaCampos then
  begin
    if Self.TRadioBtnFisico.Checked then
    begin
      if TryStrToInt(Self.TEdtIdCliente.Text,AuxInt ) then
         UmClienteF.Id:=AuxInt
      else
          UmClienteF.Id:=0;
      UmClienteF.Nome:=Self.TEdtCliente.Text;
      UmClienteF.RG:=Self.TEdtRG.Text;
      UmClienteF.CPF:=Self.TEdtCPF.Text;
      if Self.TRadioBtnM.Checked then
        UmClienteF.Sexo:='Masculino';
      if Self.TRadioBtnF.Checked then
        UmClienteF.Sexo:='Feminino';
      UmClienteF.Status:= TComboBoxStatus.Text;
      UmClienteF.CP.IdCP:=StrToInt(Self.TEdtIdCondicaoPagamento.Text);
      UmClienteF.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
      UmClienteF.Observacoes:=Self.TEdtObservacoes.Text;
      UmClienteF.Bairro:=Self.TEdtBairro.Text;
      UmClienteF.Logradouro:=Self.TEdtLogradouro.Text;
      UmClienteF.Numero:=StrToInt(Self.TEdtNumero.Text);
      UmClienteF.Cep:=Self.TEdtCEP.Text;
      UmClienteF.Telefone:=Self.TEdtTelefoneResidencial.Text;
      UmClienteF.Celular:= Self.TEdtTelefoneCelular.Text;
      UmClienteF.Email:=Self.TEdtEmail.Text;
      UmClienteF.Status:=Self.TComboBoxStatus.Text;
      UmClienteF.Fax:=Self.TEdtFax.Text;
      UmClienteF.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
      UmClienteF.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
      UmClienteJ:=nil;
      MSG:=UmaCtrlCliente.Salvar(UmClienteF,1);
    end                                                                                                    
    else if Self.TRadioBtnJuridico.Checked then
    begin
      if TryStrToInt(Self.TEdtIdCliente.Text, AuxInt) then
         UmClienteJ.Id:=AuxInt
      else
         UmClienteJ.Id;
      UmClienteJ.RS:=Self.TEdtCliente.Text;
      UmClienteJ.Fantasia:=Self.TEdtFantasia.Text;
      UmClienteJ.IE:=Self.TEdtRG.Text;
      UmClienteJ.CNPJ:=Self.TEdtCPF.Text;
      UmClienteJ.CP.IdCP:=StrToInt(Self.TEdtIdCondicaoPagamento.Text);
      UmClienteJ.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
      UmClienteJ.Observacoes:=Self.TEdtObservacoes.Text;
      UmClienteJ.Bairro:=Self.TEdtBairro.Text;
      UmClienteJ.Logradouro:=Self.TEdtLogradouro.Text;
      UmClienteJ.Numero:=StrToInt(Self.TEdtNumero.Text);
      UmClienteJ.Cep:=Self.TEdtCEP.Text;
      UmClienteJ.Telefone:=Self.TEdtTelefoneResidencial.Text;
      UmClienteJ.Telefone2:=Self.TEdtTelComercial.Text;
      UmClienteJ.Celular:= Self.TEdtTelefoneCelular.Text;
      UmClienteJ.Status:=Self.TComboBoxStatus.Text;
      UmClienteJ.Celular2:='';
      UmClienteJ.Email:=Self.TEdtEmail.Text;
      UmClienteJ.Fax:=Self.TEdtFax.Text;
      UmClienteJ.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
      UmClienteJ.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
      UmClienteF:=nil;
      MSG:=UmaCtrlCliente.Salvar(UmClienteJ,2);
    end;
  end
  else
    ShowMessage('OS DADOS NÃO ESTÃO SENDO PREENCHIDOS CORRETAMENTE !');
  if Self.ValidaCampos then
  begin
    Self.LimpaCampos;
    ShowMessage(MSG);
    Close;
  end;
end;

procedure TFrmCadastroCliente.TComboBoxStatusClick(Sender: TObject);
begin
  inherited;
   Self.TComboBoxStatus.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TComboBoxStatusExit(Sender: TObject);
begin
  inherited;
  Self.TComboBoxStatus.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TComboBoxStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key:=#0;
end;

procedure TFrmCadastroCliente.TDateTimePickerDataCadastroExit(Sender: TObject);
begin
  inherited;
  Self.TDateTimePickerDataCadastro.DateTime:=now;
end;

procedure TFrmCadastroCliente.TEdtBairroExit(Sender: TObject);
begin
  inherited;
 Self.TEdtBairro.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtCEPExit(Sender: TObject);
begin
  inherited;
 Self.TEdtCEP.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtClienteExit(Sender: TObject);
begin
  inherited;
 Self.TEdtCliente.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if Self.TLblCliente.Caption = 'Nome *' then
   if not (key in ['A'..'Z','a'..'z',#8,#32,'Ç','Ã']) then
     key := #0;
end;

procedure TFrmCadastroCliente.TEdtCPFExit(Sender: TObject);
begin
  inherited;
   Self.TEdtCPF.Color:=clWindow;
 if Self.TRadioBtnFisico.Checked then
 begin
    if not UmClienteF.ValidaCPF(Self.TEdtCPF.Text) then
    begin
       Self.TEdtCPF.Clear;
       ShowMessage('CPF INVALIDO.');
    end;
 end
 else if Self.TRadioBtnJuridico.Checked then
 begin
   if not ValidarCNPJ(Self.TEdtCPF.Text) then
   begin
       Self.TEdtCPF.Clear;
       ShowMessage('CNPJ INVALIDO.');
   end;
 end;
 if UmaCtrlCliente.BuscarCPF_CNPJ(Self.TEdtCPF.Text) then
    if Self.TRadioBtnFisico.Checked then
        ShowMessage('CPF JÁ ESTA CADASTRADO.')
    else if True then
        ShowMessage('CNPJ JÁ ESTA CADASTRADO.');

end;

procedure TFrmCadastroCliente.TEdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not (key in [#8,'0'..'9','/','.','-']) then
     key := #0
else if key in [#8] then
     key := #8
else
begin
    if Self.TRadioBtnFisico.Checked then
    begin
       if Length(TEdtCPF.Text) = 3 then
          begin
             TEdtCPF.Text := TEdtCPF.Text + '.';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);
          end;

       if Length(TEdtCPF.Text) = 7 then
          begin
             TEdtCPF.Text := TEdtCPF.Text + '.';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);
          end;

       if Length(TEdtCPF.Text) = 11 then
          begin
             TEdtCPF.Text := TEdtCPF.Text + '-';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);

          end;
       if Length(Self.TEdtCPF.Text) = 14 then
       begin
            Key:=  #0;

       end;
    end;
    if Self.TRadioBtnJuridico.Checked then
    begin
       //00.000.000/0000-00
       if Length(TEdtCPF.Text) = 2 then
       begin
             TEdtCPF.Text := TEdtCPF.Text + '.';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);

       end;
       if Length(TEdtCPF.Text) = 6 then
       begin
             TEdtCPF.Text := TEdtCPF.Text + '.';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);

       end;
       if Length(TEdtCPF.Text) = 10 then
       begin
             TEdtCPF.Text := TEdtCPF.Text + '/';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);

       end;
       if Length(TEdtCPF.Text) = 15 then
       begin
             TEdtCPF.Text := TEdtCPF.Text + '-';
             TEdtCPF.Selstart := Length(TEdtCPF.Text);

       end;
       if Length(Self.TEdtCPF.Text) = 18 then
       begin
            Key:=  #0;
       end;
    end;
end;

end;

procedure TFrmCadastroCliente.TEdtFantasiaExit(Sender: TObject);
begin
  inherited;
 Self.TEdtFantasia.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtIdCidadeExit(Sender: TObject);
var
  UmaCtrlCidade:TCtrlCidade;
  Aux:string;
begin
inherited;
 Self.TEdtIdCidade.Color:=clWindow;
  if Self.TEdtIdCidade.Text <> '' then
  begin
     Self.TEdtCidade.Clear;
     UmaCtrlCidade:=TCtrlCidade.Create;
     UmClienteF.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
     if not UmaCtrlCidade.Buscar(UmClienteF.Cidade.IdCidade,'') then
     begin
       Self.TEdtIdCidade.Clear;
       Self.TEdtCidade.Clear;
     end
     else
     begin
       UmaCtrlCidade.Carregar(UmClienteF.Cidade);
       Self.TEdtIdCidade.Text:= IntToStr(UmClienteF.Cidade.IdCidade);
       Self.TEdtCidade.Text:=UmClienteF.Cidade.Cidade;
       Aux:=Self.TEdtTelefoneCelular.Text;
       Self.TEdtTelefoneCelular.Text:='('+UmClienteF.Cidade.Estado.DDD+')'+ Aux;
       Aux:=Self.TEdtTelefoneResidencial.Text;
       Self.TEdtTelefoneResidencial.Text:='('+UmClienteF.Cidade.Estado.DDD+')'+ Aux;
     end;
  end
  else
  begin
    Self.TEdtIdCidade.Clear;
    Self.TEdtCidade.Clear;
  end;
end;

procedure TFrmCadastroCliente.TEdtIdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
      key := #0;
end;

procedure TFrmCadastroCliente.TEdtIdCondicaoPagamentoExit(Sender: TObject);
var
   UmaCtrlCP:TCtrlCP;
begin
  inherited;
   Self.TEdtIdCondicaoPagamento.Color:=clWindow;
  if Self.TEdtIdCondicaoPagamento.Text <> '' then
  begin
     Self.TEdtCondicaoPagamento.Clear;
     UmaCtrlCP:=TCtrlCP.Create;
     UmClienteF.CP.IdCP:=StrToInt(Self.TEdtIdCondicaoPagamento.Text);
     if not UmaCtrlCP.Buscar(UmClienteF.CP.IdCP,'') then
     begin
       Self.TEdtIdCondicaoPagamento.Clear;
       Self.TEdtCondicaoPagamento.Clear;
     end
     else
     begin
       UmaCtrlCP.Carregar(UmClienteF.CP);
       Self.TEdtIdCondicaoPagamento.Text:=IntToStr(UmClienteF.CP.IdCP);
       Self.TEdtCondicaoPagamento.Text:=UmClienteF.CP.CP;
     end;
  end
  else
  begin
    Self.TEdtIdCondicaoPagamento.Clear;
    Self.TEdtCondicaoPagamento.Clear;
  end;
end;

procedure TFrmCadastroCliente.TEdtIdCondicaoPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8]) then
      key := #0;
end;

procedure TFrmCadastroCliente.TEdtLogradouroExit(Sender: TObject);
begin
  inherited;
 Self.TEdtLogradouro.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtNumeroExit(Sender: TObject);
begin
  inherited;
  Self.TEdtNumero.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
      key := #0;
end;

procedure TFrmCadastroCliente.TEdtObservacoesExit(Sender: TObject);
begin
  inherited;
 Self.TEdtObservacoes.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtRGExit(Sender: TObject);
begin
  inherited;
 Self.TEdtRG.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtTelefoneCelularExit(Sender: TObject);
begin
  inherited;
 Self.TEdtTelefoneCelular.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TEdtTelefoneResidencialExit(Sender: TObject);
begin
  inherited;
 Self.TEdtTelefoneResidencial.Color:=clWindow;
end;

procedure TFrmCadastroCliente.TRadioBtnFisicoClick(Sender: TObject);
begin
  inherited;
     Self.TLblCliente.Caption:='Nome *';
     Self.TLblCPF.Caption:='CPF *';
     Self.TLblRG.Caption:='RG *';
     Self.TLblTelefoneComercial2.Caption:='Telefone Residencial II';
     Self.TLblTelefoneResidencial1.Caption:='Telefone Residencial I *';
     Self.TLblFantasia.Visible:=False;
     Self.TEdtFantasia.Visible:=False;
     Self.TRadioGroupSexo.Visible:=True;
     Self.TEdtCliente.Clear;
     Self.TEdtFantasia.Clear;
     Self.TEdtRG.Clear;
     Self.TEdtCPF.Clear;
     Self.TEdtCPF.MaxLength:=14;
end;

procedure TFrmCadastroCliente.TRadioBtnJuridicoClick(Sender: TObject);
begin
  inherited;
        Self.TLblTelefoneResidencial1.Caption:='Telefone Comercial I *';
        Self.TLblTelefoneComercial2.Caption:='Telefone Comercial II';
        Self.TLblCliente.Caption:= 'RS *';
        Self.TLblRG.Caption:='IE *';
        Self.TLblCPF.Caption:='CNPJ *';
        Self.TRadioGroupSexo.Visible:=False;
        Self.TLblFantasia.Visible:=True;
        Self.TEdtFantasia.Visible:=True;
        Self.TEdtCliente.Clear;
        Self.TEdtFantasia.Clear;
        Self.TEdtRG.Clear;
        Self.TEdtCPF.Clear;
        Self.TEdtCPF.MaxLength:=18;
end;

function TFrmCadastroCliente.ValidaCampos: Boolean;
begin
    if Length(Self.TEdtCliente.Text) < 3 then
    begin
          Self.TEdtCliente.Color:=clWebSteelBlue;
          Self.TEdtCliente.SetFocus;
          Result:=False;
          exit;
    end;
    if (Self.TRadioBtnJuridico.Checked) and (Length(Self.TEdtFantasia.Text) < 2) then
    begin
          Self.TEdtFantasia.Color:=clWebSteelBlue;
          Self.TEdtFantasia.SetFocus;
          Result:=False;
          exit;
    end;
    if Self.TRadioBtnFisico.Checked and  (not UmClienteF.ValidaCPF(Self.TEdtCPF.Text)) then
    begin
          Self.TEdtCPF.Color:=clWebSteelBlue;
          Self.TEdtCPF.SetFocus;
          Result:=False;
          exit;
    end;
    if Self.TComboBoxStatus.Text = '' then
    begin
          Self.TComboBoxStatus.Color:=clWebSteelBlue;
          Self.TComboBoxStatus.SetFocus;
          Result:=False;
          exit;
    end;
    if (Self.TRadioBtnJuridico.Checked) and (Length(Self.TEdtCPF.Text) < 15) then
    begin
          Self.TEdtCPF.Color:=clWebSteelBlue;
          Self.TEdtCPF.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtRG.Text) < 12  then
    begin
          Self.TEdtRG.Color:=clWebSteelBlue;
          Self.TEdtRg.SetFocus;
          Result:=False;
          exit;
    end;
    if Self.TEdtCondicaoPagamento.Text = '' then
    begin
          Self.TEdtIdCondicaoPagamento.Color:=clWebSteelBlue;
          Self.TEdtIdCondicaoPagamento.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtLogradouro.Text) < 3 then
    begin
          Self.TEdtLogradouro.Color:=clWebSteelBlue;
          Self.TEdtLogradouro.SetFocus;
          Result:=False;
          exit;
    end;
    if not isNum(self.TEdtNumero.Text)then
    begin
          Self.TEdtNumero.Color:=clWebSteelBlue;
          Self.TEdtNumero.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtCEP.Text)< 8 then
    begin
          Self.TEdtCEP.Color:=clWebSteelBlue;
          Self.TEdtCEP.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtBairro.Text) <  3 then
    begin
          Self.TEdtBairro.Color:=clWebSteelBlue;
          Self.TEdtBairro.SetFocus;
          Result:=False;
          exit;
    end;
    if Self.TEdtCidade.Text = '' then
    begin
          Self.TEdtIdCidade.Color:=clWebSteelBlue;
          Self.TEdtIdCidade.SetFocus;
          Result:=False;
          exit;
    end;
    if (Length(Self.TEdtTelefoneResidencial.Text) < 8) or (Length(Self.TEdtTelefoneResidencial.Text) > 15) then
    begin
          Self.TEdtTelefoneResidencial.Color:=clWebSteelBlue;
          Self.TEdtTelefoneResidencial.SetFocus;
          Result:=False;
          exit;
    end;
    if (Length(Self.TEdtTelefoneCelular.Text) < 8) or (Length(Self.TEdtTelefoneCelular.Text) > 15) then
    begin
          Self.TEdtTelefoneCelular.Color:=clWebSteelBlue;
          Self.TEdtTelefoneCelular.SetFocus;
          Result:=False;
          exit;
    end;
    if (Length(Self.TEdtTelComercial.Text) > 15) then
    begin
          Self.TEdtTelComercial.Color:=clWebSteelBlue;
          Self.TEdtTelComercial.SetFocus;
          Result:=False;
          exit;
    end
    else
        Result:=True;
end;
function TFrmCadastroCliente.ValidarCNPJ(CNPJ: String): Boolean;
var vCNPJ, vDigito: String;
    DF1, DF2: Integer;
begin
  Result := False;

  vCNPJ := CNPJ;

  // Removendo caracteres especiais
  vCNPJ := StringReplace( vCNPJ, '.', '', [rfReplaceAll] );
  vCNPJ := StringReplace( vCNPJ, '-', '', [rfReplaceAll] );
  vCNPJ := StringReplace( vCNPJ, '/', '', [rfReplaceAll] );

  // Verificar tamanho dos dígitos do CNPJ
  if ( Length( vCNPJ ) <> 14 ) then
    Exit;

  // Armazena o número do CNPJ e o digito separados
  vDigito := Copy( vCNPJ, 13, 02 );
  vCNPJ   := Copy( vCNPJ, 01, 12 );

  // Somar e multiplicar os pesos do digito 1 em cada número
  DF1 :=       (StrToInt(vCNPJ[01])*05) + (StrToInt(vCNPJ[02])*04);
  DF1 := DF1 + (StrToInt(vCNPJ[03])*03) + (StrToInt(vCNPJ[04])*02) + (StrToInt(vCNPJ[05])*09);
  DF1 := DF1 + (StrToInt(vCNPJ[06])*08) + (StrToInt(vCNPJ[07])*07) + (StrToInt(vCNPJ[08])*06);
  DF1 := DF1 + (StrToInt(vCNPJ[09])*05) + (StrToInt(vCNPJ[10])*04) + (StrToInt(vCNPJ[11])*03) + (StrToInt(vCNPJ[12])*02);

  // Cálculo da diferença de 11 com o resto de DF1
  DF1 := 11 - ( DF1 mod 11 );

  // Se o resultado anterior for maior ou igual a 10, o dígito 1 é 0,
  // caso contrário, o digito 1 é o próprio resultado.
  if DF1 >= 10 then DF1 := 0;

  // Somar e multiplicar os pesos do digito 2 em cada número
  DF2 :=       (StrToInt(vCNPJ[01])*06) + (StrToInt(vCNPJ[02])*05);
  DF2 := DF2 + (StrToInt(vCNPJ[03])*04) + (StrToInt(vCNPJ[04])*03) + (StrToInt(vCNPJ[05])*02);
  DF2 := DF2 + (StrToInt(vCNPJ[06])*09) + (StrToInt(vCNPJ[07])*08) + (StrToInt(vCNPJ[08])*07);
  DF2 := DF2 + (StrToInt(vCNPJ[09])*06) + (StrToInt(vCNPJ[10])*05) + (StrToInt(vCNPJ[11])*04) + (StrToInt(vCNPJ[12])*03);

  // Somar o resultado do digito 2 com o dobro do digito 1
  DF2 := DF2 + ( DF1 * 2 );

  // Cálculo da diferença de 11 com o resto de DF2
  DF2 := 11 - ( DF2 mod 11 );

  // Se o resultado anterior for maior ou igual a 10, o dígito 2 é 0,
  // caso contrário, o digito 2 é o próprio resultado.
  if DF2 >= 10 then DF2 := 0;

  // Retorna verdadeiro ou falso, caso o dígito informado coincida ou não com o calculado
  Result := vDigito = IntToStr(DF1) + IntToStr(DF2);
end;


end.
