object frmBackupRestore: TfrmBackupRestore
  Left = 0
  Top = 0
  Caption = 'Fazer Backup / Restaurar'
  ClientHeight = 532
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Memo1: TMemo
    Left = 0
    Top = 232
    Width = 377
    Height = 161
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 383
    Top = 232
    Width = 377
    Height = 161
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 408
    Width = 163
    Height = 25
    Caption = 'Backup'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 520
    Top = 408
    Width = 123
    Height = 25
    Caption = 'Restaurar'
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Adonai-SVENDAS\Database\ADONAIPDV.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Left = 32
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Adonai-SVENDAS\Firebird\fbclient.dll'
    Left = 32
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 136
  end
  object FDIBBackup1: TFDIBBackup
    DriverLink = FDPhysFBDriverLink1
    UserName = 'SYSDBA'
    Password = 'masterkey'
    OnProgress = FDIBBackup1Progress
    Verbose = True
    Left = 224
    Top = 56
  end
  object FDIBRestore1: TFDIBRestore
    Left = 312
    Top = 56
  end
end
