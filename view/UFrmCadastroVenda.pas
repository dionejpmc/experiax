unit UFrmCadastroVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel, Grids,
  DBGrids, RzDBGrid, ExtCtrls, RzPanel, ComCtrls, RzDTP, UVenda, UCtrlVenda,
  RzGrids, UCtrlProduto, UCtrlCP, UFrmConsultarProduto, UProduto,
  UCtrlFuncionario, UFrmConsultarFuncionario, UfrmConsultarCliente, UFrmConsultarCondicaoPagamento,
  UCtrlCliente, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmCadastroVenda = class(TFormCadastroPai)
    TLblCliente: TRzLabel;
    TEdtCliente: TRzEdit;
    TBtnBuscarCliente: TRzButton;
    TLblNumNota: TRzLabel;
    TEdtNumNota: TRzEdit;
    TGroupBoxProdVenda: TRzGroupBox;
    TBtnRemover: TRzButton;
    TLblValorTotalProdutos: TRzLabel;
    TEdtValorTotalProdutos: TRzEdit;
    TEdtObservacao: TRzEdit;
    TLblObservacao: TRzLabel;
    TLblSerie: TRzLabel;
    TEdtSerie: TRzEdit;
    TEdtIdCliente: TRzEdit;
    RzLabel2: TRzLabel;
    TLblCP: TRzLabel;
    TLblIdCondicaoPagamento: TRzLabel;
    TEdtCP: TRzEdit;
    TBtnBuscarFP: TRzButton;
    TEdtIdCP: TRzEdit;
    TStringGridProdutosVenda: TRzStringGrid;
    TLblProduto: TRzLabel;
    Lbl1: TRzLabel;
    TEdtProduto: TRzEdit;
    TBtnBuscarProduto: TRzButton;
    TEdtIdProduto: TRzEdit;
    TLblMarca: TRzLabel;
    TEdtMarca: TRzEdit;
    TEdtQtde: TRzEdit;
    TLblQtde: TRzLabel;
    TEdtValorUnitario: TRzEdit;
    TLblValorUnitario: TRzLabel;
    TEdtDesconto: TRzEdit;
    TLblDesconto: TRzLabel;
    TEdtValorTotal: TRzEdit;
    TLblValorTotal: TRzLabel;
    TEdtICMS: TRzEdit;
    TLblICMS: TRzLabel;
    TEdtIPI: TRzEdit;
    TLblIPI: TRzLabel;
    TLblMedida: TLabel;
    TLblValorFrete: TRzLabel;
    TEdtValorFrete: TRzEdit;
    TEdtValorTotalNota: TRzEdit;
    Lbl4: TRzLabel;
    TBtnAdd: TRzButton;
    Lbl3: TRzLabel;
    Lbl5: TRzLabel;
    TEdtFuncionario: TRzEdit;
    TBtnBuscarFuncionario: TRzButton;
    TEdtIdFuncionario: TRzEdit;
    TLblDataEmicao: TRzLabel;
    TDateTimePickerDataEmicaoNota: TRzDateTimePicker;
    TLblCFOP: TRzLabel;
    TEdtCFOP: TRzEdit;
    TEdtValorVenda: TRzEdit;
    Lbl6: TRzLabel;
    TLblTotalGeral: TRzLabel;
    TEdtTotalGeral: TRzEdit;
    Lbl2: TRzLabel;
    TEdtEstoque: TRzEdit;
    procedure FormCreate(Sender: TObject);
    procedure TEdtIdProdutoExit(Sender: TObject);
    procedure TEdtIdCPExit(Sender: TObject);
    procedure TBtnLimpaValoresClick(Sender: TObject);
    procedure TEdtQtdeExit(Sender: TObject);
    procedure TEdtValorUnitarioExit(Sender: TObject);
    procedure TEdtDescontoExit(Sender: TObject);
    procedure TBtnRemoverClick(Sender: TObject);
    procedure TStringGridProdutosVendaSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure TBtnBuscarProdutoClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TEdtIdFuncionarioExit(Sender: TObject);
    procedure TBtnBuscarFuncionarioClick(Sender: TObject);
    procedure TBtnBuscarFPClick(Sender: TObject);
    procedure TEdtIdClienteExit(Sender: TObject);
    procedure TBtnBuscarClienteClick(Sender: TObject);
    procedure TEdtSerieExit(Sender: TObject);
    procedure TBtnAddClick(Sender: TObject);
    procedure TEdtValorFreteExit(Sender: TObject);
    procedure TDateTimePickerDataEmicaoNotaExit(Sender: TObject);
  private
    { Private declarations }
  protected
    UmaCtrlVenda:TCtrlVenda;
    UmaVenda:TVenda;
    UmFrmConProduto:TFrmConsultarProduto;
    UmFrmConFuncionario:TFrmConsultarFuncionario;
    UmFrmConCliente:TFrmConsultarCliente;
    UmFrmConCP:TFrmConsultarCondicaoPagamento;

    l:Integer;

  public
    { Public declarations }
    procedure ReconhecaObjeto(AVenda:TVenda; ACtrlVenda:TCtrlVenda);
    function ValidaCampos:Boolean;
    procedure limpaCampos;
    procedure Adicionado;

  end;

var
  FrmCadastroVenda: TFrmCadastroVenda;
  l,lin:integer;

implementation

{$R *.dfm}

{ TFrmCadastroVenda }

procedure TFrmCadastroVenda.Adicionado;
begin
      Self.TEdtIdProduto.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtMarca.Clear;
      Self.TEdtQtde.Clear;
      Self.TEdtDesconto.Clear;
      Self.TEdtValorUnitario.Clear;
      Self.TEdtTotalGeral.Clear;
      Self.TEdtValorVenda.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtICMS.Clear;
      Self.TEdtIPI.Clear;

      Self.TEdtQtde.Enabled:=False;
      Self.TEdtDesconto.Enabled:=False;
      Self.TEdtValorUnitario.Enabled:=False;
end;

procedure TFrmCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
   Self.TStringGridProdutosVenda.ColCount:=11;
   Self.TStringGridProdutosVenda.Cells[1,0]:='ID';
   Self.TStringGridProdutosVenda.Cells[2,0]:='PRODUTO';
   Self.TStringGridProdutosVenda.Cells[3,0]:='MARCA';
   Self.TStringGridProdutosVenda.Cells[4,0]:='VALOR UNITARIO';
   Self.TStringGridProdutosVenda.Cells[5,0]:='QUANTIDADE';
   Self.TStringGridProdutosVenda.Cells[6,0]:='IPI';
   Self.TStringGridProdutosVenda.Cells[7,0]:='ICMS';
   Self.TStringGridProdutosVenda.Cells[8,0]:='TOTAL';
   Self.TStringGridProdutosVenda.Cells[9,0]:='DESCONTO';
   Self.TStringGridProdutosVenda.Cells[10,0]:='TOTAL GERAL';
end;

procedure TFrmCadastroVenda.limpaCampos;
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
      Self.TEdtCliente.Clear;
      Self.TEdtIdCliente.Clear;
      Self.TEdtIdCP.Clear;
      Self.TEdtCP.Clear;
      Self.TEdtObservacao.Clear;
      Self.TEdtNumNota.Clear;
      Self.TEdtSerie.Clear;
      Self.TEdtCFOP.Clear;
      Self.TedtValorTotalProdutos.Clear;
      Self.TEdtValorTotalNota.Clear;
      Self.tedtvalorFrete.Clear;


      Self.TEdtQtde.Enabled:=False;
      Self.TEdtValorUnitario.Enabled:=False;
      Self.TEdtValorTotal.Enabled:=False;
      Self.TEdtDesconto.Enabled:=False;
      Self.TEdtICMS.Enabled:=False;
      Self.TEdtIPI.Enabled:=False;
      auxInt:= UmaVenda.UmaListaProduto.Count;
      for a := 1 to Self.TStringGridProdutosVenda.ColCount do
         for b:= 1 to Self.TStringGridProdutosVenda.RowCount do
        begin
            Self.TStringGridProdutosVenda.Cells[a, b] := '';
        end;
      if (UmaVenda.UmaListaProduto.Count > 0) then
      begin
         for i:= auxInt  downto 1   do
         begin
           UmProduto:=UmaVenda.getProdutos(i-1);
           UmaVenda.UmaListaProduto.Delete(i-1);
           UmProduto.Destroy;
         end;
      end;
      Self.TStringGridProdutosVenda.RowCount:=2;
end;

procedure TFrmCadastroVenda.ReconhecaObjeto(AVenda: TVenda;
  ACtrlVenda: TCtrlVenda);
begin
   l:=1;
   UmaCtrlVenda:=ACtrlVenda;
   UmaVenda:=AVenda;
   UmaVenda.UmaListaProduto:=TList.Create;
end;

procedure TFrmCadastroVenda.TBtnAddClick(Sender: TObject);
var IntValue,i,b,indice:integer;
    floatQtde,floatVLUnit,floatValue,AuxLivre:Double;
    permicao:Boolean;
begin
  inherited;

  permicao:=True;
  if Self.TStringGridProdutosVenda.RowCount = 0 then
     Self.TStringGridProdutosVenda.RowCount:= 1;


  //SE O PRODUTO N�O ESTIVER SENDO CARREGADO CORRETAMENTE
  if (Length( Self.TEdtProduto.Text) <=2) or (not TryStrToInt(Self.TEdtIdProduto.Text,intValue)) then
  begin
      Adicionado;
      Self.TEdtIdProduto.SetFocus;
      ShowMessage('OS DADOS DO PRODUTO DEVEM SER CARREGADOS CORRETAMENTE PARA SEREM ADICIONADOS.');
      Exit;
  end
  else
  begin
      if not TryStrToFloat(Self.TEdtQtde.Text,floatQtde) then
      begin
        ShowMessage('PREENCHA CORRETAMENTE O CAMPO DE QUANTIDADE.');
        Self.TEdtQtde.Clear;
        Self.TEdtQtde.SetFocus;
        Exit;
      end;
      if not TryStrToFloat(Self.TEdtValorUnitario.Text, floatVLUnit)  then
      begin
        ShowMessage('PREENCHA CORRETAMENTE O CAMPO VALOR UNITARIO.');
        Self.TEdtValorUnitario.Clear;
        Self.TEdtQtde.SetFocus;
        Exit;
      end;
      //VERIFICA SE O ID DO PRODUTO JA EXSTE NA TABELA
      for i := 1 to l  do
      begin
          if (Self.TStringGridProdutosVenda.Cells[1,i] = Self.TEdtIdProduto.Text) then
          begin
              permicao:=False;
              indice:=i;
          end;
      end;
      //ATUALIXA A QUANTIDADE E VALORES  SE O PRODUTO JA EXISTIR NATABELA
      if (permicao = False) and (MessageDlg('ESTE PRODUTO JA ESTA NA TABELA, DESEJA INCREMENTAR SUA QUANTIDADE ?', mtConfirmation,[mbYes,mbNo],0) = IDYes) then
      begin
          //QUANTIDADE
          Self.TStringGridProdutosVenda.Cells[5, indice]:=FloatToStr(StrToFloat(Self.TStringGridProdutosVenda.Cells[5, indice]) +
          StrToFloat(Self.TEdtQtde.Text));
          //TOTAL SEM DESCONTO
          Self.TStringGridProdutosVenda.Cells[8, indice] := FloatToStr(( StrToFloat(Self.TStringGridProdutosVenda.Cells[4,indice]) *
          StrToFloat(Self.TStringGridProdutosVenda.Cells[5, indice])));
          //TOTAL GERAL
          Self.TStringGridProdutosVenda.Cells[10, indice] := FloatToStr( StrToFloat(Self.TStringGridProdutosVenda.Cells[8, indice]) -
          ((StrToFloat(Self.TStringGridProdutosVenda.Cells[9, indice]) / 100) *
          StrToFloat(Self.TStringGridProdutosVenda.Cells[8, indice]) ) );
          //ATUALIZA O TOTAL EM ( R$ ) DE PRODUTOS INSERIDOS NA TABELA
          Self.TEdtValorTotalProdutos.Clear;
          Self.TEdtValorTotalProdutos.Text:='0,00';
          for b:= 1 to l do
              if TryStrToFloat(Self.TStringGridProdutosVenda.Cells[10, b],AuxLivre) then
                  Self.TedtValorTotalProdutos.Text:= FloattoStr(StrToFloat(Self.TStringGridProdutosVenda.Cells[10, b])+
                  StrToFloat(Self.TedtValorTotalProdutos.Text));
          if Self.TedtValorTotalProdutos.Text <> '' then
          begin
              if not TryStrToFloat(Self.TEdtValorFrete.Text, floatVAlue) then
              begin
                Self.TEdtValorFrete.Text:='0,00';
                Self.TEdtValorTotalNota.Text:=FloatToStr(StrToFloat(Self.TedtValorTotalProdutos.Text)+
                StrToFloat(Self.TEdtValorFrete.Text));
              end
              else
                Self.TEdtValorTotalNota.Text:=FloatToStr(StrToFloat(Self.TedtValorTotalProdutos.Text)+
                StrToFloat(Self.TEdtValorFrete.Text));

          end;
          Adicionado;
          Self.TEdtIdProduto.SetFocus;
      end
      else if permicao then
      begin
          if Self.TStringGridProdutosVenda.RowCount = 0 then
              Self.TStringGridProdutosVenda.RowCount:= 1;
          if Self.TEdtICMS.Text = ''  then
              Self.TEdtICMS.Text:='0,00' ;
          if Self.TEdtIPI.Text = '' then
              Self.TEdtIPI.Text:='0,00';
          if self.TEdtDesconto.Text = '' then
              Self.TEdtDesconto.Text:= '0,00';

          Self.TStringGridProdutosVenda.RowCount:= Self.TStringGridProdutosVenda.RowCount + 1;
          Self.TStringGridProdutosVenda.Cells[1, l] := Self.TEdtIdProduto.Text;
          Self.TStringGridProdutosVenda.Cells[2, l] := Self.TEdtProduto.Text;
          Self.TStringGridProdutosVenda.Cells[3, l] := Self.TEdtMarca.Text;
          Self.TStringGridProdutosVenda.Cells[4, l] := Self.TEdtValorUnitario.Text;
          Self.TStringGridProdutosVenda.Cells[5, l] := Self.TEdtQtde.Text;
          Self.TStringGridProdutosVenda.Cells[6, l] := Self.TEdtIPI.Text;
          Self.TStringGridProdutosVenda.Cells[7, l] := Self.TEdtICMS.Text;
          Self.TStringGridProdutosVenda.Cells[8, l] := Self.TEdtValorTotal.Text;
          Self.TStringGridProdutosVenda.Cells[9, l] := Self.TEdtDesconto.Text;
          Self.TStringGridProdutosVenda.Cells[10, l] := Self.TEdtTotalGeral.Text;

          //ATUALIZA O TOTAL EM ( R$ ) DE PRODUTOS INSERIDOS NA TABELA
          Self.TEdtValorTotalProdutos.Clear;
          Self.TEdtValorTotalProdutos.Text:='0,00';
              for b:= 1 to l do
                  Self.TedtValorTotalProdutos.Text:= FloattoStr(StrToFloat(Self.TStringGridProdutosVenda.Cells[10, b])+
                  StrToFloat(Self.TedtValorTotalProdutos.Text));
          if Self.TedtValorTotalProdutos.Text <> '' then
          begin
              if not TryStrToFloat(Self.TEdtValorFrete.Text, floatVAlue) then
              begin
                Self.TEdtValorFrete.Text:='0,00';
                Self.TEdtValorTotalNota.Text:=FloatToStr(StrToFloat(Self.TedtValorTotalProdutos.Text)+
                StrToFloat(Self.TEdtValorFrete.Text));
              end
              else
                Self.TEdtValorTotalNota.Text:=FloatToStr(StrToFloat(Self.TedtValorTotalProdutos.Text)+
                StrToFloat(Self.TEdtValorFrete.Text));
          end;
          Adicionado;
          Self.TEdtIdProduto.SetFocus;
          l := l + 1;

      end;

  end
end;


procedure TFrmCadastroVenda.TBtnBuscarClienteClick(Sender: TObject);
begin
  inherited;
    UmFrmConCliente:=TFrmConsultarCliente.Create(nil);
    UmFrmConCliente.ReconhecaObjeto(UmaVenda.UmClienteFisico,UmaVenda.UmClienteJuridico);
    UmFrmConCliente.TBtnCancelar.Caption:='Selecionar';
    UmFrmConCliente.ShowModal;
    if UmaVenda.UmClienteJuridico.RS <> '' then
    begin
       Self.TEdtIdCliente.Text:=IntToStr(UmaVenda.UmClienteJuridico.Id);
       Self.TEdtCliente.Text:=UmaVenda.UmClienteJuridico.RS;
    end
    else if UmaVenda.UmClienteFisico.Nome <> '' then
    begin
       Self.TEdtIdCliente.Text:=IntToStr(UmaVenda.UmClienteFisico.Id);
       Self.TEdtCliente.Text:=UmaVenda.UmClienteFisico.Nome;
    end;
    UmFrmConCliente.Destroy;
end;

procedure TFrmCadastroVenda.TBtnBuscarFPClick(Sender: TObject);
begin
  inherited;
    UmFrmConCP:=TFrmConsultarCondicaoPagamento.Create(nil);
    UmFrmConCP.ReconhecaObjeto(UmaVenda.UmaCP);
    UmFrmConCP.TBtnCancelar.Caption:='Selecionar';
    UmFrmConCP.ShowModal;
    Self.TEdtIdCP.Text:=IntToStr(UmaVenda.UmaCP.IdCP);
    Self.TEdtCP.Text:=  UmaVenda.UmaCP.CP;
    UmFrmConCP.Destroy;
end;

procedure TFrmCadastroVenda.TBtnBuscarFuncionarioClick(Sender: TObject);
begin
  inherited;
    UmFrmConFuncionario:=TFrmConsultarFuncionario.Create(nil);
    UmFrmConFuncionario.ReconhecaObjeto(UmaVenda.UmFuncionario);
    UmFrmConFuncionario.TBtnCancelar.Caption:='Selecionar';
    UmFrmConFuncionario.ShowModal;
    if (UmaVenda.UmFuncionario.Nome <> '') and (UmaVenda.UmFuncionario.Status = 1) then
    begin
       Self.TEdtIdFuncionario.Text:=IntToStr(UmaVenda.UmFuncionario.Id);
       Self.TEdtFuncionario.Text:=UmaVenda.UmFuncionario.Nome;
    end
    else
    begin
       Self.TEdtIdFuncionario.Clear;
       Self.TEdtFuncionario.Clear;
       ShowMessage('FUNCIONARIO INATIVO.');
    end;
    UmFrmConFuncionario.Destroy;
end;

procedure TFrmCadastroVenda.TBtnBuscarProdutoClick(Sender: TObject);
begin
  inherited;
    UmFrmConProduto:=TFrmConsultarProduto.Create(nil);
    UmFrmConProduto.ReconhecaObjeto(UmaVenda.UmProduto);
    UmFrmConProduto.TBtnCancelar.Caption:='Selecionar';
    UmFrmConProduto.ShowModal;
    if (UmaVenda.UmProduto.Tipo <> 1 ) then
    begin
        Self.TEdtIdProduto.Text:=IntToStr(UmaVenda.UmProduto.IdProduto);
        Self.TEdtProduto.Text:=UmaVenda.UmProduto.Produto;
        Self.TEdtMarca.Text:=UmaVenda.UmProduto.Marca;
        if UmaVenda.UmProduto.TipoUnidade = 1 then
          Self.TLblMedida.Caption:='Kg(s)'
        else if UmaVenda.UmProduto.TipoUnidade = 2 then
          Self.TLblMedida.Caption:='Litro(s)'
        else if UmaVenda.UmProduto.TipoUnidade = 3 then
          Self.TLblMedida.Caption:='Unid.(s)';
    end
    else
    begin
        ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER VENDIDO!');
        Self.TEdtProduto.Clear;
        Self.TEdtIdProduto.Clear;
        Self.TEdtEstoque.Clear;
        Self.TEdtICMS.Clear;
        Self.TEdtIPI.Clear;
        Self.TEdtValorVenda.Clear;
        Self.TEdtEstoque.Clear;
        Self.TEdtMarca.Clear;
    end;
    Self.TBtnBuscarProduto.SetFocus;
    UmFrmConProduto.Destroy;
end;

procedure TFrmCadastroVenda.TBtnLimpaValoresClick(Sender: TObject);
begin
  inherited;
      Self.TEdtQtde.Clear;
      Self.TEdtDesconto.Clear;
      Self.TEdtValorUnitario.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtICMS.Clear;
      Self.TEdtIPI.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtIdProduto.Clear;
      Self.TEdtMarca.Clear;
      Self.TLblMedida.Caption:='';
      Self.TEdtIdProduto.SetFocus;
      Self.TEdtQtde.Enabled:=False;
      Self.TEdtValorUnitario.Enabled:=False;
      Self.TEdtValorTotal.Enabled:=False;
      Self.TEdtDesconto.Enabled:=False;

end;

procedure TFrmCadastroVenda.TBtnRemoverClick(Sender: TObject);
var i,j:Integer;
    condicao:Boolean;
    floatValue:Double;
begin
    inherited;
    condicao:=True;
    if ((Self.TStringGridProdutosVenda.Cells[1,lin] = '') or
        (Self.TStringGridProdutosVenda.RowCount <= 0)) or
        (Self.TStringGridProdutosVenda.Cells[1,1] = '') then
    begin
         ShowMessage('N�O EXISTEM DADOS A SEREM EXCLUIDOS, OU N�O FOI SELECIONADO NENHUM DADO NA TABELA!');
         condicao:=False;
    end
    else if (MessageDlg('VOC� CONFIRMA A EXCLUS�O DOS DADOS', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
    begin
      for i := lin to TStringGridProdutosVenda.RowCount do
        for j := 1 to TStringGridProdutosVenda.ColCount  do
          if ((i <> 0) and (j <> 0)) then
             Self.TStringGridProdutosVenda.Cells[j,i]:=Self.TStringGridProdutosVenda.Cells[j,i+1]
          else
             Condicao:=False;
    end
    else
      condicao:=False;
    if Condicao then
    begin
      Self.TStringGridProdutosVenda.RowCount:=Self.TStringGridProdutosVenda.RowCount -1;
      l:=l-1;

      Self.TedtValorTotalProdutos.Clear;
      Self.TedtValorTotalProdutos.Text:='0,00';
      Self.TEdtValorTotalNota.Clear;
      Self.TEdtValorTotalNota.Text:='0,00';

      for j:= 1 to l  do
        if TryStrToFloat(Self.TStringGridProdutosVenda.Cells[10, j],floatValue) then
           Self.TedtValorTotalProdutos.Text:= FloatToStr(StrToFloat(Self.TStringGridProdutosVenda.Cells[10, j])+
           StrToFloat(Self.TedtValorTotalProdutos.Text));

           Self.TEdtValorTotalNota.Text := Self.TedtValorTotalProdutos.Text;
    end;
end;

procedure TFrmCadastroVenda.TBtnSalvarClick(Sender: TObject);
var MSG:string;
  value:Double;
  i:Integer;
  UmProduto:TProduto;
begin
  inherited;
  if Self.TBtnSalvar.Caption='&Cancelar' then
  begin
    ShowMessage('FUNCIOANLIDADE N�O IMPLEMENTADA');
    Exit;
  end;
  if Self.ValidaCampos then
  begin
    UmaVenda.Serie:=Self.TEdtSerie.Text;
    UmaVenda.CFOP:=Self.TEdtCFOP.Text;
    UmaVenda.DataEmicao:=DateTimeToStr(Self.TDateTimePickerDataEmicaoNota.DateTime);
    UmaVenda.ValorTotalProdutos:=StrToFloat(Self.TedtValorTotalProdutos.Text);
    UmaVenda.ValorFrete:=StrToFloat(Self.TEdtValorFrete.Text);
    UmaVenda.UmFuncionario.Id:=StrToInt(Self.TEdtIdFuncionario.Text);
    UmaVenda.UmClienteJuridico.Id:=StrToInt(Self.TEdtIdCliente.Text);
    UmaVenda.ValorTotalNota:=StrToFloat(Self.TEdtValorTotalNota.Text);
    UmaVenda.Observacoes:=Self.TEdtObservacao.Text;
    UmaVenda.UmaCP.IdCP:=StrToInt(Self.TEdtIdCP.Text);
    UmaVenda.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
    UmaVenda.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
    UmProduto:=UmaVenda.UmProduto;
   for i:= 1 to l - 1 do
    begin
         UmaVenda.UmProduto:=TProduto.Create;
         UmaVenda.UmProduto.IdProduto:=StrToInt(Self.TStringGridProdutosVenda.Cells[1,i]);
         UmaVenda.UmProduto.ValorVenda:=StrToFloat(Self.TStringGridProdutosVenda.Cells[4, i]);
         UmaVenda.UmProduto.ValorTotalVenda:=StrToFloat(Self.TStringGridProdutosVenda.Cells[10,i]);
         UmaVenda.UmProduto.ICMS:= StrToFloat(Self.TStringGridProdutosVenda.Cells[7, i]);
         UmaVenda.UmProduto.IPI:=StrToFloat(Self.TStringGridProdutosVenda.Cells[6, i]);
         UmaVenda.UmProduto.Desconto:=StrToFloat(Self.TStringGridProdutosVenda.Cells[9, i]);
         UmaVenda.UmProduto.Qtde:=Self.TStringGridProdutosVenda.Cells[5,i];
         UmaVenda.UmaListaProduto.Insert(i-1,UmaVenda.UmProduto);
         UmaVenda.UmProduto:=nil;
    end;
    UmaVenda.UmProduto:=UmProduto;
    UmProduto:=nil;
    MSG:= UmaCtrlVenda.Salvar(UmaVenda);
    ShowMessage(MSG);
    Self.TBtnCancelarClick(Sender);
  end
  else
       ShowMessage('TODOS OS CAMPOS OBRIGATORIOS DEVEM SER PREENCHIDOS.');
end;

procedure TFrmCadastroVenda.TDateTimePickerDataEmicaoNotaExit(Sender: TObject);
begin
  inherited;
  if Self.TDateTimePickerDataEmicaoNota.DateTime > (Now + 0.1) then
  begin
    ShowMessage('A  DATA DE EMISS�O N�O DEVE SER MAIOR QUE A DATA DE HOJE.');
    Self.TDateTimePickerDataEmicaoNota.DateTime:=Now;
  end;
end;

procedure TFrmCadastroVenda.TEdtDescontoExit(Sender: TObject);
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
          Exit;
      end;

      if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) and TryStrToFloat(Self.TEdtQtde.Text,floatValueQtde) and TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
      begin
            Self.TEdtDesconto.Text:=FormatFloat('#0.0',floatValueDesconto);

            floatValueAux:= (floatValueVLUnit *  floatValueQTDE);
            floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
            Self.TEdtTotalGeral.Text:=FormatFloat('#0.00',floatValueAux);
      end;
  end
  else
  begin
      Self.TEdtDesconto.Clear;
      Self.TEdtTotalGeral.Clear;
      Self.TEdtValorUnitarioExit(Sender);
  end;

end;

procedure TFrmCadastroVenda.TEdtIdClienteExit(Sender: TObject);
var
  UmaCtrlCliente:TCTrlCliente;
  intValue:integer;
begin
inherited;
    Self.TEdtIdCliente.Color:=clWindow;
    if TryStrToInt(Self.TEdtIdCliente.Text,IntValue) and (Self.TEdtIdCliente.Text <> '') then
     begin
              Self.TEdtCliente.Clear;
              UmaCtrlCliente:=TCTrlCliente.Create;
              UmaVenda.UmClienteJuridico.Id:=StrToInt(Self.TEdtIdCliente.Text);
              UmaVenda.UmClienteFisico.Id:=StrToInt(Self.TEdtIdCliente.Text);
              if not UmaCtrlCliente.Buscar(UmaVenda.UmClienteJuridico.Id,'') then
              begin
                   Self.TEdtIdCliente.Clear;
                   Self.TEdtCliente.Clear;
                   ShowMessage('REGISTRO N�O ENCONTRADO.');
              end
              else
              begin
                   UmaCtrlCliente.Carregar(UmaVenda.UmClienteFisico);
                   if (UmaVenda.UmClienteFisico.Nome = '') then
                      UmaCtrlCliente.Carregar(UmaVenda.UmClienteJuridico);
                   if UmaVenda.UmClienteJuridico.RS <> '' then
                   begin
                      Self.TEdtIdCliente.Text:= IntToStr(UmaVenda.UmClienteJuridico.Id);
                      Self.TEdtCliente.Text:=UmaVenda.UmClienteJuridico.RS;
                      Self.TEdtIdCP.Text:=IntToStr(UmaVenda.UmClienteJuridico.CP.IdCP);
                      Self.TEdtCP.Text:=UmaVenda.UmClienteJuridico.CP.CP;
                   end
                   else if UmaVenda.UmClienteFisico.Nome <> '' then
                   begin

                        Self.TEdtIdCliente.Text:= IntToStr(UmaVenda.UmClienteFisico.Id);
                        Self.TEdtCliente.Text:=UmaVenda.UmClienteFisico.Nome;
                        Self.TEdtIdCP.Text:=IntToStr(UmaVenda.UmClienteFisico.CP.IdCP);
                        Self.TEdtCP.Text:=UmaVenda.UmClienteFisico.CP.CP;

                   end;
              end;
              UmaCtrlCliente.Destroy;
     end
     else
     begin
          Self.TEdtIdCliente.Clear;
          Self.TEdtCliente.Clear;
     end;
end;

procedure TFrmCadastroVenda.TEdtIdCPExit(Sender: TObject);
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
         UmaVenda.UmaCP.IdCP:=StrToInt(Self.TEdtIdCP.Text);
         if not UmaCtrlCP.Buscar(UmaVenda.UmaCP.IdCP,'') then
         begin
         Self.TEdtIdCP.Clear;
         Self.TEdtCP.Clear;
         end
         else
         begin
         UmaCtrlCP.Carregar(UmaVenda.UmaCP);
         Self.TEdtIdCP.Text:= IntToStr(UmaVenda.UmaCP.IdCP);
         Self.TEdtCP.Text:=UmaVenda.UmaCP.CP;

         end;
         UmaCtrlCP.Destroy

     end
     else
     begin
          Self.TEdtIdCP.Clear;
          Self.TEdtCP.Clear;
     end;

end;

procedure TFrmCadastroVenda.TEdtIdFuncionarioExit(Sender: TObject);
var
  UmaCtrlFuncionario:TCtrlFuncionario;
  intValue:integer;
begin
inherited;
    Self.TEdtIdFuncionario.Color:=clWindow;
    if TryStrToInt(Self.TEdtIdFuncionario.Text,IntValue) and (Self.TEdtIdFuncionario.Text <> '') then
     begin
              Self.TEdtFuncionario.Clear;
              UmaCtrlFuncionario:=TCtrlFuncionario.Create;
              UmaVenda.UmFuncionario.Id:=intValue;

              if not UmaCtrlFuncionario.Buscar(UmaVenda.UmFuncionario.Id,'') then
              begin
                   Self.TEdtIdFuncionario.Clear;
                   Self.TEdtFuncionario.Clear;
                   ShowMessage('REGISTRO N�O ENCONTRADO.');
              end
              else
              begin
                   UmaCtrlFuncionario.Carregar(UmaVenda.UmFuncionario);
                   if UmaVenda.UmFuncionario.Nome <> '' then
                   begin
                      Self.TEdtIdFuncionario.Text:= IntToStr(UmaVenda.UmFuncionario.Id);
                      Self.TEdtFuncionario.Text:=UmaVenda.UmFuncionario.Nome;

                   end
                   else
                   begin
                      Self.TEdtIdFuncionario.Clear;
                      Self.TEdtFuncionario.Clear;
                   end;
              end;
              UmaCtrlFuncionario.Destroy;
     end
     else
     begin
          Self.TEdtIdFuncionario.Clear;
          Self.TEdtFuncionario.Clear;
     end;
end;

procedure TFrmCadastroVenda.TEdtIdProdutoExit(Sender: TObject);
var UmaCtrlProduto:TCtrlProduto;
  intValue,i,indice:integer;
    permicao:boolean;
begin
inherited;
    Self.TEdtIdProduto.Color:=clWindow;
    UmaCtrlProduto:=TCtrlProduto.Create;
    if TryStrToInt(Self.TEdtIdProduto.Text,IntValue) and (Self.TEdtIdProduto.Text <> '') then
     begin
              Self.TEdtProduto.Clear;
              Self.TEdtMarca.Clear;
              Self.TEdtIPI.Clear;
              Self.TEdtICMS.Clear;
              Self.TEdtValorVenda.Clear;
              UmaVenda.UmProduto.IdProduto:=StrToInt(Self.TEdtIdProduto.Text);
              if not UmaCtrlProduto.Buscar(UmaVenda.UmProduto.IdProduto,'') then
              begin
                   Self.TEdtIdProduto.Clear;
                   Self.TEdtProduto.Clear;
                   Self.TEdtMarca.Clear;
              end
              else
              begin
                   UmaCtrlProduto.Carregar(UmaVenda.UmProduto);
                   if UmaVenda.UmProduto.Tipo =1 then
                   begin
                       ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER VENDIDO!');
                       Self.TEdtIdProduto.Clear;
                       Self.TEdtProduto.Clear;
                       Self.TEdtMarca.Clear;
                       Self.TEdtIPI.Clear;
                       Self.TEdtICMS.Clear;
                       Self.TEdtValorVenda.Clear;
                   end
                   else
                   begin
                       if (UmaVenda.UmProduto.Qtde = '0') or (UmaVenda.UmProduto.Qtde = ' ') or (UmaVenda.UmProduto.ValorVenda = 0) then
                       begin
                           ShowMessage('INDISPON�VEL EM ESTOQUE OU VALOR DE VENDA N�O ADICIONADO. VERIFIQUE SE ESSE PRODUTO EXISTE EM ESTOQUE OU SE SEU VALOR DE VENDA FOI ADICIONADO.');
                           UmaCtrlProduto.Destroy;
                           Self.TEdtIdProduto.Clear;

                           Exit;
                       end;

                       Self.TEdtIdProduto.Text:= IntToStr(UmaVenda.UmProduto.IdProduto);
                       Self.TEdtProduto.Text:=UmaVenda.UmProduto.Produto;
                       Self.TEdtMarca.Text:=UmaVenda.UmProduto.Marca;
                       Self.TEdtValorVenda.Text:=FloatToStr( UmaVenda.UmProduto.ValorVenda);
                       Self.TEdtIPI.Text:=FloatToStr( UmaVenda.UmProduto.IPI);
                       Self.TEdtICMS.Text:=FloatToStr( UmaVenda.UmProduto.ICMS);
                       Self.TEdtValorUnitario.Text:=FloatToStr( UmaVenda.UmProduto.ValorVenda);
                       Self.TEdtEstoque.Text:=UmaVenda.UmProduto.Qtde;
                       if Length(Self.TEdtProduto.Text) > 2 then
                       begin
                            permicao := True;
                            for i := 1 to l  do
                            begin
                                if (Self.TStringGridProdutosVenda.Cells[1,i] = Self.TEdtIdProduto.Text) then
                                begin
                                    permicao:=False;
                                    indice:=i;
                                end;
                            end;
                            if not permicao then
                            begin
                               Self.TEdtValorUnitario.Clear;
                               Self.TEdtValorUnitario.Text:= Self.TStringGridProdutosVenda.Cells[4,indice];
                               Self.TEdtValorUnitario.Enabled:=False;
                               Self.TEdtDesconto.Enabled :=False;
                               Self.TEdtQtde.Enabled:=True;

                            end
                            else
                            begin
                               Self.TEdtQtde.Enabled:=True;
                               Self.TEdtValorUnitario.Enabled:=True;
                               Self.TEdtDesconto.Enabled :=True;
                               Self.TEdtQtde.Clear;
                               Self.TEdtDesconto.Clear;
                               Self.TEdtValorTotal.Clear;
                               Self.TEdtTotalGeral.Clear;
                            end;
                       end
                       else
                       begin

                           Self.TEdtQtde.Enabled:=False;
                           Self.TEdtValorUnitario.Enabled:=False;
                           Self.TEdtValorTotal.Enabled:=False;
                           Self.TEdtDesconto.Enabled:=False;
                           Self.TEdtQtde.Clear;
                           Self.TEdtDesconto.Clear;
                           Self.TEdtValorTotal.Clear;
                           Self.TEdtIPI.Clear;
                           Self.TEdtICMS.Clear;

                       end;

                       if UmaVenda.UmProduto.TipoUnidade = 1 then
                           Self.TLblMedida.Caption:= 'Kg(s)'
                       else if UmaVenda.UmProduto.TipoUnidade = 2 then
                            Self.TLblMedida.Caption:='Litro(s)'
                       else if UmaVenda.UmProduto.TipoUnidade = 3 then
                            Self.TLblMedida.Caption:= 'Unid.(s)';
                   end;
              end;
     end
     else
     begin
          Self.TEdtIdProduto.Clear;
          Self.TEdtProduto.Clear;
          Self.TEdtMarca.Clear;
          Self.TEdtIPI.Clear;
          Self.TEdtICMS.Clear;
          Self.TEdtValorVenda.Clear;
     end;

     UmaCtrlProduto.Destroy;
end;

procedure TFrmCadastroVenda.TEdtQtdeExit(Sender: TObject);
var floatValue:Double;
    intValue:Integer;
    UmaCtrlProduto:TCtrlProduto;
begin
    inherited;
    UmaCtrlProduto:=TCtrlProduto.Create;
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
             UmaCtrlProduto.Buscar(UmaVenda.UmProduto.IdProduto,'');
             UmaCtrlProduto.Carregar(UmaVenda.UmProduto);
            if (floatValue > StrToFloat(UmaVenda.UmProduto.Qtde)) then
            begin
              Self.TEdtQtde.Clear;
              ShowMessage('ESSA QUANTIDADE N�O � DISPON�VEL EM ESTOQUE.');
              Self.TEdtQtde.Clear;
              Self.TEdtQtde.Text:=UmaVenda.UmProduto.Qtde;
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
            UmaCtrlProduto.Buscar(UmaVenda.UmProduto.IdProduto,'');
            UmaCtrlProduto.Carregar(UmaVenda.UmProduto);
            if (intValue > StrToInt(UmaVenda.UmProduto.Qtde)) then
            begin
              Self.TEdtQtde.Clear;
              ShowMessage('ESSA QUANTIDADE N�O � DISPON�VEL EM ESTOQUE.');
              Self.TEdtQtde.Clear;
              Self.TEdtQtde.Text:=UmaVenda.UmProduto.Qtde;
            end;
        end
        else
                Self.TEdtQtde.Clear;
    end;
    Self.TEdtValorUnitarioExit(Sender);
    UmaCtrlProduto.Destroy;
end;

procedure TFrmCadastroVenda.TEdtSerieExit(Sender: TObject);
begin
  inherited;
   Self.TEdtSerie.Color:=clWindow;

end;

procedure TFrmCadastroVenda.TEdtValorFreteExit(Sender: TObject);
var floatVAlue, floatFrete:Double;
begin
  inherited;
  if TryStrToFloat(Self.TEdtValorFrete.Text, floatFrete) and TryStrToFloat(Self.TEdtValorTotalProdutos.Text,floatVAlue) then
  begin
      Self.TEdtValorFrete.Text:=FormatFloat('#0.00',floatFrete);
      Self.TEdtValorTotalNota.Text:= FloatToStr(StrToFloat(Self.TEdtValorFrete.Text)+StrToFloat(Self.TEdtValorTotalProdutos.Text));
  end
  else if TryStrToFloat(Self.TEdtValorTotalProdutos.Text,floatVAlue) then
  begin
     Self.TEdtValorTotalNota.Text:= Self.TEdtValorTotalProdutos.Text;
  end
  else
    ShowMessage('ERRO DE CONVERS�O EM FRETE OU VALOR TOTAL DOS PRODUTOS.');
  if not TryStrToFloat( Self.TEdtValorFrete.Text, floatVAlue) then
  begin
    Self.TEdtValorFrete.Clear;
    Self.TEdtValorFrete.Text:='0,00';
  end;

end;

procedure TFrmCadastroVenda.TEdtValorUnitarioExit(Sender: TObject);
var floatValueVLUnit,floatValueQTDE:Double;
    floatValueDesconto,floatValueAux:Double;
    stringValue:string;
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
          Self.TEdtTotalGeral.Clear;
          ShowMessage('ESTE VALOR UNITARIO N�O � CORRETO!');
        end
        else
        begin
            if TryStrToFloat(Self.TEdtDesconto.Text,floatValueDesconto) then
            begin
                    floatValueAux:= (floatValueVLUnit *  floatValueQTDE);
                    floatValueAux:= floatValueAux - (floatValueAux * (floatValueDesconto/100));
                    Self.TEdtTotalGeral.Text:=FormatFloat('#0.00',floatValueAux);
                    Exit;
            end
            else
            begin
               Self.TEdtValorTotal.Text:= FloatToStr(floatValueVLUnit * floatValueQTDE);
               Self.TEdtTotalGeral.Text:= Self.TEdtValorTotal.Text;
            end;
        end;
  end
  else
  begin
      if not TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
        Self.TEdtValorUnitario.Clear;
      Self.TEdtValorTotal.Clear;
      Self.TEdtTotalGeral.Clear
  end;
  if TryStrToFloat(Self.TEdtValorVenda.Text,floatValueAux) and TryStrToFloat(Self.TEdtValorUnitario.Text, floatValueVLUnit) then
  begin
    if floatValueVLUnit < floatValueAux then
    begin
      ShowMessage('O VALOR UNITARIO N�O PODE SER MENOR QUE O VALOR DE VENDA.');
      Self.TEdtValorUnitario.Clear;
      Self.TEdtValorUnitarioExit(Sender);
    end;

  end;

end;

procedure TFrmCadastroVenda.TStringGridProdutosVendaSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  lin:=ARow;
end;
function TFrmCadastroVenda.ValidaCampos:Boolean;
begin
  if Length( Self.TEdtFuncionario.Text) < 2 then
  begin
    Self.TEdtIdFuncionario.Color:=clWebSteelBlue;
    Self.TEdtIdFuncionario.SetFocus;
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
  if Length( Self.TEdtCliente.Text) < 2 then
  begin
    Self.TEdtIdCliente.Color:=clWebSteelBlue;
    Self.TEdtIdCliente.SetFocus;
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
  if Self.TStringGridProdutosVenda.RowCount < 3 then
  begin
    Self.TEdtIdProduto.Color:=clWebSteelBlue;
    Self.TEdtIdProduto.SetFocus;
    Result:=False;
    ShowMessage('DEVE HAVER PELO MENOS UM PRODUTO, PARA EFETUAR A VENDA!');
    Exit;
  end
  else
      Result:=True;
end;

end.

