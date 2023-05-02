object DM: TDM
  Height = 704
  Width = 1074
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\Adonai-SVENDAS\Database\ADONAIPDV.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object FBDriver: TFDPhysFBDriverLink
    VendorLib = 'C:\Adonai-SVENDAS\Firebird\fbclient.dll'
    Left = 72
    Top = 8
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 129
    Top = 8
  end
  object QProdutos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from produtos '
      'order by prod_nome asc')
    Left = 40
    Top = 232
    object QProdutosPROD_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdutosPROD_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PROD_NOME'
      Origin = 'PROD_NOME'
      Size = 100
    end
    object QProdutosPROD_BARRAS: TStringField
      DisplayLabel = 'BARRAS'
      FieldName = 'PROD_BARRAS'
      Origin = 'PROD_BARRAS'
    end
    object QProdutosPROD_REFER: TStringField
      DisplayLabel = 'REF'
      FieldName = 'PROD_REFER'
      Origin = 'PROD_REFER'
    end
    object QProdutosPROD_CUSTO: TFloatField
      DisplayLabel = 'R$ CUSTO'
      FieldName = 'PROD_CUSTO'
      Origin = 'PROD_CUSTO'
      currency = True
    end
    object QProdutosPROD_PRECO: TFloatField
      DisplayLabel = 'R$ VISTA'
      FieldName = 'PROD_PRECO'
      Origin = 'PROD_PRECO'
      currency = True
    end
    object QProdutosPROD_PRECO_PRAZO: TFloatField
      DisplayLabel = 'R$ PRAZO'
      FieldName = 'PROD_PRECO_PRAZO'
      Origin = 'PROD_PRECO_PRAZO'
      currency = True
    end
    object QProdutosPROD_ESTOQUE: TIntegerField
      DisplayLabel = 'ESTOQUE'
      FieldName = 'PROD_ESTOQUE'
      Origin = 'PROD_ESTOQUE'
    end
  end
  object DSProdutos: TDataSource
    DataSet = QProdutos
    Left = 40
    Top = 184
  end
end
