object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1085#1080#1077' '#8470'1'
  ClientHeight = 421
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 465
    Height = 33
    AutoSize = False
    Caption = 
      #1047#1072#1076#1072#1085#1080#1077':  '#1044#1072#1085' '#1076#1074#1091#1084#1077#1088#1085#1099#1081' '#1084#1072#1089#1089#1080#1074' n*m, '#1079#1072#1087#1086#1083#1085#1077#1085#1085#1099#1081' '#1089#1083#1091#1095#1072#1081#1085#1099#1084' '#1086#1073#1088#1072#1079#1086 +
      #1084'. '#1047#1072#1084#1077#1085#1080#1090#1100' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1087#1086' '#1084#1086#1076#1091#1083#1102' '#1101#1083#1077#1084#1077#1085#1090' '#1082#1072#1078#1076#1086#1081' '#1089#1090#1088#1086#1082#1080' '#1085#1072' '#1087#1088#1086#1090 +
      #1080#1074#1086#1087#1086#1083#1086#1078#1085#1099#1081' '#1087#1086' '#1079#1085#1072#1082#1091'.'
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 55
    Width = 489
    Height = 154
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 52
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' n'
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 54
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' m'
    end
    object Edit1: TEdit
      Left = 76
      Top = 29
      Width = 69
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 76
      Top = 69
      Width = 69
      Height = 21
      TabOrder = 1
    end
    object StringGrid1: TStringGrid
      Left = 151
      Top = 16
      Width = 330
      Height = 129
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 224
    Width = 489
    Height = 145
    Caption = #1056#1077#1079#1091#1083#1090#1072#1090
    TabOrder = 1
    object Memo1: TMemo
      Left = 76
      Top = 14
      Width = 330
      Height = 128
      Lines.Strings = (
        '')
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 8
    Top = 388
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 422
    Top = 388
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = Button2Click
  end
end
