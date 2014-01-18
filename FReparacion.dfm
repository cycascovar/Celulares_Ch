object FReparaciones: TFReparaciones
  Left = 0
  Top = 0
  Caption = 'Equipos en reparaci'#243'n'
  ClientHeight = 586
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 53
    Width = 437
    Height = 13
    Caption = 
      'Los text edit actuaran como filtros, buscando solamente en el gr' +
      'id y no en la base de datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 230
    Width = 406
    Height = 13
    Caption = 
      'Para que el boton "entregar" se active, se tiene que seleccionar' +
      ' un elemento del grid'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 197
    Height = 24
    Caption = 'Equipos en reparaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 99
    Width = 857
    Height = 125
    DataSource = DSReparaciones
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Marca'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modelo'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMEI'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titular'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono titular'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha recibido'
        Width = 134
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 24
    Top = 72
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 119
    Top = 72
    Width = 98
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 223
    Top = 72
    Width = 126
    Height = 21
    TabOrder = 3
  end
  object entregarBoton: TButton
    Left = 8
    Top = 249
    Width = 105
    Height = 25
    Caption = 'Entregar equipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = entregarBotonClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 300
    Width = 281
    Height = 253
    Caption = 'Datos del cliente'
    TabOrder = 5
    object Label4: TLabel
      Left = 19
      Top = 36
      Width = 39
      Height = 13
      Caption = 'Titular *'
    end
    object Label5: TLabel
      Left = 16
      Top = 84
      Width = 81
      Height = 13
      Caption = 'Telfono contacto'
    end
    object titular: TEdit
      Left = 64
      Top = 28
      Width = 202
      Height = 21
      TabOrder = 0
    end
    object telefonoContacto: TEdit
      Left = 113
      Top = 77
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object Button4: TButton
      Left = 66
      Top = 201
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
    Left = 311
    Top = 300
    Width = 554
    Height = 253
    Caption = 'Datos del equipo'
    TabOrder = 6
    object Label6: TLabel
      Left = 16
      Top = 32
      Width = 31
      Height = 13
      Caption = 'IMEI *'
    end
    object Label7: TLabel
      Left = 16
      Top = 80
      Width = 34
      Height = 13
      Caption = 'Modelo'
    end
    object Label8: TLabel
      Left = 16
      Top = 113
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label10: TLabel
      Left = 352
      Top = 60
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object Label11: TLabel
      Left = 16
      Top = 160
      Width = 29
      Height = 13
      Caption = 'ICCID'
    end
    object imei: TEdit
      Left = 60
      Top = 28
      Width = 245
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object modelo: TEdit
      Left = 60
      Top = 76
      Width = 245
      Height = 21
      TabOrder = 1
    end
    object marca: TEdit
      Left = 60
      Top = 112
      Width = 245
      Height = 21
      TabOrder = 2
    end
    object observaciones: TMemo
      Left = 344
      Top = 79
      Width = 185
      Height = 89
      TabOrder = 3
    end
    object iccidequipo: TEdit
      Left = 60
      Top = 152
      Width = 245
      Height = 21
      TabOrder = 4
    end
    object Button5: TButton
      Left = 280
      Top = 201
      Width = 153
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
    object Button2: TButton
      Left = 51
      Top = 201
      Width = 137
      Height = 25
      Caption = 'Agregar otro equipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 567
    Width = 873
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
    Left = 405
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Ver todos'
    TabOrder = 8
    OnClick = Button6Click
  end
  object fecharecibido: TDateTimePicker
    Left = 559
    Top = 72
    Width = 130
    Height = 21
    Date = 41648.588995405090000000
    Time = 41648.588995405090000000
    TabOrder = 9
  end
  object DSReparaciones: TDataSource
    DataSet = ZQReparaciones
    Left = 576
    Top = 160
  end
  object ZQReparaciones: TZQuery
    Connection = FPrincipal.ZConexion
    Params = <>
    Left = 488
    Top = 168
  end
end
