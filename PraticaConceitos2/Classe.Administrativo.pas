unit Classe.Administrativo;

interface

uses Classe.Pessoa;

type
  TAdministrativo = class(TPessoa)
  private
    FBonus: Currency;
    procedure SetBonus(const Value: Currency);
  public
    function CalculaSalario : Currency; override;
    property Bonus : Currency read FBonus write SetBonus;
  end;

implementation

{ TAdministrativo }

function TAdministrativo.CalculaSalario: Currency;
begin
   Result := Salario + Bonus;
end;

procedure TAdministrativo.SetBonus(const Value: Currency);
begin
  FBonus := Value;
end;

end.
