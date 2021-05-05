unit UFrmConsultarPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPai, Grids, DBGrids, RzDBGrid, ExtCtrls, RzPanel, RzButton,
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
  TFrmConsultarPai = class(TFormPai)
    TBtnNovo: TRzBitBtn;
    TBtnEditar: TRzBitBtn;
    TBtnExcluir: TRzBitBtn;
    TBtnCancelar: TRzBitBtn;
    TBtnLimpar: TRzButton;
    procedure TBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultarPai: TFrmConsultarPai;

implementation

{$R *.dfm}



procedure TFrmConsultarPai.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
