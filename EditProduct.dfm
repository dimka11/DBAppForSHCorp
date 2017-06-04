object FormEditProduct: TFormEditProduct
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1076#1091#1082#1090#1072
  ClientHeight = 445
  ClientWidth = 831
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
    Top = 420
    Width = 831
    Height = 25
    DataSource = DMl.DataSourceGuestView
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 48
    ExplicitWidth = 240
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 831
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 103
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    ExplicitWidth = 591
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1076#1091#1082#1090
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 103
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 111
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1086#1076#1091#1082#1090
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
  end
  object RigthPanel: TPanel
    Left = 0
    Top = 29
    Width = 560
    Height = 391
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 409
    ExplicitHeight = 304
  end
  object Panel2: TPanel
    Left = 560
    Top = 29
    Width = 271
    Height = 391
    Align = alRight
    TabOrder = 3
    object Label6: TLabel
      Left = 6
      Top = 10
      Width = 49
      Height = 13
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    end
    object Label7: TLabel
      Left = 6
      Top = 125
      Width = 36
      Height = 13
      Caption = #1057#1086#1089#1090#1072#1074
    end
    object Label8: TLabel
      Left = 6
      Top = 241
      Width = 61
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1085#1077#1085#1080#1077
    end
    object DBRichEdit1: TDBRichEdit
      Left = 6
      Top = 29
      Width = 233
      Height = 89
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DMl.DataSourceGuestView
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 0
      Zoom = 100
    end
    object DBRichEdit2: TDBRichEdit
      Left = 6
      Top = 144
      Width = 235
      Height = 89
      DataField = #1057#1086#1089#1090#1072#1074
      DataSource = DMl.DataSourceGuestView
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 1
      Zoom = 100
    end
    object DBRichEdit3: TDBRichEdit
      Left = 6
      Top = 260
      Width = 235
      Height = 96
      DataField = #1055#1088#1080#1084#1077#1085#1080#1077
      DataSource = DMl.DataSourceGuestView
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 2
      Zoom = 100
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 560
    Height = 391
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
        Control = DBEdit4
        Row = 3
      end
      item
        Column = 0
        Control = Label5
        Row = 4
      end
      item
        Column = 1
        Control = DBEdit5
        Row = 4
      end>
    RowCollection = <
      item
        Value = 19.956727534447800000
      end
      item
        Value = 20.010692562323110000
      end
      item
        Value = 20.021542645837630000
      end
      item
        Value = 20.011160315367100000
      end
      item
        Value = 19.999876942024360000
      end>
    TabOrder = 4
    ExplicitTop = 23
    DesignSize = (
      560
      391)
    object Label1: TLabel
      Left = 104
      Top = 33
      Width = 72
      Height = 13
      Anchors = []
      Caption = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072
      ExplicitLeft = 102
    end
    object DBEdit1: TDBEdit
      Left = 359
      Top = 29
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1050#1086#1076
      DataSource = DMl.DataSourceGuestView
      TabOrder = 0
      ExplicitTop = 30
    end
    object Label2: TLabel
      Left = 90
      Top = 110
      Width = 100
      Height = 13
      Anchors = []
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
      ExplicitLeft = 93
    end
    object DBEdit2: TDBEdit
      Left = 359
      Top = 106
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1055#1088#1086#1076#1091#1082#1090
      DataSource = DMl.DataSourceGuestView
      TabOrder = 1
      ExplicitLeft = 384
      ExplicitTop = 96
    end
    object Label3: TLabel
      Left = 106
      Top = 187
      Width = 68
      Height = 13
      Anchors = []
      Caption = #1041#1072#1079#1086#1074#1072#1103' '#1094#1077#1085#1072
      ExplicitLeft = 109
    end
    object DBEdit3: TDBEdit
      Left = 359
      Top = 183
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1041#1072#1079#1086#1074#1072#1103' '#1094#1077#1085#1072
      DataSource = DMl.DataSourceGuestView
      TabOrder = 2
      ExplicitLeft = 384
      ExplicitTop = 192
    end
    object Label4: TLabel
      Left = 104
      Top = 264
      Width = 72
      Height = 13
      Anchors = []
      Caption = #1058#1077#1082#1091#1097#1072#1103' '#1094#1077#1085#1072
      ExplicitLeft = 107
    end
    object DBEdit4: TDBEdit
      Left = 359
      Top = 260
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1058#1077#1082#1091#1097#1072#1103' '#1094#1077#1085#1072
      DataSource = DMl.DataSourceGuestView
      TabOrder = 3
      ExplicitLeft = 376
      ExplicitTop = 264
    end
    object Label5: TLabel
      Left = 113
      Top = 343
      Width = 54
      Height = 13
      Anchors = []
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      ExplicitLeft = 116
    end
    object DBEdit5: TDBEdit
      Left = 359
      Top = 339
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1087#1086#1076#1082#1072#1090#1077#1075#1086#1088#1080#1103
      DataSource = DMl.DataSourceGuestView
      TabOrder = 4
      ExplicitLeft = 368
      ExplicitTop = 344
    end
  end
end
