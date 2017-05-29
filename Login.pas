unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
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
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function LoadRTFFromFile: Boolean;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TForm1;

implementation

{$R *.dfm}

uses Main, Guest, DM, ClientPrograms;

procedure TForm1.Button1Click(Sender: TObject); // �������� �������� �����
begin
  LoginForm.Visible := false;
  GuestForm.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);      // ����� �� ���������
begin
    Close;
end;

procedure TForm1.Button3Click(Sender: TObject);

begin
  PageControl1.Visible := True; // ����� ����������
  LoginForm.Height := 400;
  Button3.Visible := False;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin     // �������� ����������

    CanClose := False;
     if Application.MessageBox('�������?','����� �� ���������', MB_YESNO+MB_ICONQUESTION) = IDYES then
     begin
       CanClose := True;

     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PageControl1.Visible := False;
  LoginForm.Height := 215;
  LoadRTFFromFile;  // �������� ����������
end;
procedure TForm1.FormShow(Sender: TObject);
begin
  // ������ �������� ����
  //ClientProgramsForm.Show;
  DMl.DoConDB;
  DMl.ActivateData;
  if DMl.ADOConnection1.Connected = False then
    ShowMessage('�� ������� ������������ � ��');
end;

function TForm1.LoadRTFFromFile: Boolean; // �������� ����������
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
