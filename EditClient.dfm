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
      end>
    TabOrder = 1
    ExplicitTop = 23
    DesignSize = (
      527
      242)
    object Label1: TLabel
      Left = 105
      Top = 23
      Width = 53
      Height = 16
      Anchors = []
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 110
      ExplicitTop = 24
    end
    object DBEdit1: TDBEdit
      Left = 334
      Top = 20
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1060#1072#1084#1080#1083#1080#1103
      DataSource = DMl.DataSourceGetClient
      TabOrder = 0
      ExplicitTop = 22
    end
    object Label2: TLabel
      Left = 120
      Top = 82
      Width = 23
      Height = 16
      Anchors = []
      Caption = #1048#1084#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 122
      ExplicitTop = 84
    end
    object DBEdit2: TDBEdit
      Left = 334
      Top = 80
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1048#1084#1103
      DataSource = DMl.DataSourceGetClient
      TabOrder = 1
      ExplicitLeft = 352
    end
    object Label3: TLabel
      Left = 105
      Top = 141
      Width = 53
      Height = 16
      Anchors = []
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 110
      ExplicitTop = 143
    end
    object DBEdit3: TDBEdit
      Left = 334
      Top = 139
      Width = 121
      Height = 21
      Anchors = []
      DataField = #1058#1077#1083#1077#1092#1086#1085
      DataSource = DMl.DataSourceGetClient
      TabOrder = 2
      ExplicitLeft = 352
      ExplicitTop = 144
    end
    object Адрес: TLabel
      Left = 114
      Top = 202
      Width = 35
      Height = 16
      Anchors = []
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 116
      ExplicitTop = 203
    end
    object DBRichEdit1: TDBRichEdit
      Left = 302
      Top = 190
      Width = 185
      Height = 39
      Anchors = []
      DataField = #1040#1076#1088#1077#1089
      DataSource = DMl.DataSourceGetClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 3
      Zoom = 100
      ExplicitTop = 197
    end
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
