unit UFrmCadastroPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel, ComCtrls, RzDTP,
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
  TFormCadastroPai = class(TFormPai)
    TBtnSalvar: TRzButton;
    TBtnLimpar: TRzButton;
    TLblDataCadastro: TRzLabel;
    TLblDataAlteracao: TRzLabel;
    TDateTimePickerDataAlteracao: TRzDateTimePicker;
    TDateTimePickerDataCadastro: TRzDateTimePicker;
    TBtnCancelar: TRzBitBtn;
    procedure ValidateFrmDate();
    procedure TBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPai: TFormCadastroPai;

implementation

{$R *.dfm}
procedure TFormCadastroPai.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFormCadastroPai.ValidateFrmDate();
begin
  if (TDateTimePickerDataCadastro.Time > TDateTimePickerDataAlteracao.Time) then
  begin
    ShowMessage('ERRO DE DATA ->  A Data de Cadastro Não Pode ser superior a data de Alteração ');
  end;
end;

end.
