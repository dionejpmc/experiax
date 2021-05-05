unit UFrmConsultarCondicaoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel, Grids,
  DBGrids, RzDBGrid, ExtCtrls, RzPanel, UFrmCadastroCondicaoPagamento,
  UCondicaoPagamento, UDM, DB, UCtrlCP, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarCondicaoPagamento = class(TFrmConsultarPai)
    TGroupBoxCondicaoPagamento: TRzGroupBox;
    TDBGridCondicaoPagamento: TRzDBGrid;
    TLblCondicaoPagamento: TRzLabel;
    TEdtCondicaoPagamento: TRzEdit;
    TBtnBuscarCondicaoPagamento: TRzButton;
    TLblIdCondicaoPagamento: TRzLabel;
    TEdtIdCondicaoPagamento: TRzEdit;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnBuscarCondicaoPagamentoClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);
  private
    { Private declarations }
  protected
        umaCP:TCondicaoPagamento;
        UmaCtrlCP:TCtrlCP;
        UmcadConPagamento:TFrmCadastroCondicaoPagamento;
  public
    { Public declarations }
    procedure ReconhecaObjeto(ACP:TCondicaoPagamento);
  end;

var
  FrmConsultarCondicaoPagamento: TFrmConsultarCondicaoPagamento;

implementation

{$R *.dfm}

procedure TFrmConsultarCondicaoPagamento.ReconhecaObjeto(
  ACP: TCondicaoPagamento);
begin
  umaCP:=ACP;
  UmaCtrlCP:=TCtrlCP.Create;
  UmcadConPagamento:=TFrmCadastroCondicaoPagamento.Create(nil);
  Self.TDBGridCondicaoPagamento.DataSource:=UmaCtrlCP.GetDs;
end;

procedure TFrmConsultarCondicaoPagamento.TBtnBuscarCondicaoPagamentoClick(
  Sender: TObject);
begin
  inherited;
  if Self.TEdtCondicaoPagamento.Text <> '' then
      UmaCtrlCP.Buscar(0,Self.TEdtCondicaoPagamento.Text)
  else if Self.TEdtIdCondicaoPagamento.Text <> '' then
      UmaCtrlCP.Buscar(StrToInt(Self.TEdtIdCondicaoPagamento.Text),'')
  else
      ShowMessage('AO MENOS UM DOS CAMPOS COM * S�O OBRIGATORIOS !');

  Self.TEdtCondicaoPagamento.Clear;
  Self.TEdtIdCondicaoPagamento.Clear;

end;

procedure TFrmConsultarCondicaoPagamento.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
   if Self.TBtnCancelar.Caption = 'Selecionar' then
    umaCP:=TCondicaoPagamento(UmaCtrlCP.Carregar(umaCP));
  Close;
end;

procedure TFrmConsultarCondicaoPagamento.TBtnEditarClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  UmcadConPagamento.ReconhecaObjeto(umaCP,UmaCtrlCP);
  UmaCtrlCP.Carregar(umaCP);
  UmcadConPagamento.TEdtIdCP.Text:=IntToStr(umaCP.IdCP);
  UmcadConPagamento.TEdtCP.Text:=umaCP.CP;
  UmcadConPagamento.TEdtQTDEParcelas.Text:=IntToStr(umaCP.QTDEParcelas);
  UmcadConPagamento.TEdtIdFP.Text:=IntToStr(umaCP.UmaFP.Id);
  UmcadConPagamento.TEdtFP.Text:=umaCP.UmaFP.FP;
  UmcadConPagamento.TDateTimePickerDataAlteracao.Visible:=false;
  UmcadConPagamento.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(umaCP.DataCadastro);
  UmcadConPagamento.TLblDataAlteracao.Visible:=false;
  for I := 0 to umaCP.QTDEParcelas -1 do
  begin
      UmcadConPagamento.TEdtJuros.Text:=FloatToStr(umaCP.getParcelas(i).JurosParcela);
      UmcadConPagamento.TEdtDataVencimento.Text:=umaCP.getParcelas(i).DataVencimento;
      UmcadConPagamento.TEdtPorcentagemParcela.Text:=FloatToStr(umaCP.getParcelas(i).PorcentagemParcela);
      UmcadConPagamento.TEdtObservacoes.Text:=umaCP.getParcelas(i).Observacao;
      UmcadConPagamento.TBtnAdicionarClick(Sender);
  end;
  UmcadConPagamento.TEdtIdCP.Enabled:=False;
  UmcadConPagamento.TEdtCP.Enabled:=False;
  UmcadConPagamento.TEdtQTDEParcelas.Enabled:=False;
  UmcadConPagamento.TEdtIdFP.Enabled:=False;
  UmcadConPagamento.TEdtFP.Enabled:=False;
  UmcadConPagamento.TBtnLimpar.Visible:=False;
  UmcadConPagamento.TBtnAdicionar.Enabled:=false;
  UmcadConPagamento.TBtnSalvar.Visible:=false;
  UmcadConPagamento.TBtnCancelar.Caption:='&Sair';
   UmcadConPagamento.TBtnBuscarFP.Enabled:=False;
  UmcadConPagamento.TDateTimePickerDataAlteracao.Visible:=false;
  UmcadConPagamento.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(umaCP.DataCadastro);
  UmcadConPagamento.TLblDataAlteracao.Visible:=false;
  UmcadConPagamento.ShowModal;
  UmcadConPagamento.LimpaCampos;
end;

procedure TFrmConsultarCondicaoPagamento.TBtnNovoClick(Sender: TObject);
begin
  inherited;
   UmcadConPagamento.ReconhecaObjeto(umaCP,UmaCtrlCP);
   UmcadConPagamento.ShowModal;
 end;

end.
