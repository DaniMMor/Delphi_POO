unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Pessoa, Classe.Vendedor, Classe.Administrativo;

type
 EnumFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbFuncao: TComboBox;
    Label2: TLabel;
    edtNome: TEdit;
    lbl1: TLabel;
    edtSalario: TEdit;
    Label3: TLabel;
    edtBonus: TEdit;
    btnCadastrar: TButton;
    btnSetaEsquerda: TButton;
    btnSetaDireita: TButton;
    Memo1: TMemo;
    btnCalcularSalario: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnSetaEsquerdaClick(Sender: TObject);
    procedure btnSetaDireitaClick(Sender: TObject);
    procedure btnCalcularSalarioClick(Sender: TObject);
  private
    Funcionario : array[1..100] of TPessoa;
    vQtdeFunc : Integer;
    vRegAtual : Integer;
    procedure fnc_IncluirAdministrativo;
    procedure fnc_IncluirVendedor;
    procedure fnc_IncluirFuncionario;
    procedure fnc_ExibirDados(Pos : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  try
    case EnumFuncao(cbFuncao.ItemIndex) of
         tpAdministrativo : fnc_IncluirAdministrativo;
         tpVendedor :  fnc_IncluirVendedor;
         tpFuncionario :  fnc_IncluirFuncionario;
    end;

    Inc(vQtdeFunc);
  except
    raise Exception.Create('Erro ao cadastrar.');
  end;
end;

procedure TForm1.btnCalcularSalarioClick(Sender: TObject);
var
  vTotal : Currency;
  i : Integer;
begin
  vTotal := 0;
  Memo1.Clear;

  for i := 0 to vQtdeFunc -1 do
  begin
     vTotal := vTotal + Funcionario[i].CalculaSalario;
  end;
  Memo1.Lines.Add('A folha salarial é de: '+ CurrToStr(vTotal));
end;

procedure TForm1.btnSetaDireitaClick(Sender: TObject);
begin
   vRegAtual := vRegAtual + 1;
  if vRegAtual > vQtdeFunc then
      Exit;

   fnc_ExibirDados(vRegAtual);
end;

procedure TForm1.btnSetaEsquerdaClick(Sender: TObject);
begin
   vRegAtual := vRegAtual -1;
   if vRegAtual < 0 then
      Exit;

   fnc_ExibirDados(vRegAtual);
end;

procedure TForm1.fnc_ExibirDados(Pos: Integer);
begin
  edtNome.Text := Funcionario[Pos].Nome;
  edtSalario.Text := CurrToStr(Funcionario[Pos].Salario);

   if (Funcionario[Pos].ClassName = 'TAdministrativo') then
   begin
    edtBonus.Enabled := True;
    edtBonus.Text := CurrToStr(TAdministrativo(Funcionario[Pos]).Bonus);
    cbFuncao.ItemIndex := Integer(tpAdministrativo);
   end;

   if (Funcionario[Pos].ClassName = 'TVendedores') then
   begin
    edtBonus.Enabled := True;
    edtBonus.Text := CurrToStr(TVendedor(Funcionario[Pos]).Comissao);
    cbFuncao.ItemIndex := Integer(tpVendedor);
   end;

   if (Funcionario[Pos].ClassName = 'TPessoa') then
   begin
    edtBonus.Enabled := false;
    edtBonus.Clear;
    cbFuncao.ItemIndex := Integer(tpFuncionario);
   end;
end;

procedure TForm1.fnc_IncluirAdministrativo;
begin
  Funcionario[vQtdeFunc] := TAdministrativo.Create;
  TAdministrativo(Funcionario[vQtdeFunc]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[vQtdeFunc]).Salario := StrToCurr(edtSalario.text);
  TAdministrativo(Funcionario[vQtdeFunc]).Bonus := StrToCurr(edtBonus.text);
end;

procedure TForm1.fnc_IncluirVendedor;
begin
  Funcionario[vQtdeFunc] := TVendedor.Create;
  TVendedor(Funcionario[vQtdeFunc]).Nome := edtNome.Text;
  TVendedor(Funcionario[vQtdeFunc]).Salario := StrToCurr(edtSalario.text);
  TVendedor(Funcionario[vQtdeFunc]).Comissao := StrToCurr(edtBonus.text);
end;

procedure TForm1.fnc_IncluirFuncionario;
begin
  Funcionario[vQtdeFunc] := TPessoa.Create;
  Funcionario[vQtdeFunc].Nome := edtNome.Text;
  Funcionario[vQtdeFunc].Salario := StrToCurr(edtSalario.text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  vQtdeFunc := 0;
  vRegAtual := 0;
end;

end.
