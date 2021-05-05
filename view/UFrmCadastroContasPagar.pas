unit UFrmCadastroContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, RzButton, Grids, DBGrids, RzDBGrid, ExtCtrls,
  RzPanel, StdCtrls, Mask, RzEdit, RzLabel, Menus, ComCtrls, RzDTP,UContaPagar, UCtrlContaPagar,
  RzCmboBx, UFornecedor,UFornecedorFisico,UCtrlFornecedor,UCtrlFP,UFrmConsultarFormaPagamento
  ,UFrmConsultarFornecedor, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmCadastroContasPagar = class(TFormCadastroPai)
    TLblFornecedor: TRzLabel;
    TEdtFornecedor: TRzEdit;
    TBtnBuscarForneceodor: TRzButton;
    TEdtNumNota: TRzEdit;
    TLblNumNota: TRzLabel;
    TLblValorConta: TRzLabel;
    TedtValorConta: TRzEdit;
    TEdtObservacao: TRzEdit;
    TLblObservacao: TRzLabel;
    TLblCP: TRzLabel;
    TEdtFP: TRzEdit;
    TBtnBuscarCP: TRzButton;
    TLblSerie: TRzLabel;
    TEdtSerie: TRzEdit;
    TLblDataVencimento: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    TEdtIDFp: TRzEdit;
    TEdtIdFornecedor: TRzEdit;
    TLblDataEntrada: TRzLabel;
    TLblStatus: TRzLabel;
    TComboBoxStatus: TRzComboBox;
    TDateTimePickerdataEntrada: TDateTimePicker;
    TDateTimePickerDataVencimento: TDateTimePicker;
    TLblDataPagamento: TRzLabel;
    TDateTimePickerDataPagamento: TDateTimePicker;
    TEdtDesconto: TRzEdit;
    TlblDesconto: TRzLabel;
    TLblMulta: TRzLabel;
    TEdtMulta: TRzEdit;
    TEdtValorTotalConta: TRzEdit;
    TLblValorTotalConta: TRzLabel;
    TLblNumeroParcela: TRzLabel;
    TEdtNumeroParcela: TRzEdit;
    procedure TComboBoxStatusKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TComboBoxStatusClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TEdtIDFpExit(Sender: TObject);
    procedure TEdtIdFornecedorExit(Sender: TObject);
    procedure TEdtMultaExit(Sender: TObject);
    procedure TEdtDescontoExit(Sender: TObject);
    procedure TEdtMultaKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure TedtValorContaKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIDFpKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure TedtValorContaExit(Sender: TObject);
    procedure TBtnBuscarCPClick(Sender: TObject);
    procedure TBtnBuscarForneceodorClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TDateTimePickerDataPagamentoChange(Sender: TObject);
  private
    { Private declarations }
  protected
    UmaCtrlContaPagar:TCtrlContaPagar;
    UmaContaPAgar:TContaPagar;
    UmFrmConsultarFornecedor:TFrmConsultarFornecedor;
    UmFrmConsultarFP:TFrmConsultarFormaPagamento;
  public
    { Public declarations }
    procedure ReconhecaObjeto(AContaPagar:TContaPagar;ACtrlContaPagar:TCtrlContaPagar);
    procedure LimpaCampos;
    function ValidaCampos:Boolean;
  end;

var
  FrmCadastroContasPagar: TFrmCadastroContasPagar;

implementation

{$R *.dfm}

{ TFrmCadastroContasPagar }

procedure TFrmCadastroContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
   Self.TDateTimePickerdataEntrada.DateTime:=Now;
   Self.TDateTimePickerDataVencimento.DateTime:=Now;
   Self.TDateTimePickerDataAlteracao.DateTime:=Now;
   Self.TDateTimePickerDataCadastro.DateTime:=Now;
end;

procedure TFrmCadastroContasPagar.LimpaCampos;
var x:integer;
begin
for x := 0 to (ComponentCount) - 1 do
  begin
     //ShowMessage (IntToStr(Components[x].tag));
     //Verificação da propriedade pTag
     if (TComponent(Components[x]).Tag<>100) then
       begin
         if (Components[x] is TRzEdit) then
           (Components[x] as TRzEdit).Clear;
       end;
  end;
  Self.TComboBoxStatus.ClearSelection;
end;

procedure TFrmCadastroContasPagar.ReconhecaObjeto(AContaPagar: TContaPagar;
  ACtrlContaPagar: TCtrlContaPagar);
begin
    Self:=TFrmCadastroContasPagar.Create(nil);
    UmaCtrlContaPagar:=ACtrlContaPagar;
    UmaContaPagar:=AContaPagar;
end;

procedure TFrmCadastroContasPagar.TBtnBuscarCPClick(Sender: TObject);
begin
  inherited;
    UmFrmConsultarFP:=TFrmConsultarFormaPagamento.Create(nil);
    UmFrmConsultarFP.ReconhecaObjeto(UmaContaPAgar.UmaFP);
    UmFrmConsultarFP.TBtnCancelar.Caption:='Selecionar';
    UmFrmConsultarFP.ShowModal;
    Self.TEdtIdFP.Text:=IntToStr(UmaContaPAgar.UmaFP.Id);
    Self.TEdtFP.Text:=UmaContaPAgar.UmaFP.FP;
    UmFrmConsultarFP.Free;
end;

procedure TFrmCadastroContasPagar.TBtnBuscarForneceodorClick(Sender: TObject);
begin
  inherited;
    UmFrmConsultarFornecedor:=TFrmConsultarFornecedor.Create(nil);
    UmFrmConsultarFornecedor.ReconhecaObjeto(UmaContaPAgar.UmFornecedor,UmaContaPAgar.UmFornecedorF);
    UmFrmConsultarFornecedor.TBtnCancelar.Caption:='Selecionar';
    UmFrmConsultarFornecedor.ShowModal;
    if UmaContaPagar.UmFornecedor.RS <> '' then
    begin
       Self.TEdtIdFornecedor.Text:=IntToStr(UmaContaPagar.UmFornecedor.Id);
       Self.TEdtFornecedor.Text:=UmaContaPAgar.UmFornecedor.RS;
    end
    else if UmaContaPAgar.UmFornecedorF.Nome <> '' then
    begin
       Self.TEdtIdFornecedor.Text:=IntToStr(UmaContaPAgar.UmFornecedorF.Id);
       Self.TEdtFornecedor.Text:=UmaContaPAgar.UmFornecedorF.Nome;
    end
    else
    begin
       Self.TEdtIdFornecedor.Clear;
       Self.TEdtFornecedor.Clear;
    end;
    UmFrmConsultarFornecedor.Destroy;
end;

procedure TFrmCadastroContasPagar.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroContasPagar.TBtnLimparClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroContasPagar.TBtnSalvarClick(Sender: TObject);
var MSG:string;
    floatAux:Double;
begin
  inherited;
  if Self.ValidaCampos then
  begin
    UmaContaPAgar:=TContaPagar.Create;
    UmaCtrlContaPagar:=TCtrlContaPagar.Create;
    if (Self.TBtnSalvar.Caption = 'Baixar') or (Self.TBtnSalvar.Caption = '&Baixar') then
    begin
       UmaContaPAgar.NumeroNota:=StrToInt(Self.TEdtNumNota.Text);
       UmaContaPAgar.Serie:=Self.TEdtSerie.Text;
       UmaContaPAgar.NumeroParcela:=StrToInt(Self.TEdtNumeroParcela.Text);
       UmaContaPAgar.DataPagamento:=DateTimeToStr(Self.TDateTimePickerDataPagamento.DateTime);
       UmaContaPAgar.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
       UmaContaPAgar.Status:=0;
       if (TEdtValorTotalConta.Text = '') then
          TEdtValorTotalConta.Text:=TedtValorConta.Text;
       //Valor conta com juros ou desconto ja incluido
       UmaContaPAgar.ValorNota:=StrToFloat(Self.TedtValorTotalConta.Text);
       UmaContaPAgar.Juros:=StrToFloat(Self.TEdtMulta.Text);
       UmaContaPAgar.Desconto:=StrToFloat(Self.TEdtDesconto.Text);
        MSG:=UmaCtrlContaPagar.Salvar(UmaContaPAgar,0);
    end
    else
    begin
      UmaContaPAgar.NumeroNota:=StrToInt(Self.TEdtNumNota.Text);
      UmaContaPAgar.Serie:=Self.TEdtSerie.Text;
      UmaContaPAgar.NumeroParcela:=1;
      UmaContaPAgar.UmaFP.Id:=StrToInt(Self.TEdtIDFp.Text);
      if (TEdtValorTotalConta.Text = '') then
          TEdtValorTotalConta.Text:=TedtValorConta.Text;
      //Valor da conta sem juros ou desconto
      UmaContaPAgar.Valor:=StrToFloat(Self.TedtValorConta.Text);
      //Valor conta com juros ou desconto ja incluido
      UmaContaPAgar.ValorNota:=StrToFloat(Self.TedtValorTotalConta.Text);
      UmaContaPAgar.Juros:=StrToFloat(Self.TEdtMulta.Text);
      UmaContaPAgar.Desconto:=StrToFloat(Self.TEdtDesconto.Text);
      //Verificação de status de conta 0 = 'Paga'
      if Self.TComboBoxStatus.Text = 'Paga' then
      begin
          UmaContaPAgar.Status:=0;
          UmaContaPAgar.DataPagamento:=DateTimeToStr(Self.TDateTimePickerDataPagamento.DateTime);
      end
      else if Self.TComboBoxStatus.Text = 'Pendente' then
          UmaContaPAgar.Status:=1
      else
      begin
         ShowMessage('STATUS INCORRETO.');
          Exit;

      end;

      UmaContaPAgar.DataVencimento:=DateTimeToStr(Self.TDateTimePickerDataVencimento.DateTime);
      UmaContaPAgar.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
      UmaContaPAgar.Observacoes:=Self.TEdtObservacao.Text;
      UmaContaPAgar.UmFornecedor.Id:=StrToInt(Self.TEdtIdFornecedor.Text);
      MSG:=UmaCtrlContaPagar.Salvar(UmaContaPAgar,1);
    end;



  end
  else
  begin
    ShowMessage('PREEENCHA TODOS OS CAMPOS CORRETAMENTE.');
    Exit;
  end;

  if Self.ValidaCampos then
  begin
    Self.LimpaCampos;
    ShowMessage(MSG);
    UmaContaPAgar.Destroy;
    UmaCtrlContaPagar.Destroy;
    Close;

  end;

end;

procedure TFrmCadastroContasPagar.TComboBoxStatusClick(Sender: TObject);
begin
  inherited;
  if Self.TComboBoxStatus.Text = 'Paga' then
  begin
    Self.TLblDataPagamento.Enabled:=True;
    Self.TDateTimePickerDataPagamento.Enabled:=True;
    Self.TLblDataPagamento.Visible:=True;
    Self.TDateTimePickerDataPagamento.Visible:=True;
    Self.TDateTimePickerDataPagamento.DateTime:=Now;
  end;
  if Self.TComboBoxStatus.Text <> 'Paga' then
  begin
    Self.TLblDataPagamento.Enabled:=False;
    Self.TDateTimePickerDataPagamento.Enabled:=False;
    Self.TLblDataPagamento.Visible:=False;
    Self.TDateTimePickerDataPagamento.Visible:=False;
  end;
end;
procedure TFrmCadastroContasPagar.TComboBoxStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key  <> #0) then
       key:=#0;
end;

procedure TFrmCadastroContasPagar.TDateTimePickerDataPagamentoChange(
  Sender: TObject);
begin
  inherited;
  Self.TDateTimePickerDataPagamento.DateTime:=Now;
end;

procedure TFrmCadastroContasPagar.TEdtDescontoExit(Sender: TObject);
var floatAux, floatAux2, floatAux3:Double;
begin
    inherited;
    Self.TEdtMulta.Enabled:=False;
    if TryStrToFloat(Self.TEdtDesconto.Text, floatAux)  and TryStrToFloat(Self.TedtValorConta.Text, floatAux2)  then
    begin
        Self.TEdtDesconto.Text:=FormatFloat('#0.00',floatAux);
        if floatAux > 100 then
        begin
          ShowMessage('DESCONTO INAPROPRIADO.');
          Self.TEdtDesconto.Clear;
          Self.TEdtDesconto.Text:='0,00';
        end
        else
        begin
          if not TryStrToFloat(Self.TEdtMulta.Text, floatAux3) then
              Self.TEdtMulta.Enabled:=False;
          Self.TEdtValorTotalConta.Text:= FormatFloat('#0.00', StrToFloat(Self.TEdtValorTotalConta.Text) - ( (floatAux/100)  * StrToFloat(Self.TEdtValorTotalConta.Text) ) );
          Self.TEdtDesconto.Enabled:=False;
        end;
    end
    else
    begin
        Self.TEdtDesconto.Clear;
    end;

end;
procedure TFrmCadastroContasPagar.TEdtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
     key:=#0;
end;

procedure TFrmCadastroContasPagar.TEdtIdFornecedorExit(Sender: TObject);
var UmaCtrlFornecedor:TCtrlFornecedor;
    intValue:integer;
begin
inherited;
    Self.TEdtIdFornecedor.Color:=clWindow;
    if TryStrToInt(Self.TEdtIdFornecedor.Text,IntValue) and (Self.TEdtIdFornecedor.Text <> '') then
     begin
              Self.TEdtFornecedor.Clear;
              UmaCtrlFornecedor:=TCtrlFornecedor.Create;
              UmaContaPAgar.UmFornecedor.Id:=StrToInt(Self.TEdtIdFornecedor.Text);
              UmaContaPAgar.UmFornecedorF.Id:=StrToInt(Self.TEdtIdFornecedor.Text);
              if not UmaCtrlFornecedor.Buscar(UmaContaPAgar.UmFornecedor.Id,'') then
              begin
                   Self.TEdtIdFornecedor.Clear;
                   Self.TEdtFornecedor.Clear;
              end
              else
              begin
                   UmaCtrlFornecedor.Carregar(UmaContaPAgar.UmFornecedorF,1);
                   UmaCtrlFornecedor.Carregar(UmaContaPAgar.UmFornecedor,2);
                   if UmaContaPAgar.UmFornecedor.RS <> '' then
                   begin
                       Self.TEdtIdFornecedor.Text:= IntToStr(UmaContaPAgar.UmFornecedor.Id);
                       Self.TEdtFornecedor.Text:=UmaContaPAgar.UmFornecedor.RS;
                   end
                   else if UmaContaPAgar.UmFornecedorF.Nome <> '' then
                   begin
                        Self.TEdtIdFornecedor.Text:= IntToStr(UmaContaPAgar.UmFornecedorF.Id);
                        Self.TEdtFornecedor.Text:=UmaContaPAgar.UmFornecedorF.Nome;

                   end;
              end;
              UmaCtrlFornecedor.Destroy;
     end
     else
     begin
          Self.TEdtIdFornecedor.Clear;
          Self.TEdtFornecedor.Clear;
     end;
end;

procedure TFrmCadastroContasPagar.TEdtIdFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmCadastroContasPagar.TEdtIDFpExit(Sender: TObject);
var UmaCtrlFP:TCtrlFP;
    intAux:Integer;
begin
  inherited;

  if (Self.TEdtIdFP.Text <> '') and (TryStrToInt(Self.TEdtIdFP.Text,intAux)) then
  begin
       self.TEdtFP.Clear;
       UmaCtrlFP := TCtrlFP.Create;
       UmaContaPAgar.UmaFP.Id:=StrtoInt(Self.TEdtIdFP.Text);
       UmaContaPAgar.UmaFP.FP:=Self.TEdtFP.Text;
       if not UmaCtrlFP.Buscar(UmaContaPAgar.UmaFP.Id,'') then
       begin
          MessageDlg('Nenhum Registro Encontrado!', mtInformation, [mbOK], 0);
          Self.TEdtIdFP.Clear;
          Self.TEdtFP.Clear;
       end
       else
       begin
              UmaCtrlFP.Carregar(UmaContaPAgar.UmaFP);
              Self.TEdtIdFP.Text:= IntToStr(UmaContaPAgar.UmaFP.Id);
              Self.TEdtFP.Text:=UmaContaPAgar.UmaFP.FP;
       end;

       UmaCtrlFP.Destroy;
  end
  else
  begin
        Self.TEdtIdFP.Clear;
        Self.TEdtFP.Clear;
  end;

end;

procedure TFrmCadastroContasPagar.TEdtIDFpKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TFrmCadastroContasPagar.TEdtMultaExit(Sender: TObject);
var floatAux:Double;
begin
  inherited;
  Self.TEdtDesconto.Enabled:=False;
  if TryStrToFloat(Self.TEdtMulta.Text, floatAux) then
  begin
    Self.TEdtMulta.Text:=FormatFloat('#0.00',floatAux);
    if floatAux > 0 then
    begin
        Self.TEdtValorTotalConta.Text:= FormatFloat('#0.00',(  ( (StrToFloat(Self.TEdtMulta.Text)/100) * StrToFloat(Self.TedtValorConta.Text) )  )+ StrToFloat(Self.TedtValorConta.Text));
        Self.TEdtMulta.Enabled:=False;
    end
    else
    begin
        Self.TEdtValorTotalConta.Text:= Self.TedtValorConta.Text;
        Self.TEdtMulta.Clear;
        Self.TEdtMulta.Text:='0,00';
        Self.TEdtMulta.Enabled:=False;
    end;
  end
  else
  begin
    Self.TEdtMulta.Clear;
    Self.TEdtMulta.Text:='0,00';
  end;
end;
procedure TFrmCadastroContasPagar.TEdtMultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
     key:=#0;
end;

procedure TFrmCadastroContasPagar.TedtValorContaExit(Sender: TObject);
var floatValue:Double;
begin
  inherited;
  if TryStrToFloat(Self.TedtValorConta.Text, floatValue) then
  begin
     Self.TEdtValorTotalConta.Clear;
     Self.TEdtMulta.Clear;
     Self.TEdtMulta.Text:='0,00';
     Self.TEdtDesconto.Clear;
     Self.TEdtDesconto.Text:='0,00';
     Self.TedtValorConta.Text:=FormatFloat('#0.00',floatValue);
     Self.TedtValorConta.Enabled:=False;
     Self.TEdtValorTotalConta.Text:= FormatFloat('#0.00',floatValue);
     if floatValue <= 0 then
     begin
         ShowMessage('VALOR DA CONTA INCORRETO.');
         Self.TedtValorConta.SetFocus;
         Self.TedtValorConta.Enabled:=True;
         Self.TedtValorConta.Clear;
         Self.TEdtValorTotalConta.Clear;
    end;
  end
  else
  begin
    Self.TedtValorConta.Clear;
    Self.TEdtValorTotalConta.Clear;
  end;
end;

procedure TFrmCadastroContasPagar.TedtValorContaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
     key:=#0;
end;

function TFrmCadastroContasPagar.ValidaCampos: Boolean;
var floatAux:Double;
begin
    if Length(Self.TEdtNumNota.Text) < 1 then
    begin
          Self.TEdtNumNota.Color:=clWebSteelBlue;
          Self.TEdtNumNota.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtSerie.Text) < 1 then
    begin
          Self.TEdtSerie.Color:=clWebSteelBlue;
          Self.TEdtSerie.SetFocus;
          Result:=False;
          exit;
    end;
    if (Length(Self.TEdtFP.Text) < 3) and (self.TEdtIDFp.Enabled = True) then
    begin
          Self.TEdtIdFP.Color:=clWebSteelBlue;
          Self.TEdtIdFP.SetFocus;
          Result:=False;
          exit;
    end;
    if (Length(Self.TEdtFornecedor.Text) < 3) and (self.TEdtIdFornecedor.Enabled = True) then
    begin
          Self.TEdtIdFornecedor.Color:=clWebSteelBlue;
          Self.TEdtIdFornecedor.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TedtValorConta.Text) < 3 then
    begin
          Self.TedtValorConta.Color:=clWebSteelBlue;
          Self.TedtValorConta.SetFocus;
          Result:=False;
          exit;
    end;
    if (Self.TComboBoxStatus.Text = '') or (Length(Self.TComboBoxStatus.Text ) < 4) then
    begin
          ShowMessage('STATUS INVALIDO.');
          Self.TComboBoxStatus.Color:=clWebSteelBlue;
          Self.TComboBoxStatus.SetFocus;
          Result:=False;
          exit;
    end
    else
      Result:=True;
end;
end.
