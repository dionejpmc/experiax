unit UFrmConsultarContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, Grids, DBGrids, RzDBGrid, ExtCtrls, RzPanel,
  StdCtrls, Mask, RzEdit, RzLabel, RzButton, UFrmCadastroContasPagar, UContaPagar,UDM,UCtrlContaPagar,
  DB, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarContasPagar = class(TFrmConsultarPai)
    TLblNumNota: TRzLabel;
    TLblSerie: TRzLabel;
    TEdtSerie: TRzEdit;
    TEdtNumNota: TRzEdit;
    TGroupBoxContasReceber: TRzGroupBox;
    TDBGridContasPagar: TRzDBGrid;
    TBtnBuscarForneceodor: TRzButton;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  protected
      UmaContaPagar:TContaPagar;
      UmFrmCadContaPagar:TFrmCadastroContasPagar;
      UmaCtrlContasPagar:TCtrlContaPagar;

  public
    { Public declarations }
    procedure ReconhecaObjeto(AContaPagar:TContaPagar);
    procedure LimpaCampos;
  end;

var
  FrmConsultarContasPagar: TFrmConsultarContasPagar;

implementation

{$R *.dfm}

procedure TFrmConsultarContasPagar.LimpaCampos;
var x:integer;
begin
for x := 0 to (ComponentCount) - 1 do
  begin
     //ShowMessage (IntToStr(Components[x].tag));
     //Verifica��o da propriedade pTag
     if (TComponent(Components[x]).Tag<>100) then
       begin
         if (Components[x] is TRzEdit) then
           (Components[x] as TRzEdit).Clear;
       end;
  end;
end;

procedure TFrmConsultarContasPagar.ReconhecaObjeto(AContaPagar: TContaPagar);
begin
    UmaContaPagar:= AContaPagar;
    UmFrmCadContaPagar:=TFrmCadastroContasPagar.Create(nil);
    UmaCtrlContasPagar:=TCtrlContaPagar.Create;
    Self.TDBGridContasPagar.DataSource:=UmaCtrlContasPagar.GetDs;
    Self.TBtnCancelar.Caption:='Sair';
    Self.TBtnExcluir.Visible:=False;
    Self.TBtnExcluir.Enabled:=False;
    Self.TBtnEditar.Caption:='Baixar';
    UmFrmCadContaPagar.TDateTimePickerDataPagamento.Visible:=False;
    UmFrmCadContaPagar.TLblValorTotalConta.Visible:=False;
end;

procedure TFrmConsultarContasPagar.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
 UmFrmCadContaPagar.Free;
end;

procedure TFrmConsultarContasPagar.TBtnEditarClick(Sender: TObject);
begin
  inherited;

  UmaCtrlContasPagar.Carregar(UmaContaPagar);
  if UmaContaPagar.Status = 1 then
  begin
       UmaContaPagar.NumeroNota:=0;
      UmaContaPagar.Serie:='';
      UmFrmCadContaPagar:=TFrmCadastroContasPagar.Create(nil);
      UmFrmCadContaPagar.ReconhecaObjeto(UmaContaPagar,UmaCtrlContasPagar);
       UmaCtrlContasPagar.Carregar(UmaContaPagar);
      UmFrmCadContaPagar.TEdtIDFp.Text:=IntToStr(UmaContaPagar.UmaFP.Id);
      UmFrmCadContaPagar.TEdtFp.Text:=UmaContaPagar.UmaFP.FP;
      UmFrmCadContaPagar.TEdtNumNota.Text:=IntToStr(UmaContaPagar.NumeroNota);
      UmFrmCadContaPagar.TEdtSerie.Text:=UmaContaPagar.Serie;
      UmFrmCadContaPagar.TEdtNumeroParcela.Text:=IntToStr(UmaContaPagar.NumeroParcela);
      UmFrmCadContaPagar.TEdtNumeroParcela.Enabled:=False;
      UmFrmCadContaPagar.TEdtIdFornecedor.Text:=IntToStr(UmaContaPagar.UmFornecedor.Id);
      UmFrmCadContaPagar.TEdtFornecedor.Text:=UmaContaPagar.UmFornecedor.RS;
      UmFrmCadContaPagar.TedtValorConta.Text:=FormatFloat('#0.00',UmaContaPagar.ValorNota);
      UmFrmCadContaPagar.TEdtObservacao.Text:=UmaContaPagar.Observacoes;
      UmFrmCadContaPagar.TEdtValorTotalConta.Text:=FormatFloat('#0.00',UmaContaPagar.ValorNota);
      UmFrmCadContaPagar.TComboBoxStatus.Text:='Paga';
      UmFrmCadContaPagar.TLblDataPagamento.Enabled:=False;
      UmFrmCadContaPagar.TDateTimePickerDataPagamento.Visible:=False;
      UmFrmCadContaPagar.TDateTimePickerDataPagamento.ShowCheckbox:=True;
      UmFrmCadContaPagar.TDateTimePickerDataVencimento.DateTime:=StrToDateTime(UmaContaPagar.DataVencimento);
      UmFrmCadContaPagar.TDateTimePickerDataVencimento.Enabled:=false;
      UmFrmCadContaPagar.TLblDataPagamento.Visible:=False;
      UmFrmCadContaPagar.TEdtSerie.Enabled:=False;
      UmFrmCadContaPagar.TEdtNumNota.Enabled:=False;
      UmFrmCadContaPagar.TedtValorConta.Enabled:=False;
      UmFrmCadContaPagar.TEdtIDFp.Enabled:=False;
      UmFrmCadContaPagar.TEdtIdFornecedor.Enabled:=False;
      UmFrmCadContaPagar.TBtnLimpar.Enabled:=False;
      UmFrmCadContaPagar.TBtnLimpar.Visible:=False;
      UmFrmCadContaPagar.TBtnSalvar.Caption:='Baixar';
      UmFrmCadContaPagar.TComboBoxStatus.Enabled:=False;
      UmFrmCadContaPagar.TBtnLimpar.Visible:=False;

  end
  else  if  UmaContaPagar.Status = 0 then
  begin
      UmFrmCadContaPagar.TComboBoxStatus.Text:='Paga';
      ShowMessage('CONTA J� ESTA PAGA!');
      Exit;
  end
  else
  begin
      ShowMessage('ERRO DE RECUPERA��O DE STATUS');
      Exit;
  end;

  UmFrmCadContaPagar.TDateTimePickerDataVencimento.DateTime:=StrToDateTime( UmaContaPagar.DataVencimento);
  UmFrmCadContaPagar.TDateTimePickerDataPagamento.DateTime:=StrToDateTime(UmaContaPagar.DataPagamento);

  UmFrmCadContaPagar.ShowModal;

end;

procedure TFrmConsultarContasPagar.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmFrmCadContaPagar.ReconhecaObjeto(UmaContaPagar, UmaCtrlContasPagar);
  UmFrmCadContaPagar.TDateTimePickerDataCadastro.DateTime:=now;
  UmFrmCadContaPagar.TDateTimePickerDataVencimento.Enabled:=True;
  UmFrmCadContaPagar.TLblDataAlteracao.Visible:=False;
  UmFrmCadContaPagar.ShowModal;
  Self.TDBGridContasPagar.DataSource:=UmaCtrlContasPagar.GetDs;
end;

end.
