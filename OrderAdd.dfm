object FormOrderAdd: TFormOrderAdd
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 458
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LeftPanel: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 433
    Align = alLeft
    TabOrder = 0
    object GridPanel1: TGridPanel
      Left = 1
      Top = 1
      Width = 319
      Height = 431
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
          Control = DBEditEmp
          Row = 0
        end
        item
          Column = 0
          Control = Label2
          Row = 2
        end
        item
          Column = 1
          Control = DBEditClient
          Row = 2
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
          Control = Label3
          Row = 5
        end
        item
          Column = 1
          Control = DBRichEdit1
          Row = 5
        end
        item
          Column = 0
          Control = Label6
          Row = 1
        end
        item
          Column = 1
          Control = DBEdit2
          Row = 1
        end
        item
          Column = 0
          Control = Label7
          Row = 3
        end
        item
          Column = 1
          Control = DBEdit3
          Row = 3
        end>
      RowCollection = <
        item
          Value = 16.714378568874590000
        end
        item
          Value = 16.695271088517440000
        end
        item
          Value = 16.676184831829230000
        end
        item
          Value = 16.657108026063960000
        end
        item
          Value = 16.638047141620170000
        end
        item
          Value = 16.619010343094610000
        end>
      TabOrder = 0
      DesignSize = (
        319
        431)
      object Label1: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 56
        Height = 58
        Margins.Left = 10
        Margins.Top = 10
        Align = alLeft
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        ExplicitHeight = 13
      end
      object DBEditEmp: TDBEdit
        AlignWithMargins = True
        Left = 169
        Top = 11
        Width = 138
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        DataField = 'EmployeeID'
        DataSource = DMl.DataSourceGetOrder
        TabOrder = 0
        OnDblClick = DBEditEmpDblClick
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 153
        Width = 37
        Height = 58
        Margins.Left = 10
        Margins.Top = 10
        Align = alLeft
        Caption = #1050#1083#1080#1077#1085#1090
        ExplicitHeight = 13
      end
      object DBEditClient: TDBEdit
        AlignWithMargins = True
        Left = 169
        Top = 153
        Width = 138
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        DataField = 'ClientID'
        DataSource = DMl.DataSourceGetOrder
        TabOrder = 1
        OnDblClick = DBEditClientDblClick
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 11
        Top = 295
        Width = 26
        Height = 58
        Margins.Left = 10
        Margins.Top = 10
        Align = alLeft
        Caption = #1044#1072#1090#1072
        ExplicitHeight = 13
      end
      object DBDateTimePicker1: TDBDateTimePicker
        AlignWithMargins = True
        Left = 169
        Top = 295
        Width = 138
        Height = 20
        Margins.Left = 10
        Margins.Top = 10
        Date = 42893.000000000000000000
        Time = 42893.000000000000000000
        TabOrder = 2
        OnChange = DBDateTimePicker1Change
        DataField = #1044#1072#1090#1072
        DataSource = DMl.DataSourceGetOrder
      end
      object Label3: TLabel
        Left = 49
        Top = 386
        Width = 61
        Height = 13
        Anchors = []
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        ExplicitTop = 216
      end
      object DBRichEdit1: TDBRichEdit
        Left = 170
        Top = 368
        Width = 137
        Height = 49
        Anchors = []
        DataField = 'Desc'
        DataSource = DMl.DataSourceGetOrder
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TabOrder = 3
        Zoom = 100
      end
      object Label6: TLabel
        Left = 58
        Top = 101
        Width = 44
        Height = 13
        Anchors = []
        Caption = #1060#1072#1084#1080#1083#1080#1103
        ExplicitLeft = 61
        ExplicitTop = 89
      end
      object DBEdit2: TDBEdit
        Left = 178
        Top = 97
        Width = 121
        Height = 21
        Anchors = []
        DataField = #1060#1072#1084#1080#1083#1080#1103' '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
        DataSource = DMl.DataSourceGetOrder
        ReadOnly = True
        TabOrder = 4
      end
      object Label7: TLabel
        Left = 58
        Top = 243
        Width = 44
        Height = 13
        Anchors = []
        Caption = #1060#1072#1084#1080#1083#1080#1103
        ExplicitLeft = 61
        ExplicitTop = 215
      end
      object DBEdit3: TDBEdit
        Left = 178
        Top = 239
        Width = 121
        Height = 21
        Anchors = []
        DataField = #1060#1072#1084#1080#1083#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
        DataSource = DMl.DataSourceGetOrder
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  object RightPanel: TPanel
    Left = 321
    Top = 0
    Width = 591
    Height = 433
    Align = alClient
    TabOrder = 1
    object TopPanel: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 260
      Align = alClient
      Caption = 'TopPanel'
      TabOrder = 0
    end
    object BotPanel: TPanel
      Left = 1
      Top = 261
      Width = 589
      Height = 171
      Align = alBottom
      TabOrder = 1
      object Label4: TLabel
        Left = 116
        Top = 6
        Width = 49
        Height = 13
        Caption = 'ID '#1047#1072#1082#1072#1079#1072
      end
      object Label8: TLabel
        Left = 329
        Top = 6
        Width = 68
        Height = 13
        Caption = #1057#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072
      end
      object Label9: TLabel
        Left = 424
        Top = 6
        Width = 62
        Height = 13
        Caption = 'TOTALPRICE'
      end
      object ButtonSave: TButton
        Left = 5
        Top = 6
        Width = 105
        Height = 25
        Caption = 'C'#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 0
        OnClick = ButtonSaveClick
      end
      object ButtonAddOrder: TButton
        Left = 5
        Top = 37
        Width = 105
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
        TabOrder = 1
        OnClick = ButtonAddOrderClick
      end
      object ButtonAddOrderItem: TButton
        Left = 133
        Top = 33
        Width = 180
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1086#1076#1091#1082#1090' '#1082' '#1079#1072#1082#1072#1079#1091
        TabOrder = 2
        OnClick = ButtonAddOrderItemClick
      end
      object DBEdit1: TDBEdit
        Left = 188
        Top = 6
        Width = 121
        Height = 21
        DataField = 'ID'
        DataSource = DMl.DataSourceGetOrder
        TabOrder = 3
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 589
      Height = 260
      Align = alClient
      DataSource = DataSource2
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 320
      Top = 294
      Width = 89
      Height = 25
      Caption = #1057#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 415
      Top = 294
      Width = 100
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1095#1077#1082#1072
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 433
    Width = 912
    Height = 25
    DataSource = DMl.DataSourceGetOrder
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete]
    Align = alBottom
    TabOrder = 2
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 344
    Top = 328
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = DMl.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT OrderItem.ID, ProductID, OrderID, Quantity, P.Title,P.Cur' +
      'rentPrice, P.ID, (P.CurrentPrice* OrderItem.Quantity) AS Total'#13#10 +
      'FROM OrderItem INNER JOIN Product AS P ON OrderItem.ProductID = ' +
      'P.ID'
    DataSource = DMl.DataSourceGetOrder
    IndexFieldNames = 'OrderID'
    MasterFields = 'ID'
    Parameters = <>
    Left = 392
    Top = 328
  end
  object ADOQuery1: TADOQuery
    Connection = DMl.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select OrderID, sum(Total)'
      'from ('
      'SELECT '
      '    OrderItem.ID'
      '    , ProductID'
      '    , OrderID'
      '    , Quantity'
      '    , P.Title'
      '    ,P.CurrentPrice'
      '    , P.ID'
      '    , (P.CurrentPrice* OrderItem.Quantity) AS Total'
      'FROM OrderItem '
      'INNER JOIN Product AS P ON OrderItem.ProductID = P.ID'
      ') t ')
    Left = 440
    Top = 328
  end
  object ADODataSetReceipt: TADODataSet
    Active = True
    Connection = DMl.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT O.ID, C.SecondName AS ['#1060#1072#1084#1080#1083#1080#1103' '#1082#1083#1080#1077#1085#1090#1072'], C.FirstName AS [' +
      #1048#1084#1103' '#1082#1083#1080#1077#1085#1090#1072'], E.SecondName AS ['#1060#1072#1084#1080#1083#1080#1103' '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072'], E.FirstName ' +
      'AS ['#1048#1084#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072'], O.DateOf AS '#1044#1072#1090#1072', O.ClientID, O.EmployeeID,' +
      ' O.Desc'#13#10'FROM (Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.C' +
      'lientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID;'#13#10
    Parameters = <>
    Left = 329
    Top = 384
  end
end
