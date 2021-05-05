unit UFrmConsultarReceita;

interface

uses
  UCtrlReceita,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel,
  ExtCtrls, RzPanel, Grids, DBGrids, RzDBGrid,UReceita,UFrmCadastroReceita, DB, UDM,
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
  TFrmConsultarReceita = class(TFrmConsultarPai)
    TGroupBoxReceita: TRzGroupBox;
    TLblReceita: TRzLabel;
    TEdtReceita: TRzEdit;
    TBtnBuscarReceita: TRzButton;
    TDBGridReceita: TRzDBGrid;
    TLblIdReceita: TRzLabel;
    TEdtIdReceita: TRzEdit;
    procedure TBtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  protected
    UmaReceita:TReceita;
    UmaCtrlReceita:TCtrlReceita;
    UmFrmCadReceita:TFrmCadastroReceita;
  public
    { Public declarations }
    procedure ReconhecaObjeto(AReceita:TReceita);
  end;

var
  FrmConsultarReceita: TFrmConsultarReceita;

implementation

{$R *.dfm}

procedure TFrmConsultarReceita.ReconhecaObjeto(AReceita: TReceita);
begin
   UmaReceita:=AReceita;
   UmaCtrlReceita:=TCtrlReceita.Create;
   UmFrmCadReceita:=TFrmCadastroReceita.Create(nil);
   Self.TDBGridReceita.DataSource:= UmaCtrlReceita.GetDs;

end;

procedure TFrmConsultarReceita.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmFrmCadReceita.ReconhecaObjeto(UmaReceita,UmaCtrlReceita );
  UmFrmCadReceita.TDateTimePickerDataCadastro.DateTime:=Now;
  UmFrmCadReceita.TDateTimePickerDataAlteracao.Visible:=False;
  UmFrmCadReceita.TLblDataAlteracao.Visible:=False;
  UmFrmCadReceita.ShowModal;
end;

end.
