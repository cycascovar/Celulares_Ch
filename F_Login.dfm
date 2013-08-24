object FLogin: TFLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Acceso al sistema'
  ClientHeight = 175
  ClientWidth = 316
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
    Left = 10
    Top = 64
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label2: TLabel
    Left = 10
    Top = 91
    Width = 56
    Height = 13
    Caption = 'Contrase'#241'a'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 158
    Height = 24
    Caption = 'Acceso al sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 56
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object username: TEdit
    Left = 72
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'username'
  end
  object password: TEdit
    Left = 72
    Top = 88
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = 'password'
  end
  object Button2: TButton
    Left = 190
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
  end
  object ZCDesarrollo: TZConnection
    Catalog = 'chdesarrollo'
    Protocol = 'mysql-5'
    HostName = '127.0.0.1'
    Database = 'chdesarrollo'
    User = 'root'
    Password = 'toor'
    Left = 232
  end
  object ZQLogin: TZQuery
    Params = <>
    Left = 272
    Top = 8
  end
end
