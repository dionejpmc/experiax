unit UFrmCadastroFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, ComCtrls, RzDTP, RzButton, StdCtrls, Mask, RzEdit,
  RzRadChk, RzLabel, ExtCtrls, RzPanel, RzRadGrp, UFuncionario, UCtrlFuncionario,
  UCargo, UCtrlCargo, UFrmConsultarCidade, UCtrlCidade, UFrmConsultarCargo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsForm;

type
  TFrmCadastroFuncionario = class(TFormCadastroPai)
    TLblFuncionario: TRzLabel;
    TLblCargo: TRzLabel;
    TEdtFuncionario: TRzEdit;
    TEdtcargo: TRzEdit;
    TBtnBuscarCargo: TRzBitBtn;
    TGroupBoxEnderecoFuncionario: TRzGroupBox;
    TLblLogradouro: TRzLabel;
    TLblNumero: TRzLabel;
    TLblCEP: TRzLabel;
    TLblbairro: TRzLabel;
    TLblObservacoes: TRzLabel;
    TLblCidade: TRzLabel;
    TEdtCidade: TRzEdit;
    TBtnBuscarCidade: TRzButton;
    TGroupBoxContatoFuncionario: TRzGroupBox;
    TLblTelefoneResidencial1: TRzLabel;
    TLblCelular1: TRzLabel;
    TLblFax: TRzLabel;
    TLblEmail: TRzLabel;
    TEdtTelefoneCelular: TRzEdit;
    TEdtLogradouro: TRzEdit;
    TEdtCEP: TRzEdit;
    TEdtBairro: TRzEdit;
    TEdtObservacoe: TRzEdit;
    TEdtNumero: TRzEdit;
    TLblIdFuncionario: TRzLabel;
    TLblIdCargo: TRzLabel;
    TEdtIdCargo: TRzEdit;
    TLblIdCidade: TRzLabel;
    TEdtIdCidade: TRzEdit;
    RzGroupBox1: TRzGroupBox;
    TRadioGroupSexo: TRzRadioGroup;
    TRadioBtnMasculino: TRzRadioButton;
    TRadioBtnFeminino: TRzRadioButton;
    TLblDataAdmicao: TRzLabel;
    TLblDataDemi��o: TRzLabel;
    TLblCPF: TRzLabel;
    TEdtCTPS: TRzEdit;
    TEdtRG: TRzEdit;
    TDateTimeDataAdmicao: TRzDateTimePicker;
    tGroupBoxStatus: TRzGroupBox;
    TRadioBtnAtivo: TRzRadioButton;
    TRadioBtnInativo: TRzRadioButton;
    TDateTimeDataDemicao: TRzDateTimePicker;
    TLblCTPS: TRzLabel;
    TLblRG: TRzLabel;
    TEdtIdFuncionario: TRzEdit;
    TEdtTelefoneResidencial: TRzMaskEdit;
    TEdtFax: TRzMaskEdit;
    TEdtEmail: TRzMaskEdit;
    TEdtCPF: TRzMaskEdit;
    TLblDataNascimento: TRzLabel;
    TDateTimePickerDataNascimento: TRzDateTimePicker;
    procedure ActivateFrmFields();
    procedure FormCreate(Sender: TObject);
    procedure TRadioBtnAtivoClick(Sender: TObject);
    procedure TRadioBtnInativoClick(Sender: TObject);
    procedure TBtnBuscarCargoClick(Sender: TObject);
    procedure TBtnBuscarCidadeClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TBtnLimparClick(Sender: TObject);
    procedure TEdtFuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtcargoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtLogradouroKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtObservacoeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdFuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdCargoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdCargoExit(Sender: TObject);
    procedure TEdtIdCidadeExit(Sender: TObject);
    procedure TEdtFuncionarioExit(Sender: TObject);
    procedure TEdtLogradouroExit(Sender: TObject);
    procedure TEdtNumeroExit(Sender: TObject);
    procedure TEdtCEPExit(Sender: TObject);
    procedure TEdtBairroExit(Sender: TObject);
    procedure TEdtTelefoneResidencialExit(Sender: TObject);
    procedure TEdtTelefoneCelularExit(Sender: TObject);
    procedure TEdtRGExit(Sender: TObject);
    procedure TEdtCPFExit(Sender: TObject);
    procedure TEdtCTPSExit(Sender: TObject);
    procedure TEdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtCEPKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
   { Protected declarations }
    UmFuncionario:TFuncionario;
    UmaCtrlFuncionario:TCtrlFuncionario;
    UmFrmConCargo:TFrmConsultarCargo;
    UmFrmConCidade:TFrmConsultarCidade;

  public
    { Public declarations }
    function ReconhecaObjeto(OFuncionario:TFuncionario;ACtrlFuncionario:TCtrlFuncionario):Boolean;
    function ValidaCampos:Boolean;
    procedure LimpaCampos;
    procedure Carregar;
  end;

var
  FrmCadastroFuncionario: TFrmCadastroFuncionario;

implementation

{$R *.dfm}
procedure  TFrmCadastroFuncionario.ActivateFrmFields;
begin
    if Self.TRadioBtnAtivo.Checked  then
    begin
       Self.TDateTimeDataDemicao.Visible:=False;
       Self.TLblDataDemi��o.Visible:=False;
    end;
    if Self.TRadioBtnInativo.Checked then
    begin
      Self.TDateTimeDataDemicao.Visible:=True;
      Self.TLblDataDemi��o.Visible:=True;
    end;
end;

procedure TFrmCadastroFuncionario.Carregar;
begin

end;

procedure TFrmCadastroFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
   Self.ActivateFrmFields;
end;

procedure TFrmCadastroFuncionario.LimpaCampos;
begin
    Self.TEdtIdFuncionario.Clear;
    Self.TEdtFuncionario.Clear;
    Self.TEdtcargo.Clear;
    Self.TEdtIdCargo.Clear;
    Self.TEdtCidade.Clear;
    Self.TEdtIdCidade.Clear;
    Self.TEdtLogradouro.Clear;
    Self.TEdtNumero.Clear;
    Self.TEdtCEP.Clear;
    Self.TEdtBairro.Clear;
    Self.TEdtTelefoneResidencial.Clear;
    self.TEdtTelefoneCelular.Clear;
    Self.TEdtFax.Clear;
    Self.TEdtEmail.Clear;
    Self.TEdtRG.Clear;
    Self.TEdtCPF.Clear;
    Self.TEdtCTPS.Clear;
    Self.TEdtObservacoe.Clear;
    Self.TRadioBtnInativo.Checked:=False;
    Self.TRadioBtnAtivo.Checked:=True;

end;

function TFrmCadastroFuncionario.ReconhecaObjeto(OFuncionario: TFuncionario;
  ACtrlFuncionario: TCtrlFuncionario): Boolean;
begin
    UmFuncionario:=OFuncionario;
    UmaCtrlFuncionario:=ACtrlFuncionario;
end;

procedure TFrmCadastroFuncionario.TBtnBuscarCargoClick(Sender: TObject);
begin
  inherited;
  UmFrmConCargo:=TFrmConsultarCargo.Create(nil);
  UmFrmConCargo.ReconhecaObjeto(UmFuncionario.Cargo);
  UmFrmConCargo.TBtnCancelar.Caption:='Selecionar';
  UmFrmConCargo.ShowModal;
  Self.TEdtIdCargo.Text:=IntToStr(UmFuncionario.Cargo.IdCargo);
  Self.TEdtcargo.Text:=UmFuncionario.Cargo.Cargo;
  UmFrmConCargo.Free;

end;

procedure TFrmCadastroFuncionario.TBtnBuscarCidadeClick(Sender: TObject);
begin
  inherited;
  UmFrmConCidade:=TFrmConsultarCidade.Create(nil);
  UmFrmConCidade.ReconhecaObjeto(UmFuncionario.Cidade);
  UmFrmConCidade.TBtnCancelar.Caption:='Selecionar';
  UmFrmConCidade.ShowModal;
  Self.TEdtIdCidade.Text:=IntToStr(UmFuncionario.Cidade.IdCidade);
  Self.TEdtCidade.Text:=UmFuncionario.Cidade.Cidade;
end;

procedure TFrmCadastroFuncionario.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroFuncionario.TBtnLimparClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroFuncionario.TBtnSalvarClick(Sender: TObject);
var MSG:string;
    IntValue:integer;
begin
  inherited;
  if Self.ValidaCampos then
  begin
    if TryStrToInt(Self.TEdtIdFuncionario.Text, IntValue) then
       UmFuncionario.Id:=IntValue
    else
       UmFuncionario.Id:=0;
    UmFuncionario.Nome:=Self.TEdtFuncionario.Text;
    UmFuncionario.Cargo.Cargo:=Self.TEdtcargo.Text;
    UmFuncionario.Cargo.IdCargo:=StrToInt(Self.TEdtIdCargo.Text);
    UmFuncionario.Cidade.IdCidade:=StrToInt( Self.TEdtIdCidade.Text);
    UmFuncionario.Cidade.Cidade:=Self.TEdtCidade.Text;
    UmFuncionario.Logradouro:=Self.TEdtLogradouro.Text;
    UmFuncionario.Numero:=StrToInt(Self.TEdtNumero.Text);
    UmFuncionario.Cep:= Self.TEdtCEP.Text;
    UmFuncionario.Bairro:=Self.TEdtBairro.Text;
    UmFuncionario.Telefone:=Self.TEdtTelefoneResidencial.Text;
    UmFuncionario.Celular:=Self.TEdtTelefoneCelular.Text;
    UmFuncionario.Fax:=Self.TEdtFax.Text;
    UmFuncionario.Email:=Self.TEdtEmail.Text;
    if Self.TRadioBtnMasculino.Checked then
       UmFuncionario.sexo:= 'M'
    else if Self.TRadioBtnFeminino.Checked then
       UmFuncionario.Sexo:='F';
    if Self.TRadioBtnAtivo.Checked then
      UmFuncionario.Status:=1
    else if Self.TRadioBtnInativo.Checked then
      UmFuncionario.Status:=0;
    UmFuncionario.RG:= Self.TEdtRG.Text;
    UmFuncionario.CPF:=  Self.TEdtCPF.Text;
    UmFuncionario.CTPS:=  Self.TEdtCTPS.Text;
    UmFuncionario.DataNascimento:=DateTimeToStr(TDateTimePickerDataNascimento.DateTime);
    UmFuncionario.Observacoes:=  Self.TEdtObservacoe.Text;
    UmFuncionario.DataAdmicao:=  DateTimeToStr(Self.TDateTimeDataAdmicao.DateTime);
    UmFuncionario.DataDemicao:=  DateTimeToStr(Self.TDateTimeDataDemicao.DateTime);

  end;
  if Self.ValidaCampos then
  begin
    MSG:= UmaCtrlFuncionario.Salvar(UmFuncionario);
    ShowMessage(MSG);
    Self.LimpaCampos;
    Close;
  end;
end;

procedure TFrmCadastroFuncionario.TEdtBairroExit(Sender: TObject);
begin
  inherited;
    Self.TEdtCEP.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if not (key in ['A'..'Z',#8,#32,'�','.']) then
      key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtcargoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtCEPExit(Sender: TObject);
begin
  inherited;
     Self.TEdtCEP.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtCEPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in [#8,#32,'0'..'9']) then
     key := #0;
  if (Length(Self.TEdtCEP.Text) = 5) and (not (key in [#8])) then
  begin
    Self.TEdtCEP.Text:=Self.TEdtCEP.Text+'-';
    Self.TEdtCEP.SelStart:=Length(Self.TEdtCEP.Text);
  end;

end;

procedure TFrmCadastroFuncionario.TEdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtCPFExit(Sender: TObject);
begin
  inherited;
    Self.TEdtCPF.Color:=clWindow;
    if not UmFuncionario.ValidaCPF(Self.TEdtCPF.Text) then
    begin
       Self.TEdtCPF.Clear;
       ShowMessage('CPF INVALIDO.');
     end;
end;

procedure TFrmCadastroFuncionario.TEdtCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
//000.000.000-00
if not (key in [#8,'0'..'9','/','.','-']) then
     key := #0
else if key in [#8] then
     key := #8
else
begin
       if Length(TEdtCPF.Text) = 3 then
          begin
             TEdtCPF.Text :=TEdtCPF.Text + '.';
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
end;

procedure TFrmCadastroFuncionario.TEdtCTPSExit(Sender: TObject);
begin
  inherited;
    Self.TEdtCTPS.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtFuncionarioExit(Sender: TObject);
begin
  inherited;
    Self.TEdtFuncionario.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtIdCargoExit(Sender: TObject);
var UmaCtrlCargo:TCtrlCargo;
begin
  inherited;
  Self.TEdtIdCargo.Color:=clWindow;
  if Self.TEdtIdCargo.Text <> ''  then
  begin
    Self.TEdtcargo.Clear;
    UmaCtrlCargo:=TCtrlCargo.Create;
    UmFuncionario.Cargo.IdCargo:=StrToInt(Self.TEdtIdCargo.Text);
    UmFuncionario.Cargo.Cargo:=Self.TEdtcargo.Text;
    if not UmaCtrlCargo.Buscar(UmFuncionario.Cargo.IdCargo,'') then
    begin
      ShowMessage('NENHUM REGISTRO ENCONTRADO.!');
      Self.TEdtIdCargo.Clear;
      Self.TEdtcargo.Clear;
      Self.TEdtIdCargo.SetFocus;
    end
    else
    begin
      UmaCtrlCargo.Carregar(UmFuncionario.Cargo);
      Self.TEdtIdCargo.Text:=IntToStr(UmFuncionario.Cargo.IdCargo);
      Self.TEdtcargo.Text:=UmFuncionario.Cargo.Cargo;
    end;
  end
  else
  begin
    Self.TEdtIdCargo.Clear;
    Self.TEdtcargo.Clear;
    Self.TEdtIdCargo.SetFocus;
  end;
end;

procedure TFrmCadastroFuncionario.TEdtIdCargoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtIdCidadeExit(Sender: TObject);
var UmaCtrlCidade:TCtrlCidade;
begin
  inherited;
    Self.TEdtIdCidade.Color:=clWindow;
  if Self.TEdtIdCidade.Text <> ''  then
  begin
    Self.TEdtCidade.Clear;
    UmaCtrlCidade:=TCtrlCidade.Create;
    UmFuncionario.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
    UmFuncionario.Cidade.Cidade:=Self.TEdtCidade.Text;
    if not UmaCtrlCidade.Buscar(UmFuncionario.Cidade.IdCidade,'') then
    begin
      ShowMessage('NENHUM REGISTRO ENCONTRADO!');
      Self.TEdtIdCidade.Clear;
      Self.TEdtCidade.Clear;
      Self.TEdtIdCidade.SetFocus;
    end
    else
    begin
      UmaCtrlCidade.Carregar(UmFuncionario.Cidade);
      Self.TEdtIdCidade.Text:=IntToStr(UmFuncionario.Cidade.IdCidade);
      Self.TEdtCidade.Text:=UmFuncionario.Cidade.Cidade;
    end;
  end
  else
  begin
    Self.TEdtIdCidade.Clear;
    Self.TEdtCidade.Clear;
    Self.TEdtIdCidade.SetFocus;
  end;
end;

procedure TFrmCadastroFuncionario.TEdtIdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtIdFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtLogradouroExit(Sender: TObject);
begin
  inherited;
  Self.TEdtLogradouro.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtLogradouroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtNumeroExit(Sender: TObject);
begin
  inherited;
  Self.TEdtNumero.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtObservacoeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if not (key in ['A'..'Z','a'..'z',#8,#32,'�']) then
      key := #0;
end;

procedure TFrmCadastroFuncionario.TEdtRGExit(Sender: TObject);
begin
  inherited;
    Self.TEdtRG.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtTelefoneCelularExit(Sender: TObject);
begin
  inherited;
    Self.TEdtTelefoneCelular.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TEdtTelefoneResidencialExit(Sender: TObject);
begin
  inherited;
    Self.TEdtTelefoneResidencial.Color:=clWindow;
end;

procedure TFrmCadastroFuncionario.TRadioBtnAtivoClick(Sender: TObject);
begin
  inherited;
  Self.ActivateFrmFields;
end;

procedure TFrmCadastroFuncionario.TRadioBtnInativoClick(Sender: TObject);
begin
  inherited;
  Self.ActivateFrmFields;
end;

function TFrmCadastroFuncionario.ValidaCampos: Boolean;
begin
     if Length(Self.TEdtFuncionario.Text) < 3 then
    begin
              Self.TEdtFuncionario.Color:=clWebSteelBlue;
              Self.TEdtFuncionario.SetFocus;
              Result:=False;
              exit;
    end;
    if Length(Self.TEdtcargo.Text) < 3 then
    begin
          Self.TEdtIdCargo.Color:=clWebSteelBlue;
          Self.TEdtIdCargo.SetFocus;
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
    if Length(Self.TEdtCEP.Text)< 9 then
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
    if Length(Self.TEdtTelefoneResidencial.Text) < 8 then
    begin
          Self.TEdtTelefoneResidencial.Color:=clWebSteelBlue;
          Self.TEdtTelefoneResidencial.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtTelefoneCelular.Text) < 8 then
    begin
          Self.TEdtTelefoneCelular.Color:=clWebSteelBlue;
          Self.TEdtTelefoneCelular.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtRG.Text) < 12  then
    begin
          Self.TEdtRG.Color:=clWebSteelBlue;
          Self.TEdtRG.SetFocus;
          Result:=False;
          ShowMessage(' PREENCHA COM TODOS OS CAMPOS, EX: 10.111.111-1');
          exit;
    end;
    if Length(Self.TEdtCPF.Text) < 14 then
    begin
          Self.TEdtCPF.Color:=clWebSteelBlue;
          Self.TEdtCPF.SetFocus;
          Result:=False;
          exit;
    enD;
    if Length(Self.TEdtCTPS.Text) < 12 then
    begin
          Self.TEdtCTPS.Color:=clWebSteelBlue;
          Self.TEdtCTPS.SetFocus;
          Result:=False;
          exit;
    end
    else
        Result:=True;
end;

end.
