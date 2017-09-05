object FormEvents: TFormEvents
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1086#1073#1099#1090#1080#1103' '#1082#1086#1084#1087#1072#1085#1080#1080
  ClientHeight = 412
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Padding.Right = 10
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 387
    Align = alClient
    ColumnCollection = <
      item
        Value = 27.291765642450240000
      end
      item
        Value = 72.708234357549760000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label2
        Row = 0
      end
      item
        Column = 0
        Control = Label3
        Row = 1
      end
      item
        Column = 0
        Control = Label4
        Row = 2
      end
      item
        Column = 0
        Control = Label5
        Row = 3
      end
      item
        Column = 1
        Control = DBEdit2
        Row = 0
      end
      item
        Column = 1
        Control = DBCheckBox1
        Row = 2
      end
      item
        Column = 1
        Control = DBMemo1
        Row = 3
      end
      item
        Column = 1
        Control = DBDateTimePicker1
        Row = 1
      end>
    RowCollection = <
      item
        Value = 24.998620932278100000
      end
      item
        Value = 25.000449460543500000
      end
      item
        Value = 25.000824229862360000
      end
      item
        Value = 25.000105377316030000
      end>
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 112
      Height = 90
      Margins.Left = 10
      Align = alClient
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 68
      ExplicitHeight = 19
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 100
      Width = 112
      Height = 90
      Margins.Left = 10
      Align = alClient
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 35
      ExplicitHeight = 19
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 196
      Width = 112
      Height = 90
      Margins.Left = 10
      Align = alClient
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 80
      ExplicitHeight = 19
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 292
      Width = 112
      Height = 91
      Margins.Left = 10
      Align = alClient
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 71
      ExplicitHeight = 19
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 141
      Top = 11
      Width = 220
      Height = 21
      Margins.Left = 15
      Margins.Top = 10
      DataField = 'Title'
      DataSource = DMl.DataSourceEvents
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      AlignWithMargins = True
      Left = 141
      Top = 196
      Width = 220
      Height = 90
      Margins.Left = 15
      Align = alLeft
      Caption = #1042#1099#1089#1086#1082#1080#1081
      DataField = 'Priority'
      DataSource = DMl.DataSourceEvents
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      AlignWithMargins = True
      Left = 141
      Top = 299
      Width = 220
      Height = 46
      Margins.Left = 15
      Margins.Top = 10
      DataField = 'Desc'
      DataSource = DMl.DataSourceEvents
      TabOrder = 2
    end
    object DBDateTimePicker1: TDBDateTimePicker
      AlignWithMargins = True
      Left = 141
      Top = 107
      Width = 220
      Height = 21
      Margins.Left = 15
      Margins.Top = 10
      Date = 42896.000000000000000000
      Time = 42896.000000000000000000
      TabOrder = 3
      DataField = 'Date'
      DataSource = DMl.DataSourceEvents
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 387
    Width = 462
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
