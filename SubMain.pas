unit SubMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TSubMainForm = class(TForm)
    StatusBar1: TStatusBar;
    LeftPanel: TPanel;
    RightPanel: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    EmpLeftPanel: TPanel;
    DBGrid1: TDBGrid;
    HouseLeftPanel: TPanel;
    HouseRightPanel: TPanel;
    DBGrid2: TDBGrid;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadImage;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SubMainForm: TSubMainForm;

implementation

{$R *.dfm}

uses DM, EditEmp;

procedure TSubMainForm.Button1Click(Sender: TObject);
var
  Panel1: TPanel;
begin
  EditEmpForm.ShowModal;

end;

procedure TSubMainForm.Button2Click(Sender: TObject);
begin
 if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    DMl.ADOStoredProcGetEmp.Delete;
  end;
end;

procedure TSubMainForm.Button3Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  begin
    DMl.ADOStoredProcGetEmp.Append;
  end;
end;

procedure TSubMainForm.FormShow(Sender: TObject); // Изменение ширины
begin
  LoadImage;
  DBGrid1.Columns[0].Width := 40;
  DBGrid1.Columns[1].Width := 100;
  DBGrid1.Columns[2].Width := 100;
  DBGrid1.Columns[3].Width := 100;
  DBGrid2.Columns[0].Width := 40;
  DBGrid2.Columns[1].Width := 150;
  DBGrid2.Columns[2].Width := 150;
  DBGrid2.Columns[3].Width := 150;
  DBGrid2.Columns[4].Visible := False;
end;

procedure TSubMainForm.LoadImage; // Загрузка ихображений
begin
  try
                         // Закоментировано по причине ошибки

    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOQueryStore.FieldByName('Image').Text);
    except
    image1.Picture.LoadFromFile(GetCurrentDir+ '/Images/no-image-large.jpg');

   end;
end;

end.
