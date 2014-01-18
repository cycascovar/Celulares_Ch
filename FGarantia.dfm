object FGarantias: TFGarantias
  Left = 0
  Top = 0
  Caption = 'Equipos en garant'#237'a'
  ClientHeight = 589
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
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
    Left = 263
    Top = 46
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
    Left = 263
    Top = 27
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
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 177
    Height = 24
    Caption = 'Equipos en garant'#237'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 96
    Width = 905
    Height = 169
    DataSource = DSGarantias
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICCID'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Accesorios'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titular'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono de contacto'
        Width = 109
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
    Caption = 'Entregar equipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 215
    Top = 69
    Width = 138
    Height = 21
    TabOrder = 2
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TEdit
    Left = 112
    Top = 69
    Width = 97
    Height = 21
    TabOrder = 3
    OnKeyUp = Edit2KeyUp
  end
  object Edit3: TEdit
    Left = 24
    Top = 69
    Width = 82
    Height = 21
    TabOrder = 4
    OnKeyUp = Edit3KeyUp
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 332
    Width = 345
    Height = 221
    Caption = 'Datos del cliente'
    TabOrder = 5
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Titular*'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object titular: TEdit
      Left = 72
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object telefonocontacto: TEdit
      Left = 72
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button4: TButton
      Left = 72
      Top = 152
      Width = 137
      Height = 25
      Caption = 'Limpiar datos cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 376
    Top = 332
    Width = 534
    Height = 221
    Caption = 'Datos del equipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label4: TLabel
      Left = 32
      Top = 32
      Width = 28
      Height = 13
      Caption = 'IMEI*'
    end
    object Label5: TLabel
      Left = 32
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Modelo'
    end
    object label1111: TLabel
      Left = 32
      Top = 144
      Width = 29
      Height = 13
      Caption = 'ICCID'
    end
    object Label7: TLabel
      Left = 32
      Top = 104
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label8: TLabel
      Left = 337
      Top = 13
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object Label9: TLabel
      Left = 337
      Top = 95
      Width = 96
      Height = 13
      Caption = 'Accesorios recibidos'
    end
    object imei: TEdit
      Left = 80
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object observaciones: TMemo
      Left = 336
      Top = 32
      Width = 185
      Height = 57
      TabOrder = 1
    end
    object modelo: TEdit
      Left = 80
      Top = 69
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object marca: TEdit
      Left = 80
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object iccid: TEdit
      Left = 80
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Button5: TButton
      Left = 191
      Top = 179
      Width = 138
      Height = 25
      Caption = 'Limpiar datos equipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button5Click
    end
    object accesorios: TMemo
      Left = 336
      Top = 112
      Width = 185
      Height = 73
      TabOrder = 6
    end
    object Button2: TButton
      Left = 23
      Top = 179
      Width = 129
      Height = 25
      Hint = 
        'Se agregar'#225' otro equipo a garant'#237'a. Favor de llenar los campos o' +
        'bligatorios.'
      Caption = 'Agregar otro equipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 570
    Width = 918
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
  object Button6: TButton
    Left = 399
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Ver todos'
    TabOrder = 8
    OnClick = Button6Click
  end
  object fecharecibido: TDateTimePicker
    Left = 787
    Top = 69
    Width = 94
    Height = 21
    Date = 41645.937239502320000000
    Time = 41645.937239502320000000
    TabOrder = 9
    OnChange = fecharecibidoChange
  end
  object DSGarantias: TDataSource
    DataSet = ZQGarantias
    Left = 784
    Top = 216
  end
  object ZQGarantias: TZQuery
    Connection = FPrincipal.ZConexion
    Params = <>
    Left = 720
    Top = 192
  end
end
