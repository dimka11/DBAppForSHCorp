object FormEditClient: TFormEditClient
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 296
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
    Top = 271
    Width = 527
    Height = 25
    DataSource = DMl.DataSourceGetClient
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 304
    ExplicitTop = 200
    ExplicitWidth = 240
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 527
    Height = 242
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 527
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 2
    ExplicitLeft = 344
    ExplicitTop = 40
    ExplicitWidth = 150
  end
end
