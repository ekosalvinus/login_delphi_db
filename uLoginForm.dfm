object LoginForm: TLoginForm
  Left = 0
  Top = 0
  Caption = 'LoginForm'
  ClientHeight = 212
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 72
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label2: TLabel
    Left = 104
    Top = 104
    Width = 22
    Height = 13
    Caption = 'Pass'
  end
  object edtUser: TEdit
    Left = 144
    Top = 69
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edtPass: TEdit
    Left = 144
    Top = 101
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 206
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
