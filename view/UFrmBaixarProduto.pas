unit UFrmBaixarProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzLabel, ComCtrls, RzDTP, RzButton;

type
  TFrmBaixarProduto = class(TForm)
    TLblIdProduto: TRzLabel;
    TEdtMarca: TRzEdit;
    TLblMarca: TRzLabel;
    TEdtIdProduto: TRzEdit;
    TLblProduto: TRzLabel;
    TEdtProduto: TRzEdit;
    TLblQTDE: TRzLabel;
    TEdtQTDE: TRzEdit;
    TLblMotivo: TRzLabel;
    TEdtMotivo: TRzEdit;
    DateTime1: TRzDateTimePicker;
    TLblDataBaixa: TRzLabel;
    RzBitBtn1: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaixarProduto: TFrmBaixarProduto;

implementation

{$R *.dfm}

end.
