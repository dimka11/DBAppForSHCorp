object FormEditOrder: TFormEditOrder
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 417
  ClientWidth = 527
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
    Top = 392
    Width = 527
    Height = 25
    DataSource = DMl.DataSourceGetOrder
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 64
    ExplicitWidth = 240
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 527
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 88
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 88
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 96
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 527
    Height = 363
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
        Control = Label4
        Row = 3
      end
      item
        Column = 1
        Control = DBDateTimePicker1
        Row = 3
      end
      item
        Column = 0
        Control = Label5
        Row = 4
      end
      item
        Column = 1
        Control = DBEdit4
        Row = 4
      end>
    RowCollection = <
      item
        Value = 20.000572662043720000
      end
      item
        Value = 19.992570992928560000
      end
      item
        Value = 19.999849211135770000
      end
      item
        Value = 20.004523745143590000
      end
      item
        Value = 20.002483388748360000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 2
    ExplicitTop = 23
    DesignSize = (
      527
      363)
    object Label1: TLabel
      Left = 87
      Top = 30
      Width = 89
      Height = 13
      Anchors = []
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
      ExplicitLeft = 90
    end
    object DBEdit1: TDBEdit
      Left = 334
      Top = 26
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1060#1072#1084#1080#1083#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
      DataSource = DMl.DataSourceGetOrder
      TabOrder = 0
      ExplicitTop = 27
    end
    object Label2: TLabel
      Left = 78
      Top = 102
      Width = 107
      Height = 13
      Anchors = []
      Caption = #1060#1072#1084#1080#1080#1083#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ExplicitLeft = 81
    end
    object DBEdit2: TDBEdit
      Left = 334
      Top = 98
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1060#1072#1084#1080#1083#1080#1103' '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = DMl.DataSourceGetOrder
      TabOrder = 1
      ExplicitLeft = 360
      ExplicitTop = 96
    end
    object Label3: TLabel
      Left = 110
      Top = 174
      Width = 44
      Height = 13
      Anchors = []
      Caption = #1055#1088#1086#1076#1091#1082#1090
      ExplicitLeft = 113
    end
    object DBEdit3: TDBEdit
      Left = 334
      Top = 170
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1055#1088#1086#1076#1091#1082#1090
      DataSource = DMl.DataSourceGetOrder
      TabOrder = 2
      ExplicitLeft = 360
      ExplicitTop = 184
    end
    object Label4: TLabel
      Left = 119
      Top = 246
      Width = 26
      Height = 13
      Anchors = []
      Caption = #1044#1072#1090#1072
      ExplicitLeft = 122
    end
    object DBDateTimePicker1: TDBDateTimePicker
      Left = 325
      Top = 242
      Width = 138
      Height = 21
      Anchors = []
      Date = 42889.000000000000000000
      Time = 42889.000000000000000000
      TabOrder = 3
      DataField = #1044#1072#1090#1072
      DataSource = DMl.DataSourceGetOrder
      ExplicitLeft = 317
    end
    object Label5: TLabel
      Left = 102
      Top = 318
      Width = 60
      Height = 13
      Anchors = []
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      ExplicitLeft = 105
      ExplicitTop = 319
    end
    object DBEdit4: TDBEdit
      Left = 334
      Top = 314
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DataSource = DMl.DataSourceGetOrder
      TabOrder = 4
      ExplicitLeft = 360
      ExplicitTop = 312
    end
  end
end
