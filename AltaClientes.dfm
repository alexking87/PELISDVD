object fAltaClientes: TfAltaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alta de clientes'
  ClientHeight = 156
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
  end
  object txtApeNom: TEdit
    Left = 104
    Top = 8
    Width = 339
    Height = 21
    TabOrder = 2
  end
  object txtCorreo: TEdit
    Left = 58
    Top = 48
    Width = 190
    Height = 21
    TabOrder = 3
  end
  object txtDomicilio: TEdit
    Left = 58
    Top = 88
    Width = 385
    Height = 21
    TabOrder = 4
  end
  object txtTelefono: TEdit
    Left = 306
    Top = 48
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 96
    Top = 112
  end
end