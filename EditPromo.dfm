object FormEditPromotion: TFormEditPromotion
  Left = 0
  Top = 0
  Caption = #1040#1082#1094#1080#1080
  ClientHeight = 305
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 527
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 62
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 62
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 70
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 132
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 140
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 2
      OnClick = ToolButton5Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 280
    Width = 527
    Height = 25
    DataSource = DMl.DataSourceGetPromo
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 241
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 527
    Height = 251
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
        Control = Стоимость
        Row = 1
      end
      item
        Column = 1
        Control = DBEdit2
        Row = 1
      end
      item
        Column = 0
        Control = Label2
        Row = 2
      end
      item
        Column = 1
        Control = DBRichEdit1
        Row = 2
      end
      item
        Column = 0
        Control = Label3
        Row = 3
      end
      item
        Column = 1
        Control = DBDateTimePicker1
        Row = 3
      end>
    RowCollection = <
      item
        Value = 24.999870595130870000
      end
      item
        Value = 24.999788831945310000
      end
      item
        Value = 25.000186950775690000
      end
      item
        Value = 25.000153622148120000
      end>
    TabOrder = 2
    ExplicitTop = 35
    DesignSize = (
      527
      251)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 48
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      ExplicitLeft = 111
      ExplicitTop = 25
      ExplicitHeight = 13
    end
    object DBEdit1: TDBEdit
      Left = 300
      Top = 21
      Width = 189
      Height = 21
      Anchors = []
      DataField = #1053#1072#1079#1074#1072#1085#1080#1077
      DataSource = DMl.DataSourceGetPromo
      TabOrder = 0
      ExplicitLeft = 299
    end
    object Стоимость: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 73
      Width = 54
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      ExplicitLeft = 116
      ExplicitTop = 87
      ExplicitHeight = 13
    end
    object DBEdit2: TDBEdit
      Left = 299
      Top = 83
      Width = 191
      Height = 21
      Anchors = []
      DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DataSource = DMl.DataSourceGetPromo
      TabOrder = 1
      ExplicitLeft = 288
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 135
      Width = 49
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      ExplicitLeft = 110
      ExplicitTop = 149
      ExplicitHeight = 13
    end
    object DBRichEdit1: TDBRichEdit
      Left = 300
      Top = 137
      Width = 188
      Height = 37
      Anchors = []
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DMl.DataSourceGetPromo
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 2
      Zoom = 100
      ExplicitLeft = 299
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 197
      Width = 83
      Height = 50
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      ExplicitLeft = 93
      ExplicitTop = 212
      ExplicitHeight = 13
    end
    object DBDateTimePicker1: TDBDateTimePicker
      Left = 301
      Top = 208
      Width = 186
      Height = 21
      Anchors = []
      Date = 42886.000000000000000000
      Time = 42886.000000000000000000
      TabOrder = 3
      DataField = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      DataSource = DMl.DataSourceGetPromo
      ExplicitLeft = 352
      ExplicitTop = 200
    end
  end
end
