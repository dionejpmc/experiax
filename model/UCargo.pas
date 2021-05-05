unit UCargo;

interface
type
    TCargo = class(TObject)
      private
      protected
        FIdCargo:integer;
        FCargo:string;
        FDataCadastro:string;
        FDataAlteracao:string;

      public
        constructor Create;
        destructor Destroy;

        procedure setIdCargo(vIdCargo:Integer);
        procedure setCargo(vcargo:string);
        procedure setDataCadastro(vDataCadastro:string);
        procedure setDataAlteracao(vDataAlteracao:string);

        function getIdCargo:Integer;
        function getCargo:string;
        function getDataAlteracao:string;
        function getDataCadastro:string;

        property IdCargo:integer read getIdCargo write setIdCargo;
        property Cargo:string read getCargo write setCargo;
        property DataCadastro:string read getDataCadastro write setDataCadastro;
        property DataAlteracao:string read getDataAlteracao write setDataAlteracao;

    end;

implementation

{ TCargo }

constructor TCargo.Create;
begin
        FIdCargo:=0;
        FCargo:='';
        FDataCadastro:='';
        FDataAlteracao:='';
end;

destructor TCargo.Destroy;
begin

end;

function TCargo.getCargo: string;
begin
      Result:=FCargo;
end;

function TCargo.getDataAlteracao: string;
begin
  Result:=FDataAlteracao;
end;

function TCargo.getDataCadastro: string;
begin
  Result:=FDataCadastro;
end;

function TCargo.getIdCargo: Integer;
begin
   Result:=FIdCargo;
end;

procedure TCargo.setCargo(vcargo: string);
begin
  FCargo:=vcargo;
end;

procedure TCargo.setDataAlteracao(vDataAlteracao: string);
begin
  FDataAlteracao:=vDataAlteracao;
end;

procedure TCargo.setDataCadastro(vDataCadastro: string);
begin
   FDataCadastro:=vDataCadastro;
end;

procedure TCargo.setIdCargo(vIdCargo: Integer);
begin
    FIdCargo:=vIdCargo;
end;

end.
