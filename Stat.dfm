object StatForm: TStatForm
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '
  ClientHeight = 433
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 520
    Height = 344
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 385
    ExplicitHeight = 298
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 518
      Height = 342
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object TopRightPanel: TPanel
    Left = 520
    Top = 0
    Width = 385
    Height = 344
    Align = alRight
    TabOrder = 1
    ExplicitHeight = 298
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 383
      Height = 342
      Title.Text.Strings = (
        'TDBChart')
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 48
      ExplicitWidth = 360
      ExplicitHeight = 296
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
    end
  end
  object BotPanel: TPanel
    Left = 0
    Top = 344
    Width = 905
    Height = 89
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 7
      Height = 13
      Caption = #1057
    end
    object Label2: TLabel
      Left = 232
      Top = 6
      Width = 13
      Height = 13
      Caption = #1055#1086
    end
    object Label3: TLabel
      Left = 29
      Top = 40
      Width = 117
      Height = 16
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelReceipts: TLabel
      Left = 167
      Top = 40
      Width = 78
      Height = 16
      Caption = 'LabelReceipts'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 282
      Top = 40
      Width = 120
      Height = 16
      Caption = #1055#1088#1080#1073#1099#1083#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelProfit: TLabel
      Left = 416
      Top = 40
      Width = 60
      Height = 16
      Caption = 'LabelProfit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 29
      Top = 5
      Width = 186
      Height = 21
      Date = 42890.933399942130000000
      Time = 42890.933399942130000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 264
      Top = 6
      Width = 186
      Height = 21
      Date = 42890.934146342600000000
      Time = 42890.934146342600000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 464
      Top = 5
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 2
    end
  end
end
