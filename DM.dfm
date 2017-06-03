object DMl: TDMl
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 406
  Width = 863
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=F:\U' +
      'sers\Dima\Downloads\'#1042#1050#1056'\App\Win32\Release\DB\Database.accdb;Mode' +
      '=Share Deny None;Persist Security Info=False;Jet OLEDB:System da' +
      'tabase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password' +
      '="";Jet OLEDB:Engine Type=6;Jet OLEDB:Database Locking Mode=1;Je' +
      't OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transact' +
      'ions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Syste' +
      'm Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39 +
      't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica' +
      ' Repair=False;Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data' +
      '=False;Jet OLEDB:Bypass UserInfo Validation=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 24
    Top = 8
  end
  object ADOStoredProcGuestView: TADOStoredProc
    Active = True
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
    Left = 16
    Top = 56
  end
  object ADOQueryEvents: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Event')
    Left = 16
    Top = 248
  end
  object DataSourceEvents: TDataSource
    DataSet = ADOQueryEvents
    Left = 24
    Top = 312
  end
  object ADOQuerySchedule: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, Mon AS '#1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082', Tue AS '#1042#1090#1086#1088#1085#1080#1082', Wed AS '#1057#1088#1077#1076#1072', Thu' +
        ' AS '#1063#1077#1090#1074#1077#1088#1075', Fri AS '#1055#1103#1090#1085#1080#1082#1072', Sat AS '#1057#1091#1073#1073#1086#1090#1072', Sun AS '#1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      'FROM Schedule')
    Left = 112
    Top = 280
  end
  object DataSourceSchedule: TDataSource
    DataSet = ADOQuerySchedule
    Left = 120
    Top = 320
  end
  object DataSourceEmp: TDataSource
    DataSet = ADOStoredProcGetEmp
    Left = 216
    Top = 320
  end
  object ADOQueryStore: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, Title AS '#1053#1072#1079#1074#1072#1085#1080#1077', Address AS '#1040#1076#1088#1077#1089', Phone AS '#1058#1077#1083#1077#1092#1086#1085 +
        ', Image'
      'FROM Store')
    Left = 312
    Top = 304
  end
  object DataSourceStore: TDataSource
    DataSet = ADOQueryStore
    OnDataChange = DataSourceStoreDataChange
    Left = 320
    Top = 248
  end
  object ADOStoredProcGetEmp: TADOStoredProc
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'GetEmployee'
    Parameters = <>
    Left = 208
    Top = 264
  end
end
