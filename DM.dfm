object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 406
  Width = 652
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;Data Source=C:\U' +
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
    Left = 80
    Top = 128
  end
  object DataSourceGuestView: TDataSource
    DataSet = ADOStoredProcGuestView
    OnDataChange = DataSourceGuestViewDataChange
    Left = 80
    Top = 176
  end
  object ADOStoredProcLogin: TADOStoredProc
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Login'
    Parameters = <>
    Left = 16
    Top = 56
  end
end
