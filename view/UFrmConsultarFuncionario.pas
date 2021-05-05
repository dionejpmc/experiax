unit UFrmConsultarFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, Grids, DBGrids, RzDBGrid, ExtCtrls,
  RzPanel, StdCtrls, Mask, RzEdit, RzLabel,UFuncionario, UCtrlFuncionario,
  UFrmCadastroFuncionario, UDM, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsForm;

type
  TFrmConsultarFuncionario = class(TFrmConsultarPai)
    TGroupBoxFuncionario: TRzGroupBox;
    TDBGridFuncionario: TRzDBGrid;
    TLblFuncionario: TRzLabel;
    TEdtFuncionario: TRzEdit;
    TBtnBuscarFuncionario: TRzButton;
    TLblId: TRzLabel;
    TEdtIdFuncionario: TRzEdit;
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnExcluirClick(Sender: TObject);
    procedure TEdtIdFuncionarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    UmFuncionario:TFuncionario;
    UmaCtrlFuncionario:TCtrlFuncionario;
    UmFrmCadFuncionario:TFrmCadastroFuncionario;
  public
    { Public declarations }
    procedure ReconhecaObjeto(OFuncionario:TFuncionario);
  end;

var
  FrmConsultarFuncionario: TFrmConsultarFuncionario;

implementation

{$R *.dfm}

procedure TFrmConsultarFuncionario.ReconhecaObjeto(OFuncionario: TFuncionario);
begin
    UmFuncionario:=OFuncionario;
    UmaCtrlFuncionario:=TCtrlFuncionario.Create;
    UmFrmCadFuncionario:=TFrmCadastroFuncionario.Create(nil);
    Self.TDBGridFuncionario.DataSource:=UmaCtrlFuncionario.GetDs;
end;

procedure TFrmConsultarFuncionario.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  If self.TBtnCancelar.Caption = 'Selecionar' then
     UmFuncionario:=TFuncionario( UmaCtrlFuncionario.Carregar(UmFuncionario));
  close;
end;

procedure TFrmConsultarFuncionario.TBtnEditarClick(Sender: TObject);
begin
  inherited;
  UmFrmCadFuncionario.ReconhecaObjeto( UmFuncionario,UmaCtrlFuncionario);
  UmaCtrlFuncionario.Carregar(UmFuncionario);
  if UmaCtrlFuncionario.Buscar(UmFuncionario.Id, '') then
  begin
      UmFrmCadFuncionario.TDateTimeDataAdmicao.DateTime:=StrToDateTime(UmFuncionario.DataAdmicao);
      UmFrmCadFuncionario.TDateTimeDataDemicao.DateTime:=StrToDateTime(UmFuncionario.DataDemicao);
      UmFrmCadFuncionario.TDateTimePickerDataNascimento.DateTime:=StrToDateTime(UmFuncionario.DataNascimento);
      UmFrmCadFuncionario.TEdtIdFuncionario.Text:=IntToStr(UmFuncionario.Id);
      UmFrmCadFuncionario.TEdtFuncionario.Text:=UmFuncionario.Nome;
      UmFrmCadFuncionario.TEdtIdCargo.Text:=IntToStr(UmFuncionario.Cargo.IdCargo);
      UmFrmCadFuncionario.TEdtcargo.Text:=UmFuncionario.Cargo.Cargo;
      UmFrmCadFuncionario.TEdtLogradouro.Text:=UmFuncionario.Logradouro;
      UmFrmCadFuncionario.TEdtNumero.Text:=IntToStr(UmFuncionario.Numero);
      UmFrmCadFuncionario.TEdtBairro.Text:=UmFuncionario.Bairro;
      UmFrmCadFuncionario.TEdtCEP.Text:=UmFuncionario.Cep;
      UmFrmCadFuncionario.TEdtIdCidade.Text:=IntToStr(UmFuncionario.Cidade.IdCidade);
      UmFrmCadFuncionario.TEdtCidade.Text:=UmFuncionario.Cidade.Cidade;
      UmFrmCadFuncionario.TEdtObservacoe.Text:=UmFuncionario.Observacoes;
      UmFrmCadFuncionario.TEdtTelefoneCelular.Text:=UmFuncionario.Celular;
      UmFrmCadFuncionario.TEdtTelefoneResidencial.Text:=UmFuncionario.Telefone;
      UmFrmCadFuncionario.TEdtFax.Text:=UmFuncionario.Fax;
      UmFrmCadFuncionario.TEdtEmail.Text:=UmFuncionario.Email;
      UmFrmCadFuncionario.TEdtCPF.Text:=UmFuncionario.CPF;
      UmFrmCadFuncionario.TEdtRG.Text:=UmFuncionario.RG;
      UmFrmCadFuncionario.TEdtCTPS.Text:=UmFuncionario.CTPS;
      {UmFrmCadFuncionario.TDateTimeDataAdmicao.DateTime:=StrToDateTime(UmFuncionario.DataAdmicao);
      UmFrmCadFuncionario.TDateTimeDataDemicao.DateTime:=StrToDateTime(UmFuncionario.DataDemicao);��}
      UmFrmCadFuncionario.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(UmFuncionario.DataCadastro);
      UmFrmCadFuncionario.TDateTimePickerDataAlteracao.DateTime:=Now;
      UmFrmCadFuncionario.TDateTimePickerDataNascimento.DateTime:=Now - (365 * 24);
      UmFrmCadFuncionario.TRadioBtnInativo.Visible:=True;
      UmFrmCadFuncionario.TRadioBtnInativo.Enabled:=True;
      UmFrmCadFuncionario.ShowModal;
      UmFrmCadFuncionario.LimpaCampos;

  end
  else
    ShowMessage('O FUNCIONARIO SELECIONADO N�O EXISTE.');
end;

procedure TFrmConsultarFuncionario.TBtnExcluirClick(Sender: TObject);
begin
  inherited;
  UmaCtrlFuncionario.Carregar(UmFuncionario);
  if (MessageDlg('DESEJA REALIZAR A EXCLUS�O DOS DADOS.', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
  begin
      if UmaCtrlFuncionario.Buscar(UmFuncionario.Id,'') then
      begin
          ShowMessage(UmaCtrlFuncionario.Excluir(UmFuncionario));
      end
      else
          ShowMessage('O FUNCIONARIO SELECIONADO N�O EXISTE.');
  end;
end;

procedure TFrmConsultarFuncionario.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmFrmCadFuncionario.ReconhecaObjeto(UmFuncionario,UmaCtrlFuncionario);

  UmFrmCadFuncionario.TDateTimePickerDataAlteracao.Visible:=False;
  UmFrmCadFuncionario.TDateTimeDataAdmicao.DateTime:=Now;
  UmFrmCadFuncionario.TDateTimeDataDemicao.DateTime:=Now;
  UmFrmCadFuncionario.TLblDataAlteracao.Visible:=False;
  UmFrmCadFuncionario.ShowModal;
  UmFrmCadFuncionario.LimpaCampos;
end;

procedure TFrmConsultarFuncionario.TEdtIdFuncionarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z',#8]) then
     key := #0;
end;

end.
