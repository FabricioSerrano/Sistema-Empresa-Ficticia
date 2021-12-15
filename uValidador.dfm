object frmCpfValidador: TfrmCpfValidador
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Validador de CPF'
  ClientHeight = 376
  ClientWidth = 571
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 138
    Width = 30
    Height = 18
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Georgia'
    Font.Style = []
    ParentFont = False
  end
  object lbnTimer: TLabel
    Left = 328
    Top = 8
    Width = 241
    Height = 17
    AutoSize = False
  end
  object Label2: TLabel
    Left = -2
    Top = 0
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
  object edtCpf: TEdit
    Left = 204
    Top = 134
    Width = 249
    Height = 26
    AutoSize = False
    TabOrder = 0
  end
  object btnValidar: TButton
    Left = 104
    Top = 296
    Width = 100
    Height = 30
    Caption = 'Validar'
    TabOrder = 1
    OnClick = btnValidarClick
  end
  object btnNovaColsulta: TButton
    Left = 232
    Top = 296
    Width = 100
    Height = 30
    Caption = 'Nova Colsulta'
    TabOrder = 2
    OnClick = btnNovaColsultaClick
  end
  object btnSair: TButton
    Left = 360
    Top = 296
    Width = 100
    Height = 30
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 520
    Top = 216
  end
end
