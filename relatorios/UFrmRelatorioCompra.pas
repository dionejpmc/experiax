unit UFrmRelatorioCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, UDM, DB, qrpctrls, QRCtrls, QuickRpt, qrpBaseCtrls, RzLine;

type
  TFrmRelatorioCompra = class(TForm)
    QRPQuickrepCompra: TQRPQuickrep;
    QRSubDetailInicial: TQRSubDetail;
    QRBandTitle: TQRBand;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRLabel1: TQRLabel;
    QRPLabel1: TQRPLabel;
    QRSubDetailFinal: TQRSubDetail;
    QRLabelNumeroNota: TQRLabel;
    QRLabelSerie: TQRLabel;
    QRPDBTextNumeroNota: TQRPDBText;
    QRPDBTextSerie: TQRPDBText;
    QRPDBText1: TQRPDBText;
    QRLabelFornecedor: TQRLabel;
    QRLabelProduto: TQRLabel;
    QRLabelQuantidade: TQRLabel;
    QRLabelValorUnitario: TQRLabel;
    QRDBTextProduto: TQRDBText;
    QRDBTextVlUnit: TQRDBText;
    QRDBTextQTDE: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioCompra: TFrmRelatorioCompra;

implementation

{$R *.dfm}

end.
