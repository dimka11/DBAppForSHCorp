object FormEditStore: TFormEditStore
  Left = 0
  Top = 0
  Caption = #1052#1072#1075#1072#1079#1080#1085#1099
  ClientHeight = 296
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 29
    Width = 362
    Height = 242
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
      end>
    RowCollection = <
      item
        Value = 33.613792284108630000
      end
      item
        Value = 33.268144355643690000
      end
      item
        Value = 33.118063360247680000
      end>
    TabOrder = 0
    ExplicitTop = 35
    DesignSize = (
      362
      242)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 48
      Height = 67
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      ExplicitHeight = 13
    end
    object DBEdit1: TDBEdit
      Left = 210
      Top = 30
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1053#1072#1079#1074#1072#1085#1080#1077
      DataSource = DMl.DataSourceStore
      TabOrder = 0
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 91
      Width = 31
      Height = 66
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1040#1076#1088#1077#1089
      ExplicitHeight = 13
    end
    object DBEdit2: TDBEdit
      Left = 210
      Top = 110
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1040#1076#1088#1077#1089
      DataSource = DMl.DataSourceStore
      TabOrder = 1
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 170
      Width = 44
      Height = 68
      Margins.Left = 10
      Margins.Top = 10
      Align = alLeft
      Caption = #1058#1077#1083#1077#1092#1086#1085
      ExplicitHeight = 13
    end
    object DBEdit3: TDBEdit
      Left = 210
      Top = 190
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DMl.DataSourceStore
      TabOrder = 2
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 271
    Width = 362
    Height = 25
    DataSource = DMl.DataSourceStore
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 362
    Height = 29
    Anchors = []
    ButtonHeight = 21
    ButtonWidth = 62
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 2
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
end
