object DMl: TDMl
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 648
  Width = 965
  object ADOConnection1: TADOConnection
    CommandTimeout = 3
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\WO' +
      'RK\'#1042#1050#1056'\App\Win32\Debug\DB\Database.mdb;Mode=Share Deny None;Pers' +
      'ist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:R' +
      'egistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine ' +
      'Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partia' +
      'l Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New ' +
      'Database Password="";Jet OLEDB:Create System Database=False;Jet ' +
      'OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Comp' +
      'act=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLE' +
      'DB:SFP=False;'
    ConnectionTimeout = 3
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 8
  end
  object ADOStoredProcGuestView: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    ProcedureName = 'ViewProductList'
    Parameters = <>
    Left = 64
    Top = 128
  end
  object DataSourceGuestView: TDataSource
    DataSet = ADOStoredProcGuestView
    OnDataChange = DataSourceGuestViewDataChange
    Left = 80
    Top = 176
  end
  object ADOStoredProcLogin: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Login'
    Parameters = <>
    Left = 24
    Top = 56
  end
  object ADOQueryEvents: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOQueryEventsAfterInsert
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Event')
    Left = 16
    Top = 248
  end
  object DataSourceEvents: TDataSource
    DataSet = ADOQueryEvents
    Left = 48
    Top = 312
  end
  object ADOQuerySchedule: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, Mon AS '#1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082', Tue AS '#1042#1090#1086#1088#1085#1080#1082', Wed AS '#1057#1088#1077#1076#1072', Thu' +
        ' AS '#1063#1077#1090#1074#1077#1088#1075', Fri AS '#1055#1103#1090#1085#1080#1082#1072', Sat AS '#1057#1091#1073#1073#1086#1090#1072', Sun AS '#1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      'FROM Schedule')
    Left = 112
    Top = 256
  end
  object DataSourceSchedule: TDataSource
    DataSet = ADOQuerySchedule
    Left = 120
    Top = 360
  end
  object DataSourceGetEmpList: TDataSource
    DataSet = ADOStoredProcGetEmpList
    Left = 240
    Top = 312
  end
  object ADOQueryStore: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, Title AS '#1053#1072#1079#1074#1072#1085#1080#1077', Address AS '#1040#1076#1088#1077#1089', Phone AS '#1058#1077#1083#1077#1092#1086#1085 +
        ', Image'
      'FROM Store')
    Left = 344
    Top = 320
  end
  object DataSourceStore: TDataSource
    DataSet = ADOQueryStore
    OnDataChange = DataSourceStoreDataChange
    Left = 344
    Top = 240
  end
  object ADOQueryGetClient: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, SecondName AS '#1060#1072#1084#1080#1083#1080#1103', FirstName AS '#1048#1084#1103', MiddleName A' +
        'S '#1054#1090#1095#1077#1089#1090#1074#1086', Phone AS '#1058#1077#1083#1077#1092#1086#1085', Address AS '#1040#1076#1088#1077#1089', BirthDate AS ['#1044#1077 +
        #1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103'], EmployeeID'
      'FROM Client')
    Left = 448
    Top = 264
  end
  object DataSourceGetClient: TDataSource
    DataSet = ADOQueryGetClient
    OnDataChange = DataSourceGetClientDataChange
    Left = 464
    Top = 328
  end
  object DataSourceGetOrder: TDataSource
    DataSet = ADOStoredProcGetOrder
    OnDataChange = DataSourceGetOrderDataChange
    Left = 584
    Top = 320
  end
  object ADOStoredProcGetOrder: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    AfterInsert = ADOStoredProcGetOrderAfterInsert
    ProcedureName = 'OrdersView'
    Parameters = <>
    Left = 584
    Top = 264
  end
  object ADOQueryAddOrder: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, ClientID, EmployeeID, Quantity, ProductName, DateOf'
      'FROM [Order];')
    Left = 696
    Top = 264
  end
  object DataSourceAddOrder: TDataSource
    DataSet = ADOQueryAddOrder
    Left = 696
    Top = 320
  end
  object ADOQueryViewClientList: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, SecondName AS '#1060#1072#1084#1080#1083#1080#1103', FirstName AS '#1048#1084#1103
      'FROM Client')
    Left = 248
    Top = 416
  end
  object ADOQueryViewProductList: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, Title AS '#1055#1088#1086#1076#1091#1082#1090', CurrentPrice AS '#1062#1077#1085#1072
      'FROM Product')
    Left = 552
    Top = 416
  end
  object DataSourceViewClientList: TDataSource
    DataSet = ADOQueryViewClientList
    Left = 240
    Top = 472
  end
  object DataSourceViewProductList: TDataSource
    DataSet = ADOQueryViewProductList
    Left = 560
    Top = 480
  end
  object ADOQueryNotes: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, Title AS '#1047#1072#1075#1086#1083#1086#1074#1086#1082', MainText, DateTime AS '#1044#1072#1090#1072
      'FROM [Note];')
    Left = 336
    Top = 16
  end
  object DataSourceNotes: TDataSource
    DataSet = ADOQueryNotes
    Left = 336
    Top = 80
  end
  object ADOStoredProcMainView: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'ViewProductListMain'
    Parameters = <>
    Left = 616
    Top = 40
  end
  object DataSourceMainView: TDataSource
    DataSet = ADOStoredProcMainView
    OnDataChange = DataSourceMainViewDataChange
    Left = 616
    Top = 96
  end
  object ADOStoredProcGetEmpList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'GetEmpList'
    Parameters = <>
    Left = 232
    Top = 248
  end
  object ADOQueryGetPromo: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, Title AS '#1053#1072#1079#1074#1072#1085#1080#1077', Price AS '#1057#1090#1086#1080#1084#1086#1089#1090#1100', Desc AS '#1054#1087#1080#1089#1072#1085 +
        #1080#1077', EndDate AS ['#1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103']'
      'FROM Promotion')
    Left = 784
    Top = 264
  end
  object DataSourceGetPromo: TDataSource
    DataSet = ADOQueryGetPromo
    Left = 792
    Top = 328
  end
end
