object EditEmpForm: TEditEmpForm
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 335
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 310
    Width = 500
    Height = 25
    DataSource = DMl.DataSourceGetEmpList
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
    ExplicitWidth = 422
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 21
    Width = 289
    Height = 289
    Align = alLeft
    ColumnCollection = <
      item
        Value = 30.772345511305000000
      end
      item
        Value = 69.227654488694990000
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
        Control = DBLookupComboBox1
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
    ExplicitTop = 29
    ExplicitHeight = 281
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 44
      Height = 63
      Margins.Left = 10
      Margins.Top = 5
      Align = alLeft
      Caption = #1060#1072#1084#1080#1083#1080#1103
      ExplicitHeight = 13
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 104
      Top = 11
      Width = 181
      Height = 21
      Margins.Left = 15
      Margins.Top = 10
      Margins.Bottom = 20
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DMl.DataSourceGetEmpList
      TabOrder = 0
      OnChange = DBEdit1Change
      OnKeyPress = DBEdit1KeyPress
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 77
      Width = 19
      Height = 63
      Margins.Left = 10
      Margins.Top = 5
      Align = alLeft
      Caption = #1048#1084#1103
      ExplicitTop = 75
      ExplicitHeight = 13
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 104
      Top = 82
      Width = 181
      Height = 21
      Margins.Left = 15
      Margins.Top = 10
      Margins.Bottom = 20
      DataField = #1048#1084#1103
      DataSource = DMl.DataSourceGetEmpList
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 148
      Width = 44
      Height = 63
      Margins.Left = 10
      Margins.Top = 5
      Align = alLeft
      Caption = #1058#1077#1083#1077#1092#1086#1085
      ExplicitTop = 144
      ExplicitHeight = 13
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 104
      Top = 153
      Width = 181
      Height = 21
      Margins.Left = 15
      Margins.Top = 10
      Margins.Bottom = 20
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DMl.DataSourceGetEmpList
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 219
      Width = 57
      Height = 63
      Margins.Left = 10
      Margins.Top = 5
      Align = alLeft
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      ExplicitTop = 213
      ExplicitHeight = 13
    end
    object DBLookupComboBox1: TDBLookupComboBox
      AlignWithMargins = True
      Left = 99
      Top = 224
      Width = 186
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      DataField = 'PositionID'
      DataSource = DMl.DataSourceGetEmpList
      KeyField = 'ID'
      ListField = 'Title'
      ListSource = DataSource1
      TabOrder = 3
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 500
    Height = 21
    Anchors = []
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 120
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
    ExplicitWidth = 590
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton5: TToolButton
      Left = 120
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 128
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 248
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 256
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 2
      OnClick = ToolButton4Click
    end
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = DMl.ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT ID, Title'#13#10'FROM [Position]'
    Parameters = <>
    Left = 344
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 352
    Top = 152
  end
end
