object fAltaClientes: TfAltaClientes
  Left = 424
  Top = 277
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alta de clientes'
  ClientHeight = 148
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 90
    Height = 13
    Caption = 'Apellido y Nombre:'
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 37
    Height = 13
    Caption = 'Correo:'
  end
  object Label3: TLabel
    Left = 8
    Top = 91
    Width = 44
    Height = 13
    Caption = 'Domicilio:'
  end
  object Label4: TLabel
    Left = 254
    Top = 51
    Width = 46
    Height = 13
    Caption = 'Telefono:'
  end
  object cmbSalir: TButton
    Left = 368
    Top = 115
    Width = 75
    Height = 25
    Caption = '&Salir'
    ModalResult = 8
    TabOrder = 0
  end
  object cmbGrabar: TButton
    Left = 287
    Top = 115
    Width = 75
    Height = 25
    Caption = '&Grabar'
    TabOrder = 1
    OnClick = cmbGrabarClick
  end
  object txtApeNom: TEdit
    Left = 104
    Top = 8
    Width = 339
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object txtCorreo: TEdit
    Left = 58
    Top = 48
    Width = 190
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object txtTelefono: TEdit
    Left = 306
    Top = 48
    Width = 136
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = txtTelefonoKeyPress
  end
  object txtDomicilio: TEdit
    Left = 58
    Top = 88
    Width = 384
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object afi_clientes: TADOQuery
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
    Left = 152
    Top = 120
  end
  object clientes: TDataSource
    DataSet = afi_clientes
    Left = 96
    Top = 120
  end
  object ADO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=440378;Persist Security Info=True;Us' +
      'er ID=root1287;Data Source=MySQL ODBC ANSI'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Left = 48
    Top = 120
  end
end
