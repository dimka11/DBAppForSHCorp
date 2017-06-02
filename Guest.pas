unit Guest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.Mask, ShellApi;

type
  TGuestForm = class(TForm)
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Panel1: TPanel;
    EditFilter: TEdit;
    MainMenu1: TMainMenu;
    ExitMenuItem: TMenuItem;
    ExitAppMenuItem: TMenuItem;
    ChangeUserMenuITem: TMenuItem;
    OrderByMenuItem: TMenuItem;
    OrderByCatMenuItem: TMenuItem;
    OrderByNameMenuItem: TMenuItem;
    OrderByPriceMenuItem: TMenuItem;
    ExportMenuItem: TMenuItem;
    ExportPriceMenuItem: TMenuItem;
    AboutMenuItem: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
    EditFilterCat: TEdit;
    LabelURL: TLabel;
    LabelSubHeadline: TLabel;
    LabelSubHead: TLabel;
    LabelSubCat: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure FormShow(Sender: TObject);
    procedure SetGridView; // ��������� �����
    procedure LabelLoadText;   // �������� ������ � ������
    procedure EditFilterChange(Sender: TObject);
    procedure LoadImage;  // �������� �����������
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EditFilterCatChange(Sender: TObject);
    procedure MenuItemClick(Sender: TObject);
    procedure LabelURLClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  THandleMenuFunc = class(TForm) // ������� ����
  private
    procedure ExitFromApp; // �����
    procedure UserChange;  // ����� ������������
    procedure SortByCat;  // ����������
    procedure SortByName;
    procedure SortByPrice;
    procedure ExportPrice; // ������� �����
    procedure ShowAbout;  // � ���������
  end;

var
  GuestForm: TGuestForm;
  HandleMenuFunc: THandleMenuFunc;


implementation

{$R *.dfm}

uses Main, DM, About, Login;


procedure TGuestForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);;
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;
procedure TGuestForm.DBGrid1CellClick(Column: TColumn);
begin
  LoadImage;
end;

procedure TGuestForm.EditFilterCatChange(Sender: TObject);
begin
  DMl.ADOStoredProcGuestView.Filter := '[���������]>'''+EditFilterCat.Text+'''';
end;

procedure TGuestForm.EditFilterChange(Sender: TObject);

begin
  DMl.ADOStoredProcGuestView.Filter := '[�������]>'''+EditFilter.Text+'''';
end;

procedure TGuestForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TGuestForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
      CanClose := False;
     if Application.MessageBox('�������?','����� �� ���������', MB_YESNO+MB_ICONQUESTION) = IDYES then
     begin
       CanClose := True;

     end;
end;

procedure TGuestForm.FormCreate(Sender: TObject);
begin
  Application.Title:='��� ���������';
end;

procedure TGuestForm.FormResize(Sender: TObject); // �������� �� �������/ ������ ������
begin
  if GuestForm.WindowState = wsMaximized  then
  begin
    LabelURL.Width := 370;
    LabelSubCat.Width := 370;
    LabelSubHead.Width := 370;
  end
  else
  begin
    LabelURL.Width := 243;
    LabelSubCat.Width := 251;
    LabelSubHead.Width := 251;
  end;
end;

procedure TGuestForm.FormShow(Sender: TObject);
begin
  SetGridView;
end;

procedure TGuestForm.LabelLoadText;
begin
  LabelURL.Caption := DMl.ADOStoredProcGuestView.FieldByName('URL').Value;
  LabelSubHeadline.Caption := DMl.ADOStoredProcGuestView.FieldByName('������������').Value; ;
  LabelSubHead.Caption := DMl.ADOStoredProcGuestView.FieldByName('���������').Value; ;
  LabelSubCat.Caption := DMl.ADOStoredProcGuestView.FieldByName('������������').Value; ;
end;

procedure TGuestForm.LabelURLClick(Sender: TObject); // ���� �� ������
begin
  ShellExecute(Application.Handle, PChar('open'), PChar(LabelURL.Caption),
   nil, nil, SW_SHOW);
end;

procedure TGuestForm.LoadImage;
begin
   try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOStoredProcGuestView.FieldByName('Image').Text);
  except
    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+'no-image-large.jpg');
  end;
end;

procedure TGuestForm.MenuItemClick(Sender: TObject); // ���� �� ���� �������
begin
  //
  case (Sender as TMenuItem).Tag of
  1: HandleMenuFunc.ExitFromApp; // ����� �� ���������
  2: HandleMenuFunc.UserChange ; // ����� ������������
  4: HandleMenuFunc.SortByCat ; // ���������� �� ���������
  5: HandleMenuFunc.SortByName ; // ���������� �� ��������
  6: HandleMenuFunc.SortByPrice ; // ���������� �� ���������
  7: HandleMenuFunc.ExportPrice; // ������� ����� �����
  3: HandleMenuFunc.ShowAbout ; //   � ���������
  end;
end;

procedure TGuestForm.SetGridView;  // ��������� ������
begin
  DBGrid1.Columns[0].Visible := False;
  DBGrid1.Columns[1].Width := 40;
  DBGrid1.Columns[2].Width := 300;
  DBGrid1.Columns[3].Width := 40;
  DBGrid1.Columns[4].Width := 80;
  DBGrid1.Columns[5].Width := 80;
  DBGrid1.Columns[6].Width := 500;
  DBGrid1.Columns[7].Visible := False;
  DBGrid1.Columns[8].Visible := False;
  DBGrid1.Columns[9].Visible := False;
  DBGrid1.Columns[10].Width := 300;
  DBGrid1.Columns[11].Visible := False;
  DBGrid1.Columns[12].Visible := False;
  DBGrid1.Columns[13].Visible := False;
  DBGrid1.Columns[14].Visible := False;
end;

{ THandleMenuFunc }

procedure THandleMenuFunc.ExitFromApp; // ������� ����������
begin
  GuestForm.Close;
end;

procedure THandleMenuFunc.ExportPrice;
begin

end;

procedure THandleMenuFunc.ShowAbout; // ��������� ����� � ���������.
begin
  AboutForm.ShowModal;
end;

procedure THandleMenuFunc.SortByCat;
begin

end;

procedure THandleMenuFunc.SortByName;
begin

end;

procedure THandleMenuFunc.SortByPrice;
begin

end;

procedure THandleMenuFunc.UserChange; // ����� ���� �������
begin
  LoginForm.Show;
  GuestForm.Visible := False;
end;

end.
