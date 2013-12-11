object FReparaciones: TFReparaciones
  Left = 0
  Top = 0
  Caption = 'Equipos en reparaci'#243'n'
  ClientHeight = 551
  ClientWidth = 953
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
    Width = 937
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
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titular'
        Width = 181
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
        FieldName = 'Accesorios'
        Width = 158
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
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Entregar'
    TabOrder = 4
    OnClick = entregarBotonClick
  end
  object Button2: TButton
    Left = 311
    Top = 256
    Width = 107
    Height = 25
    Caption = 'Agregar otro equipo'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 594
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 14
    Top = 300
    Width = 273
    Height = 165
    Caption = 'Datos del cliente'
    TabOrder = 7
    object Label4: TLabel
      Left = 19
      Top = 36
      Width = 30
      Height = 13
      Caption = 'Titular'
    end
    object Label5: TLabel
      Left = 16
      Top = 84
      Width = 81
      Height = 13
      Caption = 'Telfono contacto'
    end
    object titular: TEdit
      Left = 55
      Top = 28
      Width = 202
      Height = 21
      TabOrder = 0
    end
    object telefonoContacto: TEdit
      Left = 103
      Top = 76
      Width = 153
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 311
    Top = 300
    Width = 634
    Height = 243
    Caption = 'Datos del equipo'
    TabOrder = 8
    object Label6: TLabel
      Left = 16
      Top = 32
      Width = 22
      Height = 13
      Caption = 'IMEI'
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
    object Label9: TLabel
      Left = 440
      Top = 17
      Width = 51
      Height = 13
      Caption = 'Accesorios'
    end
    object Label10: TLabel
      Left = 440
      Top = 132
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
    object Accesorios: TMemo
      Left = 440
      Top = 36
      Width = 185
      Height = 89
      TabOrder = 3
    end
    object observaciones: TMemo
      Left = 440
      Top = 151
      Width = 185
      Height = 89
      TabOrder = 4
    end
    object iccidequipo: TEdit
      Left = 60
      Top = 152
      Width = 245
      Height = 21
      TabOrder = 5
    end
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
