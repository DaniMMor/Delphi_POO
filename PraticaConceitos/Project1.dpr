program Project1;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {Form1},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.Cliente in 'Classe.Cliente.pas',
  Classe.Endereco in 'Classe.Endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
