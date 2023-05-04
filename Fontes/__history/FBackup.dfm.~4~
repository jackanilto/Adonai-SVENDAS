object frmBackup: TfrmBackup
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Backup e Restaura'#231#227'o'
  ClientHeight = 564
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 80
    Top = 5
    Width = 343
    Height = 37
    Caption = 'Backup do Banco de dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 96
    Height = 15
    Caption = 'Origem do Banco:'
  end
  object Label3: TLabel
    Left = 16
    Top = 107
    Width = 192
    Height = 15
    Caption = 'Local de origem do banco de dados:'
  end
  object edtOrigem: TEdit
    Left = 16
    Top = 69
    Width = 419
    Height = 23
    TabOrder = 0
  end
  object edtDestino: TEdit
    Left = 16
    Top = 128
    Width = 419
    Height = 23
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 16
    Top = 157
    Width = 209
    Height = 308
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 441
    Top = 68
    Width = 32
    Height = 25
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 441
    Top = 128
    Width = 32
    Height = 25
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 231
    Top = 157
    Width = 98
    Height = 36
    Caption = 'Fazer Backup'
    TabOrder = 5
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 224
  end
  object Backup: TFDIBBackup
    DriverLink = FBDriverLink
    Verbose = True
    Left = 264
    Top = 280
  end
  object FBDriverLink: TFDPhysFBDriverLink
    DriverID = 'FB'
    VendorLib = 'C:\Adonai-SVENDAS\Firebird\fbclient.dll'
    Left = 264
    Top = 344
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 264
    Top = 400
  end
end
