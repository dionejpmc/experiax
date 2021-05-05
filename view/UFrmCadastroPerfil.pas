unit UFrmCadastroPerfil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, StdCtrls, Mask, RzEdit, RzButton, ComCtrls, RzDTP,
  RzLabel, RzLstBox, ExtCtrls, RzPanel, RzTabs, RzRadChk, RzBHints;

type
  TFrmCadastroPerfilAcesso = class(TFormCadastroPai)
    TLblNivel: TRzLabel;
    TEdtnivel: TRzEdit;
    TGroupBoxNivelAcesso: TRzGroupBox;
    RzTabControl1: TRzTabControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPerfilAcesso: TFrmCadastroPerfilAcesso;

implementation

{$R *.dfm}

end.
