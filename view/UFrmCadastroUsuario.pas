unit UFrmCadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, StdCtrls, Mask, RzEdit, RzButton, ComCtrls, RzDTP,
  RzLabel;

type
  TFrmCadastroUsuario = class(TFormCadastroPai)
    TLblUsuario: TRzLabel;
    TLblSenha: TRzLabel;
    TEdtSenha: TRzEdit;
    TEdtUsuario: TRzEdit;
    TEdtNivelAcesso: TRzEdit;
    TLblNivelAcesso: TRzLabel;
    TBtnBuscarNivelAcesso: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

{$R *.dfm}

end.
