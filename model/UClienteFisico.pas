unit UClienteFisico;

interface
uses UPessoaFisica;
 type TClienteFisico = class(TPessoaFisica)
   private
   protected
   public

    constructor Create;
    destructor Destroy;



 end;

implementation

{ TCliente }

constructor TClienteFisico.Create;
begin
inherited;
  FTipo:='Fisico';
end;

destructor TClienteFisico.Destroy;
begin
inherited;
end;


end.
