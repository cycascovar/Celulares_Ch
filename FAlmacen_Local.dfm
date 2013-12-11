object FAlmacenLocal: TFAlmacenLocal
  Left = 0
  Top = 0
  Caption = 'FAlmacenLocal'
  ClientHeight = 348
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Sakkal Majalla'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 91
    Height = 24
    Caption = 'Inventario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 255
    Height = 13
    Caption = 'Los equipos que estan en almacen son los siguientes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 280
    Top = 49
    Width = 293
    Height = 24
    Caption = 'Se podra ingresar los ultimos cuatro digitos para el filtro.'
    Color = clBtnText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -17
    Font.Name = 'Sakkal Majalla'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 308
    Top = 299
    Width = 265
    Height = 24
    Caption = 'En caso de ser requerido, se puede exportar a Excel'
    Color = clBtnText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -17
    Font.Name = 'Sakkal Majalla'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 79
    Width = 121
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
    Left = 143
    Top = 79
    Width = 121
    Height = 32
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 270
    Top = 79
    Width = 219
    Height = 32
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 288
    Width = 105
    Height = 49
    Caption = 'Vender'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 288
    Width = 129
    Height = 49
    Caption = 'Exportar a Excel'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 608
    Top = 288
    Width = 105
    Height = 49
    Caption = 'Cerrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object GridAlmacen: TDBGrid
    Left = 8
    Top = 117
    Width = 716
    Height = 172
    DataSource = DSAlmacen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Sakkal Majalla'
    TitleFont.Style = []
    OnCellClick = GridAlmacenCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Marca'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modelo'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMEI'
        Width = 394
        Visible = True
      end>
  end
  object barraP: TProgressBar
    Left = 16
    Top = 184
    Width = 697
    Height = 25
    Step = 1
    TabOrder = 7
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 656
    Top = 16
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
  object DSAlmacen: TDataSource
    DataSet = ZQAlmacen
    Left = 552
    Top = 16
  end
  object ZQAlmacen: TZQuery
    Connection = FPrincipal.ZConexion
    Params = <>
    Left = 608
    Top = 56
  end
end
