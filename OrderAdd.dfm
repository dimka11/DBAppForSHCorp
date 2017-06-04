object FormOrderAdd: TFormOrderAdd
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 295
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 295
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
        Control = DBDateTimePicker1
        Row = 4
      end
      item
        Column = 0
        Control = Button1
        Row = 5
      end>
    RowCollection = <
      item
        Value = 16.711765832847180000
      end
      item
        Value = 16.689602907473160000
      end
      item
        Value = 16.676390648934230000
      end
      item
        Value = 16.661068664850430000
      end
      item
        Value = 16.641115771614250000
      end
      item
        Value = 16.620056174280760000
      end>
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      527
      295)
    object Label1: TLabel
      Left = 104
      Top = 18
      Width = 56
      Height = 13
      Anchors = []
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      ExplicitLeft = 107
    end
    object DBEdit1: TDBEdit
      Left = 334
      Top = 14
      Width = 121
      Height = 21
      Anchors = []
      DataField = 'EmployeeID'
      DataSource = DMl.DataSourceAddOrder
      TabOrder = 0
      OnDblClick = DBEdit1DblClick
      ExplicitLeft = 328
      ExplicitTop = 32
    end
    object Label2: TLabel
      Left = 113
      Top = 66
      Width = 37
      Height = 13
      Anchors = []
      Caption = #1050#1083#1080#1077#1085#1090
      ExplicitLeft = 116
    end
    object DBEdit2: TDBEdit
      Left = 334
      Top = 62
      Width = 121
      Height = 21
      Anchors = []
      DataField = 'ClientID'
      DataSource = DMl.DataSourceAddOrder
      TabOrder = 1
      ExplicitLeft = 360
      ExplicitTop = 64
    end
    object Label3: TLabel
      Left = 110
      Top = 114
      Width = 44
      Height = 13
      Anchors = []
      Caption = #1055#1088#1086#1076#1091#1082#1090
      ExplicitLeft = 113
      ExplicitTop = 113
    end
    object DBEdit3: TDBEdit
      Left = 334
      Top = 110
      Width = 121
      Height = 21
      Anchors = []
      DataField = 'ProductName'
      DataSource = DMl.DataSourceAddOrder
      TabOrder = 2
      ExplicitLeft = 360
      ExplicitTop = 120
    end
    object Label4: TLabel
      Left = 102
      Top = 162
      Width = 60
      Height = 13
      Anchors = []
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      ExplicitLeft = 105
    end
    object DBEdit4: TDBEdit
      Left = 334
      Top = 158
      Width = 121
      Height = 21
      Anchors = []
      DataField = 'Quantity'
      DataSource = DMl.DataSourceAddOrder
      TabOrder = 3
      ExplicitLeft = 360
      ExplicitTop = 160
    end
    object Label5: TLabel
      Left = 119
      Top = 210
      Width = 26
      Height = 13
      Anchors = []
      Caption = #1044#1072#1090#1072
      ExplicitLeft = 122
    end
    object DBDateTimePicker1: TDBDateTimePicker
      Left = 317
      Top = 206
      Width = 154
      Height = 21
      Anchors = []
      Date = 42890.000000000000000000
      Time = 42890.000000000000000000
      TabOrder = 4
      DataField = 'DateOf'
      DataSource = DMl.DataSourceAddOrder
      ExplicitLeft = 301
    end
    object Button1: TButton
      Left = 94
      Top = 255
      Width = 75
      Height = 25
      Anchors = []
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 5
      OnClick = Button1Click
      ExplicitLeft = 120
      ExplicitTop = 256
    end
  end
end
