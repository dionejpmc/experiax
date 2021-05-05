unit UFrmConsultarCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, ExtCtrls, RzPanel, StdCtrls, RzLabel,
  Mask, RzEdit, Grids, DBGrids, RzDBGrid, UFrmCadastroCompra,UFrmConsultarFornecedor, UCompra,UCtrlCompra,
  UCtrlFornecedor, UDM,DB, Buttons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarCompra = class(TFrmConsultarPai)
    TBtnBuscarCompra: TRzButton;
    TEdtNumNota: TRzEdit;
    TLblNumNota: TRzLabel;
    TLblSerie: TRzLabel;
    TEdtSerie: TRzEdit;
    TGroupBoxCompra: TRzGroupBox;
    TDBGridCompra: TRzDBGrid;
    TEdtFornecedor: TRzEdit;
    TlblIdFornecedor: TRzLabel;
    TEdtIdFornecedor: TRzEdit;
    TBtnBuscarFornecedor: TBitBtn;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TDBGridCompraCellClick(Column: TColumn);
    procedure TDBGridCompraDblClick(Sender: TObject);
    procedure TBtnBuscarCompraClick(Sender: TObject);
    procedure TEdtIdFornecedorExit(Sender: TObject);
    procedure TBtnBuscarFornecedorClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);  private
    { Private declarations }
  protected
    UmaCompra:TCompra;
    UmCadCompra:TFrmCadastroCompra;
    UmaCtrlCompra:TCtrlCompra;
    UmFrmConFornecedor:TFrmConsultarFornecedor;
  public
    { Public declarations }
    procedure ReconhecaObjeto(ACompra:TCompra);
    procedure AbilitaCampos;
  end;

var
  FrmConsultarCompra: TFrmConsultarCompra;

implementation

{$R *.dfm}

procedure TFrmConsultarCompra.AbilitaCampos;
begin
  UmCadCompra.TEdtNumNota.Enabled:=True;
  UmCadCompra.TEdtSerie.Enabled:=True;
  UmCadCompra.TEdtValorFrete.Enabled:=True;
  UmCadCompra.TBtnAdd.Enabled:=True;
  UmCadCompra.TBtnRemover.Enabled:=True;
  UmCadCompra.TBtnBuscarProduto.Enabled:=True;
  UmCadCompra.TEdtIdFornecedor.Enabled:=True;
  UmCadCompra.TEdtCFOP.Enabled:=True;
  UmCadCompra.TEdtIdProduto.Enabled:=True;
  UmCadCompra.TBtnLimpaValores.Enabled:=True;
  UmCadCompra.TBtnLimpar.Visible:=True;
  UmCadCompra.TEdtIdCP.Enabled:=True;
  UmCadCompra.TDateTimePickerDataEmicaoNota.Enabled:=True;
  UmCadCompra.TDateTimePickerDataAlteracao.Visible:=false;
  UmCadCompra.TDateTimeDataEntrada.Enabled:=True;
  UmCadCompra.TBtnSalvar.Caption:='&Salvar';
  UmCadCompra.TBtnBuscarFP.Enabled:=true;
  UmCadCompra.TBtnBuscarForneceodor.Enabled:=True;
  UmCadCompra.TBtnCancelar.Caption:='&Cancelar';
end;

procedure TFrmConsultarCompra.btn1Click(Sender: TObject);
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

procedure TFrmConsultarCompra.ReconhecaObjeto(ACompra: TCompra);
begin
    UmaCompra:=ACompra;
    UmCadCompra:=TFrmCadastroCompra.Create(nil);
    UmaCtrlCompra:=TCtrlCompra.Create;
    TDBGridCompra.DataSource:= UmaCtrlCompra.GetDs;
    //TDBGridProdutoCompra.DataSource:=UmaCtrlCompra.GetDsPC;
    Self.TBtnLimpar.Enabled:=False;
    Self.TBtnLimpar.Visible:=False;
end;

procedure TFrmConsultarCompra.TBtnBuscarCompraClick(Sender: TObject);
var intAux:integer;
begin
  inherited;
  if (Self.TEdtSerie.Text <> '') and (Not TryStrToInt(Self.TEdtNumNota.Text, intAux) and (Self.TEdtFornecedor.Text = '') ) then
       UmaCtrlCompra.Buscar(0,Self.TEdtSerie.Text,0)
  else if TryStrToInt(Self.TEdtNumNota.Text, intAux) and (Self.TEdtSerie.Text = '') and (Self.TEdtNumNota.Text <> '0') and (Self.TEdtFornecedor.Text = '') then
       UmaCtrlCompra.Buscar(intAux,'',0)
  else if (TryStrToInt(Self.TEdtNumNota.Text, intAux)) and (Self.TEdtSerie.Text <> '') and (Self.TEdtFornecedor.Text = '') then
       UmaCtrlCompra.Buscar(intAux,Self.TEdtSerie.Text,0)
  else if (TryStrToInt(Self.TEdtNumNota.Text, intAux)) and (Self.TEdtSerie.Text <> '') and (Self.TEdtFornecedor.Text <> '') and TryStrToInt(Self.TEdtIdFornecedor.Text,intAux) then
       UmaCtrlCompra.Buscar(StrToInt(Self.TEdtNumNota.Text),Self.TEdtSerie.Text,StrToInt(Self.TEdtIdFornecedor.Text))
  else
  begin
        Self.TEdtSerie.Clear;
        Self.TEdtNumNota.Clear;
        Self.TEdtIdFornecedor.Clear;
        Self.TEdtFornecedor.Clear;
  end;
end;

procedure TFrmConsultarCompra.TBtnBuscarFornecedorClick(Sender: TObject);
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

procedure TFrmConsultarCompra.TBtnEditarClick(Sender: TObject);
var Lin,Col:integer;
begin
  inherited;
  UmCadCompra.ReconhecaObjeto(UmaCompra,UmaCtrlCompra);
  UmaCtrlCompra.Carregar(UmaCompra);

  UmCadCompra.TStringGridProdutosCompra.RowCount:= UmaCompra.UmaListaProduto.Count +1;
  for Lin := 1 to UmaCompra.UmaListaProduto.Count  do
  begin
      UmCadCompra.TBtnLimpaValoresClick(Sender);
      AbilitaCampos;
      UmCadCompra.TEdtIdProduto.Text:=  IntToStr( UmaCompra.getProdutos(Lin-1).IdProduto);
      UmCadCompra.TEdtProduto.Text:=  UmaCompra.getProdutos(Lin-1).Produto;
      UmCadCompra.TEdtMarca.Text:=  UmaCompra.getProdutos(Lin-1).Marca;
      UmCadCompra.TEdtValorUnitario.Text:=  FormatFloat('#0.00',UmaCompra.getProdutos(Lin-1).ValorCompra);
      UmCadCompra.TEdtQtde.Text:=  UmaCompra.getProdutos(Lin-1).Qtde;
      UmCadCompra.TEdtDesconto.Text:=  FormatFloat('#0.00',UmaCompra.getProdutos(Lin-1).Desconto);
      UmCadCompra.TEdtIPI.Text:=  FormatFloat('#0.00',UmaCompra.getProdutos(Lin-1).IPI);
      UmCadCompra.TEdtICMS.Text:=  FormatFloat('#0.00',UmaCompra.getProdutos(Lin-1).ICMS);
      UmCadCompra.TEdtValorUnitarioExit(Sender);
      UmCadCompra.TBtnAddClick(Sender);

  end;
  UmCadCompra.TEdtValorTotalNota.Clear;
  UmCadCompra.TedtValorTotalProdutos.Clear;
  UmCadCompra.TEdtNumNota.Text:=IntToStr(UmaCompra.NumeroNota);
  UmCadCompra.TEdtSerie.Text:=UmaCompra.Serie;
  UmCadCompra.TEdtIdFornecedor.Text:=IntToStr(UmaCompra.UmFornecedorJ.Id);
  UmCadCompra.TEdtFornecedor.Text:=UmaCompra.UmFornecedorJ.RS;
  UmCadCompra.TEdtIdCP.Text:=IntToStr(UmaCompra.UmaCP.IdCP);
  UmCadCompra.TEdtCP.Text:=UmaCompra.UmaCP.CP;
  UmCadCompra.TEdtObservacao.Text:=UmaCompra.Observacoes;
  UmCadCompra.TDateTimeDataEntrada.DateTime:=StrToDateTime(UmaCompra.DataEntrada);
  UmCadCompra.TDateTimePickerDataEmicaoNota.DateTime:=StrToDateTime(UmaCompra.DataEmicao);
  UmCadCompra.TedtValorTotalProdutos.Text:=FormatFloat('#0.00',UmaCompra.ValorTotalProdutos);
  UmCadCompra.TEdtValorTotalNota.Text:=FormatFloat('#0.00',UmaCompra.ValorTotalNota);
  UmCadCompra.TEdtValorFrete.Text:=FormatFloat('#0.00',UmaCompra.ValorFrete);
  UmCadCompra.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(UmaCompra.DataCadastro);
  UmCadCompra.TDateTimePickerDataAlteracao.DateTime:=StrToDateTime(UmaCompra.DataAlteracao);
  UmCadCompra.TEdtNumNota.Enabled:=False;
  UmCadCompra.TEdtSerie.Enabled:=False;
  UmCadCompra.TEdtValorFrete.Enabled:=False;

  UmCadCompra.TBtnRemover.Enabled:=False;
  UmCadCompra.TBtnBuscarProduto.Enabled:=false;
  UmCadCompra.TEdtIdFornecedor.Enabled:=false;
  UmCadCompra.TEdtCFOP.Enabled:=False;
  UmCadCompra.TEdtIdProduto.Enabled:=False;
  UmCadCompra.TBtnLimpaValores.Enabled:=false;
  UmCadCompra.TBtnLimpar.Visible:=false;
  UmCadCompra.TEdtIdCP.Enabled:=False;
  UmCadCompra.TDateTimePickerDataEmicaoNota.Enabled:=False;
  UmCadCompra.TDateTimeDataEntrada.Enabled:=False;
  UmCadCompra.TBtnAdd.Enabled:=False;
  UmCadCompra.TBtnBuscarForneceodor.Enabled:=false;
  UmCadCompra.TBtnBuscarFP.Enabled:=False;
  UmCadCompra.TLblDataAlteracao.Visible:=false;
  UmCadCompra.TBtnSalvar.Caption:='&Cancelar';
  UmCadCompra.TBtnCancelar.Caption:='&Sair';
  UmCadCompra.ShowModal;
  AbilitaCampos;
  UmCadCompra.LimpaCampos;
  {Self.TStringGridProdutosCompra.Cells[1, 0] := 'ID';
  Self.TStringGridProdutosCompra.Cells[2, 0] := 'PRODUTO';
  Self.TStringGridProdutosCompra.Cells[3, 0] := 'MARCA';
  Self.TStringGridProdutosCompra.Cells[4, 0] := 'VALOR UNITARIO';
  Self.TStringGridProdutosCompra.Cells[5, 0] := 'QUANTIDADE';
  Self.TStringGridProdutosCompra.Cells[6, 0] := 'DESCONTO';
  Self.TStringGridProdutosCompra.Cells[7, 0] := 'VALOR TOTAL';
  Self.TStringGridProdutosCompra.Cells[8, 0] := 'IPI';
  Self.TStringGridProdutosCompra.Cells[9, 0] := 'ICMS';
  Self.TStringGridProdutosCompra.Cells[10, 0] := 'TOTAL COM IMPOSTOS'; }
end;

procedure TFrmConsultarCompra.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmCadCompra.ReconhecaObjeto(UmaCompra,UmaCtrlCompra);
  UmCadCompra.TDateTimePickerDataEmicaoNota.DateTime:=Now;
  UmCadCompra.TDateTimePickerDataAlteracao.Visible:=False;
   UmCadCompra.TLblDataAlteracao.Visible:=False;
   UmCadCompra.TDateTimeDataEntrada.Enabled:=True;
  UmCadCompra.ShowModal;
end;

procedure TFrmConsultarCompra.TDBGridCompraCellClick(Column: TColumn);
begin
  inherited;
 // UmaCtrlCompra.BuscarPC(StrToInt(Self.TDBGridCompra.Fields[0].Text),StrToInt(Self.TDBGridCompra.Fields[2].Text),Self.TDBGridCompra.Fields[1].Text);
end;

procedure TFrmConsultarCompra.TDBGridCompraDblClick(Sender: TObject);
begin
  inherited;
 //UmaCtrlCompra.BuscarPC(StrToInt(Self.TDBGridCompra.Fields[0].Text),StrToInt(Self.TDBGridCompra.Fields[2].Text),Self.TDBGridCompra.Fields[1].Text);
end;

procedure TFrmConsultarCompra.TEdtIdFornecedorExit(Sender: TObject);
var intValue:integer;
    UmaCtrlFornecedor:TCtrlFornecedor;
begin
  inherited;
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

end.
