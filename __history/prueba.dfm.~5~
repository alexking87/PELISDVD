object fPrincipal: TfPrincipal
  Left = 377
  Top = 166
  Caption = 'PELIS DVD FULL Admin'
  ClientHeight = 284
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object ADO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=440378;Persist Security Info=True;Us' +
      'er ID=root1287;Extended Properties="DSN=ODBC56 ANSI;DESCRIPTION=' +
      'ANSI;SERVER=db4free.net;UID=root1287;PWD=440378;DATABASE=baseada' +
      '1287;PORT=3306"'
    LoginPrompt = False
    Left = 456
    Top = 192
  end
  object Menu: TMainMenu
    Left = 144
    Top = 88
    object Clientes1: TMenuItem
      Caption = 'Cli&entes'
      object Alta1: TMenuItem
        Caption = '&Alta'
        OnClick = Alta1Click
      end
      object BajaoModificacion1: TMenuItem
        Caption = '&Baja o Modificacion'
      end
    end
    object Peliculas1: TMenuItem
      Caption = '&Peliculas'
      object Alta2: TMenuItem
        Caption = 'Al&ta'
      end
      object BajaoModificacion2: TMenuItem
        Caption = 'Baja o &Modificacion'
      end
      object Consulta1: TMenuItem
        Caption = '&Consulta'
      end
    end
    object Ubicaciones1: TMenuItem
      Caption = '&Ubicaciones'
    end
    object Salir1: TMenuItem
      Caption = '&Salir'
    end
  end
  object ADODataSet1: TADODataSet
    Connection = ADO
    Parameters = <>
    Left = 360
    Top = 80
  end
end
