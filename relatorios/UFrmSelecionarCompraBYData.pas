unit UFrmSelecionarCompraBYData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ComCtrls, RzDTP, StdCtrls, RzLabel, UCtrlCompra;

type
  TFrmSelectByData = class(TForm)
    DateTime1: TRzDateTimePicker;
    DateTime2: TRzDateTimePicker;
    RzBitBtn1: TRzBitBtn;
    TBtnOK: TRzBitBtn;
    Lbl1: TRzLabel;
    Lbl2: TRzLabel;
    procedure DateTime1Exit(Sender: TObject);
    procedure DateTime2Exit(Sender: TObject);
    procedure TBtnOKClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelectByData: TFrmSelectByData;

implementation

{$R *.dfm}

procedure TFrmSelectByData.DateTime1Exit(Sender: TObject);
begin
    if Self.DateTime1.DateTime > Self.DateTime2.DateTime then
    begin
        Self.DateTime1.DateTime:=Now;
        ShowMessage('A 1� DATA DEVE SER IGUAL OU MENOR QUE A SEGUNDA.');
    end;
end;

procedure TFrmSelectByData.DateTime2Exit(Sender: TObject);
begin
    if Self.DateTime1.DateTime > Self.DateTime2.DateTime then
    begin
        Self.DateTime1.DateTime:=Now;
        ShowMessage('A 1� DATA DEVE SER IGUAL OU MENOR QUE A SEGUNDA.');
    end;
end;

procedure TFrmSelectByData.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelectByData.TBtnOKClick(Sender: TObject);
var UmaCtrlCompra:TCtrlCompra;
begin
    UmaCtrlCompra:=TCtrlCompra.Create;
    if UmaCtrlCompra.BuscarByData(DateTimeToStr(Self.DateTime1.DateTime),DateTimeToStr(Self.DateTime2.DateTime)) then
        ShowMessage('NENHUM REGISTRO ENCONTRADO COM ESTAS DATAS.')
    else
    begin
      UmaCtrlCompra.Destroy;
      Close;
    end;

end;

end.
