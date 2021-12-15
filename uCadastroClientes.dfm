object frmCadastroClientes: TfrmCadastroClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'SISCORP S.A'
  ClientHeight = 361
  ClientWidth = 884
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 17
    Height = 19
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 42
    Height = 19
    Caption = 'Nome'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 218
    Width = 92
    Height = 19
    Caption = 'CPF ou CNPJ'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 256
    Width = 65
    Height = 19
    Caption = 'Endereco'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 6
    Top = 296
    Width = 19
    Height = 19
    Caption = 'UF'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Splitter1: TSplitter
    Left = 304
    Top = -15
    Width = 19
    Height = 400
    Align = alNone
    Color = clMaroon
    ParentColor = False
  end
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 206
    Height = 39
    Caption = 'SISCORP S.A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 176
    Width = 61
    Height = 19
    Caption = 'Telefone'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 27
    Top = 88
    Width = 21
    Height = 24
    AutoSize = False
    DataField = 'id'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 106
    Top = 128
    Width = 200
    Height = 24
    AutoSize = False
    DataField = 'nome'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 106
    Top = 218
    Width = 200
    Height = 24
    AutoSize = False
    DataField = 'cpf_cnpj'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 106
    Top = 256
    Width = 200
    Height = 24
    AutoSize = False
    DataField = 'endereco'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 31
    Top = 296
    Width = 20
    Height = 24
    AutoSize = False
    DataField = 'uf'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 388
    Top = 320
    Width = 410
    Height = 33
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 388
    Top = 72
    Width = 416
    Height = 210
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf_cnpj'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = True
      end>
  end
  object btnValidador: TBitBtn
    Left = 114
    Top = 323
    Width = 100
    Height = 30
    Caption = 'Validador CPF'
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 7
    OnClick = btnValidadorClick
  end
  object DBEdit6: TDBEdit
    Left = 106
    Top = 176
    Width = 200
    Height = 24
    DataField = 'telefone'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = DM.tbClientes
    Left = 856
  end
end
