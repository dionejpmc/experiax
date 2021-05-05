unit UFrmConsultarCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, Grids, DBGrids, RzDBGrid, ExtCtrls, RzPanel,
  RzButton, StdCtrls, Mask, RzEdit, RzLabel, RzStatus,UDM,DB,UCidade,UEstado,
  UFrmCadastroCidade,UCtrlCidade, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarCidade = class(TFrmConsultarPai)
    TGroupBoxCidade: TRzGroupBox;
    TDBGridCidade: TRzDBGrid;
    TLblCidade: TRzLabel;
    TEdtCidade: TRzEdit;
    TBtnBuscarCidade: TRzButton;
    TLblID: TRzLabel;
    TEdtIdCidade: TRzMaskEdit;
    procedure TEdtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnBuscarCidadeClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  protected
    UmaCidade:TCidade;
    UmaCtrlCidade:TCtrlCidade;
    UmFrmCadcidade:TFrmCadastroCidade;
  public
    { Public declarations }
    procedure ReconhecaObjeto(ACidade:TCidade);
  end;
 var
  FrmConsultarCidade: TFrmConsultarCidade;

implementation



{$R *.dfm}

procedure TFrmConsultarCidade.ReconhecaObjeto(ACidade: TCidade);
begin
    UmaCidade:=ACidade;
    UmaCtrlCidade:=TCtrlCidade.create;
    UmFrmCadcidade:=TFrmCadastroCidade.Create(nil);
    Self.TDBGridCidade.DataSource:=UmaCtrlCidade.GetDs;
end;

procedure TFrmConsultarCidade.TBtnBuscarCidadeClick(Sender: TObject);
begin
  inherited;
  if (Self.TEdtIdCidade.Text <> '') then
     UmaCtrlCidade.Buscar(StrtoInt(Self.TEdtIdCidade.Text),'');
  if (Self.TEdtCidade.Text <> '') then
    UmaCtrlCidade.Buscar(0,Self.TEdtCidade.Text);
  Self.TEdtCidade.Clear;
  Self.TEdtIdCidade.Clear;
end;

procedure TFrmConsultarCidade.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  if Self.TBtnCancelar.Caption = 'Selecionar' then
    UmaCidade:=TCidade(UmaCtrlCidade.Carregar(UmaCidade));
  Close;
end;

procedure TFrmConsultarCidade.TBtnEditarClick(Sender: TObject);
begin
  inherited;
  UmFrmCadcidade.ReconhecaObjeto(UmaCidade,UmaCtrlCidade);
  UmaCtrlCidade.Carregar(UmaCidade);
  if UmaCtrlCidade.Buscar(UmaCidade.IdCidade,'') then
  begin
      UmFrmCadcidade.TEdtIdCidade.Text:=IntToStr(UmaCidade.IdCidade);
      UmFrmCadcidade.TEdtCidade.Text:=UmaCidade.Cidade;
      UmFrmCadcidade.TEdtIdEstado.Text:=IntToStr(UmaCidade.Estado.IdEstado);
      UmFrmCadcidade.TEdtEstado.Text:=UmaCidade.Estado.Estado;
      UmFrmCadcidade.TEdtSigla.Text:=UmaCidade.Estado.Sigla;
      UmFrmCadcidade.TDateTimePickerDataAlteracao.Date:=Now;
      UmFrmCadcidade.TDateTimePickerDataCadastro.Date:=StrToDate(UmaCidade.DataCadastro);
      UmFrmCadcidade.TDateTimePickerDataCadastro.Enabled:=False;
      UmFrmCadcidade.ShowModal;
  end
  else
    ShowMessage('A CIDADE SELECIONADA N�O EXISTE.');
end;

procedure TFrmConsultarCidade.TBtnExcluirClick(Sender: TObject);
begin
  inherited;
  UmaCtrlCidade.Carregar(UmaCidade);
if (MessageDlg('DESEJA REALIZAR A EXCLUS�O DOS DADOS.', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
  begin
      if UmaCtrlCidade.Buscar(UmaCidade.IdCidade,'') then
      begin
          ShowMessage(UmaCtrlCidade.Excluir(UmaCidade));
      end
      else
          ShowMessage('A CIDADE SELECIONADA N�O EXISTE');
  end;
end;

procedure TFrmConsultarCidade.TBtnNovoClick(Sender: TObject);
begin
  inherited;
   UmFrmCadcidade.ReconhecaObjeto(UmaCidade,UmaCtrlCidade);
   UmFrmCadcidade.TDateTimePickerDataAlteracao.Visible:=False;
    UmFrmCadcidade.TDateTimePickerDataAlteracao.DateTime:=NOW;
   UmFrmCadcidade.TLblDataAlteracao.Visible:=False;
   UmFrmCadcidade.ShowModal;
end;

procedure TFrmConsultarCidade.TEdtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

procedure TFrmConsultarCidade.TEdtIdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
end;

end.
