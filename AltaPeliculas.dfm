object fAltaPeliculas: TfAltaPeliculas
  Left = 377
  Top = 55
  Caption = 'Alta de Peliculas'
  ClientHeight = 226
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  DesignSize = (
    640
    226)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Nombre:'
  end
  object Label2: TLabel
    Left = 37
    Top = 51
    Width = 23
    Height = 13
    Caption = 'A'#241'o:'
  end
  object Label3: TLabel
    Left = 121
    Top = 51
    Width = 45
    Height = 13
    Caption = 'Car'#225'tula:'
  end
  object Label4: TLabel
    Left = 12
    Top = 91
    Width = 48
    Height = 13
    Caption = 'N'#186' discos:'
  end
  object Label5: TLabel
    Left = 185
    Top = 51
    Width = 45
    Height = 13
    Caption = 'Car'#225'tula:'
  end
  object Label6: TLabel
    Left = 424
    Top = 75
    Width = 91
    Height = 13
    Caption = 'Idiomas asociados:'
  end
  object Label7: TLabel
    Left = 218
    Top = 75
    Width = 94
    Height = 13
    Caption = 'G'#233'neros asociados:'
  end
  object txtNombre: TEdit
    Left = 66
    Top = 8
    Width = 567
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object txtAño: TEdit
    Left = 66
    Top = 48
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = txtAñoKeyPress
  end
  object txtCaratula: TEdit
    Left = 172
    Top = 48
    Width = 430
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 2
  end
  object comCantDVDs: TComboBox
    Left = 66
    Top = 88
    Width = 142
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object cmbBuscar: TButton
    Left = 608
    Top = 46
    Width = 25
    Height = 25
    Anchors = [akRight]
    Caption = '...'
    TabOrder = 4
    OnClick = cmbBuscarClick
  end
  object cmbGuardar: TButton
    Left = 400
    Top = 194
    Width = 91
    Height = 25
    Caption = '&Guardar'
    TabOrder = 5
    OnClick = cmbGuardarClick
  end
  object cmbLimpiar: TButton
    Left = 497
    Top = 194
    Width = 75
    Height = 25
    Caption = '&Limpiar'
    TabOrder = 6
  end
  object cmbSalir: TButton
    Left = 578
    Top = 194
    Width = 55
    Height = 25
    Caption = '&Salir'
    ModalResult = 8
    TabOrder = 7
  end
  object dbgIdiomas: TDBGrid
    Left = 424
    Top = 94
    Width = 178
    Height = 94
    DataSource = ds_idiomas
    Options = [dgTabs, dgRowSelect, dgMultiSelect]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'descripcion'
        Visible = True
      end>
  end
  object dbgGeneros: TDBGrid
    Left = 218
    Top = 94
    Width = 176
    Height = 94
    DataSource = ds_generos
    Options = [dgTabs, dgRowSelect, dgMultiSelect]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_genero'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'descripcion'
        Visible = True
      end>
  end
  object afi_peliculas: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prm_nombre'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_a'#241'o'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_caratula'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_cant_dvds'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 255
        Size = 255
        Value = 0
      end
      item
        Name = 'prm_baja'
        DataType = ftString
        Precision = 255
        Size = 255
        Value = 'N'
      end
      item
        Name = 'pro_id'
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    SQL.Strings = (
      'call `baseada1287`.`afi_clientes`('
      ':prm_ape_nom,'
      ':prm_tel, '
      ':prm_domicilio,'
      ':prm_correo,'
      ':prm_id,'
      ':prm_baja,'
      ':pro_id'
      ');')
    Left = 8
    Top = 32
  end
  object clientes: TDataSource
    DataSet = afi_peliculas
    Left = 136
    Top = 112
  end
  object ADO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=440378;Persist Security Info=True;Us' +
      'er ID=root1287;Data Source=MySQL ODBC ANSI'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Left = 8
    Top = 168
  end
  object afi_peliculas_idiomas: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prm_ape_nom'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_tel'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_domicilio'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_correo'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 255
        Size = 255
        Value = 0
      end
      item
        Name = 'prm_baja'
        DataType = ftString
        Precision = 255
        Size = 255
        Value = 'N'
      end
      item
        Name = 'pro_id'
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    SQL.Strings = (
      'call `baseada1287`.`afi_clientes`('
      ':prm_ape_nom,'
      ':prm_tel, '
      ':prm_domicilio,'
      ':prm_correo,'
      ':prm_id,'
      ':prm_baja,'
      ':pro_id'
      ');')
    Left = 144
    Top = 184
  end
  object afi_generos_peliculas: TADOQuery
    Connection = ADO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prm_id_genero'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_id_pelicula'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_orden'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'prm_baja'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = 'N'
      end
      item
        Name = 'pro_id'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'call afi_generos_peliculas('
      ':prm_id_genero,'
      ':prm_id_pelicula, '
      ':prm_orden,'
      ':prm_baja,'
      ':pro_id'
      ');')
    Left = 88
    Top = 120
  end
  object ds_generos: TDataSource
    DataSet = afs_generos
    Left = 48
    Top = 176
  end
  object ds_idiomas: TDataSource
    DataSet = afs_idiomas
    Left = 216
    Top = 184
  end
  object afs_idiomas: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prm_fecha'
        DataType = ftDateTime
        Value = Null
      end>
    SQL.Strings = (
      'call afs_idiomas(null);')
    Left = 136
    Top = 144
  end
  object afs_generos: TADOQuery
    Active = True
    Connection = ADO
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'prm_fecha'
        DataType = ftDateTime
        Value = Null
      end>
    SQL.Strings = (
      'call afs_generos(:prm_fecha);')
    Left = 168
    Top = 144
  end
  object ODCaratula: TOpenDialog
    Left = 48
    Top = 144
  end
end
