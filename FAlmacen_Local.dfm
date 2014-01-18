object FAlmacenLocal: TFAlmacenLocal
  Left = 0
  Top = 0
  Caption = 'FAlmacenLocal'
  ClientHeight = 560
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
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
    Left = 16
    Top = 57
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
    Top = 288
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
  object marcaCel: TEdit
    Left = 15
    Top = 83
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyUp = marcaCelKeyUp
  end
  object Edit2: TEdit
    Left = 142
    Top = 83
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 269
    Top = 83
    Width = 219
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 288
    Width = 105
    Height = 35
    Caption = 'Vender'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 173
    Top = 288
    Width = 129
    Height = 35
    Caption = 'Generar relacion Excel'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object GridAlmacen: TDBGrid
    Left = 8
    Top = 110
    Width = 780
    Height = 172
    DataSource = DSAlmacen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 5
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
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMEI'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICCID'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 88
        Visible = True
      end>
  end
  object barraP: TProgressBar
    Left = 16
    Top = 208
    Width = 761
    Height = 25
    Step = 1
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 336
    Width = 345
    Height = 177
    Caption = 'Datos del cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Sakkal Majalla'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label5: TLabel
      Left = 40
      Top = 32
      Width = 43
      Height = 24
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 40
      Top = 62
      Width = 46
      Height = 24
      Caption = 'Telefono'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 40
      Top = 96
      Width = 50
      Height = 24
      Caption = 'Domicilio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object nombreCliente: TEdit
      Left = 104
      Top = 32
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
    object telefonoCliente: TEdit
      Left = 104
      Top = 63
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object domicilioCliente: TEdit
      Left = 102
      Top = 101
      Width = 227
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 40
      Top = 141
      Width = 145
      Height = 33
      Caption = 'Limpiar datos cliente'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 372
    Top = 336
    Width = 416
    Height = 177
    Caption = 'Datos del telefono'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Sakkal Majalla'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object Label8: TLabel
      Left = 40
      Top = 32
      Width = 32
      Height = 24
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 40
      Top = 62
      Width = 41
      Height = 24
      Caption = 'Modelo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 40
      Top = 92
      Width = 23
      Height = 24
      Caption = 'IMEI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 39
      Top = 150
      Width = 32
      Height = 24
      Caption = 'Precio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object marcaCelular: TLabel
      Left = 90
      Top = 32
      Width = 54
      Height = 24
      Caption = '                  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object modeloCelular: TLabel
      Left = 87
      Top = 62
      Width = 54
      Height = 24
      Caption = '                  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object imeiCelular: TLabel
      Left = 90
      Top = 92
      Width = 54
      Height = 24
      Caption = '                  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object precioCelular: TLabel
      Left = 77
      Top = 150
      Width = 54
      Height = 24
      Caption = '                  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Sakkal Majalla'
      Font.Style = []
      ParentFont = False
    end
    object _iccidcelular: TLabel
      Left = 39
      Top = 122
      Width = 33
      Height = 24
      Caption = 'ICCID'
    end
    object iccidcelular: TLabel
      Left = 96
      Top = 122
      Width = 87
      Height = 24
      Caption = '                             '
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 541
    Width = 796
    Height = 19
    BiDiMode = bdRightToLeft
    Panels = <
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = 'Fecha'
        Width = 50
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = '  '
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object Button2: TButton
    Left = 372
    Top = 44
    Width = 93
    Height = 33
    Caption = 'Ver todos'
    TabOrder = 10
    OnClick = Button2Click
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
  object ZQVentas: TZQuery
    Params = <>
    DataSource = DSAlmacen
    Left = 280
    Top = 352
  end
end
