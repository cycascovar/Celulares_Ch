object FGarantias: TFGarantias
  Left = 0
  Top = 0
  Caption = 'Equipos en garant'#237'a'
  ClientHeight = 334
  ClientWidth = 872
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
    Left = 8
    Top = 8
    Width = 291
    Height = 13
    Caption = 'Mostrar los equipos en garant'#237'a con ID, marca, modelo, IMEI'
  end
  object Label2: TLabel
    Left = 8
    Top = 271
    Width = 362
    Height = 13
    Caption = 
      'Al seleccionar un equipo del grid, se va a poder eliminar de la ' +
      'base de datos'
  end
  object Label3: TLabel
    Left = 8
    Top = 43
    Width = 556
    Height = 13
    Caption = 
      'Poner filtros para que se puedan buscar por: IMEI, modelo, marca' +
      ', accesorios recibidos, due'#241'o y tel'#233'fono de due'#241'o'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 856
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
        FieldName = 'ID'
        Width = 39
        Visible = True
      end
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
        FieldName = 'Telefono_due'#241'o'
        Width = 149
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
    Left = 8
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'IMEI'
  end
  object Edit2: TEdit
    Left = 152
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'MODELO'
  end
  object Edit3: TEdit
    Left = 296
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'MARCA'
  end
end
