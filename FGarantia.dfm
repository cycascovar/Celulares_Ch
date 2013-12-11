object FGarantias: TFGarantias
  Left = 0
  Top = 0
  Caption = 'Equipos en garant'#237'a'
  ClientHeight = 524
  ClientWidth = 918
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
  object LComment3: TLabel
    Left = 8
    Top = 271
    Width = 601
    Height = 13
    Caption = 
      'Al seleccionar un equipo del grid, se va a poder eliminar de la ' +
      'base de datos al dar clic sobre el boton "ya no esta en garantia' +
      '"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LComment2: TLabel
    Left = 8
    Top = 43
    Width = 443
    Height = 13
    Caption = 
      'Los text edit de abajo van actuar como filtros, buscando en el g' +
      'rid y no en la base de datos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 466
    Height = 13
    Caption = 
      'En esta ventana se mostraran los equipos que estan en garantia, ' +
      'asi como su fecha de recepcion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 905
    Height = 169
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Marca'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modelo'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMEI'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Accesorios'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Due'#241'o'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono de contacto'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha recibido'
        Width = 90
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 301
    Width = 129
    Height = 25
    Caption = 'Ya no est'#225' en garant'#237'a'
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 215
    Top = 69
    Width = 138
    Height = 21
    TabOrder = 2
    Text = 'IMEI'
  end
  object Edit2: TEdit
    Left = 112
    Top = 69
    Width = 97
    Height = 21
    TabOrder = 3
    Text = 'MODELO'
  end
  object Edit3: TEdit
    Left = 24
    Top = 69
    Width = 82
    Height = 21
    TabOrder = 4
    Text = 'MARCA'
  end
  object Button2: TButton
    Left = 192
    Top = 301
    Width = 129
    Height = 25
    Caption = 'Agregar otro equipo'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 835
    Top = 301
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 832
    Top = 8
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
  object DataSource1: TDataSource
    Left = 784
    Top = 216
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 720
    Top = 192
  end
end
