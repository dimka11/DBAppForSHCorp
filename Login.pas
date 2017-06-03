unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TLoginForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    TabSheet4: TTabSheet;
    RichEdit4: TRichEdit;
    Panel1: TPanel;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function LoadRTFFromFile: Boolean;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

uses Main, Guest, DM, ClientPrograms, ClientProg, ClPr, SkinTypeTest, RecCir,
  SubMain;

procedure TLoginForm.Button1Click(Sender: TObject); // �������� ������ � �������� ����
begin
  ADOQuery1.Active := False;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Auth ');
  ADOQuery1.SQL.Add('WHERE Login = ' +'''' + ComboBox1.Text + '''');
  ADOQuery1.SQL.Add('AND Password = ' +'''' + Edit1.Text + '''');
  ADOQuery1.Active := True;
  if ADOQuery1.RecordCount > 0 then
  begin
    ShowMessage('���� ��������');
    // �������� ����

    if ADOQuery1.FieldByName('Type').AsInteger = 0 then
    begin
      MainForm.Show;
      LoginForm.Visible := false;
    end
    else
    begin
    GuestForm.Show;
    LoginForm.Visible := false;
    end;
  end
  else
  begin
    ShowMessage('�� ���������� ������');
  end;






  { TODO : ������� �������� ������ �� ���� }


  //GuestForm.Show;
end;

procedure TLoginForm.Button2Click(Sender: TObject);      // ����� �� ���������
begin
    Close;
end;

procedure TLoginForm.Button3Click(Sender: TObject);

begin
  PageControl1.Visible := True; // ����� ����������
  LoginForm.Height := 400;
  Button3.Visible := False;
end;

procedure TLoginForm.Button4Click(Sender: TObject);
begin
  FormSkinType.ShowModal;
end;

procedure TLoginForm.Button5Click(Sender: TObject);
begin
  ClientProgramsForm.ShowModal;
end;

procedure TLoginForm.Button6Click(Sender: TObject);
begin
  GuestForm.ShowModal;
end;

procedure TLoginForm.ComboBox1Change(Sender: TObject);  // ����������� ������
begin
  if ComboBox1.Text = '�������������' then
    Edit1.Text := 'qweqwe' else
  Edit1.Text := '1';

end;

procedure TLoginForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);;
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

procedure TLoginForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin     // �������� ����������

    CanClose := False;
     if Application.MessageBox('�������?','����� �� ���������', MB_YESNO+MB_ICONQUESTION) = IDYES then
     begin
       CanClose := True;
       Application.Terminate;

     end;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  PageControl1.Visible := False;
  LoginForm.Height := 215;
  LoadRTFFromFile;  // �������� ����������
end;
procedure TLoginForm.FormShow(Sender: TObject);
var
  i: Integer;
begin
  // ������ �������� ����
  //ClientProgramsForm.Show;
  DMl.DoConDB;
  DMl.ActivateData;
  if DMl.ADOConnection1.Connected = False then
    ShowMessage('�� ������� ������������ � ��');
  DMl.ADOStoredProcLogin.Active := True;

  ComboBox1.Clear;
  DMl.ADOStoredProcLogin.First;
  for I := 0 to Dml.ADOStoredProcLogin.RecordCount -1  do // ���������� ����������
  begin
    ComboBox1.Items.Add(Dml.ADOStoredProcLogin.FieldByName('Login').AsString);
    Dml.ADOStoredProcLogin.Next;
  end;
end;

function TLoginForm.LoadRTFFromFile: Boolean; // �������� ����������
begin
try
  SendMessage(RichEdit4.Handle,EM_LIMITTEXT,$FFFFFFFF,0);
  RichEdit1.Lines.LoadFromFile('Docs/ua.rtf'); //���������������� ����������
  RichEdit2.Lines.LoadFromFile('Docs/ap.rtf'); // �������� ����
  RichEdit3.Lines.LoadFromFile('Docs/pt.rtf'); // ������� �������
  RichEdit4.Lines.LoadFromFile('Docs/pa.rtf'); // ����� ���������������
  Result := True
except
  ShowMessage('������ ��� �������� ����������');
  Result := False;
end;
end;

end.
