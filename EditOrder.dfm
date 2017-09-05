object FormEditOrder: TFormEditOrder
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 417
  ClientWidth = 747
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
    Top = 392
    Width = 747
    Height = 25
    DataSource = DMl.DataSourceGetOrder
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 394
    ExplicitWidth = 516
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 747
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 88
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    ExplicitWidth = 333
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 88
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1082#1072#1079
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 29
    Width = 313
    Height = 363
    Align = alLeft
    TabOrder = 2
    object GridPanel1: TGridPanel
      Left = 1
      Top = 1
      Width = 311
      Height = 361
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
          Column = 1
          Control = DBEdit2
          Row = 1
        end
        item
          Column = 0
          Control = Label4
          Row = 2
        end
        item
          Column = 1
          Control = DBDateTimePicker1
          Row = 2
        end
        item
          Column = 0
          Control = Label2
          Row = 1
        end>
      RowCollection = <
        item
          Value = 33.335583746385930000
        end
        item
          Value = 33.322247112710170000
        end
        item
          Value = 33.342169140903890000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      ExplicitLeft = -4
      ExplicitTop = 6
      object Label1: TLabel
        AlignWithMargins = True
        Left = 21
        Top = 11
        Width = 89
        Height = 106
        Margins.Left = 20
        Margins.Top = 10
        Align = alLeft
        Caption = #1060#1072#1084#1080#1083#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
        ExplicitHeight = 46
      end
      object DBEdit1: TDBEdit
        AlignWithMargins = True
        Left = 165
        Top = 11
        Width = 121
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        DataField = #1060#1072#1084#1080#1083#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        AlignWithMargins = True
        Left = 165
        Top = 130
        Width = 121
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        DataField = #1060#1072#1084#1080#1083#1080#1103' '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
        ReadOnly = True
        TabOrder = 1
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 21
        Top = 249
        Width = 26
        Height = 106
        Margins.Left = 20
        Margins.Top = 10
        Align = alLeft
        Caption = #1044#1072#1090#1072
        ExplicitLeft = 140
        ExplicitTop = 250
        ExplicitHeight = 13
      end
      object DBDateTimePicker1: TDBDateTimePicker
        AlignWithMargins = True
        Left = 165
        Top = 249
        Width = 129
        Height = 20
        Margins.Left = 10
        Margins.Top = 10
        Date = 42893.000000000000000000
        Time = 42893.000000000000000000
        TabOrder = 2
        DataField = #1044#1072#1090#1072
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 21
        Top = 130
        Width = 109
        Height = 106
        Margins.Left = 20
        Margins.Top = 10
        Align = alLeft
        Caption = #1060#1072#1084#1080#1083#1080#1103' '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
        ExplicitTop = 131
        ExplicitHeight = 20
      end
    end
  end
  object RightPanel: TPanel
    Left = 313
    Top = 29
    Width = 434
    Height = 363
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 344
    ExplicitWidth = 541
  end
end
