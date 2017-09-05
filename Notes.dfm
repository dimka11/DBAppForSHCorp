object FormNotes: TFormNotes
  Left = 0
  Top = 0
  Caption = #1047#1072#1084#1077#1090#1082#1080
  ClientHeight = 289
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 289
    Align = alClient
    Caption = 'PanelLeft'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 396
      Height = 287
      Align = alClient
      DataSource = DMl.DataSourceNotes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object PanelRigth: TPanel
    Left = 398
    Top = 0
    Width = 303
    Height = 289
    Align = alRight
    Caption = 'PanelRigth'
    TabOrder = 1
    object BitBtnDelete: TBitBtn
      Left = 205
      Top = 232
      Width = 92
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 0
      OnClick = BitBtnDeleteClick
    end
    object BitBtnAdd: TBitBtn
      Left = 102
      Top = 232
      Width = 97
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = BitBtnAddClick
    end
    object BitBtnSave: TBitBtn
      Left = 5
      Top = 232
      Width = 91
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = BitBtnSaveClick
    end
    object DBDateTimePickerNote: TDBDateTimePicker
      Left = 48
      Top = 136
      Width = 239
      Height = 21
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
      Date = 42900.694492291670000000
      Time = 42900.694492291670000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      DataField = #1044#1072#1090#1072
      DataSource = DMl.DataSourceNotes
    end
    object DBEditNoteTitle: TDBEdit
      Left = 48
      Top = 14
      Width = 241
      Height = 21
      Hint = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      DataField = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      DataSource = DMl.DataSourceNotes
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 263
      Width = 301
      Height = 25
      DataSource = DMl.DataSourceNotes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 5
    end
    object DBRichEditNoteMainText: TDBRichEdit
      Left = 47
      Top = 41
      Width = 242
      Height = 89
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090
      DataField = 'MainText'
      DataSource = DMl.DataSourceNotes
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Zoom = 100
    end
  end
end
