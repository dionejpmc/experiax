
unit UFrmPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFormPai = class(TForm)
    dxSkinController1: TdxSkinController;
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function isNum(s:string):Boolean;
  end;

var
  FormPai: TFormPai;

implementation


{$R *.dfm}

{ TFormPai }

procedure TFormPai.FormClick(Sender: TObject);
begin
   ShowWindow(WindowHandle, SW_SHOWNORMAL);
   Self.WindowState:=wsNormal;
end;

function TFormPai.isNum(s: string): Boolean;
var
  I : Integer;
begin
  Result:=TryStrToInt(s,i);
end;

end.
