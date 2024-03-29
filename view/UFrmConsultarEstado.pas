unit UFrmConsultarEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, Grids, DBGrids, RzDBGrid, ExtCtrls,
  RzPanel, StdCtrls, Mask, RzEdit, RzLabel,DB,UDM,UEstado,
  UCtrlEstado,UFrmCadastroEstado, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarEstado = class(TFrmConsultarPai)
    TLblEstado: TRzLabel;
    TEdtEstado: TRzEdit;
    TBtnEstado: TRzBitBtn;
    TGroupBoxEstado: TRzGroupBox;
    TDBGridEstado: TRzDBGrid;
    TLblID: TRzLabel;
    TEdtIdEstado: TRzEdit;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TBtnEstadoClick(Sender: TObject);
    procedure TEdtIdEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  protected
    UmEstado:TEstado;
    UmaCtrlEstado:TCtrlEstado;
    UmFrmCadEstado:TFrmCadastroEstado;
  public
    { Public declarations }
     procedure ReconhecaObjeto(OEstado:TEstado);
  end;
var
  FrmConsultarEstado: TFrmConsultarEstado;
implementation

{$R *.dfm}

{ TFrmConsultarEstado }

procedure TFrmConsultarEstado.ReconhecaObjeto(OEstado: TEstado);
begin
  UmEstado:=OEstado;
  UmaCtrlEstado:=TCtrlEstado.Create;
  UmFrmCadEstado:=TFrmCadastroEstado.Create(nil);
  Self.TDBGridEstado.DataSource:=UmaCtrlEstado.GetDs;
end;

procedure TFrmConsultarEstado.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
   if Self.TBtnCancelar.Caption = 'Selecionar' then
      UmEstado:=TEstado(UmaCtrlEstado.Carregar(UmEstado));
  Close;
end;

procedure TFrmConsultarEstado.TBtnEditarClick(Sender: TObject);
begin
  inherited;
  UmFrmCadEstado.ReconhecaObjeto(UmEstado,UmaCtrlEstado);
  UmaCtrlEstado.Carregar(UmEstado);
  if UmaCtrlEstado.Buscar(UmEstado.IdEstado,'') then
  begin
     UmFrmCadEstado.TEdtIdEstado.Text:=IntToStr(UmEstado.IdEstado);
     UmFrmCadEstado.TEdtEstado.Text:=UmEstado.Estado;
     UmFrmCadEstado.TEdtSigla.Text:=UmEstado.Sigla;
     UmFrmCadEstado.TEdtDDD.Text:=UmEstado.DDD;
     UmFrmCadEstado.TEdtPais.Text:=UmEstado.Pais.Pais;
     UmFrmCadEstado.TEdtIdPais.Text:=IntToStr(UmEstado.Pais.IdPais);
     UmFrmCadEstado.TDateTimePickerDataAlteracao.DateTime:=Now;
     UmFrmCadEstado.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(UmEstado.DataCadastro);
     UmFrmCadEstado.ShowModal;
  end
  else
    ShowMessage('O ESTADO SELECIONADO N�O EXISTE.');
end;

procedure TFrmConsultarEstado.TBtnEstadoClick(Sender: TObject);
begin
  inherited;
  if Self.TEdtIdEstado.Text <> '' then
     UmaCtrlEstado.Buscar(StrToInt(Self.TEdtIdEstado.Text),'');
  if Self.TEdtEstado.Text <> '' then
    UmaCtrlEstado.Buscar(0,Self.TEdtEstado.Text);
  Self.TEdtEstado.Clear;
  Self.TEdtIdEstado.Clear;
end;

procedure TFrmConsultarEstado.TBtnExcluirClick(Sender: TObject);
begin
  inherited;
  UmaCtrlEstado.Carregar(UmEstado);
  if (MessageDlg('DESEJA REALIZAR A EXCLUS�O DOS DADOS.', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
    begin
        if UmaCtrlEstado.Buscar(UmEstado.IdEstado,'') then
        begin
            ShowMessage(UmaCtrlEstado.Excluir(UmEstado));
        end
        else
            ShowMessage('O ESTADO SELECIONADO N�O EXISTE');
    end;
end;

procedure TFrmConsultarEstado.TBtnNovoClick(Sender: TObject);
begin
  inherited;
     UmFrmCadEstado.ReconhecaObjeto(UmEstado,UmaCtrlEstado);
     UmFrmCadEstado.TDateTimePickerDataAlteracao.Visible:=False;
     UmFrmCadEstado.TLblDataAlteracao.Visible:=False;
     UmFrmCadEstado.TDateTimePickerDataAlteracao.DateTime:=NOW;
     UmFrmCadEstado.ShowModal;
end;

procedure TFrmConsultarEstado.TEdtEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

procedure TFrmConsultarEstado.TEdtIdEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
  //#8 � BackSpace
end;

end.
