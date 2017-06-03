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
      Left = 1
      Top = 1
      Width = 333
      Height = 76
      Margins.Left = 10
      Align = alClient
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 17
      ExplicitHeight = 19
    end
    object Label2: TLabel
      Left = 1
      Top = 77
      Width = 333
      Height = 76
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
      Left = 1
      Top = 153
      Width = 333
      Height = 77
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
      Left = 1
      Top = 230
      Width = 333
      Height = 77
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
      Left = 1
      Top = 307
      Width = 333
      Height = 79
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
    TabOrder = 1
  end
end
