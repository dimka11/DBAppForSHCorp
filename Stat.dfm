object StatForm: TStatForm
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '
  ClientHeight = 532
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 784
    Top = 368
    Width = 25
    Height = 9
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 931
    Height = 532
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 905
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      ExplicitWidth = 897
      object TopPanel: TPanel
        Left = 0
        Top = 0
        Width = 282
        Height = 415
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 512
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 280
          Height = 413
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TopRightPanel: TPanel
        Left = 282
        Top = 0
        Width = 641
        Height = 415
        Align = alRight
        TabOrder = 1
        object DBChart1: TDBChart
          Left = 1
          Top = 1
          Width = 639
          Height = 413
          Title.Text.Strings = (
            'TDBChart')
          Legend.Visible = False
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 5
          ExplicitWidth = 666
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object BotPanel: TPanel
        Left = 0
        Top = 415
        Width = 923
        Height = 89
        Align = alBottom
        TabOrder = 2
        ExplicitWidth = 897
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label2: TLabel
          Left = 232
          Top = 6
          Width = 13
          Height = 13
          Caption = #1055#1086
        end
        object Label3: TLabel
          Left = 29
          Top = 40
          Width = 117
          Height = 16
          Caption = #1042#1099#1088#1091#1095#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelReceipts: TLabel
          Left = 167
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 282
          Top = 40
          Width = 120
          Height = 16
          Caption = #1055#1088#1080#1073#1099#1083#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelProfit: TLabel
          Left = 408
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DateTimePicker1: TDateTimePicker
          Left = 29
          Top = 5
          Width = 186
          Height = 21
          Date = 42872.933399942130000000
          Time = 42872.933399942130000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 264
          Top = 6
          Width = 186
          Height = 21
          Date = 42909.934146342600000000
          Time = 42909.934146342600000000
          TabOrder = 1
        end
        object Button1: TButton
          Left = 464
          Top = 5
          Width = 75
          Height = 25
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          TabOrder = 2
          OnClick = Button1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1087#1086' '#1076#1085#1103#1084
      ImageIndex = 1
      ExplicitWidth = 897
      object Panel1: TPanel
        Left = 72
        Top = 0
        Width = 851
        Height = 415
        Align = alRight
        TabOrder = 0
        object DBChart2: TDBChart
          Left = 1
          Top = 1
          Width = 849
          Height = 413
          Title.Text.Strings = (
            'TDBChart')
          Legend.Visible = False
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 383
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series2: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 72
        Height = 415
        Align = alClient
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 111
          Height = 413
          Align = alClient
          DataSource = DataSource2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 415
        Width = 923
        Height = 89
        Align = alBottom
        TabOrder = 2
        ExplicitWidth = 897
        object Label5: TLabel
          Left = 16
          Top = 6
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label6: TLabel
          Left = 232
          Top = 6
          Width = 13
          Height = 13
          Caption = #1055#1086
        end
        object Label7: TLabel
          Left = 29
          Top = 40
          Width = 117
          Height = 16
          Caption = #1042#1099#1088#1091#1095#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 167
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 282
          Top = 40
          Width = 120
          Height = 16
          Caption = #1055#1088#1080#1073#1099#1083#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 416
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DateTimePicker3: TDateTimePicker
          Left = 29
          Top = 5
          Width = 186
          Height = 21
          Date = 42872.933399942130000000
          Time = 42872.933399942130000000
          TabOrder = 0
        end
        object DateTimePicker4: TDateTimePicker
          Left = 264
          Top = 6
          Width = 186
          Height = 21
          Date = 42909.934146342600000000
          Time = 42909.934146342600000000
          TabOrder = 1
        end
        object Button2: TButton
          Left = 464
          Top = 5
          Width = 75
          Height = 25
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button5: TButton
          Left = 545
          Top = 6
          Width = 75
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1100
          Enabled = False
          TabOrder = 3
          OnClick = Button5Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
      ImageIndex = 2
      ExplicitWidth = 897
      object Panel4: TPanel
        Left = 0
        Top = 415
        Width = 923
        Height = 89
        Align = alBottom
        TabOrder = 0
        ExplicitWidth = 897
        object Label11: TLabel
          Left = 16
          Top = 6
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label12: TLabel
          Left = 232
          Top = 6
          Width = 13
          Height = 13
          Caption = #1055#1086
        end
        object Label13: TLabel
          Left = 29
          Top = 40
          Width = 117
          Height = 16
          Caption = #1042#1099#1088#1091#1095#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 167
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 282
          Top = 40
          Width = 120
          Height = 16
          Caption = #1055#1088#1080#1073#1099#1083#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 408
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DateTimePicker5: TDateTimePicker
          Left = 29
          Top = 5
          Width = 186
          Height = 21
          Date = 42872.933399942130000000
          Time = 42872.933399942130000000
          TabOrder = 0
        end
        object DateTimePicker6: TDateTimePicker
          Left = 272
          Top = 6
          Width = 186
          Height = 21
          Date = 42909.934146342600000000
          Time = 42909.934146342600000000
          TabOrder = 1
        end
        object Button3: TButton
          Left = 464
          Top = 5
          Width = 75
          Height = 25
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button6: TButton
          Left = 545
          Top = 6
          Width = 75
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1100
          Enabled = False
          TabOrder = 3
          OnClick = Button5Click
        end
      end
      object Panel5: TPanel
        Left = 48
        Top = 0
        Width = 875
        Height = 415
        Align = alRight
        TabOrder = 1
        object DBChart3: TDBChart
          Left = 1
          Top = 1
          Width = 873
          Height = 413
          Title.Text.Strings = (
            'TDBChart')
          BottomAxis.LabelsAngle = 90
          Legend.Visible = False
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 439
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series3: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 48
        Height = 415
        Align = alClient
        TabOrder = 2
        ExplicitWidth = 456
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 46
          Height = 413
          Align = alClient
          DataSource = DataSource3
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1086' '#1087#1088#1086#1076#1091#1082#1090#1072#1084
      ImageIndex = 3
      ExplicitWidth = 897
      object Panel7: TPanel
        Left = 0
        Top = 415
        Width = 923
        Height = 89
        Align = alBottom
        TabOrder = 0
        ExplicitWidth = 897
        object Label17: TLabel
          Left = 16
          Top = 6
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label18: TLabel
          Left = 232
          Top = 6
          Width = 13
          Height = 13
          Caption = #1055#1086
        end
        object Label19: TLabel
          Left = 29
          Top = 40
          Width = 117
          Height = 16
          Caption = #1042#1099#1088#1091#1095#1082#1072' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 167
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 282
          Top = 40
          Width = 120
          Height = 16
          Caption = #1055#1088#1080#1073#1099#1083#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 408
          Top = 40
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DateTimePicker7: TDateTimePicker
          Left = 29
          Top = 5
          Width = 186
          Height = 21
          Date = 42872.933399942130000000
          Time = 42872.933399942130000000
          TabOrder = 0
        end
        object DateTimePicker8: TDateTimePicker
          Left = 264
          Top = 6
          Width = 186
          Height = 21
          Date = 42909.934146342600000000
          Time = 42909.934146342600000000
          TabOrder = 1
        end
        object Button4: TButton
          Left = 464
          Top = 5
          Width = 75
          Height = 25
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          TabOrder = 2
          OnClick = Button4Click
        end
        object Button7: TButton
          Left = 545
          Top = 6
          Width = 75
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1100
          Enabled = False
          TabOrder = 3
          OnClick = Button5Click
        end
      end
      object Panel8: TPanel
        Left = 29
        Top = 0
        Width = 894
        Height = 415
        Align = alRight
        TabOrder = 1
        object DBChart4: TDBChart
          Left = 1
          Top = 1
          Width = 892
          Height = 413
          Title.Text.Strings = (
            'TDBChart')
          BottomAxis.LabelsAngle = 90
          Legend.Visible = False
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 663
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series4: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 29
        Height = 415
        Align = alClient
        TabOrder = 2
        ExplicitWidth = 232
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 27
          Height = 413
          Align = alClient
          DataSource = DataSource4
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMl.ADOConnection1
    Parameters = <>
    Left = 520
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 608
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Connection = DMl.ADOConnection1
    Parameters = <>
    Left = 616
    Top = 24
  end
  object ADOQuery3: TADOQuery
    Connection = DMl.ADOConnection1
    Parameters = <>
    Left = 660
    Top = 348
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery3
    Left = 724
    Top = 348
  end
  object ADOQuery4: TADOQuery
    Connection = DMl.ADOConnection1
    Parameters = <>
    Left = 792
    Top = 352
  end
  object ADOQuery5: TADOQuery
    Connection = DMl.ADOConnection1
    Parameters = <>
    Left = 848
    Top = 344
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 684
    Top = 88
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery5
    Left = 784
    Top = 88
  end
end
