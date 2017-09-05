object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1055#1086#1076#1089#1080#1089#1090#1077#1084#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
  ClientHeight = 477
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BotPanel: TPanel
    Left = 0
    Top = 289
    Width = 968
    Height = 169
    Align = alClient
    Caption = 'BotPanel'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 805
      Height = 167
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 801
        Top = 1
        Height = 165
        Align = alRight
        ExplicitLeft = 816
        ExplicitTop = 16
        ExplicitHeight = 100
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 800
        Height = 165
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = #1055#1088#1086#1076#1091#1082#1094#1080#1103
          object DBGridProduct: TDBGrid
            Left = 0
            Top = 0
            Width = 792
            Height = 137
            Align = alClient
            DataSource = DMl.DataSourceMainView
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridProductDrawColumnCell
            OnTitleClick = DBGridProductTitleClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1050#1083#1080#1077#1085#1090#1099
          ImageIndex = 1
          object DBGridClient: TDBGrid
            Left = 0
            Top = 0
            Width = 792
            Height = 137
            Align = alClient
            DataSource = DMl.DataSourceGetClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawDataCell = DBGridClientDrawDataCell
            OnTitleClick = DBGridClientTitleClick
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1047#1072#1082#1072#1079#1099
          ImageIndex = 2
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 792
            Height = 137
            Align = alClient
            DataSource = DMl.DataSourceGetOrder
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = DBGrid3TitleClick
          end
        end
      end
      object DBEdit1: TDBEdit
        Left = 232
        Top = -56
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 806
      Top = 1
      Width = 161
      Height = 167
      Align = alRight
      TabOrder = 1
      object BitBtnAdd: TBitBtn
        Left = 1
        Top = 1
        Width = 159
        Height = 70
        Align = alTop
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = BitBtnAddClick
      end
      object BitBtnEdit: TBitBtn
        Left = 1
        Top = 71
        Width = 159
        Height = 70
        Align = alTop
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = BitBtnEditClick
      end
      object BitBtnDelete: TBitBtn
        Left = 1
        Top = 141
        Width = 159
        Height = 70
        Align = alTop
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
        OnClick = BitBtnDeleteClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 458
    Width = 968
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end>
  end
  object TopPanel: TPanel
    Left = 0
    Top = 29
    Width = 968
    Height = 260
    Align = alTop
    Caption = 'TopPanel'
    TabOrder = 2
    object RightPanel: TPanel
      Left = 704
      Top = 1
      Width = 263
      Height = 258
      Align = alRight
      Caption = 'RightPanel'
      TabOrder = 0
      object Image1: TImage
        Left = 4
        Top = 1
        Width = 258
        Height = 256
        Align = alClient
        Stretch = True
        OnClick = Image1Click
        ExplicitLeft = 16
        ExplicitWidth = 246
        ExplicitHeight = 165
      end
      object Splitter3: TSplitter
        Left = 1
        Top = 1
        Height = 256
        ExplicitLeft = 128
        ExplicitTop = 48
        ExplicitHeight = 100
      end
    end
    object LeftPanel: TPanel
      Left = 1
      Top = 1
      Width = 416
      Height = 258
      Align = alLeft
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 412
        Top = 1
        Height = 170
        Align = alRight
        ExplicitLeft = 104
        ExplicitTop = 48
        ExplicitHeight = 100
      end
      object LeftTopPanel: TPanel
        Left = 1
        Top = 1
        Width = 411
        Height = 170
        Align = alClient
        TabOrder = 0
        object LabelSubHeadLine: TLabel
          Left = 12
          Top = 4
          Width = 393
          Height = 84
          AutoSize = False
          Caption = 'LabelSubHeadLine'
          EllipsisPosition = epPathEllipsis
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          WordWrap = True
        end
        object LabelSubHead: TLabel
          Left = 12
          Top = 94
          Width = 393
          Height = 13
          AutoSize = False
          Caption = 'LabelSubHead'
          EllipsisPosition = epPathEllipsis
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelSubCat: TLabel
          Left = 12
          Top = 121
          Width = 393
          Height = 13
          AutoSize = False
          Caption = 'LabelSubCat'
          EllipsisPosition = epPathEllipsis
        end
        object LabelURL: TLabel
          Left = 12
          Top = 140
          Width = 393
          Height = 13
          AutoSize = False
          Caption = 'LabelURL'
          Color = clActiveCaption
          EllipsisPosition = epPathEllipsis
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = LabelURLClick
        end
      end
      object RightBotPanel: TPanel
        Left = 1
        Top = 171
        Width = 414
        Height = 86
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 4
          Top = 6
          Width = 98
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
        end
        object Label2: TLabel
          Left = 4
          Top = 46
          Width = 101
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        end
        object Label3: TLabel
          Left = 288
          Top = 6
          Width = 92
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1088' '#1092#1072#1084#1080#1083#1080#1080
        end
        object Label4: TLabel
          Left = 288
          Top = 46
          Width = 121
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1079#1072#1082#1072#1079#1072
        end
        object EditFilter: TEdit
          Left = 4
          Top = 22
          Width = 129
          Height = 21
          Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1077
          TabOrder = 0
          TextHint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1077
          OnChange = EditFilterChange
        end
        object EditFilterCat: TEdit
          Left = 4
          Top = 61
          Width = 129
          Height = 21
          Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1103
          TabOrder = 1
          TextHint = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1103
          OnChange = EditFilterCatChange
        end
        object EditClientFilter: TEdit
          Left = 289
          Top = 25
          Width = 121
          Height = 21
          Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
          TabOrder = 2
          TextHint = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
          OnChange = EditClientFilterChange
        end
        object EditOrderFilter: TEdit
          Left = 289
          Top = 60
          Width = 121
          Height = 21
          Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091
          NumbersOnly = True
          TabOrder = 3
          TextHint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091
          OnChange = EditOrderFilterChange
        end
      end
    end
    object MidPanel: TPanel
      Left = 417
      Top = 1
      Width = 287
      Height = 258
      Align = alClient
      Caption = 'MidPanel'
      TabOrder = 2
      object PageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 285
        Height = 256
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          object DBRichEdit1: TDBRichEdit
            Left = 0
            Top = 0
            Width = 277
            Height = 228
            Align = alClient
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
        end
        object TabSheet8: TTabSheet
          Caption = #1057#1086#1089#1090#1072#1074
          ImageIndex = 1
          object DBRichEdit2: TDBRichEdit
            Left = 0
            Top = 0
            Width = 277
            Height = 228
            Align = alClient
            DataField = #1057#1086#1089#1090#1072#1074
            DataSource = DMl.DataSourceMainView
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 0
            Zoom = 100
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1055#1088#1080#1084#1077#1085#1077#1085#1080#1077
          ImageIndex = 2
          object DBRichEdit3: TDBRichEdit
            Left = 0
            Top = 0
            Width = 277
            Height = 228
            Align = alClient
            DataField = #1055#1088#1080#1084#1077#1085#1080#1077
            DataSource = DMl.DataSourceMainView
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 0
            Zoom = 100
          end
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
    ButtonWidth = 67
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 3
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
      Left = 67
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 75
      Top = 0
      Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
    object ToolButton6: TToolButton
      Left = 142
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 150
      Top = 0
      Caption = #1057#1086#1073#1099#1090#1080#1103
      ImageIndex = 2
      OnClick = ToolButton5Click
    end
    object ToolButton8: TToolButton
      Left = 217
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 225
      Top = 0
      Caption = #1058#1077#1089#1090' '#1082#1086#1078#1080
      ImageIndex = 5
      OnClick = ToolButton11Click
    end
    object ToolButton10: TToolButton
      Left = 292
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 300
      Top = 0
      Caption = #1056#1072#1073#1086#1090#1072
      ImageIndex = 4
      OnClick = ToolButton9Click
    end
    object ToolButton4: TToolButton
      Left = 367
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 375
      Top = 0
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      ImageIndex = 3
      OnClick = ToolButton7Click
    end
    object ToolButton12: TToolButton
      Left = 442
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton15: TToolButton
      Left = 450
      Top = 0
      Caption = #1047#1072#1084#1077#1090#1082#1080
      ImageIndex = 7
      OnClick = ToolButton15Click
    end
    object ComboBox1: TComboBox
      Left = 517
      Top = 0
      Width = 105
      Height = 21
      TabOrder = 0
      TextHint = #1057#1084#1077#1085#1080#1090#1100' '#1089#1090#1080#1083#1100
      OnChange = ComboBox1Change
    end
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 160
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      object ExitAppMenuItem: TMenuItem
        Tag = 1
        Caption = #1042#1099#1081#1090#1080
        OnClick = MenuItemClick
      end
      object ChangeUserMenuItem: TMenuItem
        Tag = 2
        Caption = #1057#1084#1077#1085#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        OnClick = MenuItemClick
      end
    end
    object N4: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      Visible = False
      object ExportPriceMenuItem: TMenuItem
        Tag = 3
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072
        OnClick = MenuItemClick
      end
      object ExportClientList: TMenuItem
        Tag = 4
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
        OnClick = MenuItemClick
      end
      object ExportListOrder: TMenuItem
        Tag = 5
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1079#1072#1082#1072#1079#1086#1074
        OnClick = MenuItemClick
      end
      object CopySelectedProductToClipboard: TMenuItem
        Tag = 6
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1086#1076#1091#1082#1090' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        OnClick = MenuItemClick
      end
    end
    object N5: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object OrderByCatMenuItem: TMenuItem
        Tag = 7
        Caption = #1055#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        OnClick = MenuItemClick
      end
      object OrderByNameMenuItem: TMenuItem
        Tag = 8
        Caption = #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
        OnClick = MenuItemClick
      end
      object OrderByPriceMenuItem: TMenuItem
        Tag = 9
        Caption = #1055#1086' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
        OnClick = MenuItemClick
      end
      object OrderByClientNameMenuItem: TMenuItem
        Tag = 10
        Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080' '#1082#1083#1080#1077#1085#1090#1072
        OnClick = MenuItemClick
      end
      object OrderByOrderTotalMenuItem: TMenuItem
        Tag = 11
        Caption = #1055#1086' '#1089#1091#1084#1084#1077' '#1079#1072#1082#1072#1079#1072
        OnClick = MenuItemClick
      end
    end
    object AboutMenuItem: TMenuItem
      Tag = 12
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = MenuItemClick
    end
  end
end
