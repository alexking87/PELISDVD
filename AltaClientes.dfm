object fAltaClientes: TfAltaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alta de clientes'
  ClientHeight = 268
  ClientWidth = 452
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
    Top = 123
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 0
  end
  object cmbGrabar: TButton
    Left = 287
    Top = 123
    Width = 75
    Height = 25
    Caption = '&Grabar'
    TabOrder = 1
    OnClick = cmbGrabarClick
  end
  object txtCorreo: TEdit
    Left = 58
    Top = 48
    Width = 190
    Height = 21
    TabOrder = 2
  end
  object txtDomicilio: TEdit
    Left = 58
    Top = 88
    Width = 385
    Height = 21
    TabOrder = 3
  end
  object txtTelefono: TEdit
    Left = 306
    Top = 48
    Width = 137
    Height = 21
    TabOrder = 4
  end
  object txtApeNom: TDBEdit
    Left = 104
    Top = 8
    Width = 339
    Height = 21
    DataSource = clientes
    MaxLength = 250
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 240
    Width = 339
    Height = 21
    DataSource = clientes
    MaxLength = 250
    TabOrder = 6
  end
  object afi_clientes: TADOStoredProc
    Connection = DataModule1.ADO
    ProcedureName = 'afi_clientes'
    Parameters = <
      item
        Name = 'prm_ape_nom'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'prm_tel'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'prm_domicilio'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'prm_correo'
        DataType = ftWideString
        Size = -1
        Value = ''
      end
      item
        Name = 'prm_id'
        DataType = ftInteger
        Value = 0
      end
      item
        Name = 'prm_baja'
        DataType = ftWideString
        Size = 3
        Value = 'N'
      end>
    Prepared = True
    Left = 16
    Top = 120
  end
  object clientes: TDataSource
    DataSet = afi_clientes
    Left = 72
    Top = 120
  end
end
