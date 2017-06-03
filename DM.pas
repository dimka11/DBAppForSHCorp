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
    procedure DataModuleCreate(Sender: TObject);
    procedure DoConDB;
    procedure ActivateData;
    procedure DataSourceGuestViewDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMl: TDMl;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Guest;

{$R *.dfm}

procedure TDMl.ActivateData;
begin
  ADOStoredProcLogin.Active := True;
  ADOStoredProcGuestView.Active := True;
end;

procedure TDMl.DataModuleCreate(Sender: TObject);
begin
  // Заглушка тута
end;

procedure TDMl.DataSourceGuestViewDataChange(Sender: TObject;
  Field: TField);
begin
  GuestForm.LoadImage;
  GuestForm.LabelLoadText;
  GuestForm.StatusBarUpdate;
end;

procedure TDMl.DoConDB;
const
  ConnStr = 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Persist Security Info=True;Jet OLEDB:Database Password=';
begin
  // Подключение К БД
    if ADOConnection1.Connected = False then
    begin
      ADOConnection1.ConnectionString := Format(ConnStr,[ ExtractFilePath(ParamStr(0))+'\DB\Database.accdb' ]);
      ADOConnection1.Open;
    end;

end;

end.
