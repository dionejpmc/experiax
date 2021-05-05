unit UFrmCadastroFormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel, ComCtrls,
  UCtrlFP,UFormaPagamento,
  RzDTP;

type
  TFrmCadastroFP = class(TFormCadastroPai)
    TLblFormaPagemento: TRzLabel;
    TEdtFormaPagamento: TRzEdit;
    TLblId: TRzLabel;
    TEdtId: TRzEdit;
    procedure TBtnLimparClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TEdtFormaPagamentoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    UmaFP:TFormaPagamento;
    UmaCtrlFP:TCtrlFP;
  public
    { Public declarations }
    function ValidaCampos:Boolean;
    function ReconhecaObjeto(AFP:TFormaPagamento;ACtrlFP:TCtrlFP):Boolean;
    procedure LimpaCampos;
  end;

var
  FrmCadastroFP: TFrmCadastroFP;

implementation

{$R *.dfm}

{ TFrmCadastroFP }

procedure TFrmCadastroFP.LimpaCampos;
begin
   Self.TEdtFormaPagamento.Clear;
   Self.TEdtId.Clear;
end;

function TFrmCadastroFP.ReconhecaObjeto(AFP: TFormaPagamento;
  ACtrlFP: TCtrlFP): Boolean;
begin
   UmaFP:=AFP;
   UmaCtrlFP:=ACtrlFP;
   Self.LimpaCampos;
end;

procedure TFrmCadastroFP.TBtnLimparClick(Sender: TObject);
begin
  inherited;

   Self.TEdtFormaPagamento.Clear;
   Self.TEdtId.Clear;
end;

procedure TFrmCadastroFP.TBtnSalvarClick(Sender: TObject);
var MSG:string;
    inValue:integer;
begin
  inherited;
   if Self.ValidaCampos then
   begin
      if TryStrToInt(Self.TEdtId.Text, inValue) then
            UmaFP.Id:=inValue
      else
            UmaFP.Id:=0;
     UmaFP.FP:=TEdtFormaPagamento.Text;
     UmaFP.DataCadastro:= DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
     UmaFP.DataAlteracao:= DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
   end
   else
      ShowMessage('AINDA EXISTEM CAMPOS OBRIGATORIOS A SEREM PREENCHIDOS, PREENCHA ESSES CAMPOS ANTES DE SALVAR!');
   MSG:=UmaCtrlFP.Salvar(UmaFP);
   ShowMessage(MSG);
   Self.LimpaCampos;
   Close;
end;

procedure TFrmCadastroFP.TEdtFormaPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if not (key in ['A'..'Z','a'..'z','0'..'9',#8,#32]) then
     key := #0;
end;

function TFrmCadastroFP.ValidaCampos: Boolean;
begin
  Result:=True;
end;

end.
