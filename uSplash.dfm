object frmSplash: TfrmSplash
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 400
  ClientWidth = 900
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
    Left = 120
    Top = 80
    Width = 311
    Height = 58
    Caption = 'SISCORP S.A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Splitter1: TSplitter
    Left = 105
    Top = -8
    Width = 9
    Height = 424
    Align = alNone
    Color = clMaroon
    ParentColor = False
  end
  object Label2: TLabel
    Left = 200
    Top = 144
    Width = 241
    Height = 19
    AutoSize = False
    Caption = 'SISTEMA DE GERENCIAMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 839
    Top = 370
    Width = 53
    Height = 16
    Caption = 'Ver 1.0.1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 392
    Width = 900
    Height = 8
    TabOrder = 0
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 848
    Top = 176
  end
end
