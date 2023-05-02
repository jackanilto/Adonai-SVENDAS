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
      'select * from produtos')
    Left = 40
    Top = 232
    object QProdutosPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdutosPROD_NOME: TStringField
      FieldName = 'PROD_NOME'
      Origin = 'PROD_NOME'
      Size = 100
    end
    object QProdutosPROD_BARRAS: TStringField
      FieldName = 'PROD_BARRAS'
      Origin = 'PROD_BARRAS'
    end
    object QProdutosPROD_REFER: TStringField
      FieldName = 'PROD_REFER'
      Origin = 'PROD_REFER'
    end
    object QProdutosPROD_CUSTO: TFloatField
      FieldName = 'PROD_CUSTO'
      Origin = 'PROD_CUSTO'
    end
    object QProdutosPROD_PRECO: TFloatField
      FieldName = 'PROD_PRECO'
      Origin = 'PROD_PRECO'
    end
    object QProdutosPROD_PRECO_PRAZO: TFloatField
      FieldName = 'PROD_PRECO_PRAZO'
      Origin = 'PROD_PRECO_PRAZO'
    end
    object QProdutosPROD_ESTOQUE: TIntegerField
      FieldName = 'PROD_ESTOQUE'
      Origin = 'PROD_ESTOQUE'
    end
  end
  object DSProdutos: TDataSource
    DataSet = QProdutos
    Left = 40
    Top = 184
  end
  object TBCliente: TFDTable
    IndexFieldNames = 'PROD_ID'
    MasterSource = DSProdutos
    Connection = FDConn
    TableName = 'PRODUTOS'
    Left = 40
    Top = 136
    object TBClientePROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClientePROD_NOME: TStringField
      FieldName = 'PROD_NOME'
      Origin = 'PROD_NOME'
      Size = 100
    end
    object TBClientePROD_BARRAS: TStringField
      FieldName = 'PROD_BARRAS'
      Origin = 'PROD_BARRAS'
    end
    object TBClientePROD_REFER: TStringField
      FieldName = 'PROD_REFER'
      Origin = 'PROD_REFER'
    end
    object TBClientePROD_CUSTO: TFloatField
      FieldName = 'PROD_CUSTO'
      Origin = 'PROD_CUSTO'
    end
    object TBClientePROD_PRECO: TFloatField
      FieldName = 'PROD_PRECO'
      Origin = 'PROD_PRECO'
    end
    object TBClientePROD_PRECO_PRAZO: TFloatField
      FieldName = 'PROD_PRECO_PRAZO'
      Origin = 'PROD_PRECO_PRAZO'
    end
    object TBClientePROD_ESTOQUE: TIntegerField
      FieldName = 'PROD_ESTOQUE'
      Origin = 'PROD_ESTOQUE'
    end
  end
end
