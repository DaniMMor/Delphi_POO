unit Classe.Vendedor;

interface

uses Classe.Pessoa;

type
    TVendedor = class (TPessoa)
  private
    FComissao: Currency;
    procedure SetComissao(const Value: Currency);

    public
      function CalculaSalario : Currency; override;
      property Comissao : Currency read FComissao write SetComissao;
    end;

implementation

{ TVendedor }

function TVendedor.CalculaSalario: Currency;
begin
   Result := Salario + Comissao;
end;

procedure TVendedor.SetComissao(const Value: Currency);
begin
  FComissao := Value;
end;

end.
