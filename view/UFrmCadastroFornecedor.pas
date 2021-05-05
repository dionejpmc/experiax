unit UFrmCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCadastroPai, RzButton, RzRadChk, ExtCtrls, RzPanel, StdCtrls,
  Mask, RzEdit, RzLabel, Grids, DBGrids, RzDBGrid, ComCtrls, RzDTP,
  UFornecedor,UfornecedorFisico, UCtrlFornecedor, UDM, DB, RzGrids, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, UCtrlProduto, UFrmConsultarCidade,UFrmConsultarProduto, UCtrlCidade,UProduto,
  RzRadGrp, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsForm;

type
  TFrmCadastroFornecedor = class(TFormCadastroPai)
    TLblRS: TRzLabel;
    TLblFantasia: TRzLabel;
    TEdtRS: TRzEdit;
    TEdtFantasia: TRzEdit;
    TGroupBoxEnderecoFornecedor: TRzGroupBox;
    TLblLogradouro: TRzLabel;
    TLblNumero: TRzLabel;
    TLblCEP: TRzLabel;
    TLblbairro: TRzLabel;
    TLblObservacoes: TRzLabel;
    TLblCidade: TRzLabel;
    TEdtCidade: TRzEdit;
    TBtnBuscarCidade: TRzButton;
    TEdtLogradouro: TRzEdit;
    TEdtCEP: TRzEdit;
    TEdtBairro: TRzEdit;
    TEdtObservacoe: TRzEdit;
    TEdtNumero: TRzEdit;
    TGroupBoxContatoFornecedor: TRzGroupBox;
    TLblTelefoneComercial1: TRzLabel;
    TLblCelular1: TRzLabel;
    TLblFax: TRzLabel;
    TLblEmail: TRzLabel;
    TEdtTelefoneComercial: TRzEdit;
    TEdtTelefoneCelular: TRzEdit;
    TEdtFax: TRzEdit;
    TEdtEmail: TRzEdit;
    TLblTelefoneComercial2: TRzLabel;
    TEdtTelefoneComercial2: TRzEdit;
    TLblCel2: TRzLabel;
    TEdtTelefoneCelular2: TRzEdit;
    TGroupBoxProdutoFornecedor: TRzGroupBox;
    TEdtIE: TRzEdit;
    TEdtCNPJ: TRzEdit;
    TLblCNPJ: TRzLabel;
    TLblIE: TRzLabel;
    TLblIdCidade: TRzLabel;
    TEdtIdCidade: TRzEdit;
    TLblIdFornecedor: TRzLabel;
    TEdtIdFornecedor: TRzEdit;
    TStringGridProdutofornecedor: TRzStringGrid;
    TBtnRemover: TRzBitBtn;
    TBtnAdicionar: TRzBitBtn;
    TLblProduto: TRzLabel;
    TEdtProduto: TRzEdit;
    TEdtIdProduto: TRzEdit;
    TBtnBuscarProduto: TRzBitBtn;
    TLblMarca: TRzLabel;
    TEdtMarca: TRzEdit;
    TRadioGroupTipo: TRzRadioGroup;
    TRadioBtnJuridico: TRzRadioButton;
    TRadioBtnFisico: TRzRadioButton;
    TLblIDProduto: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure TEdtIdCidadeExit(Sender: TObject);
    procedure TEdtIdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdProdutoExit(Sender: TObject);
    procedure TBtnAdicionarClick(Sender: TObject);
    procedure TBtnRemoverClick(Sender: TObject);
    procedure TStringGridProdutofornecedorSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure TBtnBuscarCidadeClick(Sender: TObject);
    procedure TBtnBuscarProdutoClick(Sender: TObject);
    procedure TBtnSalvarClick(Sender: TObject);
    procedure TEdtRSExit(Sender: TObject);
    procedure TEdtFantasiaExit(Sender: TObject);
    procedure TEdtLogradouroExit(Sender: TObject);
    procedure TEdtNumeroExit(Sender: TObject);
    procedure TEdtCEPExit(Sender: TObject);
    procedure TEdtBairroExit(Sender: TObject);
    procedure TEdtTelefoneComercialExit(Sender: TObject);
    procedure TEdtTelefoneCelularExit(Sender: TObject);
    procedure TEdtCNPJExit(Sender: TObject);
    procedure TEdtIEExit(Sender: TObject);
    procedure TRadioBtnFisicoClick(Sender: TObject);
    procedure TRadioBtnJuridicoClick(Sender: TObject);
    procedure TBtnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TEdtCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtCEPKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtIdProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure TEdtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure TBtnCancelarClick(Sender: TObject);


  private
    { Private declarations }
  protected
    UmFornecedor: TFornecedor;
    UmFornecedorFisico:TFornecedorFisico;
    UmaCtrlFornecedor: TCtrlFornecedor;
    l,lin:Integer;
    UmFrmConCidade:TFrmConsultarCidade;
    UmFrmConProduto:TFrmConsultarProduto;

  public
    { Public declarations }
    procedure ReconhecaObjeto(oFOrnecedor: TFornecedor;OFornecedorF:TFornecedorFisico;ACtrlFornecedor: TCtrlFornecedor);
    function ValidaCampos: Boolean;
    function ValidarCNPJ(CNPJ: String): Boolean;
    procedure LimpaCampos;
  end;

var
  FrmCadastroFornecedor: TFrmCadastroFornecedor;

implementation

{$R *.dfm}
{ TFrmCadastroFornecedor }

procedure TFrmCadastroFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Self.TBtnCancelarClick(Sender);
end;

procedure TFrmCadastroFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
   Self.TStringGridProdutofornecedor.Cells[1,0]:='ID';
   Self.TStringGridProdutofornecedor.Cells[2,0]:='PRODUTO';
   Self.TStringGridProdutofornecedor.Cells[3,0]:='MARCA';
   Self.TRadioBtnJuridicoClick( Sender);
end;

procedure TFrmCadastroFornecedor.LimpaCampos;
VAR A, B, AuxInt:Integer;
begin
   Self.TEdtRS.Clear;
   Self.TEdtFantasia.Clear;
   Self.TEdtIdFornecedor.Clear;
   Self.TEdtCNPJ.Clear;
   Self.TEdtIE.Clear;
   Self.TEdtCidade.Clear;
   Self.TEdtIdCidade.Clear;
   Self.TEdtBairro.Clear;
   Self.TEdtLogradouro.Clear;
   Self.TEdtNumero.Clear;
   Self.TEdtCEP.Clear;
   Self.TEdtFax.Clear;
   Self.TEdtTelefoneComercial.Clear;
   Self.TEdtTelefoneComercial2.Clear;
   Self.TEdtTelefoneCelular.Clear;
   Self.TEdtTelefoneCelular2.Clear;
   Self.TEdtObservacoe.Clear;
   Self.TEdtEmail.Clear;
   for A := 1 to  Self.TStringGridProdutofornecedor.ColCount do
      for B:= 1 to  Self.TStringGridProdutofornecedor.RowCount do
      begin
        Self.TStringGridProdutofornecedor.Cells[a, b] := '';
      end;
      if Self.TRadioBtnJuridico.Checked then
          if UmFornecedor.UmaListaProduto.Count > 0 then
          begin
             auxInt:=UmFornecedor.UmaListaProduto.Count;
             if AuxInt > 0 then
                 for A :=AuxInt Downto  1 do
                 begin
                    UmFornecedor.Produto:=UmFornecedor.getProdutos(A-1);
                    UmFornecedor.UmaListaProduto.Delete(A-1);
                    UmFornecedor.Produto.Destroy;
                 end;
          end;
      if Self.TRadioBtnFisico.Checked then
          if UmFornecedorFisico.UmaListaProduto.Count <> 0 then
          begin
             auxInt:=UmFornecedorFisico.UmaListaProduto.Count;
             if AuxInt > 0 then
                 for A :=AuxInt Downto  1 do
                 begin
                    UmFornecedorFisico.Produto:=UmFornecedorFisico.getProdutos(A-1);
                    UmFornecedorFisico.UmaListaProduto.Delete(A-1);
                    UmFornecedorFisico.Produto.Destroy;
                 end;
          end;
end;

procedure TFrmCadastroFornecedor.ReconhecaObjeto(oFOrnecedor: TFornecedor;OFornecedorF:TFornecedorFisico;
  ACtrlFornecedor: TCtrlFornecedor);
begin
  UmFornecedor := oFOrnecedor;
  UmFornecedorFisico:=OFornecedorF;
  UmaCtrlFornecedor := ACtrlFornecedor;
  UmFornecedor.UmaListaProduto:=TList.Create;
  UmFornecedorFisico.UmaListaProduto:=TList.Create;
  l:=1;

end;

procedure TFrmCadastroFornecedor.TBtnAdicionarClick(Sender: TObject);
var
  I: Integer;
  permicao:boolean;
begin
  inherited;
  if ((Self.TEdtIdProduto.Text <> '') and (Self.TEdtProduto.Text <> '')) then
  begin
    if(Self.TEdtIdProduto.Text = '0') then
    begin
      ShowMessage('O ID DE NUMERO ZERO N�O � VALIDO!');
      Self.TEdtIdProduto.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtMarca.Clear;
    end
    else
    begin
      permicao:=True;
      if Self.TStringGridProdutofornecedor.RowCount = 0 then
          Self.TStringGridProdutofornecedor.RowCount:= 1;
      for I := 1 to l  do
      begin
          if (Self.TStringGridProdutofornecedor.Cells[1,i] = Self.TEdtIdProduto.Text) then
              permicao:=False;
      end;
      if permicao then
      begin
          Self.TStringGridProdutofornecedor.RowCount:= Self.TStringGridProdutofornecedor.RowCount +1;
          Self.TStringGridProdutofornecedor.Cells[1, l] := Self.TEdtIdProduto.Text;
          Self.TStringGridProdutofornecedor.Cells[2, l] := Self.TEdtProduto.Text;
          Self.TStringGridProdutofornecedor.Cells[3, l] := Self.TEdtMarca.Text;
          l := l + 1;

          Self.TEdtIdProduto.Clear;
          Self.TEdtProduto.Clear;
          Self.TEdtMarca.Clear;
      end
      else
      begin
          ShowMessage('ESTE PRODUTO JA ESTA ASSOCIADO A ESTE FORNECEDOR!');
          Self.TEdtIdProduto.Clear;
          Self.TEdtProduto.Clear;
          Self.TEdtMarca.Clear;
      end;
    end;
  end
  else
  begin
      ShowMessage('OS CAMPOS DE PRODUTO DEVEM SER CARREGADOS CORRETAMENTE PARA SEREM ADICIONADOS A RECEITA !');
      Self.TEdtIdProduto.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtMarca.Clear;
  end;
end;

procedure TFrmCadastroFornecedor.TBtnBuscarCidadeClick(Sender: TObject);
begin
  inherited;
  UmFrmConCidade:=TFrmConsultarCidade.Create(nil);
  UmFrmConCidade.ReconhecaObjeto(UmFornecedor.Cidade);
  UmFrmConCidade.TBtnCancelar.Caption:='Selecionar';
  UmFrmConCidade.ShowModal;
  Self.TEdtIdCidade.Text:=IntToStr(UmFornecedor.Cidade.IdCidade);
  Self.TEdtCidade.Text:=UmFornecedor.Cidade.Cidade;
  UmFrmConCidade.Free;
end;

procedure TFrmCadastroFornecedor.TBtnBuscarProdutoClick(Sender: TObject);
begin
  inherited;
  UmFrmConProduto:=TFrmConsultarProduto.Create(nil);
  UmFrmConProduto.ReconhecaObjeto(UmFornecedor.Produto);
  UmFrmConProduto.TBtnCancelar.Caption:='Selecionar';
  UmFrmConProduto.ShowModal;
  if Self.TRadioBtnJuridico.Checked then
  begin
    if UmFornecedor.Produto.Tipo = 3 then
    begin
        Self.TEdtIdProduto.Clear;
        Self.TEdtProduto.Clear;
        Self.TEdtMarca.Clear;
        ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER ASSOCIADO A UM FORNECEDOR!');
    end
    else
    begin
        Self.TEdtIdProduto.Text:=IntToStr(UmFornecedor.Produto.IdProduto);
        Self.TEdtProduto.Text:=UmFornecedor.Produto.Produto;
        Self.TEdtMarca.Text:=UmFornecedor.Produto.Marca;
    end;
  end
  else
  begin
      if UmFornecedor.Produto.Tipo = 3 then
      begin
            Self.TEdtIdProduto.Clear;
            Self.TEdtProduto.Clear;
            Self.TEdtMarca.Clear;
            ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER ASSOCIADO A UM FORNECEDOR!');
      end
      else
      begin
            Self.TEdtIdProduto.Text:=IntToStr(UmFornecedor.Produto.IdProduto);
            Self.TEdtProduto.Text:=UmFornecedorFisico.Produto.Produto;
            Self.TEdtMarca.Text:=UmFornecedorFisico.Produto.Marca;
      end;
  end;
  UmFrmConProduto.Free;
  Self.TEdtIdProdutoExit(Sender);
end;

procedure TFrmCadastroFornecedor.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroFornecedor.TBtnLimparClick(Sender: TObject);
begin
  inherited;
  Self.LimpaCampos;
end;

procedure TFrmCadastroFornecedor.TBtnRemoverClick(Sender: TObject);
var i,j:Integer;
    condicao:Boolean;
begin
    inherited;
    condicao:=True;
    if ((Self.TStringGridProdutofornecedor.Cells[1,lin] = '') or
        (Self.TStringGridProdutofornecedor.RowCount <= 0)) or
        (Self.TStringGridProdutofornecedor.Cells[1,1] = '') then
    begin
         ShowMessage('N�O EXISTEM DADOS A SEREM EXCLUIDOS!');
         condicao:=False;
    end
    else if (MessageDlg('VOC� CONFIRMA A EXCLUS�O DOS DADOS', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
    begin
      for i := lin to TStringGridProdutofornecedor.RowCount do
        for j := 1 to TStringGridProdutofornecedor.ColCount  do
          if ((i <> 0) and (j <> 0)) then
             Self.TStringGridProdutofornecedor.Cells[j,i]:=Self.TStringGridProdutofornecedor.Cells[j,i+1]
          else
             Condicao:=False;
    end
    else
      condicao:=False;
    if Condicao then
    begin
      Self.TStringGridProdutofornecedor.RowCount:=Self.TStringGridProdutofornecedor.RowCount -1;
      l:=l-1;
    end
  else
      ShowMessage('� NECESSARIO SELECIONAR UM DADO NA TABELA PARA QUE ELE SEJA EXCLUIDO!');
end;

procedure TFrmCadastroFornecedor.TBtnSalvarClick(Sender: TObject);
var i,id,AUX:Integer;
    MSG:String;
begin
inherited;
  if Self.ValidaCampos then
  begin
      if Self.TRadioBtnJuridico.Checked then
      begin
          id:=2;
          if TryStrToInt(Self.TEdtIdFornecedor.Text, AUX) then
              UmFornecedor.Id:=Aux
          else
              UmFornecedor.Id:=0;
          UmFornecedor.RS:=Self.TEdtRS.Text;
          UmFornecedor.IE:=Self.TEdtIE.Text;
          UmFornecedor.Fantasia:=Self.TEdtFantasia.Text;
          UmFornecedor.CNPJ:=Self.TEdtCNPJ.Text;
          UmFornecedor.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
          UmFornecedor.Bairro:=Self.TEdtBairro.Text;
          UmFornecedor.Logradouro:=Self.TEdtLogradouro.Text;
          UmFornecedor.Numero:=StrToInt(Self.TEdtNumero.Text);
          UmFornecedor.Cep:=Self.TEdtCEP.Text;
          UmFornecedor.Observacoes:=Self.TEdtObservacoe.Text;
          UmFornecedor.Telefone:=Self.TEdtTelefoneComercial.Text;
          UmFornecedor.Telefone2:=Self.TEdtTelefoneComercial2.Text;
          UmFornecedor.Celular:=Self.TEdtTelefoneCelular.Text;
          UmFornecedor.Celular2:=Self.TEdtTelefoneCelular2.Text;
          UmFornecedor.Fax:=Self.TEdtFax.Text;
          UmFornecedor.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
          UmFornecedor.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
          for i:= 1 to l - 1 do
          begin
               UmFornecedor.Produto:=TProduto.Create;
               UmFornecedor.Produto.IdProduto:=StrToInt(Self.TStringGridProdutofornecedor.Cells[1,i]);
               UmFornecedor.UmaListaProduto.Insert(i-1,UmFornecedor.Produto);
               UmFornecedor.Produto:=nil;
          end;
          MSG:=UmaCtrlFornecedor.Salvar(UmFornecedor,id);
      end;
      if Self.TRadioBtnFisico.Checked then
      begin
          id:=1;
          if TryStrToInt(Self.TEdtIdFornecedor.Text, AUX) then
              UmFornecedorFisico.Id:=Aux
          else
              UmFornecedorFisico.Id:=0;
          UmFornecedorFisico.Nome:=Self.TEdtRS.Text;
          UmFornecedorFisico.RG:=Self.TEdtIE.Text;
          UmFornecedorFisico.CPF:=Self.TEdtCNPJ.Text;
          UmFornecedorFisico.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
          UmFornecedorFisico.Bairro:=Self.TEdtBairro.Text;
          UmFornecedorFisico.Logradouro:=Self.TEdtLogradouro.Text;
          UmFornecedorFisico.Numero:=StrToInt(Self.TEdtNumero.Text);
          UmFornecedorFisico.Cep:=Self.TEdtCEP.Text;
          UmFornecedorFisico.Observacoes:=Self.TEdtObservacoe.Text;
          UmFornecedorFisico.Telefone:=Self.TEdtTelefoneComercial.Text;
          UmFornecedorFisico.Celular:=Self.TEdtTelefoneCelular.Text;
          UmFornecedorFisico.Fax:=Self.TEdtFax.Text;
          UmFornecedorFisico.DataCadastro:=DateTimeToStr(Self.TDateTimePickerDataCadastro.DateTime);
          UmFornecedorFisico.DataAlteracao:=DateTimeToStr(Self.TDateTimePickerDataAlteracao.DateTime);
          for i:= 1 to l - 1 do
          begin
               UmFornecedorFisico.Produto:=TProduto.Create;
               UmFornecedorFisico.Produto.IdProduto:=StrToInt(Self.TStringGridProdutofornecedor.Cells[1,i]);
               UmFornecedorFisico.UmaListaProduto.Insert(i-1,UmFornecedorFisico.Produto);
               UmFornecedorFisico.Produto:=nil;
          end;
          MSG:=UmaCtrlFornecedor.Salvar(UmFornecedorFisico,id);
      end;
  end;
  if Self.ValidaCampos then
  begin
    ShowMessage(MSG);
    Self.LimpaCampos;
    Close;
  end;
end;

procedure TFrmCadastroFornecedor.TEdtBairroExit(Sender: TObject);
begin
  inherited;
  Self.TEdtBairro.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtCEPExit(Sender: TObject);
begin
  inherited;
  Self.TEdtCEP.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtCEPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Length(TEdtCEP.Text) = 5 then
      begin
         TEdtCEP.Text := TEdtCEP.Text + '-';
         TEdtCEP.Selstart := Length(TEdtCEP.Text);
      end;
end;

procedure TFrmCadastroFornecedor.TEdtCNPJExit(Sender: TObject);
begin
  inherited;
  Self.TEdtCNPJ.Color:=clWindow;
  if Self.TRadioBtnFisico.Checked then
  begin
     if not UmFornecedorFisico.ValidaCPF(Self.TEdtCNPJ.Text) then
     begin
       Self.TEdtCNPJ.Clear;
       ShowMessage('CPF INVALIDO.');
     end;
  end
  else
  begin
    if not ValidarCNPJ(Self.TEdtCNPJ.Text) then
    begin
      Self.TEdtCNPJ.Clear;
      ShowMessage('CNPJ INVALIDO.');
    end;
  end;

end;

procedure TFrmCadastroFornecedor.TEdtCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
//000.000.000-00
if not (key in [#8,'0'..'9','/','.','-']) then
     key := #0
else if key in [#8] then
     key := #8
else
begin
    if Self.TRadioBtnFisico.Checked then
    begin
       if Length(TEdtCNPJ.Text) = 3 then
          begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '.';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);
          end;

       if Length(TEdtCNPJ.Text) = 7 then
          begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '.';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);
          end;

       if Length(TEdtCNPJ.Text) = 11 then
          begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '-';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);

          end;
       if Length(Self.TEdtCNPJ.Text) = 14 then
       begin
            Key:=  #0;

       end;
    end;
    if Self.TRadioBtnJuridico.Checked then
    begin
       //00.000.000/0000-00
       if Length(TEdtCNPJ.Text) = 2 then
       begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '.';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);

       end;
       if Length(TEdtCNPJ.Text) = 6 then
       begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '.';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);

       end;
       if Length(TEdtCNPJ.Text) = 10 then
       begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '/';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);

       end;
       if Length(TEdtCNPJ.Text) = 15 then
       begin
             TEdtCNPJ.Text := TEdtCNPJ.Text + '-';
             TEdtCNPJ.Selstart := Length(TEdtCNPJ.Text);

       end;
       if Length(Self.TEdtCNPJ.Text) = 18 then
       begin
            Key:=  #0;
       end;
    end;
end;
end;

procedure TFrmCadastroFornecedor.TEdtFantasiaExit(Sender: TObject);
begin
  inherited;
  Self.TEdtFantasia.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtIdCidadeExit(Sender: TObject);
var
  UmaCtrlCidade:TCtrlCidade;
  IntValue:integer;
begin
inherited;
 Self.TEdtIdCidade.Color:=clWindow;
 if TryStrToInt(Self.TEdtIdCidade.Text,IntValue) and (Self.TEdtIdCidade.Text <> '') then
 begin
      Self.TEdtCidade.Clear;
      UmaCtrlCidade:=TCtrlCidade.Create;
      //SE O FORNECEDOR FOR JURIDICO
      if Self.TRadioBtnJuridico.Checked then
      begin
         UmFornecedor.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
         if not UmaCtrlCidade.Buscar(UmFornecedor.Cidade.IdCidade,'') then
         begin
           Self.TEdtIdCidade.Clear;
           Self.TEdtCidade.Clear;
           ShowMessage('NENHUM REGISTRO ENCONTRADO.');
         end
         else
         begin
           UmaCtrlCidade.Carregar(UmFornecedor.Cidade);
           Self.TEdtIdCidade.Text:= IntToStr(UmFornecedor.Cidade.IdCidade);
           Self.TEdtCidade.Text:=UmFornecedor.Cidade.Cidade;
         end;
      end;
      //SE O FORNECEDOR FOR FISICO
      if Self.TRadioBtnFisico.Checked then
      begin
         UmFornecedorFisico.Cidade.IdCidade:=StrToInt(Self.TEdtIdCidade.Text);
         if not UmaCtrlCidade.Buscar(UmFornecedorFisico.Cidade.IdCidade,'') then
         begin
           Self.TEdtIdCidade.Clear;
           Self.TEdtCidade.Clear;
           ShowMessage('NENHUM REGISTRO ENCONTRADO.');
         end
         else
         begin
           UmaCtrlCidade.Carregar(UmFornecedorFisico.Cidade);
           Self.TEdtIdCidade.Text:= IntToStr(UmFornecedorFisico.Cidade.IdCidade);
           Self.TEdtCidade.Text:=UmFornecedorFisico.Cidade.Cidade;
           UmaCtrlCidade.Destroy;
         end;
      end;
 end
 else
 begin
    Self.TEdtIdCidade.Clear;
    Self.TEdtCidade.Clear;
 end;
end;

procedure TFrmCadastroFornecedor.TEdtIdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['1'..'9',#8]) then
     key := #0;
end;
procedure TFrmCadastroFornecedor.TEdtIdProdutoExit(Sender: TObject);
var
  UmaCtrlProduto:TCtrlProduto;
  intValue:integer;
begin
inherited;
    Self.TEdtIdProduto.Color:=clWindow;
if TryStrToInt(Self.TEdtIdProduto.Text,IntValue) and (Self.TEdtIdProduto.Text <> '') then
 begin
          Self.TEdtProduto.Clear;
          UmaCtrlProduto:=TCtrlProduto.Create;
          //SE O FORNECEDOR FOR JURIDICO
          if Self.TRadioBtnJuridico.Checked then
          begin
             UmFornecedor.Produto.IdProduto:=StrToInt(Self.TEdtIdProduto.Text);
             if not UmaCtrlProduto.Buscar(UmFornecedor.Produto.IdProduto,'') then
             begin
               Self.TEdtIdProduto.Clear;
               Self.TEdtProduto.Clear;
               Self.TEdtMarca.Clear;
             end
             else
             begin
               UmaCtrlProduto.Carregar(UmFornecedor.Produto);
               if UmFornecedor.Produto.Tipo = 3 then
               begin
                   ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER ASSOCIADO A UM FORNECEDOR!');
                   Self.TEdtIdProduto.Clear;
                   Self.TEdtProduto.Clear;
                   Self.TEdtMarca.Clear;
               end
               else
               begin
                   Self.TEdtIdProduto.Text:= IntToStr(UmFornecedor.Produto.IdProduto);
                   Self.TEdtProduto.Text:=UmFornecedor.Produto.Produto;
                   Self.TEdtMarca.Text:=UmFornecedor.Produto.Marca;
               end;
             end;
          end;
          //SE O FORNECEDOR FOR FISICO
          if Self.TRadioBtnFisico.Checked then
          begin
             UmFornecedorFisico.Produto.IdProduto:=StrToInt(Self.TEdtIdProduto.Text);
             if not UmaCtrlProduto.Buscar(UmFornecedorFisico.Produto.IdProduto,'') then
             begin
               Self.TEdtIdProduto.Clear;
               Self.TEdtProduto.Clear;
               Self.TEdtMarca.Clear;
             end
             else
             begin
               UmaCtrlProduto.Carregar(UmFornecedorFisico.Produto);
               if UmFornecedorFisico.Produto.Tipo = 3 then
               begin
                   ShowMessage('TIPO DE PRODUTO INVALIDO PARA SER ASSOCIADO A UM FORNECEDOR!');
                   Self.TEdtIdProduto.Clear;
                   Self.TEdtProduto.Clear;
                   Self.TEdtMarca.Clear;
               end
               else
               begin
                   Self.TEdtIdProduto.Text:= IntToStr(UmFornecedorFisico.Produto.IdProduto);
                   Self.TEdtProduto.Text:=UmFornecedorFisico.Produto.Produto;
                   Self.TEdtMarca.Text:=UmFornecedorFisico.Produto.Marca;
               end;
             end;
          end;
    end
    else
    begin
      Self.TEdtIdProduto.Clear;
      Self.TEdtProduto.Clear;
      Self.TEdtMarca.Clear;
   end;
end;

procedure TFrmCadastroFornecedor.TEdtIdProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['1'..'9',#8]) then
     key := #0;
end;

procedure TFrmCadastroFornecedor.TEdtIEExit(Sender: TObject);
begin
  inherited;
  Self.TEdtIE.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtLogradouroExit(Sender: TObject);
begin
  inherited;
  Self.TEdtLogradouro.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtNumeroExit(Sender: TObject);
begin
  inherited;
  Self.TEdtNumero.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['1'..'9',#8]) then
    key := #0;
end;

procedure TFrmCadastroFornecedor.TEdtRSExit(Sender: TObject);
begin
  inherited;
  Self.TEdtRS.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtTelefoneCelularExit(Sender: TObject);
begin
  inherited;
   Self.TEdtTelefoneCelular.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TEdtTelefoneComercialExit(Sender: TObject);
begin
  inherited;
  Self.TEdtTelefoneComercial.Color:=clWindow;
end;

procedure TFrmCadastroFornecedor.TRadioBtnFisicoClick(Sender: TObject);
begin
      Self.TLblRS.Caption:='Nome *';
      Self.TLblCNPJ.Caption:='CPF *';
      Self.TLblIE.Caption:='RG *';
      Self.TLblFantasia.Visible:=False;
      Self.TEdtFantasia.Visible:=False;
      Self.TEdtCNPJ.MaxLength:=14;
      Self.TEdtCNPJ.Clear;
      Self.TEdtIE.Clear;
end;

procedure TFrmCadastroFornecedor.TRadioBtnJuridicoClick(Sender: TObject);
begin
  inherited;
      Self.TLblRS.Caption:='Raz�o Social *';
      Self.TLblCNPJ.Caption:='CNPJ *';
      Self.TLblIE.Caption:='IE *';
      Self.TLblFantasia.Visible:=True;
      Self.TEdtFantasia.Visible:=True;
      Self.TEdtCNPJ.MaxLength:=18;
      Self.TEdtCNPJ.Clear;
      Self.TEdtIE.Clear;
end;

procedure TFrmCadastroFornecedor.TStringGridProdutofornecedorSelectCell(
  Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  lin:=ARow;
end;

function TFrmCadastroFornecedor.ValidaCampos: Boolean;
begin
    if Length(Self.TEdtRS.Text) < 3 then
    begin
              Self.TEdtRS.Color:=clWebSteelBlue;
              Self.TEdtRS.SetFocus;
              Result:=False;
              exit;
    end;
    if Self.TRadioBtnJuridico.Checked then
        if(Length(Self.TEdtFantasia.Text) < 2) then
        begin
              Self.TEdtFantasia.Color:=clWebSteelBlue;
              Self.TEdtFantasia.SetFocus;
              Result:=False;
              exit;
        end;
    if Length(Self.TEdtLogradouro.Text) < 3 then
    begin
          Self.TEdtLogradouro.Color:=clWebSteelBlue;
          Self.TEdtLogradouro.SetFocus;
          Result:=False;
          exit;
    end;
    if not isNum(self.TEdtNumero.Text)then
    begin
          Self.TEdtNumero.Color:=clWebSteelBlue;
          Self.TEdtNumero.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtCEP.Text)< 9 then
    begin
          Self.TEdtCEP.Color:=clWebSteelBlue;
          Self.TEdtCEP.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtBairro.Text) <  3 then
    begin
          Self.TEdtBairro.Color:=clWebSteelBlue;
          Self.TEdtBairro.SetFocus;
          Result:=False;
          exit;
    end;
    if Self.TEdtCidade.Text = '' then
    begin
          Self.TEdtIdCidade.Color:=clWebSteelBlue;
          Self.TEdtIdCidade.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtTelefoneComercial.Text) < 8 then
    begin
          Self.TEdtTelefoneComercial.Color:=clWebSteelBlue;
          Self.TEdtTelefoneComercial.SetFocus;
          Result:=False;
          exit;
    end;
    if Length(Self.TEdtTelefoneCelular.Text) < 8 then
    begin
          Self.TEdtTelefoneCelular.Color:=clWebSteelBlue;
          Self.TEdtTelefoneCelular.SetFocus;
          Result:=False;
          exit;
    end;
    if Self.TRadioBtnJuridico.Checked then
        if Length(Self.TEdtCNPJ.Text) < 17 then
        begin
              Self.TEdtCNPJ.Color:=clWebSteelBlue;
              Self.TEdtCNPJ.SetFocus;
              Result:=False;
              exit;
        end;
    if Self.TRadioBtnFisico.Checked then
        if (Length(Self.TEdtCNPJ.Text) < 14) or (Length(Self.TEdtCNPJ.Text) > 14) then
        begin
              Self.TEdtCNPJ.Color:=clWebSteelBlue;
              Self.TEdtCNPJ.SetFocus;
              Result:=False;
              exit;
        end;
    if Length(Self.TEdtIE.Text) < 11  then
    begin
          Self.TEdtIE.Color:=clWebSteelBlue;
          Self.TEdtIE.SetFocus;
          Result:=False;
          Exit;
    end
    else
          Result:=True;
end;
function TFrmCadastroFornecedor.ValidarCNPJ(CNPJ: String): Boolean;
var vCNPJ, vDigito: String;
    DF1, DF2: Integer;
begin
  Result := False;

  vCNPJ := CNPJ;

  // Removendo caracteres especiais
  vCNPJ := StringReplace( vCNPJ, '.', '', [rfReplaceAll] );
  vCNPJ := StringReplace( vCNPJ, '-', '', [rfReplaceAll] );
  vCNPJ := StringReplace( vCNPJ, '/', '', [rfReplaceAll] );

  // Verificar tamanho dos d�gitos do CNPJ
  if ( Length( vCNPJ ) <> 14 ) then
    Exit;

  // Armazena o n�mero do CNPJ e o digito separados
  vDigito := Copy( vCNPJ, 13, 02 );
  vCNPJ   := Copy( vCNPJ, 01, 12 );

  // Somar e multiplicar os pesos do digito 1 em cada n�mero
  DF1 :=       (StrToInt(vCNPJ[01])*05) + (StrToInt(vCNPJ[02])*04);
  DF1 := DF1 + (StrToInt(vCNPJ[03])*03) + (StrToInt(vCNPJ[04])*02) + (StrToInt(vCNPJ[05])*09);
  DF1 := DF1 + (StrToInt(vCNPJ[06])*08) + (StrToInt(vCNPJ[07])*07) + (StrToInt(vCNPJ[08])*06);
  DF1 := DF1 + (StrToInt(vCNPJ[09])*05) + (StrToInt(vCNPJ[10])*04) + (StrToInt(vCNPJ[11])*03) + (StrToInt(vCNPJ[12])*02);

  // C�lculo da diferen�a de 11 com o resto de DF1
  DF1 := 11 - ( DF1 mod 11 );

  // Se o resultado anterior for maior ou igual a 10, o d�gito 1 � 0,
  // caso contr�rio, o digito 1 � o pr�prio resultado.
  if DF1 >= 10 then DF1 := 0;

  // Somar e multiplicar os pesos do digito 2 em cada n�mero
  DF2 :=       (StrToInt(vCNPJ[01])*06) + (StrToInt(vCNPJ[02])*05);
  DF2 := DF2 + (StrToInt(vCNPJ[03])*04) + (StrToInt(vCNPJ[04])*03) + (StrToInt(vCNPJ[05])*02);
  DF2 := DF2 + (StrToInt(vCNPJ[06])*09) + (StrToInt(vCNPJ[07])*08) + (StrToInt(vCNPJ[08])*07);
  DF2 := DF2 + (StrToInt(vCNPJ[09])*06) + (StrToInt(vCNPJ[10])*05) + (StrToInt(vCNPJ[11])*04) + (StrToInt(vCNPJ[12])*03);

  // Somar o resultado do digito 2 com o dobro do digito 1
  DF2 := DF2 + ( DF1 * 2 );

  // C�lculo da diferen�a de 11 com o resto de DF2
  DF2 := 11 - ( DF2 mod 11 );

  // Se o resultado anterior for maior ou igual a 10, o d�gito 2 � 0,
  // caso contr�rio, o digito 2 � o pr�prio resultado.
  if DF2 >= 10 then DF2 := 0;

  // Retorna verdadeiro ou falso, caso o d�gito informado coincida ou n�o com o calculado
  Result := vDigito = IntToStr(DF1) + IntToStr(DF2);
end;

end.
