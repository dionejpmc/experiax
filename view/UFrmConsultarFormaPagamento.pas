unit UFrmConsultarFormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, StdCtrls, Mask, RzEdit, RzLabel, Grids, DBGrids,
  RzDBGrid, ExtCtrls, RzPanel, RzButton, UFrmCadastroFormaPagamento, UFormaPagamento
  ,UCtrlFP, UDM, DB;

type
  TFrmConsultarFormaPagamento = class(TFrmConsultarPai)
    TGroupBoxFormaPagamento: TRzGroupBox;
    TDBGridFormaPagamento: TRzDBGrid;
    TLblFP: TRzLabel;
    TEdtFP: TRzEdit;
    TBtnBuscarFP: TRzButton;
    TLblIdFP: TRzLabel;
    RzEdit1: TRzEdit;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  protected
    UmaFP:TFormaPagamento;
    UmCadFP:TFrmCadastroFP;
    UmaCtrlFP:TCtrlFP;
  public
    { Public declarations }
    procedure ReconhecaObjeto(AFp:TFormaPagamento);
  end;

var
  FrmConsultarFormaPagamento: TFrmConsultarFormaPagamento;

implementation

{$R *.dfm}

procedure TFrmConsultarFormaPagamento.ReconhecaObjeto(AFp: TFormaPagamento);
begin
    UmaFP:=AFp;
    UmaCtrlFP:=TCtrlFP.Create;
    UmCadFP:=TFrmCadastroFP.Create(nil);
    Self.TDBGridFormaPagamento.DataSource:=UmaCtrlFP.GetDs;
end;

procedure TFrmConsultarFormaPagamento.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
     if Self.TBtnCancelar.Caption = 'Selecionar' then
        UmaFP:=TFormaPagamento(UmaCtrlFP.Carregar(UmaFP));
  Close;
end;

procedure TFrmConsultarFormaPagamento.TBtnEditarClick(Sender: TObject);
begin
  inherited;
   UmCadFP.ReconhecaObjeto(UmaFP,UmaCtrlFP);
   UmaCtrlFP.Carregar(UmaFP);
  if UmaCtrlFP.Buscar(UmaFP.Id,'') then
  begin
      UmCadFP.TEdtId.Text:=IntToStr(UmaFP.Id);
      UmCadFP.TEdtFormaPagamento.Text:=UmaFP.FP;
      UmCadFP.TDateTimePickerDataCadastro.Date:=StrToDateTime(UmaFP.DataCadastro);
      UmCadFP.TDateTimePickerDataCadastro.Enabled:=False;
      UmCadFP.TDateTimePickerDataAlteracao.DateTime:=Now;
      UmCadFP.ShowModal;
  end
  else
    ShowMessage('A FORMA DE PAGAMENTO SELECIONADA NÃO EXISTE.');

end;

procedure TFrmConsultarFormaPagamento.TBtnExcluirClick(Sender: TObject);
begin
  inherited;
  UmaCtrlFP.Carregar(UmaFP);
  if (MessageDlg('DESEJA REALIZAR A EXCLUSÃO DOS DADOS.', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
    begin
        if UmaCtrlFP.Buscar(UmaFP.Id,'') then
        begin
            ShowMessage(UmaCtrlFP.Excluir(UmaFP));
        end
        else
            ShowMessage('A FORMA DE PAGAMENTO SELECIONADA NÃO EXISTE');
    end;
end;

procedure TFrmConsultarFormaPagamento.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmcadFP.ReconhecaObjeto(UmaFP, UmaCtrlFP);
  UmCadFP.TDateTimePickerDataCadastro.DateTime:=Now;
  UmCadFP.TDateTimePickerDataCadastro.Enabled:=False;
  UmCadFP.TLblDataAlteracao.Visible:=False;
  UmCadFP.TDateTimePickerDataAlteracao.Visible:=False;
  UmcadFP.ShowModal;
end;

end.
