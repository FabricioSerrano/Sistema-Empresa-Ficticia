object frmMenu: TfrmMenu
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
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 216
    Top = -39
    Width = 19
    Height = 400
    Align = alNone
    Color = clMaroon
    ParentColor = False
  end
  object Label1: TLabel
    Left = 4
    Top = 48
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
  object lbnNivel: TLabel
    Left = 715
    Top = 328
    Width = 161
    Height = 25
    Caption = 'Nivel de Acesso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbnHora: TLabel
    Left = 715
    Top = 0
    Width = 7
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnVoltar: TBitBtn
    Left = 24
    Top = 310
    Width = 162
    Height = 43
    Caption = 'Voltar ao Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    OnClick = btnVoltarClick
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 176
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Cadastro: TMenuItem
        Caption = 'Cadastro'
        object Clientes: TMenuItem
          Caption = 'Clientes'
          OnClick = ClientesClick
        end
        object Usuarios: TMenuItem
          Caption = 'Usu'#225'rios'
          OnClick = UsuariosClick
        end
      end
      object Sair: TMenuItem
        Caption = 'Sair'
        OnClick = SairClick
      end
    end
    object Editar: TMenuItem
      Caption = 'Editar'
      object Abrir: TMenuItem
        Caption = 'Abrir'
        object BlocoNotas: TMenuItem
          Caption = 'Bloco de Notas'
          OnClick = BlocoNotasClick
        end
        object Calculadora: TMenuItem
          Caption = 'Calculadora'
          OnClick = CalculadoraClick
        end
        object Validador: TMenuItem
          Caption = 'Validador de CPF'
          OnClick = ValidadorClick
        end
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 792
    Top = 96
  end
end
