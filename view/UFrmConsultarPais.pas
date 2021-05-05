unit UFrmConsultarPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, Grids, DBGrids, RzDBGrid, ExtCtrls,
  RzPanel, StdCtrls, Mask, RzEdit, RzLabel, UDM, UCtrlPais, UPais, UFrmCadastroPais,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarPais = class(TFrmConsultarPai)
    TLblPais: TRzLabel;
    TEdtPais: TRzEdit;
    TBtnBuscarPais: TRzBitBtn;
    TGroupBoxPais: TRzGroupBox;
    TDbGridPais: TRzDBGrid;
    TLblID: TRzLabel;
    TEdtIdPais: TRzEdit;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnBuscarPaisClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TEdtIdPaisChange(Sender: TObject);
    procedure TEdtPaisKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdPaisKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  protected
    UmPais:TPais;
    UmFrmCadPais:TFrmCadastroPais;
    UmaCtrlPais:TCtrlPais;

  public
    { Public declarations }
    procedure ReconhecaObjeto(OPais:TPais);

  end;
var
  FrmConsultarPais: TFrmConsultarPais;

implementation

{$R *.dfm}

procedure TFrmConsultarPais.ReconhecaObjeto(OPais: TPais);
begin
    UmPais:=OPais;
    UmaCtrlPais:=TCtrlPais.Create;
    UmFrmCadPais:=TFrmCadastroPais.Create(nil);
    Self.TDbGridPais.DataSource:=UmaCtrlPais.GetDs;
end;

procedure TFrmConsultarPais.TBtnBuscarPaisClick(Sender: TObject);
begin
  inherited;
    if Self.TEdtPais.Text<>'' then
       UmaCtrlPais.Buscar(0,Self.TEdtPais.text)
    else if Self.TEdtIdPais.Text <> '' then
        UmaCtrlPais.Buscar(StrToInt(self.TEdtIdPais.Text),'')
    else
        ShowMessage('AO MENOS UM DOS CAMPOS COM * S�O OBRIGATORIOS !');
   Self.TEdtIdPais.Clear;
   Self.TEdtPais.Clear;
end;

procedure TFrmConsultarPais.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  If self.TBtnCancelar.Caption = 'Selecionar' then
    UmaCtrlPais.Carregar(UmPais);
  close;
end;

procedure TFrmConsultarPais.TBtnEditarClick(Sender: TObject);
begin
  inherited;
  UmFrmCadPais.ReconhecaObjeto(UmPais,UmaCtrlPais);
  UmaCtrlPais.Carregar(UmPais);
  if UmaCtrlPais.Buscar(UmPais.IdPais, '') then
  begin
     UmFrmCadPais.TEdtIdPais.Text:=IntToStr(UmPais.IdPais);
     UmFrmCadPais.TEdtSigla.Text:=UmPais.Sigla;
     UmFrmCadPais.TEdtPais.Text:=UmPais.Pais;
     UmFrmCadPais.TEdtDDI.Text:=UmPais.DDI;
     UmFrmCadPais.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(UmPais.DataCadastro);
     UmFrmCadPais.TDateTimePickerDataAlteracao.DateTime:=Now;
     UmFrmCadPais.ShowModal;
  end
  else
    ShowMessage('O PAIS SELECIONADO N�O EXISTE.');

end;

procedure TFrmConsultarPais.TBtnExcluirClick(Sender: TObject);
begin
  inherited;
   UmaCtrlPais.Carregar(UmPais);
  if (MessageDlg('DESEJA REALIZAR A EXCLUS�O DOS DADOS.', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
    begin
        if UmaCtrlPais.Buscar(UmPais.IdPais,'') then
        begin
            ShowMessage(UmaCtrlPais.Excluir(UmPais));
        end
        else
            ShowMessage('O PAIS SELECIONADO N�O EXISTE');
    end;
end;

procedure TFrmConsultarPais.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmFrmCadPais.ReconhecaObjeto(UmPais,UmaCtrlPais);
  UmFrmCadPais.TDateTimePickerDataAlteracao.Visible:=False;
  UmFrmCadPais.TLblDataAlteracao.Visible:=False;
  UmFrmCadPais.TDateTimePickerDataCadastro.DateTime:=Now;
  UmFrmCadPais.ShowModal;
end;

procedure TFrmConsultarPais.TEdtIdPaisChange(Sender: TObject);
begin
  inherited;
     if TEdtIdPais.Text<>'' then
       TLblPais.Caption:='Pais'
     else
       TLblPais.Caption:='Pais *'

end;

procedure TFrmConsultarPais.TEdtIdPaisKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
      key := #0;
end;

procedure TFrmConsultarPais.TEdtPaisKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['A'..'Z','a'..'z',#8,#32,'�','�']) then
     key := #0;
end;

end.
