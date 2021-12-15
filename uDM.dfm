object DM: TDM
  OldCreateOrder = False
  Height = 588
  Width = 705
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=Adm123;Persist Security Info=True;Us' +
      'er ID=root;Data Source=Mysql;Initial Catalog=delphilogin'
    LoginPrompt = False
    Left = 184
    Top = 192
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tb_usuarios')
    Left = 280
    Top = 176
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1nome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object ADOQuery1login: TWideStringField
      FieldName = 'login'
      Size = 100
    end
    object ADOQuery1senha: TWideStringField
      FieldName = 'senha'
      Size = 100
    end
    object ADOQuery1nivel: TIntegerField
      FieldName = 'nivel'
    end
  end
  object DataSource1: TDataSource
    Left = 296
    Top = 400
  end
  object tbUsuarios: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_usuarios'
    Left = 544
    Top = 400
    object tbUsuariosid: TAutoIncField
      DisplayWidth = 5
      FieldName = 'id'
      ReadOnly = True
    end
    object tbUsuariosnome: TWideStringField
      DisplayWidth = 100
      FieldName = 'nome'
      Size = 100
    end
    object tbUsuarioslogin: TWideStringField
      DisplayWidth = 100
      FieldName = 'login'
      Size = 100
    end
    object tbUsuariossenha: TWideStringField
      DisplayWidth = 100
      FieldName = 'senha'
      Size = 100
    end
    object tbUsuariosnivel: TIntegerField
      DisplayWidth = 10
      FieldName = 'nivel'
    end
  end
  object tbClientes: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_clientes'
    Left = 568
    Top = 224
    object tbClientesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
    object tbClientescpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
    end
    object tbClientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object tbClientesuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object tbClientestelefone: TWideStringField
      FieldName = 'telefone'
      Size = 11
    end
  end
end
