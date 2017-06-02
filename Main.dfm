object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 491
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BotPanel: TPanel
    Left = 0
    Top = 230
    Width = 968
    Height = 242
    Align = alClient
    Caption = 'BotPanel'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 805
      Height = 240
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 801
        Top = 1
        Height = 238
        Align = alRight
        ExplicitLeft = 816
        ExplicitTop = 16
        ExplicitHeight = 100
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 800
        Height = 238
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1055#1088#1086#1076#1091#1082#1094#1080#1103
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 1
        end
        object TabSheet3: TTabSheet
          Caption = 'TabSheet3'
          ImageIndex = 2
        end
        object TabSheet4: TTabSheet
          Caption = 'TabSheet4'
          ImageIndex = 3
        end
        object TabSheet5: TTabSheet
          Caption = 'TabSheet5'
          ImageIndex = 4
        end
        object TabSheet6: TTabSheet
          Caption = 'TabSheet6'
          ImageIndex = 5
        end
      end
    end
    object Panel2: TPanel
      Left = 806
      Top = 1
      Width = 161
      Height = 240
      Align = alRight
      Caption = 'Panel2'
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 211
        Width = 159
        Height = 70
        Align = alTop
      end
      object BitBtn1: TBitBtn
        Left = 1
        Top = 1
        Width = 159
        Height = 70
        Align = alTop
        Caption = 'BitBtn1'
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 1
        Top = 71
        Width = 159
        Height = 70
        Align = alTop
        Caption = 'BitBtn2'
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 1
        Top = 141
        Width = 159
        Height = 70
        Align = alTop
        Caption = 'BitBtn3'
        TabOrder = 2
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 472
    Width = 968
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object TopPanel: TPanel
    Left = 0
    Top = 29
    Width = 968
    Height = 201
    Align = alTop
    Caption = 'TopPanel'
    TabOrder = 2
    object RightPanel: TPanel
      Left = 704
      Top = 1
      Width = 263
      Height = 199
      Align = alRight
      Caption = 'RightPanel'
      TabOrder = 0
      object Image1: TImage
        Left = 4
        Top = 1
        Width = 258
        Height = 197
        Align = alClient
        ExplicitLeft = 16
        ExplicitWidth = 246
        ExplicitHeight = 165
      end
      object Splitter3: TSplitter
        Left = 1
        Top = 1
        Height = 197
        ExplicitLeft = 128
        ExplicitTop = 48
        ExplicitHeight = 100
      end
    end
    object LeftPanel: TPanel
      Left = 1
      Top = 1
      Width = 248
      Height = 199
      Align = alLeft
      Caption = 'LeftPanel'
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 244
        Top = 1
        Height = 111
        Align = alRight
        ExplicitLeft = 104
        ExplicitTop = 48
        ExplicitHeight = 100
      end
      object LeftTopPanel: TPanel
        Left = 1
        Top = 1
        Width = 243
        Height = 111
        Align = alClient
        Caption = 'LeftTopPanel'
        TabOrder = 0
      end
      object RightBotPanel: TPanel
        Left = 1
        Top = 112
        Width = 246
        Height = 86
        Align = alBottom
        Caption = 'RightBotPanel'
        TabOrder = 1
        object Edit1: TEdit
          Left = 19
          Top = 6
          Width = 129
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 19
          Top = 48
          Width = 129
          Height = 21
          TabOrder = 1
          Text = 'Edit2'
        end
      end
    end
    object MidPanel: TPanel
      Left = 249
      Top = 1
      Width = 455
      Height = 199
      Align = alClient
      Caption = 'MidPanel'
      TabOrder = 2
      object PageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 453
        Height = 197
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'TabSheet7'
        end
        object TabSheet8: TTabSheet
          Caption = 'TabSheet8'
          ImageIndex = 1
        end
        object TabSheet9: TTabSheet
          Caption = 'TabSheet9'
          ImageIndex = 2
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 968
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 101
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 3
    ExplicitLeft = 1
    ExplicitTop = -4
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Margins.Left = 15
      Margins.Right = 15
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 101
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 109
      Top = 0
      Caption = '0'
      ImageIndex = 1
    end
    object ToolButton4: TToolButton
      Left = 210
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 218
      Top = 0
      Caption = '0'
      ImageIndex = 2
    end
    object ToolButton6: TToolButton
      Left = 319
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 327
      Top = 0
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      ImageIndex = 3
    end
    object ToolButton9: TToolButton
      Left = 428
      Top = 0
      Caption = '0'
      ImageIndex = 4
    end
    object ToolButton8: TToolButton
      Left = 529
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 537
      Top = 0
      Caption = #1058#1077#1089#1090' '#1082#1086#1078#1080
      ImageIndex = 5
      OnClick = ToolButton11Click
    end
    object ToolButton10: TToolButton
      Left = 638
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton13: TToolButton
      Left = 646
      Top = 0
      Caption = #1057#1093#1077#1084#1072' '#1087#1088#1080#1077#1084#1072' '#1041#1040#1044
      ImageIndex = 6
      OnClick = ToolButton13Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 160
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      object N2: TMenuItem
        Caption = #1042#1099#1081#1090#1080
      end
      object N3: TMenuItem
        Caption = #1057#1084#1077#1085#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      end
    end
    object N4: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
    end
    object N5: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
    end
    object N6: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
end
