object FormEditProduct: TFormEditProduct
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1088#1086#1076#1091#1082#1090#1072
  ClientHeight = 551
  ClientWidth = 694
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
    Top = 526
    Width = 694
    Height = 25
    DataSource = DMl.DataSourceMainView
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 478
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 694
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 103
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
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
    Width = 423
    Height = 497
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 449
    object GridPanel1: TGridPanel
      Left = 1
      Top = 1
      Width = 421
      Height = 495
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
          Control = DBLookupComboBox1
          Row = 4
        end
        item
          Column = 1
          Control = DBEdit1
          Row = 0
        end
        item
          Column = 0
          Control = Label9
          Row = 5
        end
        item
          Column = 1
          Control = DBEdit5
          Row = 5
        end>
      RowCollection = <
        item
          Value = 16.667141661124830000
        end
        item
          Value = 16.666952201798430000
        end
        item
          Value = 16.666762626998770000
        end
        item
          Value = 16.666572049172430000
        end
        item
          Value = 16.666381090480580000
        end
        item
          Value = 16.666190370424970000
        end>
      TabOrder = 0
      ExplicitHeight = 447
      DesignSize = (
        421
        495)
      object Label1: TLabel
        Left = 69
        Top = 35
        Width = 72
        Height = 13
        Anchors = []
        Caption = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072
        ExplicitLeft = 102
        ExplicitTop = 33
      end
      object Label2: TLabel
        Left = 55
        Top = 117
        Width = 100
        Height = 13
        Anchors = []
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
        ExplicitLeft = 93
        ExplicitTop = 110
      end
      object DBEdit2: TDBEdit
        Left = 254
        Top = 113
        Width = 121
        Height = 21
        Anchors = []
        DataField = #1055#1088#1086#1076#1091#1082#1090
        DataSource = DMl.DataSourceMainView
        TabOrder = 1
        ExplicitTop = 101
      end
      object Label3: TLabel
        Left = 71
        Top = 199
        Width = 68
        Height = 13
        Anchors = []
        Caption = #1041#1072#1079#1086#1074#1072#1103' '#1094#1077#1085#1072
        ExplicitLeft = 109
        ExplicitTop = 187
      end
      object DBEdit3: TDBEdit
        Left = 254
        Top = 195
        Width = 121
        Height = 21
        Anchors = []
        DataField = #1041#1072#1079#1086#1074#1072#1103' '#1094#1077#1085#1072
        DataSource = DMl.DataSourceMainView
        TabOrder = 2
        OnKeyPress = DBEdit3KeyPress
        ExplicitTop = 175
      end
      object Label4: TLabel
        Left = 69
        Top = 281
        Width = 72
        Height = 13
        Anchors = []
        Caption = #1058#1077#1082#1091#1097#1072#1103' '#1094#1077#1085#1072
        ExplicitLeft = 107
        ExplicitTop = 264
      end
      object DBEdit4: TDBEdit
        Left = 254
        Top = 277
        Width = 121
        Height = 21
        Anchors = []
        DataField = #1058#1077#1082#1091#1097#1072#1103' '#1094#1077#1085#1072
        DataSource = DMl.DataSourceMainView
        TabOrder = 3
        OnKeyPress = DBEdit4KeyPress
        ExplicitTop = 249
      end
      object Label5: TLabel
        Left = 78
        Top = 363
        Width = 54
        Height = 13
        Anchors = []
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        ExplicitLeft = 116
        ExplicitTop = 343
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 242
        Top = 359
        Width = 145
        Height = 21
        Anchors = []
        DataField = 'CategoryID'
        DataSource = DMl.DataSourceMainView
        KeyField = 'ID'
        ListField = 'Title'
        ListSource = DataSource1
        TabOrder = 4
        ExplicitTop = 323
      end
      object DBEdit1: TDBEdit
        Left = 254
        Top = 31
        Width = 121
        Height = 21
        Anchors = []
        DataField = #1050#1086#1076
        DataSource = DMl.DataSourceMainView
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
        ExplicitTop = 27
      end
      object Label9: TLabel
        Left = 71
        Top = 446
        Width = 68
        Height = 13
        Anchors = []
        Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        ExplicitLeft = 74
        ExplicitTop = 402
      end
      object DBEdit5: TDBEdit
        Left = 254
        Top = 442
        Width = 121
        Height = 21
        Anchors = []
        DataField = 'Image'
        DataSource = DMl.DataSourceMainView
        TabOrder = 5
        OnDblClick = DBEdit5DblClick
        ExplicitTop = 398
      end
    end
  end
  object Panel2: TPanel
    Left = 423
    Top = 29
    Width = 271
    Height = 497
    Align = alRight
    TabOrder = 3
    ExplicitHeight = 449
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
    object Image1: TImage
      Left = 6
      Top = 362
      Width = 203
      Height = 129
      Stretch = True
    end
    object DBRichEdit1: TDBRichEdit
      Left = 6
      Top = 29
      Width = 233
      Height = 89
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DMl.DataSourceMainView
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
      DataSource = DMl.DataSourceMainView
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
      DataSource = DMl.DataSourceMainView
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 2
      Zoom = 100
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 639
    Top = 69
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = DMl.ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT ID, Title'#13#10'FROM Category'
    Parameters = <>
    Left = 640
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 592
    Top = 8
  end
end
