object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 270
  ClientWidth = 447
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
    Left = 9
    Top = 60
    Width = 36
    Height = 13
    Caption = #1063#1080#1089#1083#1086'1'
  end
  object Label2: TLabel
    Left = 9
    Top = 87
    Width = 36
    Height = 13
    Caption = #1063#1080#1089#1083#1086'2'
  end
  object Label3: TLabel
    Left = 9
    Top = 114
    Width = 31
    Height = 13
    Caption = #1057#1091#1084#1084#1072
  end
  object Label4: TLabel
    Left = 9
    Top = 141
    Width = 46
    Height = 13
    Caption = #1056#1072#1079#1085#1086#1089#1090#1100
  end
  object Label5: TLabel
    Left = 9
    Top = 164
    Width = 57
    Height = 13
    Caption = #1059#1084#1085#1086#1078#1077#1085#1080#1077
    OnClick = Label5Click
  end
  object Label6: TLabel
    Left = 9
    Top = 194
    Width = 44
    Height = 13
    Caption = #1044#1077#1083#1077#1085#1080#1077
  end
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = #1046#1072#1073#1080#1085#1072' '#1045#1083#1077#1085#1072
    OnClick = Label7Click
  end
  object Label8: TLabel
    Left = 160
    Top = 8
    Width = 84
    Height = 13
    Caption = #1043#1088#1091#1087#1087#1072': '#1059#1041'15-09'
  end
  object Label9: TLabel
    Left = 320
    Top = 8
    Width = 64
    Height = 13
    Caption = #1042#1072#1088#1080#1072#1085#1090' '#8470'7'
  end
  object Label10: TLabel
    Left = 9
    Top = 37
    Width = 383
    Height = 13
    Caption = 
      #1044#1072#1085#1099' '#1076#1074#1072' '#1095#1080#1089#1083#1072'. '#1042#1099#1095#1080#1089#1083#1080#1090#1100' '#1080#1093' '#1089#1091#1084#1084#1091', '#1088#1072#1079#1085#1086#1089#1090#1100', '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1077' '#1080' '#1095#1072#1089 +
      #1090#1085#1086#1077'. '
  end
  object EChislo1: TEdit
    Left = 80
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EChislo2: TEdit
    Left = 80
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ESumma: TEdit
    Left = 80
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ERazn: TEdit
    Left = 80
    Top = 137
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EProizv: TEdit
    Left = 80
    Top = 164
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EDelenie: TEdit
    Left = 80
    Top = 193
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object BRasschet: TButton
    Left = 240
    Top = 54
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 6
    OnClick = BRasschetClick
  end
  object Button2: TButton
    Left = 352
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 7
    OnClick = Button2Click
  end
end
