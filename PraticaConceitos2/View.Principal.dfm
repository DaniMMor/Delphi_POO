object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 214
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 11
    Width = 42
    Height = 13
    Caption = 'Fun'#231#227'o: '
  end
  object Label2: TLabel
    Left = 13
    Top = 38
    Width = 34
    Height = 13
    Caption = 'Nome: '
  end
  object lbl1: TLabel
    Left = 203
    Top = 38
    Width = 39
    Height = 13
    Caption = 'Sal'#225'rio: '
  end
  object Label3: TLabel
    Left = 327
    Top = 38
    Width = 36
    Height = 13
    Caption = 'Bonus: '
  end
  object cbFuncao: TComboBox
    Left = 64
    Top = 8
    Width = 368
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Administrativo'
      'Vendedor'
      'Funcionario')
  end
  object edtNome: TEdit
    Left = 64
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSalario: TEdit
    Left = 254
    Top = 35
    Width = 54
    Height = 21
    TabOrder = 2
  end
  object edtBonus: TEdit
    Left = 378
    Top = 35
    Width = 54
    Height = 21
    TabOrder = 3
  end
  object btnCadastrar: TButton
    Left = 13
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = btnCadastrarClick
  end
  object btnSetaEsquerda: TButton
    Left = 364
    Top = 77
    Width = 31
    Height = 25
    Caption = '<<'
    TabOrder = 5
    OnClick = btnSetaEsquerdaClick
  end
  object btnSetaDireita: TButton
    Left = 401
    Top = 77
    Width = 31
    Height = 25
    Caption = '>>'
    TabOrder = 6
    OnClick = btnSetaDireitaClick
  end
  object Memo1: TMemo
    Left = 13
    Top = 108
    Width = 419
    Height = 89
    TabOrder = 7
  end
  object btnCalcularSalario: TButton
    Left = 94
    Top = 77
    Width = 91
    Height = 25
    Caption = 'Calcular Sal'#225'rios'
    TabOrder = 8
    OnClick = btnCalcularSalarioClick
  end
end
