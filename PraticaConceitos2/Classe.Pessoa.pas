unit Classe.Pessoa;

interface

type
  TPessoa = class
  private
    FSalario: Currency;
    FNome: String;
    procedure SetNome(const Value: String);
    procedure SetSalario(const Value: Currency);

  public
    function CalculaSalario : Currency; virtual;
    property Nome : String read FNome write SetNome;
    property Salario : Currency read FSalario write SetSalario;
    
  end;


implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.CalculaSalario: Currency;
begin
  Result := Salario;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  if value = '' then
     raise Exception.Create('Nome não pode estar vazio.');
     
  FNome := Value;
end;

procedure TPessoa.SetSalario(const Value: Currency);
begin
  if Value <= 0 then
     raise Exception.Create('Salario não pode estar vazio.');

  FSalario := Value;
end;

end.
