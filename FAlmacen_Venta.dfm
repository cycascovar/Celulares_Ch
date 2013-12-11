object FAlmacenVenta: TFAlmacenVenta
  Left = 0
  Top = 0
  Caption = 'Ventas: Venta de equipo'
  ClientHeight = 412
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 617
    Height = 169
    Caption = 'Datos del cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Nombre: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 51
      Width = 47
      Height = 13
      Caption = 'Domicilio: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 74
      Top = 21
      Width = 175
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 74
      Top = 48
      Width = 175
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 8
    Top = 377
    Width = 81
    Height = 33
    Caption = 'Vender'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 377
    Width = 129
    Height = 33
    Caption = 'Limpiar datos cliente'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 296
    Top = 377
    Width = 81
    Height = 33
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 191
    Width = 617
    Height = 169
    Caption = 'Datos del equipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 24
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Imei: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 51
      Width = 41
      Height = 13
      Caption = 'Modelo: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 78
      Width = 36
      Height = 13
      Caption = 'Marca: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LImei: TLabel
      Left = 57
      Top = 24
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LModelo: TLabel
      Left = 74
      Top = 51
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LMarca: TLabel
      Left = 79
      Top = 78
      Width = 35
      Height = 13
      Caption = '   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 152
      Top = 32
      Width = 361
      Height = 13
      Caption = 
        'Estos valores se reemplazaran por los que se seleccionaron antes' +
        ' en el grid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 544
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
  object ZQVentas: TZQuery
    Params = <>
    Left = 488
    Top = 88
  end
  object DSVentas: TDataSource
    DataSet = ZQVentas
    Left = 552
    Top = 160
  end
end
