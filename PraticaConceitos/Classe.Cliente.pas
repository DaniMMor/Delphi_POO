unit Classe.Cliente;

interface
uses
  Classe.Pessoa, Classe.Endereco;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
    FEndereco: TEndereco;
    procedure SetValorCredito(const Value: Currency);
    procedure SetFEndereco(const Value: TEndereco);
  public
    constructor Create; overload;
    constructor Create(Value : string); overload;
    constructor Create(Value : TPessoa); overload;
    destructor Destroy; override;
    function RetornaNome : string; override;
    function MetodoAbstrato : string; override;
    property ValorCredito : Currency read FValorCredito write SetValorCredito;
    property Endereco : TEndereco read FEndereco write SetFEndereco;
  end;

implementation

uses
  System.SysUtils;

{ TCliente }

constructor TCliente.Create;
begin
   Nome := 'Create TCliente';
   FEndereco := TEndereco.Create;

end;

constructor TCliente.Create(Value: string);
begin
   Nome := Value;
end;

constructor TCliente.Create(Value: TPessoa);
begin
   Nome := Value.Nome;
   DNasc := Value.DNasc;
end;

destructor TCliente.Destroy;
begin
   FreeandNil(FEndereco);
end;

function TCliente.MetodoAbstrato: string;
begin
   Result := 'Metodo Abstrato';
end;

function TCliente.RetornaNome: string;
begin
   inherited;
   Result := 'Classe TCliente que ' + Nome;
end;

procedure TCliente.SetFEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
