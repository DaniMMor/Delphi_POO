unit Classe.Pessoa;

interface

uses System.SysUtils;

type
  TPessoa = class
    private
     FNome : string;
     FDNasc: String;
     FSexo: string;
     function SetNome : string;
     procedure GetNome(Value : string);
     procedure SetDNasc(const Value: String);
     procedure SetSexo(const Value: string);

    public
     property DNasc : String read FDNasc write SetDNasc;
     property Sexo : string read FSexo write SetSexo;
     property Nome : string read SetNome write GetNome;
     function Idade : Integer;
     function Receber(Value : Integer) : string; overload;
     function Receber(Value : Currency) : string; overload;
     function RetornaNome : string; virtual;
     function MetodoAbstrato : string; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.Idade : Integer;
begin
   Result := Trunc((now - StrToDate(FDNasc)) / 365.25);
end;

function TPessoa.Receber(Value: Currency): string;
begin
  Result := 'Recebi o valor currency :' + CurrToStr(Value);
end;

function TPessoa.RetornaNome: string;
begin
   FNome := 'Herdou TPessoa';
   Result := 'Classe TPessoa';
end;

function TPessoa.Receber(Value: Integer): string;
begin
  Result := 'Recebi o valor inteiro :' + Value.ToString;
end;

procedure TPessoa.SetDNasc(const Value: String);
begin
  FDNasc := Value;
end;

function TPessoa.SetNome : string;
begin
  Result := FNome;
end;

procedure TPessoa.SetSexo(const Value: string);
begin
  FSexo := Value;
end;

procedure TPessoa.GetNome(Value : string);
begin
  if Value = '' then
     raise Exception.Create('em branco');
  FNome := Value;
end;

end.
