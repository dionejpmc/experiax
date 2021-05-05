unit UFrmConsultarClienteJuridico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, StdCtrls, RzLabel, Grids, DBGrids,
  RzDBGrid, ExtCtrls, RzPanel, Mask, RzEdit;

type
  TFrmConsultarClienteJuridico = class(TFrmConsultarPai)
    TEdtCliente: TRzEdit;
    TBtnBuscarCliente: TRzButton;
    TGroupBoxClienteJuridico: TRzGroupBox;
    RzDBGridClienteJuridico: TRzDBGrid;
    TLblCliente: TRzLabel;
    TLblCNPJ: TRzLabel;
    TEdtCNPJ: TRzEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultarClienteJuridico: TFrmConsultarClienteJuridico;

implementation

{$R *.dfm}

end.
