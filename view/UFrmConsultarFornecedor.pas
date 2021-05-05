unit UFrmConsultarFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmConsultarPai, RzButton, StdCtrls, Mask, RzEdit, RzLabel, Grids,
  DBGrids, RzDBGrid, ExtCtrls, RzPanel, UFornecedor,UFornecedorFisico, UFrmCadastroFornecedor, UCtrlFornecedor, DB, UDM,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm;

type
  TFrmConsultarFornecedor = class(TFrmConsultarPai)
    TGroupBoxFornecedor: TRzGroupBox;
    TDBGridFornecedor: TRzDBGrid;
    TLblFornecedor: TRzLabel;
    TEdtFornecedor: TRzEdit;
    TBtnBuscarFornecedor: TRzButton;
    TLblIdFornecedor: TRzLabel;
    TEdtIdFornecedor: TRzEdit;
    procedure TBtnNovoClick(Sender: TObject);
    procedure TBtnBuscarFornecedorClick(Sender: TObject);
    procedure TDBGridFornecedorCellClick(Column: TColumn);
    procedure TBtnCancelarClick(Sender: TObject);
    procedure TBtnEditarClick(Sender: TObject);
    procedure TBtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  protected
    UmFornecedor:TFornecedor;
    UmFornecedorF:TFornecedorFisico;
    UmCadFornecedor:TFrmCadastroFornecedor;
    UmaCtrlfornecedor:TCtrlFornecedor;

  public
    { Public declarations }
    procedure ReconhecaObjeto(OFornecedor:TFornecedor;OFornecedorFisico:TFornecedorFisico);
  end;

var
  FrmConsultarFornecedor: TFrmConsultarFornecedor;

implementation

{$R *.dfm}

{ TFrmConsultarFornecedor }

procedure TFrmConsultarFornecedor.ReconhecaObjeto(OFornecedor: TFornecedor;oFornecedorFisico:TFornecedorFisico);
begin
    UmFornecedor:=OFornecedor;
    UmfornecedorF:=oFornecedorFisico;

    UmaCtrlfornecedor:=TCtrlFornecedor.Create;
    UmCadFornecedor:=TFrmCadastroFornecedor.Create(nil);
    Self.TDBGridFornecedor.DataSource:=UmaCtrlfornecedor.GetDs;
    //Self.TDBGridProdutosFornecedor.DataSource:=UmaCtrlfornecedor.getDsPF;
end;

procedure TFrmConsultarFornecedor.TBtnBuscarFornecedorClick(Sender: TObject);
var intValue:Integer;
begin
  inherited;
    if (Self.TEdtIdFornecedor.Text <> '') and (TryStrToInt(Self.TEdtIdFornecedor.Text,intValue)) then
    begin
        UmaCtrlfornecedor.Buscar(StrToInt(self.TEdtIdFornecedor.Text),'');
        UmaCtrlfornecedor.BuscarPF(StrToInt(self.TEdtIdFornecedor.Text),'')
    end
    else if  Self.TEdtFornecedor.Text <> '' then
          UmaCtrlfornecedor.Buscar(0,Self.TEdtFornecedor.Text)
    else
        ShowMessage('AO MENOS UM DOS CAMPOS COM * S�O OBRIGATORIOS !');
   Self.TEdtIdFornecedor.Clear;
   Self.TEdtFornecedor.Clear;
end;

procedure TFrmConsultarFornecedor.TBtnCancelarClick(Sender: TObject);
begin
  inherited;
  if Self.TBtnCancelar.Caption = 'Selecionar' then
  begin
    if UmaCtrlfornecedor.GetTipoFornecedor = 'Juridico' then
        UmFornecedor:=TFornecedor(UmaCtrlfornecedor.Carregar(UmFornecedor,2))
    else
        UmFornecedorF:=TFornecedorFisico(UmaCtrlfornecedor.Carregar(UmFornecedorF,1));
  end;
  Close;
end;

procedure TFrmConsultarFornecedor.TBtnEditarClick(Sender: TObject);
begin
  inherited;
  UmCadFornecedor.ReconhecaObjeto(UmFornecedor,UmFornecedorF,UmaCtrlfornecedor);
   UmaCtrlfornecedor.Carregar(UmFornecedor,2);
   if UmFornecedor.Id = 0 then
      UmaCtrlfornecedor.Carregar(UmFornecedorF,1);
  if UmFornecedor.Id <> 0  then
  begin
    if UmaCtrlfornecedor.Buscar(UmFornecedor.Id,'') then
    begin
      UmCadFornecedor.TRadioBtnJuridicoClick(Sender);
      UmCadFornecedor.TEdtIdFornecedor.Text:=IntToStr( UmFornecedor.Id);
      UmCadFornecedor.TEdtRS.Text:= UmFornecedor.RS;
      UmCadFornecedor.TEdtFantasia.Text:=UmFornecedor.Fantasia;
      UmCadFornecedor.TRadioBtnFisico.Checked:=False;
      UmCadFornecedor.TRadioBtnJuridico.Checked:=True;
      UmCadFornecedor.TEdtLogradouro.Text:=UmFornecedor.Logradouro;
      UmCadFornecedor.TEdtCEP.Text:=UmFornecedor.Cep;
      UmCadFornecedor.TEdtCNPJ.Text:=UmFornecedor.CNPJ;
      UmCadFornecedor.TEdtNumero.Text:=IntToStr(UmFornecedor.Numero);
      UmCadFornecedor.TEdtBairro.Text:=UmFornecedor.Bairro;
      UmCadFornecedor.TEdtCidade.Text:=UmFornecedor.Cidade.Cidade;
      UmCadFornecedor.TEdtIdCidade.Text:=IntToStr(UmFornecedor.Cidade.IdCidade);
      UmCadFornecedor.TEdtObservacoe.Text:=UmFornecedor.Observacoes;
      UmCadFornecedor.TEdtIE.Text:=UmFornecedor.IE;
      UmCadFornecedor.TEdtTelefoneComercial.Text:=UmFornecedor.Telefone;
      UmCadFornecedor.TEdtTelefoneComercial2.Text:=UmFornecedor.Telefone2;
      UmCadFornecedor.TEdtTelefoneCelular.Text:=UmFornecedor.Celular;
      UmCadFornecedor.TEdtTelefoneCelular2.Text:=UmFornecedor.Celular2;
      UmCadFornecedor.TEdtFax.Text:=UmFornecedor.Fax;
      UmCadFornecedor.TEdtEmail.Text:=UmFornecedor.Email;
      UmCadFornecedor.TDateTimePickerDataAlteracao.DateTime:=now;
      UmCadFornecedor.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(UmFornecedor.DataCadastro);

      UmCadFornecedor.ShowModal;
    end;
  end
  else if UmFornecedorF.Id <> 0 then
  begin
    if UmaCtrlfornecedor.Buscar(UmFornecedorF.Id,'') then
    begin
      UmCadFornecedor.TRadioBtnFisicoClick(Sender);
      UmCadFornecedor.TEdtIdFornecedor.Text:=IntToStr( UmFornecedorF.Id);
      UmCadFornecedor.TEdtRS.Text:=UmFornecedorF.Nome;
      UmCadFornecedor.TRadioBtnJuridico.Checked:=False;
      UmCadFornecedor.TRadioBtnFisico.Checked:=True;
      UmCadFornecedor.TEdtLogradouro.Text:=UmFornecedorF.Logradouro;
      UmCadFornecedor.TEdtCEP.Text:=UmFornecedorF.Cep;
      UmCadFornecedor.TEdtCNPJ.Text:=UmFornecedorF.CPF;
      UmCadFornecedor.TEdtNumero.Text:=IntToStr(UmFornecedorF.Numero);
      UmCadFornecedor.TEdtBairro.Text:=UmFornecedorF.Bairro;
      UmCadFornecedor.TEdtCidade.Text:=UmFornecedorF.Cidade.Cidade;
      UmCadFornecedor.TEdtIdCidade.Text:=IntToStr(UmFornecedorF.Cidade.IdCidade);
      UmCadFornecedor.TEdtObservacoe.Text:=UmFornecedorF.Observacoes;
      UmCadFornecedor.TEdtIE.Text:=UmFornecedorF.RG;
      UmCadFornecedor.TEdtTelefoneComercial.Text:=UmFornecedorF.Telefone;

      UmCadFornecedor.TEdtTelefoneCelular.Text:=UmFornecedorF.Celular;
      UmCadFornecedor.TEdtFax.Text:=UmFornecedorF.Fax;
      UmCadFornecedor.TEdtEmail.Text:=UmFornecedorF.Email;
      UmCadFornecedor.TDateTimePickerDataAlteracao.DateTime:=now;
      UmCadFornecedor.TDateTimePickerDataCadastro.DateTime:=StrToDateTime(UmFornecedorF.DataCadastro);
      UmCadFornecedor.TLblCNPJ.Caption:='CPF *';
      UmCadFornecedor.TLblIE.Caption:=' RG *';
      UmCadFornecedor.TLblRS.Caption:='Nome *';
      UmCadFornecedor.TEdtTelefoneCelular2.Visible:=false;
      UmCadFornecedor.TLblCel2.Visible:=false;
      UmCadFornecedor.TEdtTelefoneComercial2.Visible:=false;
            UmCadFornecedor.TLblTelefoneComercial2.Visible:=false;
      UmCadFornecedor.TEdtFantasia.Visible:=false;

      UmCadFornecedor.ShowModal;
    end;
  end;
  UmCadFornecedor.TBtnLimpar.Visible:=False;
  
end;

procedure TFrmConsultarFornecedor.TBtnExcluirClick(Sender: TObject);
begin
inherited;
if (MessageDlg('DESEJA REALIZAR A EXCLUS�O DOS DADOS.', mtConfirmation,[mbYes,mbNo],0) = IDYes)  then
  begin
      if UmaCtrlfornecedor.GetTipoFornecedor = 'Fisico' then
              UmaCtrlfornecedor.Carregar(UmFornecedorF,1)
      else
              UmaCtrlfornecedor.Carregar(UmFornecedor,2);

      if UmaCtrlfornecedor.Buscar(UmFornecedor.Id,'') AND (UmFornecedor.Id <> 0) then
      begin
          ShowMessage(UmaCtrlfornecedor.Excluir(UmFornecedor));
      end
      else if UmaCtrlfornecedor.Buscar(UmFornecedorF.Id,'') AND (UmFornecedorF.Id <> 0) then
      begin
         ShowMessage(UmaCtrlfornecedor.Excluir(UmFornecedorF));
      end
      else
          ShowMessage('O FORNECEDOR SELECIONADO N�O EXISTE.');
  end;
end;

procedure TFrmConsultarFornecedor.TBtnNovoClick(Sender: TObject);
begin
  inherited;
  UmCadFornecedor.ReconhecaObjeto(UmFornecedor,UmFornecedorF,UmaCtrlfornecedor);
  UmCadFornecedor.TDateTimePickerDataAlteracao.Visible:=False;
  UmCadFornecedor.TDateTimePickerDataCadastro.DateTime:=Now;
  UmCadFornecedor.TDateTimePickerDataCadastro.Enabled:=False;
  UmCadFornecedor.TLblDataAlteracao.Visible:=False;

  UmCadFornecedor.ShowModal;
end;

procedure TFrmConsultarFornecedor.TDBGridFornecedorCellClick(Column: TColumn);
var index:integer;
begin
  inherited;
  // para saber o indice da celula ShowMessage(IntToStr(TDBGridFornecedor.SelectedIndex));
  // para saber o valor da celula de indice 0 ou seja coluna 0 ShowMessage(TDBGridFornecedor.Fields[0].Text);
  //UmaCtrlfornecedor.BuscarPF(StrToInt(TDBGridFornecedor.Fields[0].Text),'');

end;

end.
