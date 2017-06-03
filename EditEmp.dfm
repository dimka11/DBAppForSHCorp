object EditEmpForm: TEditEmpForm
  Left = 0
  Top = 0
  Caption = 'EditEmpForm'
  ClientHeight = 335
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 310
    Width = 593
    Height = 25
    DataSource = DMl.DataSourceEmp
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
    ExplicitLeft = 264
    ExplicitTop = 72
    ExplicitWidth = 240
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 593
    Height = 281
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.467289719626160000
      end
      item
        Value = 49.532710280373820000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 1
        Control = DBEdit1
        Row = 0
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end
      item
        Column = 1
        Control = DBEdit2
        Row = 1
      end
      item
        Column = 0
        Control = Label3
        Row = 2
      end
      item
        Column = 1
        Control = DBEdit3
        Row = 2
      end
      item
        Column = 0
        Control = Label4
        Row = 3
      end
      item
        Column = 1
        Control = DBEdit4
        Row = 3
      end>
    RowCollection = <
      item
        Value = 25.073984088475470000
      end
      item
        Value = 24.946202914634110000
      end
      item
        Value = 24.967019732984120000
      end
      item
        Value = 25.012793263906300000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 1
    ExplicitLeft = 304
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      593
      281)
    object Label1: TLabel
      Left = 128
      Top = 29
      Width = 44
      Height = 13
      Anchors = []
      Caption = #1060#1072#1084#1080#1083#1080#1103
      ExplicitLeft = 114
      ExplicitTop = 31
    end
    object DBEdit1: TDBEdit
      Left = 345
      Top = 25
      Width = 200
      Height = 21
      Anchors = []
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DMl.DataSourceEmp
      TabOrder = 0
      ExplicitLeft = 295
      ExplicitTop = 28
    end
    object Label2: TLabel
      Left = 140
      Top = 98
      Width = 19
      Height = 13
      Anchors = []
      Caption = #1048#1084#1103
      ExplicitLeft = 126
      ExplicitTop = 105
    end
    object DBEdit2: TDBEdit
      Left = 345
      Top = 94
      Width = 200
      Height = 21
      Anchors = []
      DataField = #1048#1084#1103
      DataSource = DMl.DataSourceEmp
      TabOrder = 1
      ExplicitLeft = 335
      ExplicitTop = 101
    end
    object Label3: TLabel
      Left = 128
      Top = 167
      Width = 44
      Height = 13
      Anchors = []
      Caption = #1058#1077#1083#1077#1092#1086#1085
      ExplicitLeft = 114
      ExplicitTop = 179
    end
    object DBEdit3: TDBEdit
      Left = 345
      Top = 163
      Width = 200
      Height = 21
      Anchors = []
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DMl.DataSourceEmp
      TabOrder = 2
      ExplicitLeft = 335
      ExplicitTop = 175
    end
    object Label4: TLabel
      Left = 121
      Top = 236
      Width = 57
      Height = 13
      Anchors = []
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      ExplicitLeft = 107
      ExplicitTop = 255
    end
    object DBEdit4: TDBEdit
      Left = 345
      Top = 232
      Width = 200
      Height = 21
      Anchors = []
      DataField = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DataSource = DMl.DataSourceEmp
      TabOrder = 3
      ExplicitLeft = 295
      ExplicitTop = 226
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 593
    Height = 29
    Anchors = []
    ButtonHeight = 21
    ButtonWidth = 120
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
    ExplicitWidth = 527
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 120
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 128
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
  end
end
