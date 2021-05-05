unit UClienteJuridico;

interface
uses UPessoaJuridica;
type
  TClienteJuridico = class(TPessoaJuridica)
    private
    protected

    public
      constructor Create;
      destructor Destroy;

end;

implementation

{ TClienteJuridico }

constructor TClienteJuridico.Create;
begin
inherited;
   FTipo:='Juridico';
end;

destructor TClienteJuridico.Destroy;
begin
inherited;

end;

end.
