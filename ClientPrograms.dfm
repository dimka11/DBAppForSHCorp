object ClientProgramsForm: TClientProgramsForm
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 385
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object BotPanel: TPanel
    Left = 0
    Top = 41
    Width = 755
    Height = 325
    Align = alClient
    Caption = 'BotPanel'
    TabOrder = 1
    object TabControl1: TTabControl
      Left = 1
      Top = 1
      Width = 753
      Height = 323
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
      TabIndex = 0
      OnChange = TabControl1Change
      object StringGrid1: TStringGrid
        Left = 4
        Top = 24
        Width = 745
        Height = 295
        Align = alClient
        Color = clBtnShadow
        ColCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 366
    Width = 755
    Height = 19
    Panels = <>
  end
end
