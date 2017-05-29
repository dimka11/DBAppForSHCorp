object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 431
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BotPanel: TPanel
    Left = 0
    Top = 168
    Width = 968
    Height = 244
    Align = alBottom
    Caption = 'BotPanel'
    TabOrder = 0
    ExplicitTop = 162
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 823
      Height = 242
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 821
        Height = 240
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'TabSheet1'
          ExplicitWidth = 281
          ExplicitHeight = 165
        end
        object TabSheet2: TTabSheet
          Caption = 'TabSheet2'
          ImageIndex = 1
          ExplicitWidth = 281
          ExplicitHeight = 165
        end
        object TabSheet3: TTabSheet
          Caption = 'TabSheet3'
          ImageIndex = 2
          ExplicitWidth = 281
          ExplicitHeight = 165
        end
        object TabSheet4: TTabSheet
          Caption = 'TabSheet4'
          ImageIndex = 3
          ExplicitWidth = 301
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
      Left = 824
      Top = 1
      Width = 143
      Height = 242
      Align = alRight
      Caption = 'Panel2'
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 412
    Width = 968
    Height = 19
    Panels = <>
    ExplicitLeft = 1
    ExplicitTop = 21
    ExplicitWidth = 183
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 169
    Align = alTop
    Caption = 'TopPanel'
    TabOrder = 2
  end
end
