object FormEditClient: TFormEditClient
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 467
  ClientWidth = 408
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 442
    Width = 408
    Height = 25
    DataSource = DMl.DataSourceGetClient
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
    Align = alBottom
    TabOrder = 0
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 408
    Height = 413
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
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
        Control = Адрес
        Row = 3
      end
      item
        Column = 1
        Control = DBRichEdit1
        Row = 3
      end
      item
        Column = 0
        Control = Label4
        Row = 4
      end
      item
        Column = 1
        Control = DBDateTimePicker1
        Row = 4
      end
      item
        Column = 0
        Control = Label5
        Row = 5
      end
      item
        Column = 1
        Control = DBLookupComboBox1
        Row = 5
      end>
    RowCollection = <
      item
        Value = 16.714384359204800000
      end
      item
        Value = 16.695233616994560000
      end
      item
        Value = 16.676171196554190000
      end
      item
        Value = 16.657121930128680000
      end
      item
        Value = 16.638067797699350000
      end
      item
        Value = 16.619021099418410000
      end>
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 53
      Height = 62
      Margins.Left = 10
      Align = alLeft
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 16
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 219
      Top = 4
      Width = 168
      Height = 21
      Margins.Left = 15
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DMl.DataSourceGetClient
      TabOrder = 0
      OnChange = DBEdit1Change
      OnKeyPress = DBEdit1KeyPress
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 72
      Width = 23
      Height = 62
      Margins.Left = 10
      Align = alLeft
      Caption = #1048#1084#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 16
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 219
      Top = 72
      Width = 168
      Height = 21
      Margins.Left = 15
      DataField = #1048#1084#1103
      DataSource = DMl.DataSourceGetClient
      TabOrder = 1
      OnChange = DBEdit2Change
      OnKeyPress = DBEdit2KeyPress
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 140
      Width = 53
      Height = 62
      Margins.Left = 10
      Align = alLeft
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 16
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 219
      Top = 140
      Width = 168
      Height = 21
      Margins.Left = 15
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DMl.DataSourceGetClient
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object Адрес: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 208
      Width = 35
      Height = 62
      Margins.Left = 10
      Align = alLeft
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 16
    end
    object DBRichEdit1: TDBRichEdit
      AlignWithMargins = True
      Left = 219
      Top = 208
      Width = 168
      Height = 39
      Margins.Left = 15
      DataField = #1040#1076#1088#1077#1089
      DataSource = DMl.DataSourceGetClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 3
      Zoom = 100
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 276
      Width = 80
      Height = 62
      Margins.Left = 10
      Align = alLeft
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      ExplicitHeight = 13
    end
    object DBDateTimePicker1: TDBDateTimePicker
      AlignWithMargins = True
      Left = 219
      Top = 276
      Width = 168
      Height = 21
      Margins.Left = 15
      Date = 42897.000000000000000000
      Time = 42897.000000000000000000
      TabOrder = 4
      DataField = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
      DataSource = DMl.DataSourceGetClient
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 351
      Width = 56
      Height = 58
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      ExplicitHeight = 13
    end
    object DBLookupComboBox1: TDBLookupComboBox
      AlignWithMargins = True
      Left = 214
      Top = 351
      Width = 145
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      DataField = 'EmployeeID'
      DataSource = DMl.DataSourceGetClient
      KeyField = 'ID'
      ListField = 'SecondName'
      ListSource = DataSource1
      TabOrder = 5
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 408
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 102
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 102
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 110
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
  end
  object ADODataSet1: TADODataSet
    Connection = DMl.ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT ID, SecondName'#13#10'FROM Employee'
    Parameters = <>
    Left = 248
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 312
    Top = 8
  end
end
