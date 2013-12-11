object F_Recargas: TF_Recargas
  Left = 0
  Top = 0
  Caption = 'Recargas'
  ClientHeight = 428
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 81
    Height = 24
    Caption = 'Recargas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 53
    Width = 277
    Height = 13
    Caption = 'los codigos pueden estar asociados a uno o mas  numeros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 34
    Width = 516
    Height = 13
    Caption = 
      'Al leer un codigo con el lector de codigo de barras, se mostrar'#225 +
      'n los celulares (numeros) asociados al c'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 53
    Width = 170
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 80
    Width = 449
    Height = 298
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Celulares asignados'
        Width = 235
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 398
    Top = 384
    Width = 75
    Height = 41
    Caption = 'Cerrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 384
    Width = 121
    Height = 41
    Caption = 'Agregar otro codigo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 160
    object Equipos1: TMenuItem
      Caption = 'Inventario'
      object Ventadeequipo1: TMenuItem
        Caption = 'Venta de equipo'
      end
    end
    object Recargas1: TMenuItem
      Caption = 'Recargas'
      object Generarcdigos1: TMenuItem
        Caption = 'Asignar cliente'
      end
    end
    object Garantas1: TMenuItem
      Caption = 'Garant'#237'as'
      object Llenarsolicitud1: TMenuItem
        Caption = 'Alta de garant'#237'a'
      end
      object Bajadegaranta1: TMenuItem
        Caption = 'Baja de garant'#237'a'
      end
      object Verequiposengaranta1: TMenuItem
        Caption = 'Ver equipos en garant'#237'a'
      end
    end
    object Reparacin1: TMenuItem
      Caption = 'Reparaciones'
      object Llenarsolicitud2: TMenuItem
        Caption = 'Alta de reparaci'#243'n'
      end
      object Bajadereparacin1: TMenuItem
        Caption = 'Baja de reparaci'#243'n'
      end
      object Verequiposenreparacin1: TMenuItem
        Caption = 'Ver equipos en reparaci'#243'n'
      end
    end
    object Ayuda1: TMenuItem
      Caption = 'Ayuda'
      object Acercade1: TMenuItem
        Caption = 'Acerca de'
      end
      object Cmousarelsistema1: TMenuItem
        Caption = 'C'#243'mo usar el sistema'
      end
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
    end
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 368
    Top = 184
  end
  object DataSource1: TDataSource
    Left = 392
    Top = 232
  end
end
