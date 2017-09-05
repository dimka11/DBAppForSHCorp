unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDMl = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOStoredProcGuestView: TADOStoredProc;
    DataSourceGuestView: TDataSource;
    ADOStoredProcLogin: TADOStoredProc;
    ADOQueryEvents: TADOQuery;
    DataSourceEvents: TDataSource;
    ADOQuerySchedule: TADOQuery;
    DataSourceSchedule: TDataSource;
    DataSourceGetEmpList: TDataSource;
    ADOQueryStore: TADOQuery;
    DataSourceStore: TDataSource;
    ADOQueryGetClient: TADOQuery;
    DataSourceGetClient: TDataSource;
    DataSourceGetOrder: TDataSource;
    ADOStoredProcGetOrder: TADOStoredProc;
    ADOQueryAddOrder: TADOQuery;
    DataSourceAddOrder: TDataSource;
    ADOQueryViewClientList: TADOQuery;
    ADOQueryViewProductList: TADOQuery;
    DataSourceViewClientList: TDataSource;
    DataSourceViewProductList: TDataSource;
    ADOQueryNotes: TADOQuery;
    DataSourceNotes: TDataSource;
    ADOStoredProcMainView: TADOStoredProc;
    DataSourceMainView: TDataSource;
    ADOStoredProcGetEmpList: TADOStoredProc;
    ADOQueryGetPromo: TADOQuery;
    DataSourceGetPromo: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DoConDB;
    procedure ActivateData;
    procedure DataSourceGuestViewDataChange(Sender: TObject; Field: TField);
    procedure DataSourceStoreDataChange(Sender: TObject; Field: TField);
    procedure DataSourceMainViewDataChange(Sender: TObject; Field: TField);
    procedure DataSourceGetClientDataChange(Sender: TObject; Field: TField);
    procedure DataSourceGetOrderDataChange(Sender: TObject; Field: TField);
    procedure ADOQueryEventsAfterInsert(DataSet: TDataSet);
    procedure ADOStoredProcGetOrderAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMl: TDMl;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Guest, SubMain, Main, Login, EditProduct, OrderAdd, Events;

{$R *.dfm}

procedure TDMl.ActivateData;
begin
  ADOStoredProcLogin.Active := True;
  ADOStoredProcGuestView.Active := True;
  ADOQueryEvents.Active := True;
  ADOQuerySchedule.Active := True;
  ADOStoredProcGetEmpList.Active := True;
  ADOQueryStore.Active := True;
  ADOQueryGetClient.Active := True;
  ADOStoredProcGetOrder.Active := True;
  ADOQueryAddOrder.Active := True;
  ADOQueryViewClientList.Active := True;
  ADOQueryViewProductList.Active := True;
  ADOQueryNotes.Active := True;
  ADOStoredProcMainView.Active := True;
  ADOQueryGetPromo.Active := True;
end;

procedure TDMl.ADOQueryEventsAfterInsert(DataSet: TDataSet);
begin
  FormEvents.DBDateTimePicker1.Date := Now;
end;

procedure TDMl.ADOStoredProcGetOrderAfterInsert(DataSet: TDataSet);
begin
  FormOrderAdd.DBDateTimePicker1.Date := Now;
end;

procedure TDMl.DataModuleCreate(Sender: TObject);
begin
  // Заглушка тута
  DMl.DoConDB;
  DMl.ActivateData;
end;

procedure TDMl.DataSourceGetClientDataChange(Sender: TObject; Field: TField);
begin
if MainForm.Showing then
  MainForm.StatusBarUpdate;
end;

procedure TDMl.DataSourceGetOrderDataChange(Sender: TObject; Field: TField);
begin
if MainForm.Showing then
  MainForm.StatusBarUpdate;
if Assigned(FormOrderAdd) then
  FormOrderAdd.GetTotalPrice;
end;

procedure TDMl.DataSourceGuestViewDataChange(Sender: TObject;
  Field: TField);
begin
  GuestForm.LoadImage;
  GuestForm.LabelLoadText;
  GuestForm.StatusBarUpdate;
end;

procedure TDMl.DataSourceMainViewDataChange(Sender: TObject; Field: TField);
begin
  MainForm.LoadImage;
  MainForm.LabelLoadText;
  MainForm.StatusBarUpdate;
  if Assigned(FormEditProduct) then
    FormEditProduct.LoadImage;
end;

procedure TDMl.DataSourceStoreDataChange(Sender: TObject; Field: TField);
begin
  try
    if Assigned(SubMainForm) then
      SubMainForm.ChangeStorePicture;
  except

  end;
end;

procedure TDMl.DoConDB;
const
  // Access 2007-2016
  ConnStr = 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Persist Security Info=True;Jet OLEDB:Database Password=';
  DataBaseNameNew = 'Database.accdb';
   // Access 2003
  ConnStrOld = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\DB\Database.mdb;Persist Security Info=False';
  DataBaseNameOld = 'Database.mdb';

begin
    if ADOConnection1.Connected = False then
    begin
      //ADOConnection1.ConnectionString := Format(ConnStr,[ ExtractFilePath(ParamStr(0))+'\DB\'+ DataBaseNameNew]);
      ADOConnection1.ConnectionString := ConnStrOld;
      ADOConnection1.Open;
    end;
end;
end.
