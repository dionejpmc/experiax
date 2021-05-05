unit UFrmCadastroCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, StdCtrls, RzLabel, RzButton, Grids, DBGrids,
  RzDBGrid, ExtCtrls, RzPanel, Mask, RzEdit, ComCtrls, RzDTP, RzGrids, UCompra,UCtrlCompra,
  UCtrlProduto,UProduto,UFornecedor, UFrmConsultarProduto,UCtrlFornecedor,UFrmConsultarFornecedor,
  UCtrlCP,
  UFrmConsultarCondicaoPagamento, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmCadastroCompra = class(TFormCadastroPai)
    TLblFornecedor: TRzLabel;
    TLblNumNota: TRzLabel;
    TEdtNumNota: TRzEdit;
    TEdtFornecedor: TRzEdit;
    TBtnBuscarForneceodor: TRzButton;
    TGroupBoxProdCompra: TRzGroupBox;
    TBtnRemover: TRzButton;
    TLblValorTotalProdutos: TRzLabel;
    TedtValorTotalProdutos: TRzEdit;
    TLblCP: TRzLabel;
    TLblObservacao: TRzLabel;
    TEdtCP: TRzEdit;
    TEdtObservacao: TRzEdit;
    TBtnBuscarFP: TRzButton;
    TEdtSerie: TRzEdit;
    TLblSerie: TRzLabel;
    TLblDataEntrada: TRzLabel;
    TLblvalorTotalNota: TRzLabel;
    TEdtValorTotalNota: TRzEdit;
    TDateTimeDataEntrada: TRzDateTimePicker;
    RzLabel1: TRzLabel;
    TEdtIdFornecedor: TRzEdit;
    TBtnAdd: TRzButton;
    TLblIdCondicaoPagamento: TRzLabel;
    TEdtIdCP: TRzEdit;
    TStringGridProdutosCompra: TRzStringGrid;
    TLblProduto: TRzLabel;
    TLblQtde: TRzLabel;
    TLblValorUnitario: TRzLabel;
    TLblDesconto: TRzLabel;
    RzLabel2: TRzLabel;
    TEdtProduto: TRzEdit;
    TBtnBuscarProduto: TRzButton;
    TEdtQtde: TRzEdit;
    TEdtValorUnitario: TRzEdit;
    TEdtDesconto: TRzEdit;
    TEdtIdProduto: TRzEdit;
    TLblMarca: TRzLabel;
    TEdtMarca: TRzEdit;
    TLblValorTotal: TRzLabel;
    TEdtValorTotal: TRzEdit;
    TLblMedida: TRzLabel;
    TLblICMS: TRzLabel;
    TEdtICMS: TRzEdit;
    TLblIPI: TRzLabel;
    TEdtIPI: TRzEdit;
    RzLabel3: TRzLabel;
    TEdtTotalComImpostos: TRzEdit;
    TLblCFOP: TRzLabel;
    TEdtCFOP: TRzEdit;
    TDateTimePickerDataEmicaoNota: TRzDateTimePicker;
    TLblDataEmicao: TRzLabel;
    TBtnLimpaValores: TRzBitBtn;
    TLblFrete: TRzLabel;
    TEdtValorFrete: TRzEdit;
    procedure TBtnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TEdtIdProdutoExit(Sender: TObject);
    procedure TEdtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtQtdeExit(Sender: TObject);
    procedure TEdtValorUnitarioExit(Sender: TObject);
    procedure TBtnBuscarProdutoClick(Sender: TObject);
    procedure TBtnRemoverClick(Sender: TObject);
    procedure TStringGridProdutosCompraSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure TEdtIdFornecedorExit(Sender: TObject);
    procedure TDateTimePickerDataCadastroClick(Sender: TObject);
    procedure TBtnBuscarForneceodorClick(Sender: TObject);
    procedure TBtnBuscarFPClick(Sender: TObject);
    procedure TEdtIdCPExit(Sender: TObject);
    procedure TEdtDescontoExit(Sender: TObject);
    procedure TEdtIPIExit(Sender: TObject);
    procedure TEdtICMSExit(Sender: TObject);
    procedure TEdtIPIKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtICMSKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnLimpaValoresClick(Sender: TObject);
    procedure TDateTimeDataEntradaClick(Sender: TObject);
    procedure TDateTimeDataEntradaExit(Sender: TObject);
    procedure TBtnLimparClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TDateTimePickerDataEmicaoNotaClick(Sender: TObject);
    procedure TEdtValorFreteExit(Sender: TObject);
    procedure TEdtValorFreteKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtNumNotaKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TEdtIdFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure TDateTimePickerDataEmicaoNotaExit(Sender: TObject);
    procedure TEdtIdProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtSerieExit(Sender: TObject);
    procedure TEdtNumNotaExit(Sender: TObject);
  private
    { Private declarations }
  protected
     UmaCompra:TCompra;
     UmaCtrlCompra:TCtrlCompra;
     UmFrmConProduto:TFrmConsultarProduto;
     UmFrmConFornecedor:TFrmConsultarFornecedor;
     UmFrmConCP: TFrmConsultarCondicaoPagamento;

     l:Integer;
  public
    { Public declarations }
    procedure ReconhecaObjeto(ACompra:TCompra;ACtrlCompra:TCtrlCompra);
    procedure LimpaCampos;
    function ValidaCampos:Boolean;
  end;

var
  FrmCadastroCompra: TFrmCadastroCompra;
  lin:integer;

implementation

{$R *.dfm}

procedure TFrmCadastroCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Self.TBtnCancelarClick(Sender);
end;

procedure TFrmCadastroCompra.FormCreate(Sender: TObject);
begin
  inherited;
  Self.TStringGridProdutosCompra.Cells[1, 0] := 'ID';
  Self.TStringGridProdutosCompra.Cells[2, 0] := 'PRODUTO';
  Self.TStringGridProdutosCompra.Cells[3, 0] := 'MARCA';
  Self.TStringGridProdutosCompra.Cells[4, 0] := 'VALOR UNITARIO';
  Self.TStringGridProdutosCompra.Cells[5, 0] := 'QUANTIDADE';
  Self.TStringGridProdutosCompra.Cells[6, 0] := 'DESCONTO';
  Self.TStringGridProdutosCompra.Cells[7, 0] := 'VALOR TOTAL';
  Self.TStringGridProdutosCompra.Cells[8, 0] := 'IPI';
  Self.TStringGridProdutosCompra.Cells[9, 0] := 'ICMS';
  Self.TStringGridProdutosCompra.Cells[10, 0] := 'TOTAL COM IMPOSTOS';

  Self.TEdtQtde.Enabled:=False;
  Self.TEdtValorUnitario.Enabled:=False;
  Self.TEdtValorTotal.Enabled:=False;
  Self.TEdtDesconto.Enabled:=False;
  Self.TEdtICMS.Enabled:=False;
  Self.TEdtIPI.Enabled:=False;
  Self.TDateTimeDataEntrada.DateTime:=Now;
  Self.TDateTimePickerDataEmicaoNota.DateTime:=Now;
end;
procedure TFrmCadastroCompra.LimpaCampos;
var a,b,auxInt,I:Integer;
    UmProduto:TProduto;
begin
      Self.TEdtIdProduto.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtMarca.Clear;
      Self.TEdtQtde.Clear;
      Self.TEdtDesconto.Clear;
      Self.TEdtValorUnitario.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtICMS.Clear;
      Self.TEdtIPI.Clear;
      Self.TEdtFornecedor.Clear;
      Self.TEdtIdFornecedor.Clear;
      Self.TEdtIdCP.Clear;
      Self.TEdtCP.Clear;
      Self.TEdtObservacao.Clear;
      Self.TEdtNumNota.Clear;
      Self.TEdtSerie.Clear;
      Self.TEdtCFOP.Clear;
      Self.TedtValorTotalProdutos.Clear;
      Self.TEdtValorTotalNota.Clear;
      Self.tedtvalorFrete.Clear;
      Self.TEdtTotalComImpostos.Clear;

      Self.TEdtQtde.Enabled:=False;
      Self.TEdtValorUnitario.Enabled:=False;
      Self.TEdtValorTotal.Enabled:=False;
      Self.TEdtDesconto.Enabled:=False;
      Self.TEdtICMS.Enabled:=False;
      Self.TEdtIPI.Enabled:=False;
      auxInt:= UmaCompra.UmaListaProduto.Count;
      for a := 1 to Self.TStringGridProdutosCompra.ColCount do
         for b:= 1 to Self.TStringGridProdutosCompra.RowCount do
        begin
            Self.TStringGridProdutosCompra.Cells[a, b] := '';
        end;
      if (UmaCompra.UmaListaProduto.Count > 0) then
      begin
         for i:= auxInt  downto 1   do
         begin
           UmProduto:=UmaCompra.getProdutos(i-1);
           UmaCompra.UmaListaProduto.Delete(i-1);
           UmProduto.Destroy;
         end;
      end;
      Self.TStringGridProdutosCompra.RowCount:=2;

end;
procedure TFrmCadastroCompra.ReconhecaObjeto(ACompra: TCompra; ACtrlCompra:TCtrlCompra);
begin
  l:=1;
  UmaCompra:=ACompra;
  UmaCtrlCompra:=ACtrlCompra;
  UmaCompra.UmaListaProduto:=TList.Create;
end;

procedure TFrmCadastroCompra.TDateTimePickerDataEmicaoNotaClick(Sender: TObject);
begin
  inherited;
   if Self.TDateTimePickerDataEmicaoNota.DateTime > Now then
   begin
     Self.TDateTimePickerDataEmicaoNota.DateTime:=Now;
     ShowMessage('DATA INVALIDA, EMI��ES DEVEM SER IGUAIS OU ANTERIORES A DATA DE HOJE!');
   end;
end;
procedure TFrmCadastroCompra.TDateTimePickerDataEmicaoNotaExit(Sender: TObject);
begin
  inherited;
  if (Self.TDateTimePickerDataEmicaoNota.DateTime - 0.1) > Self.TDateTimeDataEntrada.DateTime then
  begin
        Self.TDateTimePickerDataEmicaoNota.DateTime:= Now;
        ShowMessage('A DATA DE EMISS�O N�O PODE SER MAIOR QUE A DATA DE ENTRADA.');
  end;
  if Self.TDateTimePickerDataEmicaoNota.DateTime > (now+0.1) then
  begin
     Self.TDateTimePickerDataEmicaoNota.DateTime:= Now;
     ShowMessage('A DATA DE EMISS�O N�O PODE SER MAIOR QUE  A DATA DE HOJE.');
  end;

end;

procedure TFrmCadastroCompra.TBtnAddClick(Sender: TObject);
var b,i,indice:integer;
    floatValue:Double;
    permicao:Boolean;
begin
        inherited;
        if Self.TBtnSalvar.Caption = '' then
        BEGIN
          ShowMessage('FUNCIONALIDADE N�O IMPLEMENTADA.');
        END;
        if ((Self.TEdtIdProduto.Text <> '') and (Self.TEdtProduto.Text <> '')) then
        begin
              if ((Self.TEdtIdProduto.Text = '0') or (Self.TEdtQtde.Text = '0') or (Self.TEdtQtde.Text = '')) then
              begin
                  ShowMessage('O ID DE NUMERO ZERO N�O � VALIDO OU A QUANTIDADE � INSUFICIENTE!');
                  Self.TEdtIdProduto.Clear;
                  Self.TEdtProduto.Clear;
                  Self.TEdtMarca.Clear;
                  Self.TEdtQtde.Clear;
                  Self.TEdtDesconto.Clear;
                  Self.TEdtValorUnitario.Clear;
                  Self.TEdtValorTotal.Clear;
                  Self.TEdtICMS.Clear;
                  Self.TEdtIPI.Clear;
              end
              else
              begin
                  permicao:=True;

                  if Self.TStringGridProdutosCompra.RowCount = 0 then
                        Self.TStringGridProdutosCompra.RowCount:= 1;

                  for i := 1 to l  do
                  begin
                       if (Self.TStringGridProdutosCompra.Cells[1,i] = Self.TEdtIdProduto.Text) then
                       begin
                            permicao:=False;
                            indice:=i;
                       end;
                  end;

                  if (permicao = False) and (MessageDlg('ESTE PRODUTO JA ESTA NA TABELA, DESEJA INCREMENTAR SUA QUANTIDADE ?', mtConfirmation,[mbYes,mbNo],0) = IDYes) then
                  begin
                   
                         Self.TStringGridProdutosCompra.Cells[5, indice]:=FloatToStr(StrToFloat(Self.TStringGridProdutosCompra.Cells[5, indice]) +
                         StrToFloat(Self.TEdtQtde.Text));

                          Self.TStringGridProdutosCompra.Cells[7, indice] := FloatToStr(( StrToFloat(Self.TStringGridProdutosCompra.Cells[4,indice]) *
                          StrToFloat(Self.TStringGridProdutosCompra.Cells[5, indice])));

                          Self.TStringGridProdutosCompra.Cells[10, indice] := FloatToStr( StrToFloat(Self.TStringGridProdutosCompra.Cells[7, indice]) +
                          ((StrToFloat(Self.TStringGridProdutosCompra.Cells[8, indice]) / 100) * StrToFloat(Self.TStringGridProdutosCompra.Cells[7, indice]) ) +
                          ((StrToFloat(Self.TStringGridProdutosCompra.Cells[9, indice]) / 100) * StrToFloat(Self.TStringGridProdutosCompra.Cells[7, indice]) )
                          );
                         Self.TedtValorTotalProdutos.Clear;
                         Self.TedtValorTotalProdutos.Text:='0,00';

                         for b:= 1 to l do
                           if TryStrToFloat(Self.TStringGridProdutosCompra.Cells[10, b],floatValue) then
                           begin

                               Self.TedtValorTotalProdutos.Text:= FloattoStr(StrToFloat(Self.TStringGridProdutosCompra.Cells[10, b])+
                               StrToFloat(Self.TedtValorTotalProdutos.Text));
                               Self.TEdtIdProduto.Clear;
                               Self.TEdtProduto.Clear;
                               Self.TEdtMarca.Clear;
                               Self.TEdtQtde.Clear;
                               Self.TEdtDesconto.Clear;
                               Self.TEdtValorUnitario.Clear;
                               Self.TEdtValorTotal.Clear;
                               Self.TEdtTotalComImpostos.Clear;
                               Self.TEdtICMS.Clear;
                               Self.TEdtIPI.Clear;
                           end;


                           if Self.TedtValorTotalProdutos.Text <> '' then
                           begin
                             if Self.TEdtValorFrete.Text = '' then
                                 Self.TEdtValorFrete.Text:='0,00';
                             Self.TEdtValorTotalNota.Text:=FloatToStr(StrToFloat(Self.TedtValorTotalProdutos.Text)+StrToFloat(Self.TEdtValorFrete.Text));
                           end;

                          Self.TEdtIdProduto.Clear;
                          Self.TEdtProduto.Clear;
                          Self.TEdtMarca.Clear;
                          Self.TEdtQtde.Clear;
                          Self.TEdtDesconto.Clear;
                          Self.TEdtValorUnitario.Clear;
                          Self.TEdtValorTotal.Clear;
                          Self.TEdtTotalComImpostos.Clear;
                          Self.TEdtICMS.Clear;
                          Self.TEdtIPI.Clear;

//                          Self.TEdtIdProduto.SetFocus;

                          Self.TEdtQtde.Enabled:=False;
                          Self.TEdtValorUnitario.Enabled:=False;
                          Self.TEdtValorTotal.Enabled:=False;
                          Self.TEdtDesconto.Enabled:=False;
                          Self.TEdtICMS.Enabled:=False;
                          Self.TEdtIPI.Enabled:=False;
                end
                else if (Self.TEdtValorTotal.Text <> '') and permicao and (Length(Self.TEdtProduto.Text) <> 0) then
                begin
                    if Self.TStringGridProdutosCompra.RowCount = 0 then
                          Self.TStringGridProdutosCompra.RowCount:= 1;
                    if Self.TEdtICMS.Text = ''  then
                          Self.TEdtICMS.Text:='0,00' ;
                    if Self.TEdtIPI.Text = '' then
                          Self.TEdtIPI.Text:='0,00';
                    if self.TEdtDesconto.Text = '' then
                          Self.TEdtDesconto.Text:= '0,00';

                    Self.TStringGridProdutosCompra.RowCount:= Self.TStringGridProdutosCompra.RowCount +1;
                    Self.TStringGridProdutosCompra.Cells[1, l] := Self.TEdtIdProduto.Text;
                    Self.TStringGridProdutosCompra.Cells[2, l] := Self.TEdtProduto.Text;
                    Self.TStringGridProdutosCompra.Cells[3, l] := Self.TEdtMarca.Text;
                    Self.TStringGridProdutosCompra.Cells[4, l] := Self.TEdtValorUnitario.Text;
                    Self.TStringGridProdutosCompra.Cells[5, l] := Self.TEdtQtde.Text;
                    Self.TStringGridProdutosCompra.Cells[6, l] := Self.TEdtDesconto.Text;
                    Self.TStringGridProdutosCompra.Cells[7, l] := FloatToStr(StrToFloat(Self.TEdtValorTotal.Text));
                    Self.TStringGridProdutosCompra.Cells[8, l] := Self.TEdtIPI.Text;
                    Self.TStringGridProdutosCompra.Cells[9, l] := Self.TEdtICMS.Text;

                    if Self.TEdtTotalComImpostos.Text <> '' then
                         Self.TStringGridProdutosCompra.Cells[10, l] :=  Self.TEdtTotalComImpostos.Text
                    else
                         Self.TStringGridProdutosCompra.Cells[10, l] :=  Self.TEdtValorTotal.Text;

                    Self.TedtValorTotalProdutos.Clear;
                    Self.TedtValorTotalProdutos.Text:='0,00';

                    for b:= 1 to l do
                      if TryStrToFloat(Self.TStringGridProdutosCompra.Cells[10, b],floatValue) then
                      begin
                             Self.TedtValorTotalProdutos.Text:= FloattoStr(StrToFloat(Self.TStringGridProdutosCompra.Cells[10, b])+
                             StrToFloat(Self.TedtValorTotalProdutos.Text));
                             Self.TEdtIdProduto.Clear;
                             Self.TEdtProduto.Clear;
                             Self.TEdtMarca.Clear;
                             Self.TEdtQtde.Clear;
                             Self.TEdtDesconto.Clear;
                             Self.TEdtValorUnitario.Clear;
                             Self.TEdtValorTotal.Clear;
                             Self.TEdtTotalComImpostos.Clear;
                             Self.TEdtICMS.Clear;
                             Self.TEdtIPI.Clear;
                      end;

                      if Self.TedtValorTotalProdutos.Text <> '' then
                      begin
                            if Self.TEdtValorFrete.Text = '' then
                                Self.TEdtValorFrete.Text:='0,00';
                            Self.TEdtValorTotalNota.Text:=FloatToStr(StrToFloat(Self.TedtValorTotalProdutos.Text)+StrToFloat(Self.TEdtValorFrete.Text));
                      end;

                      l := l + 1;



                      Self.TEdtIdProduto.Clear;
                      Self.TEdtProduto.Clear;
                      Self.TEdtMarca.Clear;
                      Self.TEdtQtde.Clear;
                      Self.TEdtDesconto.Clear;
                      Self.TEdtValorUnitario.Clear;
                      Self.TEdtValorTotal.Clear;
                      Self.TEdtTotalComImpostos.Clear;
                      Self.TEdtICMS.Clear;
                      Self.TEdtIPI.Clear;

                      Self.TEdtQtde.Enabled:=False;
                      Self.TEdtValorUnitario.Enabled:=False;
                      Self.TEdtValorTotal.Enabled:=False;
                      Self.TEdtDesconto.Enabled:=False;
                      Self.TEdtICMS.Enabled:=False;
                      Self.TEdtIPI.Enabled:=False;
                      //Self.TEdtIdProduto.SetFocus;


                end
                else
                begin
                      ShowMessage('OS CAMPOS DE PRODUTO DEVEM SER CARREGADOS CORRETAMENTE PARA SEREM ADICIONADOS A RECEITA !');
                      Self.TEdtIdProduto.Clear;
                      Self.TEdtProduto.Clear;
                      Self.TEdtMarca.Clear;
                      Self.TEdtQtde.Clear;
                      Self.TEdtDesconto.Clear;
                      Self.TEdtValorUnitario.Clear;
                      Self.TEdtValorTotal.Clear;
                      Self.TEdtTotalComImpostos.Clear;
                      Self.TEdtICMS.Clear;
                      Self.TEdtIPI.Clear;

                end;
              end;
        end
        else
        begin
              ShowMessage('OS CAMPOS DE PRODUTO DEVEM SER CARREGADOS CORRETAMENTE PARA SEREM ADICIONADOS A RECEITA !');
              Self.TEdtIdProduto.Clear;
              Self.TEdtProduto.Clear;
              Self.TEdtMarca.Clear;
              Self.TEdtQtde.Clear;
              Self.TEdtDesconto.Clear;
              Self.TEdtValorUnitario.Clear;
              Self.TEdtValorTotal.Clear;
              Self.TEdtTotalComImpostos.Clear;
              Self.TEdtICMS.Clear;
              Self.TEdtIPI.Clear;
        end;
end;

procedure TFrmCadastroCompra.TBtnBuscarForneceodorClick(Sender: TObject);
begin
  inherited;
    UmFrmConFornecedor:=TFrmConsultarFornecedor.Create(nil);
    UmFrmConFornecedor.ReconhecaObjeto(UmaCompra.UmFornecedorJ,UmaCompra.UmFornecedorF);
    UmFrmConFornecedor.TBtnCancelar.Caption:='Selecionar';
    UmFrmConFornecedor.ShowModal;
    if UmaCompra.UmFornecedorJ.RS <> '' then
    begin
       Self.TEdtIdFornecedor.Text:=IntToStr(UmaCompra.UmFornecedorJ.Id);
       Self.TEdtFornecedor.Text:=UmaCompra.UmFornecedorJ.RS;
    end
    else if UmaCompra.UmFornecedorF.Nome <> '' then
    begin
       Self.TEdtIdFornecedor.Text:=IntToStr(UmaCompra.UmFornecedorF.Id);
       Self.TEdtFornecedor.Text:=UmaCompra.UmFornecedorF.Nome;
    end
    else
    begin
       Self.TEdtIdFornecedor.Clear;
       Self.TEdtFornecedor.Clear;
    end;
    UmFrmConFornecedor.Destroy;
end;

procedure TFrmCadastroCompra.TBtnBuscarFPClick(Sender: TObject);
begin
  inherited;
    UmFrmConCP:=TFrmConsultarCondicaoPagamento.Create(nil);
    UmFrmConCP.ReconhecaObjeto(UmaCompra.UmaCP);
    UmFrmConCP.TBtnCancelar.Caption:='Selecionar';
    UmFrmConCP.ShowModal;
    Self.TEdtIdCP.Text:=IntToStr(UmaCompra.UmaCP.IdCP);
    Self.TEdtCP.Text:=  UmaCompra.UmaCP.CP;
    UmFrmConCP.Destroy;

end;

procedure TFrmCadastroCompra.TBtnBuscarProdutoClick(Sender: TObject);
begin
  inherited;
    UmFrmConProduto:=TFrmConsultarProduto.Create(nil);
    UmFrmConProduto.ReconhecaObjeto(UmaCompra.UmProduto);
    UmFrmConProduto.TBtnCancelar.Caption:='Selecionar';
    UmFrmConProduto.ShowModal;

    Self.TEdtIdProduto.Text:=IntToStr(UmaCompra.UmProduto.IdProduto);
    Self.TEdtProduto.Text:=UmaCompra.UmProduto.Produto;
    Self.TEdtMarca.Text:=UmaCompra.UmProduto.Marca;
    if UmaCompra.UmProduto.TipoUnidade = 1 then
      Self.TLblMedida.Caption:='Kg(s)'
    else if UmaCompra.UmProduto.TipoUnidade = 2 then
      Self.TLblMedida.Caption:='Litro(s)'
    else if UmaCompra.UmProduto.TipoUnidade = 3 then
      Self.TLblMedida.Caption:='Unid.(s)';
    Self.TEdtIdProduto.SetFocus;
      UmFrmConProduto.Destroy;
end;

procedure TFrmCadastroCompra.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroCompra.TBtnLimparClick(Sender: TObject);
begin
  inherited;
Self.LimpaCampos;
end;

procedure TFrmCadastroCompra.TBtnLimpaValoresClick(Sender: TObject);
begin
  inherited;
      Self.TEdtQtde.Clear;
      Self.TEdtDesconto.Clear;
      Self.TEdtValorUnitario.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtTotalComImpostos.Clear;
      Self.TEdtICMS.Clear;
      Self.TEdtIPI.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtIdProduto.Clear;
      Self.TEdtMarca.Clear;
      Self.TLblMedida.Caption:='';
      //Self.TEdtIdProduto.SetFocus;
      Self.TEdtQtde.Enabled:=False;
      Self.TEdtValorUnitario.Enabled:=False;
      Self.TEdtValorTotal.Enabled:=False;
      Self.TEdtDesconto.Enabled:=False;
      Self.TEdtICMS.Enabled:=False;
      Self.TEdtIPI.Enabled:=False;
     // Self.TEdtIdProduto.SetFocus;

end;

procedure TFrmCadastroCompra.TBtnRemoverClick(Sender: TObject);
var i,j:Integer;
    condicao:Boolean;
    floatValue:Double;
begin
    inherited;
    condicao:=True;
    if ((Self.TStringGridProdutosCompra.Cells[1,lin] = '') or
        (Self.TStringGridProdutosCompra.RowCount <= 0)) or
        (Self.TStringGridProdutosCompra.Cells[1,1] = '') then
    begin
         ShowMessage('N�O EXISTEM DADOS A SEREM EXCLUIDOS, OU N�O FOI SELECIONADO NENHUM DADO NA TABELA!');
         condicao:=False;
    end
    else if (MessageDlg('VOC� CONFIRMA A EXCLUS�O DOS DADOS', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
    begin
      for i := lin to TStringGridProdutosCompra.RowCount do
        for j := 1 to TStringGridProdutosCompra.ColCount  do
          if ((i <> 0) and (j <> 0)) then
             Self.TStringGridProdutosCompra.Cells[j,i]:=Self.TStringGridProdutosCompra.Cells[j,i+1]
          else
             Condicao:=False;
    end
    else
      condicao:=False;
    if Condicao then
    begin
      Self.TStringGridProdutosCompra.RowCount:=Self.TStringGridProdutosCompra.RowCount -1;
      l:=l-1;

      Self.TedtValorTotalProdutos.Clear;
      Self.TedtValorTotalProdutos.Text:='0,00';
      Self.TEdtValorTotalNota.Clear;
      Self.TEdtValorTotalNota.Text:='0,00';

      for j:= 1 to l  do
        if TryStrToFloat(Self.TStringGridProdutosCompra.Cells[10, j],floatValue) then
           Self.TedtValorTotalProdutos.Text:= FloatToStr(StrToFloat(Self.TStringGridProdutosCompra.Cells[10, j])+
           StrToFloat(Self.TedtValorTotalProdutos.Text));

           Self.TEdtValorTotalNota.Text := Self.TedtValorTotalProdutos.Text;
    end;
end;

procedure TFrmCadastroCompra.TBtnSalvarClick(Sender: TObject);
var MSG:string;
  value:Double;
  Aux:Double;
  i:Integer;
  UmProduto:TProduto;
begin
  inherited;
  if Self.TBtnSalvar.Caption = '&Cancelar' then
  begin
    ShowMessage('FUNCIONALIDADE N�O IMPLEMENTADA.');
    Exit;
  end;
  if Self.ValidaCampos then
  begin
    UmaCompra.NumeroNota:=StrToInt(Self.TEdtNumNota.Text);
    UmaCompra.Serie:=Self.TEdtSerie.Text;
    UmaCompra.CFOP:=Self.TEdtCFOP.Text;
    UmaCompra.DataEntrada:=DateTimeToStr( Self.TDateTimeDataEntrada.DateTime);
    UmaCompra.DataEmicao:=DateTimeToStr(Self.TDateTimePickerDataEmicaoNota.DateTime);
    UmaCompra.UmFornecedorJ.Id:=StrToInt(Self.TEdtIdFornecedor.Text);
    UmaCompra.ValorTotalProdutos:=StrToFloat(FormatFloat('#0.00',StrToFloat(Self.TedtValorTotalProdutos.Text)));
    UmaCompra.ValorFrete:=StrToFloat(Self.TEdtValorFrete.Text);
    UmaCompra.ValorTotalNota:=StrToFloat(FormatFloat('#0.00',StrToFloat(Self.TEdtValorTotalNota.Text)));
    UmaCompra.Observacoes:=Self.TEdtObservacao.Text;
    UmaCompra.UmaCP.IdCP:=StrToInt(Self.TEdtIdCP.Text);
    UmaCompra.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
    UmaCompra.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
    UmProduto:=UmaCompra.UmProduto;
    for i:= 1 to l - 1 do
    begin
         UmaCompra.UmProduto:=TProduto.Create;
         UmaCompra.UmProduto.IdProduto:=StrToInt(Self.TStringGridProdutosCompra.Cells[1,i]);
         UmaCompra.UmProduto.ValorCompra:=StrToFloat(FormatFloat('#0.00',StrToFloat(Self.TStringGridProdutosCompra.Cells[4, i])));
         UmaCompra.UmProduto.ValorTotalCompra:=StrToFloat(FormatFloat('#0.00',StrToFloat(Self.TStringGridProdutosCompra.Cells[10,i])));
         UmaCompra.UmProduto.ICMS:=StrToFloat(FormatFloat('#0.00', StrToFloat(Self.TStringGridProdutosCompra.Cells[9, i])));
         UmaCompra.UmProduto.IPI:=StrToFloat(Self.TStringGridProdutosCompra.Cells[8, i]);
         UmaCompra.UmProduto.Desconto:=StrToFloat(FormatFloat('#0.00',StrToFloat(Self.TStringGridProdutosCompra.Cells[6, i])));
         UmaCompra.UmProduto.Qtde:=Self.TStringGridProdutosCompra.Cells[5,i];
         UmaCompra.UmaListaProduto.Insert(i-1,UmaCompra.UmProduto);
         UmaCompra.UmProduto:=nil;
    end;
    UmaCompra.UmProduto:=UmProduto;
    UmProduto:=nil;
    MSG:= UmaCtrlCompra.Salvar(UmaCompra);
    ShowMessage(MSG);
    Self.TBtnCancelarClick(Sender);
  end
  else
    ShowMessage('TODOS OS CAMPOS OBRIGATORIOS DEVEM SER PREENCHIDOS.');
end;

procedure TFrmCadastroCompra.TDateTimeDataEntradaClick(Sender: TObject);
begin
  inherited;
    Self.TDateTimeDataEntrada.DateTime:=Now;
end;

procedure TFrmCadastroCompra.TDateTimeDataEntradaExit(Sender: TObject);
begin
  inherited;
  if Self.TDateTimeDataEntrada.Date < Self.TDateTimePickerDataEmicaoNota.DateTime then
  begin
    ShowMessage('DATA DE ENTRADA INCORRETA');
    Self.TDateTimeDataEntrada.DateTime:=Now;
  end;
  if Self.TDateTimePickerDataEmicaoNota.DateTime > (Now + 0.1) then
  begin
    ShowMessage('A  DATA DE ENTRADA N�O DEVE SER MAIOR QUE A DATA DE HOJE.');
    Self.TDateTimeDataEntrada.DateTime:=Now;
  end;
end;

procedure TFrmCadastroCompra.TDateTimePickerDataCadastroClick(Sender: TObject);
begin
  inherited;
  Self.TDateTimePickerDataCadastro.DateTime:=Now();
end;

procedure TFrmCadastroCompra.TEdtDescontoExit(Sender: TObject);
var floatValueVLUnit,floatValueQTDE:Double;
    floatValueICMS, floatValueDesconto, floatValueIPI,floatValueAux:Double;
    stringValue,aux:string;
begin
  inherited;
  if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) then
  begin
      if floatValueDesconto >= 100 then
      Begin
          Self.TEdtDesconto.Clear;
          ShowMessage('DESCONTO INAPROPRIADO.');
      end;

      if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and TryStrToFloat(Self.TEdtQtde.Text,floatValueQtde) and TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
      begin
            Self.TEdtDesconto.Text:=FormatFloat('#0.0',floatValueDesconto);

            if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
              (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
              (not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE);
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtTotalComImpostos.Text:=  Self.TEdtValorTotal.Text;
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE) *
                 (1 + (floatValueIPI/100));
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtValorTotal.Text:= FormatFloat('#0.00',floatValueVLUnit *  floatValueQTDE-((floatValueDesconto/100)*(floatValueVLUnit *  floatValueQTDE)));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100)) ;
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtValorTotal.Text:= FormatFloat('#0.00',floatValueVLUnit *  floatValueQTDE-((floatValueDesconto/100)*(floatValueVLUnit *  floatValueQTDE)));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if ( not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    ( not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= floatValueVLUnit *  floatValueQTDE ;
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtTotalComImpostos.Text:=Self.TEdtValorTotal.Text;
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    (  TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= ((floatValueVLUnit *  floatValueQTDE) * (1 + (floatValueICMS/100)));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end

      end;
      Self.TEdtValorUnitarioExit(Sender);
  end
  else
  begin
      Self.TEdtDesconto.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtValorUnitarioExit(Sender);
  end;

end;

procedure TFrmCadastroCompra.TEdtDescontoKeyPress(Sender: TObject;
  var Key: Char);
var floatValue:Double;
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
     key:=#0;
  if TryStrToFloat(Self.TEdtDesconto.Text,floatValue) then
      if (Length(Self.TEdtDesconto.Text) >= 4) and (floatValue < 1) and not (Key in [#8]) then
           key:=#0
      else if (Length(Self.TEdtDesconto.Text) >= 5) and (floatValue < 100)   and not (Key in [#8]) then
           key:=#0;
end;

procedure TFrmCadastroCompra.TEdtICMSExit(Sender: TObject);
var floatValueVLUnit,floatValueQTDE:Double;
    floatValueICMS, floatValueDesconto, floatValueIPI,floatValueAux:Double;
    stringValue,aux:string;
begin
  inherited;
  if TryStrToFloat(Self.TEdtICMS.Text,floatValueICMS) then
  begin

      if  TryStrToFloat(Self.TEdtQtde.Text,floatValueQtde) and TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
      begin
            Self.TEdtICMS.Text:=FormatFloat('#0.00',floatValueICMS);

            if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
              (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
              (not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE);
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE) *
                 (1 + (floatValueIPI/100));
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100)) ;
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if ( not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    ( not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= floatValueVLUnit *  floatValueQTDE ;
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    (  TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= ((floatValueVLUnit *  floatValueQTDE) * (1 + (floatValueICMS/100)));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
      end;
      Self.TEdtValorUnitarioExit(Sender);
  end
  else
  begin
      Self.TEdtICMS.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtValorUnitarioExit(Sender);
  end;


end;

procedure TFrmCadastroCompra.TEdtICMSKeyPress(Sender: TObject; var Key: Char);
var floatValue:Double;
begin
  inherited;
   if not (key in ['0'..'9',',',#8]) then
    key:=#0;
   if TryStrToFloat(Self.TEdtICMS.Text,floatValue) and not (Key in [#8]) then
      if (Length(Self.TEdtICMS.Text) >= 4) and (floatValue < 1) then
           key:=#0
      else if (Length(Self.TEdtICMS.Text) >= 5) and (floatValue < 100)   and not (Key in [#8]) then
           key:=#0;
end;

procedure TFrmCadastroCompra.TEdtIdCPExit(Sender: TObject);
var
  UmaCtrlCP:TCtrlCP;
  intValue:integer;
begin
inherited;
    Self.TEdtIdCP.Color:=clWindow;
    if TryStrToInt(Self.TEdtIdCP.Text,IntValue) and (Self.TEdtIdCP.Text <> '') then
     begin
              Self.TEdtCP.Clear;
              UmaCtrlCP:=TCtrlCP.Create;
              UmaCompra.UmaCP.IdCP:=StrToInt(Self.TEdtIdCP.Text);
              if not UmaCtrlCP.Buscar(UmaCompra.UmaCP.IdCP,'') then
              begin
                   Self.TEdtIdCP.Clear;
                   Self.TEdtCP.Clear;
              end
              else
              begin
                   UmaCtrlCP.Carregar(UmaCompra.UmaCP);
                   Self.TEdtIdCP.Text:= IntToStr(UmaCompra.UmaCP.IdCP);
                   Self.TEdtCP.Text:=UmaCompra.UmaCP.CP;

                   end;
              UmaCtrlCP.Destroy
              end
     else
     begin
          Self.TEdtIdCP.Clear;
          Self.TEdtCP.Clear;
     end;
end;

procedure TFrmCadastroCompra.TEdtIdFornecedorExit(Sender: TObject);
var
  UmaCtrlFornecedor:TCtrlFornecedor;
  intValue, intaux:integer;
begin
inherited;
    if (TryStrToInt(Self.TEdtNumNota.Text,intaux)) and  (TryStrToInt(Self.TEdtIdFornecedor.Text, intaux)) and (Length( Self.TEdtSerie.Text) > 0 ) and (Self.TEdtSerie.Text <> '') then
    begin
        if UmaCtrlCompra.Buscar(StrToInt(Self.TEdtNumNota.Text), Self.TEdtSerie.Text,StrToInt(Self.TEdtIdFornecedor.Text)) then
        begin
          ShowMessage('ESTE NUMERO DE NOTA E SERIE JA EST�O REGISTRADOS PARA ESTE FORNECEDOR.');
          Self.TEdtSerie.Clear;
          Self.TEdtNumNota.Clear;
          Self.TEdtIdFornecedor.Clear;
          Self.TEdtFornecedor.Clear;
          Exit;
        end;
    end;

    Self.TEdtIdFornecedor.Color:=clWindow;
    if TryStrToInt(Self.TEdtIdFornecedor.Text,IntValue) and (Self.TEdtIdFornecedor.Text <> '') then
     begin
              Self.TEdtFornecedor.Clear;
              UmaCtrlFornecedor:=TCtrlFornecedor.Create;
              UmaCompra.UmFornecedorJ.Id:=StrToInt(Self.TEdtIdFornecedor.Text);
              UmaCompra.UmFornecedorF.Id:=StrToInt(Self.TEdtIdFornecedor.Text);
              if not UmaCtrlFornecedor.Buscar(UmaCompra.UmFornecedorJ.Id,'') then
              begin
                   Self.TEdtIdFornecedor.Clear;
                   Self.TEdtFornecedor.Clear;
                   ShowMessage('REGISTRO N�O ENCONTRADO.');
              end
              else
              begin
                   UmaCtrlFornecedor.Carregar(UmaCompra.UmFornecedorF,1);
                   UmaCtrlFornecedor.Carregar(UmaCompra.UmFornecedorJ,2);
                   if UmaCompra.UmFornecedorJ.RS <> '' then
                   begin
                      Self.TEdtIdFornecedor.Text:= IntToStr(UmaCompra.UmFornecedorJ.Id);
                      Self.TEdtFornecedor.Text:=UmaCompra.UmFornecedorJ.RS;
                   end
                   else if UmaCompra.UmFornecedorF.Nome <> '' then
                   begin

                        Self.TEdtIdFornecedor.Text:= IntToStr(UmaCompra.UmFornecedorF.Id);
                        Self.TEdtFornecedor.Text:=UmaCompra.UmFornecedorF.Nome;

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

procedure TFrmCadastroCompra.TEdtIdFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8]) then
     key:=#0;
end;
procedure TFrmCadastroCompra.TEdtIdProdutoExit(Sender: TObject);
var
  UmaCtrlProduto:TCtrlProduto;
  intValue:integer;
begin
inherited;
    Self.TEdtIdProduto.Color:=clWindow;
    UmaCtrlProduto:=TCtrlProduto.Create;
    if TryStrToInt(Self.TEdtIdProduto.Text,IntValue) and (Self.TEdtIdProduto.Text <> '') then
     begin
              Self.TEdtProduto.Clear;
              Self.TEdtMarca.Clear;
              UmaCompra.UmProduto.IdProduto:=StrToInt(Self.TEdtIdProduto.Text);
              if not UmaCtrlProduto.Buscar(UmaCompra.UmProduto.IdProduto,'') then
              begin
                   Self.TEdtIdProduto.Clear;
                   Self.TEdtProduto.Clear;
                   Self.TEdtMarca.Clear;

                   Self.TEdtQtde.Enabled:=False;
                   Self.TEdtValorUnitario.Enabled:=False;
                   Self.TEdtDesconto.Enabled :=False;
                   Self.TEdtICMS.Enabled:=False;
                   Self.TEdtIPI.Enabled:= False;

                   Self.TEdtQtde.Clear;
                   Self.TEdtDesconto.Clear;
                   Self.TEdtValorUnitario.Clear;
                   Self.TEdtValorTotal.Clear;
                   Self.TEdtIPI.Clear;
                   Self.TEdtICMS.Clear;
              end
              else
              begin
                   UmaCtrlProduto.Carregar(UmaCompra.UmProduto);
                   if UmaCompra.UmProduto.Tipo = 3 then
                   begin
                       ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER ASSOCIADO A UM FORNECEDOR!');
                       Self.TEdtIdProduto.Clear;
                       Self.TEdtProduto.Clear;
                       Self.TEdtMarca.Clear;

                       Self.TEdtQtde.Clear;
                       Self.TEdtDesconto.Clear;
                       Self.TEdtValorUnitario.Clear;
                       Self.TEdtValorTotal.Clear;
                       Self.TEdtIPI.Clear;
                       Self.TEdtICMS.Clear;
                   end
                   else
                   begin
                       Self.TEdtIdProduto.Text:= IntToStr(UmaCompra.UmProduto.IdProduto);
                       Self.TEdtProduto.Text:=UmaCompra.UmProduto.Produto;
                       Self.TEdtMarca.Text:=UmaCompra.UmProduto.Marca;
                       if Length(Self.TEdtProduto.Text) <> 0 then
                       begin

                           Self.TEdtQtde.Enabled:=True;
                           Self.TEdtValorUnitario.Enabled:=True;
                           Self.TEdtDesconto.Enabled :=True;
                           Self.TEdtICMS.Enabled:=True;
                           Self.TEdtIPI.Enabled:=True;

                           Self.TEdtQtde.Clear;
                           Self.TEdtDesconto.Clear;
                           Self.TEdtValorUnitario.Clear;
                           Self.TEdtValorTotal.Clear;
                           Self.TEdtIPI.Clear;
                           Self.TEdtICMS.Clear;

                       end
                       else
                       begin

                           Self.TEdtQtde.Enabled:=False;
                           Self.TEdtValorUnitario.Enabled:=False;
                           Self.TEdtValorTotal.Enabled:=False;
                           Self.TEdtDesconto.Enabled:=False;
                           Self.TEdtICMS.Enabled:=False;
                           Self.TEdtIPI.Enabled:=False;

                           Self.TEdtQtde.Clear;
                           Self.TEdtValorUnitario.Clear;
                           Self.TEdtDesconto.Clear;
                           Self.TEdtValorTotal.Clear;
                           Self.TEdtIPI.Clear;
                           Self.TEdtICMS.Clear;

                       end;

                       if UmaCompra.UmProduto.TipoUnidade = 1 then
                           Self.TLblMedida.Caption:= 'Kg(s)'
                       else if UmaCompra.UmProduto.TipoUnidade = 2 then
                            Self.TLblMedida.Caption:='Litro(s)'
                       else if UmaCompra.UmProduto.TipoUnidade = 3 then
                            Self.TLblMedida.Caption:= 'Unid.(s)';
                   end;
              end;
     end
     else
     begin
          Self.TEdtIdProduto.Clear;
          Self.TEdtProduto.Clear;
          Self.TEdtMarca.Clear;
     end;

     UmaCtrlProduto.Destroy;
end;

procedure TFrmCadastroCompra.TEdtIdProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not (key in ['0'..'9',#8]) then
    key:=#0;
end;

procedure TFrmCadastroCompra.TEdtIPIExit(Sender: TObject);
var floatValueVLUnit,floatValueQTDE:Double;
    floatValueICMS, floatValueDesconto, floatValueIPI,floatValueAux:Double;
    stringValue,aux:string;
begin
  inherited;
  if TryStrToFloat(Self.TEdtIPI.Text,floatValueIPI) then
  begin
      if  TryStrToFloat(Self.TEdtQtde.Text,floatValueQtde) and TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
      begin
            Self.TEdtIPI.Text:=FormatFloat('#0.00',floatValueIPI);

            if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
              (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
              (not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE);
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE) *
                 (1 + (floatValueIPI/100));
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100)) ;
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if ( not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    ( not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= floatValueVLUnit *  floatValueQTDE ;
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    (  TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                 floatValueAux:= ((floatValueVLUnit *  floatValueQTDE) * (1 + (floatValueICMS/100)));
                 Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
            end;

      end;
      Self.TEdtValorUnitarioExit(Sender);
  end
  else
  begin
      Self.TEdtIPI.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtValorUnitarioExit(Sender);
  end;

end;
procedure TFrmCadastroCompra.TEdtIPIKeyPress(Sender: TObject; var Key: Char);
var floatValue:Double;
begin
  inherited;
   if not (key in ['0'..'9',',',#8]) then
    key:=#0;
   if TryStrToFloat(Self.TEdtIPI.Text,floatValue) and not (Key in [#8]) then
      if (Length(Self.TEdtIPI.Text) >= 4) and (floatValue < 1) then
           key:=#0
      else if (Length(Self.TEdtIPI.Text) >= 5) and (floatValue < 100)   and not (Key in [#8]) then
           key:=#0;
end;

procedure TFrmCadastroCompra.TEdtNumNotaExit(Sender: TObject);
var intaux:integer;
begin
  inherited;
      if (TryStrToInt(Self.TEdtNumNota.Text,intaux)) and  (TryStrToInt(Self.TEdtIdFornecedor.Text, intaux)) and (Length( Self.TEdtSerie.Text) > 0 ) and (Self.TEdtSerie.Text <> '') then
      begin
        if UmaCtrlCompra.Buscar(StrToInt(Self.TEdtNumNota.Text), Self.TEdtSerie.Text,StrToInt(Self.TEdtIdFornecedor.Text)) then
        begin
          ShowMessage('ESTE NUMERO DE NOTA E SERIE JA EST�O REGISTRADOS PARA ESTE FORNECEDOR.');
          Exit;
          Self.TEdtSerie.Clear;
          Self.TEdtNumNota.Clear;
          Self.TEdtIdFornecedor.Clear;
          Self.TEdtFornecedor.Clear;
          Exit;
        end;
      end;
    Self.TEdtNumNota.Color:=clWindow;
end;

procedure TFrmCadastroCompra.TEdtNumNotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if not (key in ['0'..'9',#8]) then
      key:=#0;
end;

procedure TFrmCadastroCompra.TEdtQtdeExit(Sender: TObject);
var floatValue:Double;
    intValue:Integer;
begin
    inherited;

    if Self.TLblMedida.Caption <> 'Unid.(s)' then
    begin
      if TryStrToFloat(Self.TEdtQtde.Text,floatValue) then
      begin
            Self.TEdtQtde.Text:= FormatFloat('#0.00',floatValue);
            if floatValue <= 0 then
            begin
                Self.TEdtQtde.Clear;
                ShowMessage('QUANTIDADE INCORRETA.');
            end;
      end
      else
            Self.TEdtQtde.Clear;
    end
    else if Self.TLblMedida.Caption = 'Unid.(s)' then
    begin
        if TryStrToInt(Self.TEdtQtde.Text,intValue) then
        begin
            if StrToInt(Self.TEdtQtde.Text) <= 0 then
            begin
                Self.TEdtQtde.Clear;
                ShowMessage('QUANTIDADE INCORRETA.');
            end;
        end
        else
                Self.TEdtQtde.Clear;
    end;
    Self.TEdtValorUnitarioExit(Sender);
end;

procedure TFrmCadastroCompra.TEdtQtdeKeyPress(Sender: TObject; var Key: Char);
var floatValue:Double;
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
  if TryStrToFloat(Self.TEdtQtde.Text, floatValue) then
  begin
     if (Length(Self.TEdtQtde.Text) >= 4) and (floatValue < 1) then
           key:=#0
     else if (Length(Self.TEdtQtde.Text) >= 5) and (floatValue < 100)   and not (Key in [#8]) then
           key:=#0;
  end;
end;

procedure TFrmCadastroCompra.TEdtSerieExit(Sender: TObject);
var intAux:integer;
begin
  inherited;
  if (TryStrToInt(Self.TEdtNumNota.Text,intaux)) and  (TryStrToInt(Self.TEdtIdFornecedor.Text, intaux)) and (Length( Self.TEdtSerie.Text) > 0 ) and (Self.TEdtSerie.Text <> '') then
    begin
        if UmaCtrlCompra.Buscar(StrToInt(Self.TEdtNumNota.Text), Self.TEdtSerie.Text,StrToInt(Self.TEdtIdFornecedor.Text)) then
        begin
          ShowMessage('ESTE NUMERO DE NOTA E SERIE JA EST�O REGISTRADOS PARA ESTE FORNECEDOR.');
          Self.TEdtSerie.Clear;
          Self.TEdtNumNota.Clear;
          Self.TEdtIdFornecedor.Clear;
          Self.TEdtFornecedor.Clear;
          Exit;
        end;
    end;
  Self.TEdtSerie.Color:=clWindow;
end;

procedure TFrmCadastroCompra.TEdtValorFreteExit(Sender: TObject);
var floatValue1,floatValue2,floatValue3:Double;
    stringValue:string;
begin
  inherited;
  if (not TryStrToFloat(Self.TEdtValorFrete.Text, floatValue1))then
  begin
      Self.TEdtValorFrete.Clear;
      Self.TEdtValorTotalNota.Clear;
      if TryStrToFloat(Self.TedtValorTotalProdutos.Text,floatValue2) then
        Self.TEdtValorTotalNota.Text:= Self.TedtValorTotalProdutos.Text
      else
      begin
        Self.TEdtValorTotalNota.Text:='0,00';
        Self.TedtValorTotalProdutos.Text:='0,00';
      end;
      Self.TEdtValorFrete.Text:='0,00';
  end
  else
  begin
      Self.TEdtValorFrete.Text:=FloatToStr(floatValue1);
      if (Self.TedtValorTotalProdutos.Text <> '') and 
      (TryStrToFloat(Self.TedtValorTotalNota.Text, floatValue3)) and 
      (TryStrToFloat(Self.TEdtValorFrete.Text, floatValue1) and TryStrToFloat(Self.TedtValorTotalProdutos.Text,floatValue2) ) then
      begin
         stringValue:= FormatFloat('#0.00',(floatValue1 + floatValue2));
         TryStrToFloat(stringValue,floatValue3);
         Self.TedtValorTotalNota.Text:= FormatFloat('#0.00',floatValue3);
      end
      else
      begin
        Self.TEdtValorTotalNota.Clear;
        Self.TEdtValorFrete.Clear;
        Self.TEdtValorFrete.Text:='0,00';
      end;
  end;
end;

procedure TFrmCadastroCompra.TEdtValorFreteKeyPress(Sender: TObject;
  var Key: Char);
var floatValue:Double;
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
  if TryStrToFloat(Self.TEdtValorFrete.Text,floatValue) then
      if (Length(Self.TEdtValorFrete.Text) >= 4) and (floatValue < 1) then
           key:=#0
      else if (Length(Self.TEdtValorFrete.Text) >= 5) and (floatValue < 100)   and not (Key in [#8]) then
           key:=#0;
end;

procedure TFrmCadastroCompra.TEdtValorUnitarioExit(Sender: TObject);
var floatValueVLUnit,floatValueQTDE:Double;
    floatValueICMS, floatValueDesconto, floatValueIPI,floatValueAux:Double;
    stringValue,aux:string;
begin
  inherited;
  if TryStrToFloat(Self.TEdtValorUnitario.Text,floatValueVlUnit) and TryStrToFloat(Self.TEdtQtde.Text,floatValueQtde) then
  begin
    Self.TEdtValorUnitario.Text:=FormatFloat('#0.00',floatValueVLUnit);
    if floatValueQTDE > 0 then
        if floatValueVLUnit <= 0 then
        begin
          Self.TEdtValorUnitario.Clear;
          Self.TEdtValorTotal.Clear;
          ShowMessage('ESTE VALOR UNITARIO N�O � CORRETO!');
        end
        else
        begin
        if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
              (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
              (not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE);
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtTotalComImpostos.Text:=Self.TEdtValorTotal.Text;
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (floatValueVLUnit *  floatValueQTDE) *
                 (1 + (floatValueIPI/100));
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',(floatValueVLUnit *  floatValueQTDE) - ((floatValueDesconto/100)*(floatValueVLUnit *  floatValueQTDE)));
            end
            else if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100)) ;
                floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',(floatValueVLUnit *  floatValueQTDE) - ((floatValueDesconto/100)*(floatValueVLUnit *  floatValueQTDE)))
            end
            else if ( not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    ( not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= floatValueVLUnit *  floatValueQTDE ;
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtTotalComImpostos.Text:=Self.TEdtValorTotal.Text;
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
               Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
               Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueVLUnit *  floatValueQTDE);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                  ( TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                  ( not TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= (((floatValueVLUnit *  floatValueQTDE) *
                (1 + (floatValueIPI/100)))) * (1 + (floatValueICMS/100));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueVLUnit *  floatValueQTDE);
            end
            else if (not TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto)) and
                    (not TryStrToFloat(Self.TEdtIPI.Text, floatValueIPI)) and
                    (  TryStrToFloat(Self.TEdtICMS.Text, floatValueICMS)) then
            begin
                floatValueAux:= ((floatValueVLUnit *  floatValueQTDE) * (1 + (floatValueICMS/100)));
                Self.TEdtTotalComImpostos.Text:=FormatFloat('#0.00',floatValueAux);
                Self.TEdtValorTotal.Text:=FormatFloat('#0.00',floatValueVLUnit *  floatValueQTDE);
            end
        end;
  end
  else
  begin
      if not TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
      begin
          Self.TEdtValorUnitario.Clear;
          Self.TEdtTotalComImpostos.Clear;
          Self.TEdtValorTotal.Clear;
      end;
      if not TryStrToFloat(Self.TEdtQtde.Text, floatValueVLUnit) then
      begin
          Self.TEdtQtde.Clear;
          Self.TEdtTotalComImpostos.Clear;
          Self.TEdtValorTotal.Clear;
      end;
  end;
end;

procedure TFrmCadastroCompra.TEdtValorUnitarioKeyPress(Sender: TObject;
  var Key: Char);
var floatvalue:Double;
begin
  inherited;
 if not (key in ['0'..'9',',',#8]) then
    key:=#0;
 if TryStrToFloat(Self.TEdtValorUnitario.Text,floatValue) then
      if (Length(Self.TEdtValorUnitario.Text) >= 4) and (floatValue < 1) and not (Key in [#8]) then
           key:=#0
      else if (Length(Self.TEdtValorUnitario.Text) >= 5) and (floatValue < 100)   and not (Key in [#8]) then
           key:=#0;
end;

procedure TFrmCadastroCompra.TStringGridProdutosCompraSelectCell(
  Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  lin:=ARow;
end;

function TFrmCadastroCompra.ValidaCampos: Boolean;
begin
  if Length( Self.TEdtNumNota.Text) < 1   then
  begin
    Self.TEdtNumNota.Color:=clWebSteelBlue;
    Self.TEdtNumNota.SetFocus;
    Result:=False;
    Exit;
  end;
  if Length( Self.TEdtSerie.Text) < 1   then
  begin
    Self.TEdtSerie.Color:=clWebSteelBlue;
    Self.TEdtSerie.SetFocus;
    Result:=False;
    Exit;
  end;
  if Length( Self.TEdtFornecedor.Text) < 2 then
  begin
    Self.TEdtIdFornecedor.Color:=clWebSteelBlue;
    Self.TEdtIdFornecedor.SetFocus;
    Result:=False;
    Exit;
  end;
  if Length( Self.TEdtCP.Text) < 2 then
  begin
    Self.TEdtIdCP.Color:=clWebSteelBlue;
    Self.TEdtIdCP.SetFocus;
    Result:=False;
    Exit;
  end;
  if Self.TStringGridProdutosCompra.RowCount < 3 then
  begin
    Self.TEdtIdProduto.Color:=clWebSteelBlue;
    Self.TEdtIdProduto.SetFocus;
    Result:=False;
    ShowMessage('DEVE HAVER PELO MENOS UM PRODUTO, PARA EFETUAR A COMPRA!');
    Exit;
  end
  else
      Result:=True;
end;
end.
