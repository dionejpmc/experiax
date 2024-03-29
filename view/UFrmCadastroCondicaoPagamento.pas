unit UFrmCadastroCondicaoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel, ExtCtrls,
  RzPanel, Grids, DBGrids, RzDBGrid, ComCtrls, RzDTP, RzGrids, UFrmConsultarFormaPagamento,
  UCtrlFP, UCtrlCP, UCondicaoPagamento, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,UParcela,
  RzStatus, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsForm;

type
  TFrmCadastroCondicaoPagamento = class(TFormCadastroPai)
    TLblCondicaoPagamento: TRzLabel;
    TLblFP: TRzLabel;
    TEdtCP: TRzEdit;
    TEdtFP: TRzEdit;
    TBtnBuscarFP: TRzBitBtn;
    TGroupBoxCadastroCondicaoPagamento: TRzGroupBox;
    TLblPorcentagemParcela: TRzLabel;
    TLblJuros: TRzLabel;
    TEdtJuros: TRzEdit;
    TLblDataVencimento: TRzLabel;
    TEdtQTDEParcelas: TRzEdit;
    TLblQTDEParcelas: TRzLabel;
    TLblIdFormaPagamento: TRzLabel;
    TEdtIdFP: TRzEdit;
    TLblobservacoes: TRzLabel;
    TEdtObservacoes: TRzEdit;
    TBtnAdicionar: TRzBitBtn;
    TStringGridParcelas: TRzStringGrid;
    TEdtDataVencimento: TRzEdit;
    TEdtPorcentagemParcela: TRzEdit;
    TLblIdCondicaoPagamento: TRzLabel;
    TEdtIdCP: TRzEdit;
    procedure TEdtQTDEParcelasExit(Sender: TObject);
    procedure TBtnBuscarFPClick(Sender: TObject);
    procedure TEdtIdFPExit(Sender: TObject);
    procedure TBtnLimparClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TStringGridParcelasSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure TBtnAdicionarClick(Sender: TObject);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TEdtPorcentagemParcelaExit(Sender: TObject);
    procedure TEdtIdFPKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TEdtPorcentagemParcelaKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtJurosKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtQTDEParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtDataVencimentoExit(Sender: TObject);
    procedure TEdtJurosExit(Sender: TObject);
  private
    { Private declarations }
  protected
    UmFrmConFP:TFrmConsultarFormaPagamento;
    UmaCtrlCP:TCtrlCP;
    UmaCP:TCondicaoPagamento;
    l:Integer;
    Porcentagem:Double;

  public

    { Public declarations }
    function ReconhecaObjeto(ACP:TCondicaoPagamento;ACtrlCP:TCtrlCP):Boolean;
    function ValidaCampos:Boolean;
    procedure LimpaCampos;
    procedure Carregar;
  end;

var
  FrmCadastroCondicaoPagamento: TFrmCadastroCondicaoPagamento;
  lin:Integer;

implementation

{$R *.dfm}

procedure TFrmCadastroCondicaoPagamento.Carregar;
begin

end;

procedure TFrmCadastroCondicaoPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Self.TBtnCancelarClick(Sender);
end;

procedure TFrmCadastroCondicaoPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  Self.TStringGridParcelas.Cells[1, 0] := 'N� PARCELA';
  Self.TStringGridParcelas.Cells[2, 0] := 'VALOR %';
  Self.TStringGridParcelas.Cells[3, 0] := 'JUROS';
  Self.TStringGridParcelas.Cells[4, 0] := 'DATA VENCIMENTO';
  Self.TStringGridParcelas.Cells[5, 0] := 'OBSERVA�OES';
  Self.TStringGridParcelas.Cells[6, 0] := 'DATA CADASTRO';
  Self.TStringGridParcelas.Cells[7, 0] := 'DATA ALTERA��O';
end;

procedure TFrmCadastroCondicaoPagamento.LimpaCampos;
var a, b:Integer;
  I: Integer;
begin
   Self.TEdtCP.Clear;
   Self.TEdtQTDEParcelas.Clear;
   Self.TEdtIdCP.Clear;
   Self.TEdtFP.Clear;
   Self.TEdtIdFP.Clear;
   Self.TEdtJuros.Clear;
   Self.TEdtPorcentagemParcela.Clear;
   Self.TEdtDataVencimento.Clear;
   Self.TEdtObservacoes.Clear;
   for a := 1 to Self.TStringGridParcelas.ColCount do
    for b:= 1 to Self.TStringGridParcelas.RowCount do
      Self.TStringGridParcelas.Cells[a,b] := '';
   Self.TStringGridParcelas.RowCount:= 2;
   l:=1;
   Self.TEdtQTDEParcelas.Enabled:=True;
   if (UmaCP.UmaListaParcela.Count <> 0) then
      if UmaCP.QTDEParcelas <> 0 then
          for I := 0 to UmaCP.QTDEParcelas -1 do
            if (UmaCP.UmaListaParcela.Count <> 0) then
                if (UmaCP.UmaListaParcela.Items[UmaCP.UmaListaParcela.Count -1] <> nil) and (UmaCP.UmaListaParcela.Count <> 0) then
                begin
                   UmaCP.UmaParcela:= UmaCP.UmaListaParcela[UmaCP.UmaListaParcela.Count -1 ];
                   UmaCP.UmaListaParcela.Delete(UmaCP.UmaListaParcela.Count -1);
                   UmaCP.UmaParcela.Destroy;
                end;
   Self.TEdtJuros.Enabled:=True;
   Self.TEdtDataVencimento.Enabled:=True;
   Self.TEdtObservacoes.Enabled:=True;
   Self.TEdtPorcentagemParcela.Enabled:=True;
   Porcentagem:=0.0;
end;

function TFrmCadastroCondicaoPagamento.ReconhecaObjeto(ACP: TCondicaoPagamento;
  ACtrlCP: TCtrlCP): Boolean;
begin
   UmaCtrlCP:=ACtrlCP;
   UmaCP:=ACP;
   l:=1;
   Self.LimpaCampos;
   Porcentagem:=0.0;
end;

procedure TFrmCadastroCondicaoPagamento.TBtnAdicionarClick(Sender: TObject);
var
    IntValue:Integer;
    FloatValue:Double;
begin
  inherited;
if TryStrToInt(Self.TEdtQTDEParcelas.Text, IntValue) then
begin
      if ((isNum(Self.TEdtQTDEParcelas.Text))) and (TryStrToFloat(Self.TEdtPorcentagemParcela.Text,FloatValue) and isNum(Self.TEdtDataVencimento.Text)) then
      begin
          if StrToInt(Self.TEdtQTDEParcelas.Text) <> 0 then
             if ((Self.TEdtPorcentagemParcela.Text <> '0') and (Self.TEdtPorcentagemParcela.Text <> '')) and (Self.TEdtPorcentagemParcela.Text <> '0.0') then
             begin
                if StrToInt(Self.TEdtQTDEParcelas.Text) >= Self.TStringGridParcelas.RowCount -1 then
                begin
                  if Self.TStringGridParcelas.RowCount = 0 then
                       Self.TStringGridParcelas.RowCount:=1;
                  if TryStrToFloat(Self.TEdtJuros.Text,floatValue) then
                  begin
                    if floatValue <= 0 then
                    begin
                      Self.TEdtJuros.Clear;
                      Self.TEdtJuros.Text:='0,00';
                    end;
                  end
                  else
                    Self.TEdtJuros.Text:='0,00';

                    Self.TStringGridParcelas.RowCount:= Self.TStringGridParcelas.RowCount +1;
                    Self.TStringGridParcelas.Cells[1,l]:=IntToStr(Self.TStringGridParcelas.RowCount - 2);
                    Self.TStringGridParcelas.Cells[2,l]:= Self.TEdtPorcentagemParcela.Text;
                    Self.TStringGridParcelas.Cells[3,l]:= Self.TEdtJuros.Text;
                    Self.TStringGridParcelas.Cells[4,l]:= Self.TEdtDataVencimento.Text;
                    Self.TStringGridParcelas.Cells[5,l]:= Self.TEdtObservacoes.Text;
                    Self.TStringGridParcelas.Cells[6,l]:= DateTimeToStr(Now);
                    Self.TStringGridParcelas.Cells[7,l]:= '';//DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
                    Porcentagem:=Porcentagem + StrToFloat( Self.TStringGridParcelas.Cells[2,l]);
                    l:=l+1;

                    Self.TEdtObservacoes.Clear;
                    Self.TEdtPorcentagemParcela.Clear;
                    Self.TEdtJuros.Clear;
                    Self.TEdtDataVencimento.Clear;
                end
                else
                  ShowMessage('A QUANTIDADE DE PARCELAS SOLICITADAS JA CORRESPONDE A QUANTIDADE DE PARCELAS ADICIONADAS ( '+ Self.TEdtQTDEParcelas.Text+'/'+ Self.TStringGridParcelas.Cells[1,Self.TStringGridParcelas.RowCount - 2] +' )');
          end
          else
                ShowMessage('A PORCENTAGEM DA  PARCELAS � INSUFICIENTE OU INCORRETA!');
      end;
end
else
begin
    ShowMessage('A QUANTIDADE DE PARCELAS � INSUFICIENTE, OU INCORRETA');
    Self.TEdtQTDEParcelas.Clear;
end;
if TryStrToInt(Self.TEdtQTDEParcelas.Text,IntValue) then
begin
  if IntValue = (Self.TStringGridParcelas.RowCount - 2 ) then
  begin
    Self.TEdtJuros.Enabled:=False;
    Self.TEdtDataVencimento.Enabled:=False;
    Self.TEdtObservacoes.Enabled:=False;
    Self.TEdtPorcentagemParcela.Enabled:=False;
  end;
end
else
  Self.TEdtQTDEParcelas.Clear;
end;

procedure TFrmCadastroCondicaoPagamento.TBtnBuscarFPClick(Sender: TObject);
begin
  inherited;
    UmFrmConFP:=TFrmConsultarFormaPagamento.Create(nil);
    UmFrmConFP.ReconhecaObjeto(UmaCP.UmaFP);
    UmFrmConFP.TBtnCancelar.Caption:='Selecionar';
    UmFrmConFP.ShowModal;
    Self.TEdtIdFP.Text:=IntToStr(UmaCP.UmaFP.Id);
    Self.TEdtFP.Text:=UmaCP.UmaFP.FP;
    UmFrmConFP.Free;
end;
procedure TFrmCadastroCondicaoPagamento.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroCondicaoPagamento.TBtnLimparClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;


procedure TFrmCadastroCondicaoPagamento.TBtnSalvarClick(Sender: TObject);
var MSG:string;
    I:Integer;
begin
  inherited;
if Porcentagem = 100 then
begin
  if Self.ValidaCampos then
  begin
       UmaCP.CP:=Self.TEdtCP.Text;
       UmaCP.UmaFP.Id:=StrToInt(Self.TEdtIdFP.Text);
       UmaCP.UmaFP.FP:=Self.TEdtFP.Text;
       for I := 1 to StrToInt(Self.TEdtQTDEParcelas.Text)  do
       begin
          UmaCP.UmaParcela:=TParcela.Create;
          UmaCP.UmaParcela.NumeroParcela:= StrToInt(Self.TStringGridParcelas.Cells[1,I]);
          UmaCP.UmaParcela.ValorParcela:=0.00;
          UmaCP.UmaParcela.PorcentagemParcela:= StrToFloat( Self.TStringGridParcelas.Cells[2,I]);
          UmaCP.UmaParcela.JurosParcela:= StrToFloat( Self.TStringGridParcelas.Cells[3,I]);
          UmaCP.UmaParcela.DataVencimento:=  Self.TStringGridParcelas.Cells[4,I];
          UmaCP.UmaParcela.Observacao:= Self.TStringGridParcelas.Cells[5,I];
          UmaCP.UmaParcela.DataCadastro:= DateTimeToStr(Now);
//          UmaCP.UmaParcela.DataAlteracao:= Self.TStringGridParcelas.Cells[7,I];
          UmaCP.UmaListaParcela.Insert(i-1, UmaCP.UmaParcela);
          UmaCP.UmaParcela:=nil;
       end;
       UmaCP.QTDEParcelas:=StrToInt(Self.TEdtQTDEParcelas.Text);
       UmaCP.DataCadastro:= DateTimeToStr(Now);
       UmaCP.DataAlteracao:= DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
       MSG:=UmaCtrlCP.Salvar(UmaCP);
       ShowMessage(MSG);
       Self.LimpaCampos;
       Close;
  end
  end
  else
    begin
      ShowMessage('A PORCENTAGEM DAS PARCELAS DEVEM SER EQUIVALENTES A 100%.');
      Self.LimpaCampos;
    end;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtDataVencimentoExit(Sender: TObject);
var dias, diaAnterior:Integer;
begin
  inherited;
  if TryStrToInt(Self.TEdtDataVencimento.Text, dias) then
  begin
    if TryStrToInt(Self.TStringGridParcelas.Cells[4, l-1],diaAnterior) then
    begin
        if diaAnterior >= dias then
        begin
            Self.TEdtDataVencimento.Clear;
            ShowMessage('O PROXIMO DIA DEVE SER MAIOR QUE O ANTERIOR!');
        end;
    end;
  end
  else
     Self.TEdtDataVencimento.Clear;
 if (dias < 0) and (Self.TEdtQTDEParcelas.Text <> '1') then
         Self.TEdtDataVencimento.Clear;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtIdFPExit(Sender: TObject);
var UmaCtrlFP :TCtrlFP;

begin
  inherited;
  if Self.TEdtIdFP.Text <> '' then
  begin
     self.TEdtFP.Clear;
     UmaCtrlFP := TCtrlFP.Create;
     UmaCP.UmaFP.Id:=StrtoInt(Self.TEdtIdFP.Text);
     UmaCP.UmaFP.FP:=Self.TEdtFP.Text;
     if not UmaCtrlFP.Buscar(UmaCP.UmaFP.Id,'') then
      begin
        MessageDlg('Nenhum Registro Encontrado!', mtInformation, [mbOK], 0);
        Self.TEdtIdFP.Clear;
        Self.TEdtFP.Clear;
      end
      else
        begin
            UmaCtrlFP.Carregar(UmaCP.UmaFP);
            Self.TEdtIdFP.Text:= IntToStr(UmaCP.UmaFP.Id);
            Self.TEdtFP.Text:=UmaCP.UmaFP.FP;
        end;
      end
      else
        begin
            Self.TEdtIdFP.Clear;
            Self.TEdtFP.Clear;
        end;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtIdFPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
     key := #0;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtJurosExit(Sender: TObject);
var floatValue:Double;
begin
  inherited;
  if TryStrToFloat(Self.TEdtJuros.Text,floatValue) then
  begin
    if floatValue <= 0 then
    begin
      Self.TEdtJuros.Clear;
      Self.TEdtJuros.Text:='0,00';
    end;
  end;

end;

procedure TFrmCadastroCondicaoPagamento.TEdtJurosKeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
 if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtPorcentagemParcelaExit(Sender: TObject);
var
  FloatValue:Double;
  aux:Double;
begin
  inherited;
if TryStrToFloat(Self.TEdtPorcentagemParcela.Text,FloatValue) then
begin
  if StrToFloat(Self.TEdtPorcentagemParcela.Text) > 100 then
  begin
      ShowMessage('O Valor Maximo � 100%.');
      Self.TEdtPorcentagemParcela.Clear;
  end
  else if (StrToFloat(Self.TEdtPorcentagemParcela.Text) + Porcentagem) > 100 then
  begin
      ShowMessage('O VALOR MAXIMO DA SOMA DAS PARCELAS � 100%.');
      Self.TEdtPorcentagemParcela.Clear;
      if ((StrToInt(Self.TEdtQTDEParcelas.Text)-1 ) = (Self.TStringGridParcelas.RowCount -2) ) then
      begin
        if ( FloatValue + Porcentagem) <> 100  then
            Self.TEdtPorcentagemParcela.Text:= FloatToStr(100 - Porcentagem);
        Self.TEdtPorcentagemParcela.Text:= FloatToStr(100 - Porcentagem);
      end;
  end
  else if Porcentagem < StrToFloat(Self.TEdtPorcentagemParcela.Text) then
      if (( (StrToFloat(Self.TEdtPorcentagemParcela.Text) + Porcentagem)  > 100) and (Self.TEdtPorcentagemParcela.Text <> ''))then
      begin
        ShowMessage('A PORCENTAGEM DAS PARCELAS EXCEDEU LIMITE DE  100%.');
        Self.TEdtPorcentagemParcela.Clear;
        Self.TEdtPorcentagemParcela.Text:= FloatToStr(100 - Porcentagem);
      end;
end
else
    Self.TEdtPorcentagemParcela.Clear;
if TryStrToFloat(Self.TEdtPorcentagemParcela.Text,aux) then
   if StrToFloat(Self.TEdtPorcentagemParcela.Text) = 0 then
    Self.TEdtPorcentagemParcela.Clear;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtPorcentagemParcelaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
 if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtQTDEParcelasExit(Sender: TObject);
var
  IntValue:Integer;
begin
  inherited;
if TryStrToInt(Self.TEdtQTDEParcelas.Text,IntValue) then
begin
  if Self.TEdtQTDEParcelas.Text <> '' then
     Self.TEdtQTDEParcelas.Enabled:=False;
  if sTRtOiNT(Self.TEdtQTDEParcelas.Text) = 0 then
  begin
       Self.TEdtQTDEParcelas.Enabled:=False;
       Self.TEdtQTDEParcelas.Enabled:=True;
  end;
  if self.TEdtQTDEParcelas.Text[1] ='0' then
  begin
       Self.TEdtQTDEParcelas.Clear;
       Self.TEdtQTDEParcelas.Enabled:=True;
  end;
end
else
  Self.TEdtQTDEParcelas.Clear;
end;

procedure TFrmCadastroCondicaoPagamento.TEdtQTDEParcelasKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
    key:=#0;
end;

procedure TFrmCadastroCondicaoPagamento.TStringGridParcelasSelectCell(
  Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  lin:=ARow;
end;

function TFrmCadastroCondicaoPagamento.ValidaCampos: Boolean;
begin
   if Length( Self.TEdtCP.Text) < 2 then
  begin
    Self.TEdtCP.Color:=clWebSteelBlue;
    Self.TEdtCP.SetFocus;
    Result:=False;
    Exit;
  end;
  if Length( Self.TEdtFP.Text) < 2 then
  begin
    Self.TEdtIdFP.Color:=clWebSteelBlue;
    Self.TEdtIdFP.SetFocus;
    Result:=False;
    Exit;
  end;
  if Self.TStringGridParcelas.RowCount < 3 then
  begin
    Self.TEdtQTDEParcelas.Enabled:=True;
    Self.TEdtQTDEParcelas.Color:=clWebSteelBlue;
    Self.TEdtQTDEParcelas.SetFocus;
    Result:=False;
    ShowMessage('DEVE HAVER PELO MENOS UMA PARCELA NA CONDI��O!');
    Exit;
  end
  else
    Result:=True;
end;

end.
