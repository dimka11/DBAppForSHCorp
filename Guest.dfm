object GuestForm: TGuestForm
  Left = 244
  Top = 165
  Caption = #1055#1088#1086#1076#1091#1082#1094#1080#1103' '#1082#1086#1084#1087#1072#1085#1080#1080#1080
  ClientHeight = 339
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 225
    Width = 969
    Height = 95
    Align = alClient
    DataSource = DMl.DataSourceGuestView
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 320
    Width = 969
    Height = 19
    Panels = <
      item
        Width = 220
      end
      item
        Width = 200
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 225
    Align = alTop
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 385
      Top = 1
      Height = 223
      ExplicitHeight = 199
    end
    object Splitter2: TSplitter
      Left = 664
      Top = 1
      Height = 223
      Align = alRight
      ExplicitLeft = 480
      ExplicitTop = 48
      ExplicitHeight = 100
    end
    object Panel2: TPanel
      Left = 388
      Top = 1
      Width = 276
      Height = 223
      Align = alClient
      Padding.Left = 5
      Padding.Top = 10
      TabOrder = 0
      object LabelSubCat: TLabel
        Left = 14
        Top = 124
        Width = 251
        Height = 16
        AutoSize = False
        Caption = 'LabelSubCat'
        EllipsisPosition = epPathEllipsis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelSubHead: TLabel
        Left = 14
        Top = 102
        Width = 251
        Height = 16
        AutoSize = False
        Caption = 'LabelCut'
        EllipsisPosition = epPathEllipsis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelSubHeadline: TLabel
        Left = 6
        Top = 11
        Width = 269
        Height = 78
        Margins.Top = 10
        Align = alTop
        AutoSize = False
        Caption = 'LabelSubHeadline'
        EllipsisPosition = epPathEllipsis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
        WordWrap = True
        ExplicitTop = 18
        ExplicitWidth = 264
      end
      object LabelURL: TLabel
        Left = 14
        Top = 146
        Width = 243
        Height = 13
        AutoSize = False
        Caption = 'LabelURL'
        EllipsisPosition = epPathEllipsis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744448
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = LabelURLClick
      end
      object Label1: TLabel
        Left = 281
        Top = 192
        Width = 30
        Height = 13
        Caption = #1055#1086#1080#1089#1082
      end
      object EditFilter: TEdit
        Left = 6
        Top = 197
        Width = 121
        Height = 21
        Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = #1053#1072#1079#1074#1072#1085#1080#1077
        OnChange = EditFilterChange
      end
      object EditFilterCat: TEdit
        Left = 149
        Top = 197
        Width = 121
        Height = 21
        Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        OnChange = EditFilterCatChange
      end
    end
    object Panel3: TPanel
      Left = 667
      Top = 1
      Width = 301
      Height = 223
      Align = alRight
      Caption = 'Panel3'
      TabOrder = 1
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 299
        Height = 221
        Align = alClient
        Stretch = True
        OnClick = Image1Click
        ExplicitLeft = 40
        ExplicitWidth = 260
        ExplicitHeight = 197
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 384
      Height = 223
      Align = alLeft
      Caption = 'Panel4'
      TabOrder = 2
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 382
        Height = 221
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          object DBRichEdit1: TDBRichEdit
            Left = 0
            Top = 0
            Width = 374
            Height = 193
            Align = alClient
            DataField = #1055#1086#1083#1085#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
            DataSource = DMl.DataSourceGuestView
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            TabOrder = 0
            Zoom = 100
          end
          object Memo1: TMemo
            Left = 256
            Top = 118
            Width = 41
            Height = 37
            Lines.Strings = (
              'Memo'
              '1')
            TabOrder = 1
            Visible = False
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1057#1086#1089#1090#1072#1074
          ImageIndex = 1
          object DBRichEdit2: TDBRichEdit
            Left = 0
            Top = 0
            Width = 374
            Height = 193
            Align = alClient
            DataField = #1057#1086#1089#1090#1072#1074
            DataSource = DMl.DataSourceGuestView
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            TabOrder = 0
            Zoom = 100
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1055#1088#1080#1084#1077#1085#1077#1085#1080#1077
          ImageIndex = 2
          object DBRichEdit3: TDBRichEdit
            Left = 0
            Top = 0
            Width = 374
            Height = 193
            Align = alClient
            DataField = #1055#1088#1080#1084#1077#1085#1080#1077
            DataSource = DMl.DataSourceGuestView
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            TabOrder = 0
            Zoom = 100
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 96
    object ExitMenuItem: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = MenuItemClick
      object ExitAppMenuItem: TMenuItem
        Tag = 1
        Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        ShortCut = 16471
        OnClick = MenuItemClick
      end
      object ChangeUserMenuITem: TMenuItem
        Tag = 2
        Caption = #1057#1084#1077#1085#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        ShortCut = 24663
        OnClick = MenuItemClick
      end
    end
    object OrderByMenuItem: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      OnClick = MenuItemClick
      object OrderByCatMenuItem: TMenuItem
        Tag = 4
        Caption = #1055#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
        ShortCut = 16462
        OnClick = MenuItemClick
      end
      object OrderByNameMenuItem: TMenuItem
        Tag = 5
        Caption = #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
        ShortCut = 16461
        OnClick = MenuItemClick
      end
      object OrderByPriceMenuItem: TMenuItem
        Tag = 6
        Caption = #1055#1086' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
        ShortCut = 16460
        OnClick = MenuItemClick
      end
      object N1: TMenuItem
        Tag = 11
        Caption = #1055#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1080'('#1087#1086' '#1091#1073#1099#1074#1072#1085#1080#1102')'
        OnClick = MenuItemClick
      end
      object N2: TMenuItem
        Tag = 12
        Caption = #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102'('#1087#1086' '#1091#1073#1099#1074#1072#1085#1080#1102')'
        OnClick = MenuItemClick
      end
      object N3: TMenuItem
        Tag = 13
        Caption = #1055#1086' '#1089#1090#1086#1080#1084#1086#1089#1090#1080'('#1087#1086' '#1091#1073#1099#1074#1072#1085#1080#1102')'
        OnClick = MenuItemClick
      end
    end
    object ExportMenuItem: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
      OnClick = MenuItemClick
      object ExportPriceMenuItem: TMenuItem
        Tag = 7
        Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' (Word)'
        ShortCut = 16453
        OnClick = MenuItemClick
      end
      object Bookmark: TMenuItem
        Tag = 8
        Caption = #1047#1072#1082#1083#1072#1076#1082#1072
        OnClick = MenuItemClick
      end
      object CopyToClipboard: TMenuItem
        Tag = 9
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1042#1089#1077' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        OnClick = MenuItemClick
      end
      object CopySelectedToClipBoard: TMenuItem
        Tag = 10
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1077' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        OnClick = MenuItemClick
      end
    end
    object AboutMenuItem: TMenuItem
      Tag = 3
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      ShortCut = 16457
      OnClick = MenuItemClick
    end
  end
  object ADOQueryExportWord: TADOQuery
    Connection = DMl.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Title AS '#1053#1072#1079#1074#1072#1085#1080#1077', CurrentPrice & '#39' '#1088#1091#1073'.'#39' AS '#1062#1077#1085#1072', TRIM(S' +
        'ubCategory) AS '#1050#1072#1090#1077#1075#1086#1088#1080#1103
      'FROM Product')
    Left = 160
    Top = 104
  end
end
