object FormEvents: TFormEvents
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1086#1073#1099#1090#1080#1103' '#1082#1086#1084#1087#1072#1085#1080#1080
  ClientHeight = 412
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Right = 10
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 10
    Top = 0
    Width = 669
    Height = 387
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.002001355532680000
      end
      item
        Value = 49.997998644467320000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end
      item
        Column = 0
        Control = Label3
        Row = 2
      end
      item
        Column = 0
        Control = Label4
        Row = 3
      end
      item
        Column = 0
        Control = Label5
        Row = 4
      end
      item
        Column = 1
        Control = DBEdit1
        Row = 0
      end
      item
        Column = 1
        Control = DBEdit2
        Row = 1
      end
      item
        Column = 1
        Control = DBCheckBox1
        Row = 3
      end
      item
        Column = 1
        Control = DBMemo1
        Row = 4
      end
      item
        Column = 1
        Control = DBDateTimePicker1
        Row = 2
      end>
    RowCollection = <
      item
        Value = 19.999209010234590000
      end
      item
        Value = 19.999094482355550000
      end
      item
        Value = 20.000557319431340000
      end
      item
        Value = 20.000857137850820000
      end
      item
        Value = 20.000282050127700000
      end>
    TabOrder = 0
    DesignSize = (
      669
      387)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 320
      Height = 70
      Margins.Left = 10
      Align = alClient
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 17
      ExplicitHeight = 19
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 80
      Width = 320
      Height = 70
      Margins.Left = 10
      Align = alClient
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 77
      ExplicitWidth = 68
      ExplicitHeight = 19
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 156
      Width = 320
      Height = 71
      Margins.Left = 10
      Align = alClient
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 153
      ExplicitWidth = 35
      ExplicitHeight = 19
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 233
      Width = 320
      Height = 71
      Margins.Left = 10
      Align = alClient
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 230
      ExplicitWidth = 80
      ExplicitHeight = 19
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 310
      Width = 320
      Height = 73
      Margins.Left = 10
      Align = alClient
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 307
      ExplicitWidth = 71
      ExplicitHeight = 19
    end
    object DBEdit1: TDBEdit
      Left = 391
      Top = 28
      Width = 220
      Height = 21
      Anchors = []
      DataField = 'ID'
      DataSource = DMl.DataSourceEvents
      ReadOnly = True
      TabOrder = 0
      ExplicitLeft = 400
    end
    object DBEdit2: TDBEdit
      Left = 391
      Top = 104
      Width = 220
      Height = 21
      Anchors = []
      DataField = 'Title'
      DataSource = DMl.DataSourceEvents
      TabOrder = 1
      ExplicitLeft = 396
    end
    object DBCheckBox1: TDBCheckBox
      Left = 391
      Top = 260
      Width = 220
      Height = 17
      Anchors = []
      Caption = #1042#1099#1089#1086#1082#1080#1081
      DataField = 'Priority'
      DataSource = DMl.DataSourceEvents
      TabOrder = 2
      ExplicitLeft = 452
    end
    object DBMemo1: TDBMemo
      Left = 391
      Top = 323
      Width = 220
      Height = 46
      Anchors = []
      DataField = 'Desc'
      DataSource = DMl.DataSourceEvents
      TabOrder = 3
      ExplicitLeft = 491
    end
    object DBDateTimePicker1: TDBDateTimePicker
      Left = 391
      Top = 181
      Width = 220
      Height = 21
      Anchors = []
      Date = 42896.000000000000000000
      Time = 42896.000000000000000000
      TabOrder = 4
      DataField = 'Date'
      DataSource = DMl.DataSourceEvents
      ExplicitLeft = 392
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 10
    Top = 387
    Width = 669
    Height = 25
    DataSource = DMl.DataSourceEvents
    Align = alBottom
    Hints.Strings = (
      #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1077#1088#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
      #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1079#1072#1087#1080#1089#1080
      #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      #1042#1089#1090#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102' '#1079#1072#1087#1080#1089#1100
      #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077
      #1054#1090#1084#1077#1085#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
end
