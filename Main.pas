unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, ShellApi,
  Vcl.DBGrids, Vcl.DBCtrls;

type
  TMainForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    BotPanel: TPanel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    TopPanel: TPanel;
    Splitter1: TSplitter;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Exit: TMenuItem;
    UserChange: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    RightPanel: TPanel;
    Image1: TImage;
    LeftPanel: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    MidPanel: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    LeftTopPanel: TPanel;
    RightBotPanel: TPanel;
    EditFilter: TEdit;
    EditFilterCat: TEdit;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    DBGridProduct: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
    LabelSubHeadLine: TLabel;
    LabelSubHead: TLabel;
    LabelSubCat: TLabel;
    LabelURL: TLabel;
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure EditFilterChange(Sender: TObject);
    procedure EditFilterCatChange(Sender: TObject);
    procedure LabelURLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);   // Загрузка текста в лебелы
    procedure StatusBarUpdate;
    procedure PageControl1Change(Sender: TObject);
    procedure LoadImage;
    procedure LabelLoadText;   // Загрузка текста в лебелы
    procedure SetGridView;
    procedure Image1Click(Sender: TObject);
    procedure DBGridProductDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses RecCir, SkinTypeTest, ClientPrograms, Events, Schedule, SubMain, DM,
  ShowModalImage;

procedure TMainForm.DBGridProductDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  const
    clPaleGreen = TColor($CCFFCC);
    clPaleRed = TColor($CCCCFF);
    // Выделение строки цветом
begin
  if Column.Field.Dataset.FieldByName('Базовая цена').AsString > Column.Field.Dataset.FieldByName('Текущая цена').AsString then
     if (gdFocused in State) then //имеет ли ячейка фокус?
       DBGridProduct.Canvas.Brush.Color := clSkyBlue //имеет фокус
     else
       DBGridProduct.Canvas.Brush.Color := clPaleGreen; //не имеет фокуса

//Теперь давайте закрасим ячейку используя стандартный метод:
  DBGridProduct.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;


procedure TMainForm.EditFilterCatChange(Sender: TObject);
begin
  // Фильтр для категорий
    if Length(EditFilterCat.Text) >0 then
    begin
      DMl.ADOStoredProcGuestView.Filter := '[Категория] LIKE  '''+'*'+ EditFilterCat.Text+'*' + '''';
      DMl.ADOStoredProcGuestView.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcGuestView.Filtered := False;
     end;
end;

procedure TMainForm.EditFilterChange(Sender: TObject);
begin
 // Фильтр для названи  продуктов
    if Length(EditFilter.Text) >0 then
    begin
      DMl.ADOStoredProcGuestView.Filter := '[Продукт] LIKE  '''+'*'+ EditFilter.Text+'*' + '''';
      DMl.ADOStoredProcGuestView.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcGuestView.Filtered := False;
     end;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  SetGridView;
  StatusBarUpdate;
end;

procedure TMainForm.Image1Click(Sender: TObject);
begin
  FormShowModalImage.ShowModal;
end;

procedure TMainForm.LabelLoadText;
begin

try
  LabelURL.Caption := DMl.ADOStoredProcGuestView.FieldByName('URL').Value;
except
  LabelURL.Caption := ' ';
end;
try
  LabelSubHeadline.Caption := DMl.ADOStoredProcGuestView.FieldByName('подзаголовок').Value;
except
  LabelSubHeadline.Caption := ' ';
end;
try
  LabelSubHead.Caption := DMl.ADOStoredProcGuestView.FieldByName('категория').Value;
except
  LabelSubHead.Caption := ' ';
end;
try
  LabelSubCat.Caption := DMl.ADOStoredProcGuestView.FieldByName('подкатегория').Value;
except
  LabelSubCat.Caption := ' ';
end;
end;

procedure TMainForm.LabelURLClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, PChar('open'), PChar(LabelURL.Caption),
   nil, nil, SW_SHOW);
end;

procedure TMainForm.LoadImage;
begin
 try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOStoredProcGuestView.FieldByName('Image').Text);
  except
    image1.Picture.LoadFromFile(GetCurrentDir+ '\Images\no-image-large.jpg');
  end;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  StatusBarUpdate;
end;

procedure TMainForm.SetGridView;
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    DBGridProduct.Columns[0].Visible := False;
    DBGridProduct.Columns[1].Width := 40;
    DBGridProduct.Columns[2].Width := 300;
    DBGridProduct.Columns[3].Width := 40;
    DBGridProduct.Columns[4].Width := 80;
    DBGridProduct.Columns[5].Width := 80;
    DBGridProduct.Columns[6].Width := 500;
    DBGridProduct.Columns[7].Visible := False;
    DBGridProduct.Columns[8].Visible := False;
    DBGridProduct.Columns[9].Visible := False;
    DBGridProduct.Columns[10].Width := 300;
    DBGridProduct.Columns[11].Visible := False;
    DBGridProduct.Columns[12].Visible := False;
    DBGridProduct.Columns[13].Visible := False;
    DBGridProduct.Columns[14].Visible := False;
    end;
end;

procedure TMainForm.StatusBarUpdate;
begin
  if PageControl1.ActivePageIndex = 0 then
    StatusBar1.Panels.Items[0].Text := 'Номер текущей записи: '+   IntToStr(DMl.ADOStoredProcGuestView.RecNo);
    StatusBar1.Panels.Items[1].Text := 'Количество записей: '+   IntToStr(DMl.ADOStoredProcGuestView.RecordCount);
end;

procedure TMainForm.ToolButton11Click(Sender: TObject);
begin
  FormSkinType.ShowModal;
end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
begin
  FormRecCir.ShowModal;
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  ClientProgramsForm.ShowModal; // Программы компании
end;

procedure TMainForm.ToolButton3Click(Sender: TObject);
begin                                             // Расписание
  FormSchedule.ShowModal;
end;

procedure TMainForm.ToolButton5Click(Sender: TObject);
begin
  FormEvents.ShowModal;    // События компании
end;

procedure TMainForm.ToolButton9Click(Sender: TObject);
begin
  SubMainForm.ShowModal;
end;

end.
