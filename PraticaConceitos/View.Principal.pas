unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Cliente,
  Classe.Pessoa;


type
  TForm1 = class(TForm)
    btn1: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
 Pessoa1 : TPessoa;
 Cliente : TCliente;
begin
  Pessoa1 := TPessoa.Create;
  Cliente := TCliente.Create;
  try
    Pessoa1.Nome := '';
    Pessoa1.DNasc := '24/09/2010';

    Cliente.Nome := 'Teste';
    Cliente.DNasc := '10/10/2005';

    ShowMessage(pessoa1.Nome + ', '+Pessoa1.Idade.ToString);
    ShowMessage(Cliente.Nome + ', '+Cliente.Idade.ToString);
  finally
    Pessoa1.Free;
    Cliente.Free;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 Pessoa : TPessoa;
 valor1 : Integer;
 valor2 : Currency;
begin
  Pessoa := TPessoa.Create;

  try
    valor1 := 5;
    valor2 := 10.50;

    ShowMessage(Pessoa.Receber(valor1));
    ShowMessage(Pessoa.Receber(valor2));

  finally
     Pessoa.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
 pessoa : TPessoa;
 cliente : TCliente;
begin
  pessoa := TPessoa.Create;
  cliente := TCliente.Create;

 try
   ShowMessage(pessoa.RetornaNome);
   ShowMessage(cliente.RetornaNome);
   ShowMessage(cliente.MetodoAbstrato);
 finally
    pessoa.Free;
    cliente.Free;
 end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var
 pessoa : TPessoa;
 cliente, cliente2, cliente3 : TCliente;
begin
  pessoa := TPessoa.Create;
  pessoa.Nome := 'Daniel';
  pessoa.DNasc := '01/01/2010';
  cliente := TCliente.Create;
  cliente2 := TCliente.Create('Create Overload1');
  cliente3 := TCliente.Create(pessoa);

  try
    ShowMessage('Nome: ' +pessoa.Nome);
    ShowMessage('Nome: ' +cliente.Nome);
    ShowMessage('Nome: ' +cliente2.Nome);
    ShowMessage(cliente3.Nome + ' - ' + cliente3.DNasc);

  finally
    pessoa.Free;
   cliente.Free;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
 pessoa : TPessoa;
 cliente : TCliente;
begin
  pessoa := TPessoa.Create;
  cliente := TCliente.Create;
  try
    ShowMessage(cliente.Endereco.Logradouro + ' - ' + cliente.Endereco.Numero.ToString);
  finally
    pessoa.Free;
    cliente.Free;
  end;
end;

end.
