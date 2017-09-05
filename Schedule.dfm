object FormSchedule: TFormSchedule
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
  ClientHeight = 513
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 488
    Width = 864
    Height = 25
    DataSource = DMl.DataSourceSchedule
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
    TabOrder = 0
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 488
    Align = alClient
    ColumnCollection = <
      item
        Value = 21.862481103442010000
      end
      item
        Value = 78.137518896557990000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 1
        Control = DBMemo1
        Row = 0
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end
      item
        Column = 1
        Control = DBMemo2
        Row = 1
      end
      item
        Column = 0
        Control = Label3
        Row = 2
      end
      item
        Column = 1
        Control = DBMemo3
        Row = 2
      end
      item
        Column = 0
        Control = Label4
        Row = 3
      end
      item
        Column = 1
        Control = DBMemo4
        Row = 3
      end
      item
        Column = 0
        Control = Label5
        Row = 4
      end
      item
        Column = 1
        Control = DBMemo5
        Row = 4
      end
      item
        Column = 0
        Control = Label6
        Row = 5
      end
      item
        Column = 1
        Control = DBMemo6
        Row = 5
      end
      item
        Column = 0
        Control = Label7
        Row = 6
      end
      item
        Column = 1
        Control = DBMemo7
        Row = 6
      end>
    RowCollection = <
      item
        Value = 14.290243395913860000
      end
      item
        Value = 14.252847996377870000
      end
      item
        Value = 14.268989720967340000
      end
      item
        Value = 14.294463922512820000
      end
      item
        Value = 14.302413283311240000
      end
      item
        Value = 14.299293303326920000
      end
      item
        Value = 14.291748377589960000
      end>
    TabOrder = 1
    DesignSize = (
      864
      488)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 4
      Width = 97
      Height = 63
      Margins.Left = 15
      Align = alLeft
      Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo1: TDBMemo
      Left = 230
      Top = 8
      Width = 592
      Height = 55
      Anchors = []
      DataField = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
      DataSource = DMl.DataSourceSchedule
      TabOrder = 0
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 73
      Width = 61
      Height = 63
      Margins.Left = 15
      Align = alLeft
      Caption = #1042#1090#1086#1088#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo2: TDBMemo
      Left = 229
      Top = 77
      Width = 593
      Height = 55
      Anchors = []
      DataField = #1042#1090#1086#1088#1085#1080#1082
      DataSource = DMl.DataSourceSchedule
      TabOrder = 1
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 142
      Width = 44
      Height = 63
      Margins.Left = 15
      Align = alLeft
      Caption = #1057#1088#1077#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo3: TDBMemo
      Left = 228
      Top = 146
      Width = 596
      Height = 55
      Anchors = []
      DataField = #1057#1088#1077#1076#1072
      DataSource = DMl.DataSourceSchedule
      TabOrder = 2
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 211
      Width = 58
      Height = 63
      Margins.Left = 15
      Align = alLeft
      Caption = #1063#1077#1090#1074#1077#1088#1075
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo4: TDBMemo
      Left = 228
      Top = 215
      Width = 596
      Height = 55
      Anchors = []
      DataField = #1063#1077#1090#1074#1077#1088#1075
      DataSource = DMl.DataSourceSchedule
      TabOrder = 3
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 280
      Width = 62
      Height = 63
      Margins.Left = 15
      Align = alLeft
      Caption = #1055#1103#1090#1085#1080#1094#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo5: TDBMemo
      Left = 230
      Top = 284
      Width = 592
      Height = 55
      Anchors = []
      DataField = #1055#1103#1090#1085#1080#1082#1072
      DataSource = DMl.DataSourceSchedule
      TabOrder = 4
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 349
      Width = 61
      Height = 63
      Margins.Left = 15
      Align = alLeft
      Caption = #1057#1091#1073#1073#1086#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo6: TDBMemo
      Left = 229
      Top = 353
      Width = 593
      Height = 55
      Anchors = []
      DataField = #1057#1091#1073#1073#1086#1090#1072
      DataSource = DMl.DataSourceSchedule
      TabOrder = 5
    end
    object Label7: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 418
      Width = 90
      Height = 66
      Margins.Left = 15
      Align = alLeft
      Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 19
    end
    object DBMemo7: TDBMemo
      Left = 228
      Top = 423
      Width = 596
      Height = 55
      Anchors = []
      DataField = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      DataSource = DMl.DataSourceSchedule
      TabOrder = 6
    end
  end
end
