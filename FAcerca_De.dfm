object FAcercaDe: TFAcercaDe
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Acerca de'
  ClientHeight = 180
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClick = FormClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 185
    Height = 25
    Caption = 'Celulares "Chapulh"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object label33: TLabel
    Left = 116
    Top = 121
    Width = 208
    Height = 13
    Caption = 'De clic en esta ventana para cerrarla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ver: TLabel
    Left = 219
    Top = 8
    Width = 87
    Height = 28
    Caption = '$Version'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 49
    Width = 253
    Height = 13
    Caption = 'Desarrollado por Christian Yamil Castillo Covarrubias.'
  end
  object Label3: TLabel
    Left = 8
    Top = 68
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 8
    Top = 91
    Width = 51
    Height = 13
    Caption = 'Sucursal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sucursal: TLabel
    Left = 68
    Top = 91
    Width = 188
    Height = 13
    Caption = ' '
  end
  object LinkLabel1: TLinkLabel
    Left = 8
    Top = 68
    Width = 94
    Height = 17
    Caption = 'cyccov@gmail.com'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    OnClick = LinkLabel1Click
  end
end
