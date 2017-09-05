unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, ShellApi,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Themes, Vcl.Mask;

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
    ExitAppMenuItem: TMenuItem;
    ChangeUserMenuItem: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    AboutMenuItem: TMenuItem;
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
    BitBtnAdd: TBitBtn;
    BitBtnEdit: TBitBtn;
    BitBtnDelete: TBitBtn;
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
    ToolButton4: TToolButton;
    ToolButton12: TToolButton;
    DBGridProduct: TDBGrid;
    DBGridClient: TDBGrid;
    DBGrid3: TDBGrid;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
    LabelSubHeadLine: TLabel;
    LabelSubHead: TLabel;
    LabelSubCat: TLabel;
    LabelURL: TLabel;
    ComboBox1: TComboBox;
    ToolButton15: TToolButton;
    ExportPriceMenuItem: TMenuItem;
    DBEdit1: TDBEdit;
    EditClientFilter: TEdit;
    EditOrderFilter: TEdit;
    OrderByCatMenuItem: TMenuItem;
    OrderByNameMenuItem: TMenuItem;
    OrderByPriceMenuItem: TMenuItem;
    OrderByClientNameMenuItem: TMenuItem;
    OrderByOrderTotalMenuItem: TMenuItem;
    ExportClientList: TMenuItem;
    ExportListOrder: TMenuItem;
    CopySelectedProductToClipboard: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure EditFilterChange(Sender: TObject);
    procedure EditFilterCatChange(Sender: TObject);
    procedure LabelURLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);   // �������� ������ � ������
    procedure StatusBarUpdate;
    procedure PageControl1Change(Sender: TObject);
    procedure LoadImage;
    procedure LabelLoadText;   // �������� ������ � ������
    procedure SetGridView;   // ��������� ������ �������
    procedure Image1Click(Sender: TObject);
    procedure DBGridProductDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridClientDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitBtnAddClick(Sender: TObject);
    procedure BitBtnDeleteClick(Sender: TObject);
    procedure BitBtnEditClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure FillStyleCombobox;
    procedure EditClientFilterChange(Sender: TObject);
    procedure EditOrderFilterChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MenuItemClick(Sender: TObject);
    procedure DBGridProductTitleClick(Column: TColumn);
    procedure DBGridClientTitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  THandleMenuFunc = class(TForm) // ������� ����
  private
    procedure ExitFromApp; // �����
    procedure UserChange;  // ����� ������������
    /// <summary>
    ///  ���������� �� ���������
    ///  </summary>
    ///  <param name = "desc: Boolean">
    ///  True - ���������� �� ����������� False - ���������� �� ��������
    ///  </param>
    procedure SortByCat(desc : Boolean = True);// ����������
    procedure SortByName(desc : Boolean = True);
    procedure SortByPrice(desc : Boolean = True);
    procedure SortByClient;
    procedure SortByOrderPrice;
    procedure ExportPrice; // ������� �����
    procedure ShowAbout;  // � ���������
    procedure AddBookmark; // �������� ��������
    procedure CopyToClipBoard; // ����������� ���������� ������� � ����� ������
    procedure CopySelectedToClipBoard; // ����������� ���������� ������� � ����� ������
  end;

var
  MainForm: TMainForm;
  HandleMenuFunc: THandleMenuFunc;

implementation

{$R *.dfm}

uses RecCir, SkinTypeTest, ClientPrograms, Events, Schedule, SubMain, DM,
  ShowModalImage, EditProduct, EditClient, EditOrder, OrderAdd, Stat, Notes,
  About, Login;



procedure TMainForm.BitBtnAddClick(Sender: TObject); //������ ����������
begin
  if PageControl1.ActivePageIndex = 0 then
     if Application.MessageBox('��������?','',MB_YESNO)=IDYES then
     begin
        DMl.ADOStoredProcMainView.Append;
        FormEditProduct.ShowModal;
     end;
  if PageControl1.ActivePageIndex = 1 then
     if Application.MessageBox('��������?','',MB_YESNO)=IDYES then
     begin
        DMl.ADOQueryGetClient.Append;
        FormEditClient.ShowModal;
     end;
  if PageControl1.ActivePageIndex = 2 then
     if Application.MessageBox('��������?','',MB_YESNO)=IDYES then
        //DMl.ADOStoredProcGetOrder.Append;
        FormOrderAdd.ShowModal;
end;

procedure TMainForm.BitBtnDeleteClick(Sender: TObject); //������ ��������
begin
  if PageControl1.ActivePageIndex = 0 then
       if Application.MessageBox('�������?','',MB_YESNO)=IDYES then
          DMl.ADOStoredProcMainView.Delete;
  if PageControl1.ActivePageIndex = 1 then
       if Application.MessageBox('�������?','',MB_YESNO)=IDYES then
          DMl.ADOQueryGetClient.Delete;
  if PageControl1.ActivePageIndex = 2 then
       if Application.MessageBox('�������?','',MB_YESNO)=IDYES then
          DMl.ADOStoredProcGetOrder.Delete;
end;

procedure TMainForm.BitBtnEditClick(Sender: TObject); //������ ��������������
begin
  if PageControl1.ActivePageIndex = 0 then
    FormEditProduct.ShowModal;
  if PageControl1.ActivePageIndex = 1 then
    FormEditClient.ShowModal;
  if PageControl1.ActivePageIndex = 2 then
    FormOrderAdd.ShowModal;
end;



procedure TMainForm.ComboBox1Change(Sender: TObject); // ����� �����
begin
  TStyleManager.TrySetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

procedure TMainForm.DBGrid3TitleClick(Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = -1;
{$J-}
var
  Index: ShortString;
begin
// ���������� �� ����� �� ���������


  if DBGrid3.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(DBGrid3.DataSource.DataSet) do
  begin
    try
      DBGrid3.Columns[PreviousColumnIndex].title.Font.Style :=
      DBGrid3.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
    except
    end;
    Column.title.Font.Style :=
    Column.title.Font.Style + [fsBold];
    PreviousColumnIndex := Column.Index;
    if (ANSIPos('['+ Column.Field.FieldName + ']', Sort) = 1)
    and (ANSIPos(' DESC', Sort)= 0) then
      Sort := '['+ Column.Field.FieldName + ']' + ' DESC'
    else
      Sort := '[' + Column.Field.FieldName + ']' +' ASC';
  end;
end;

procedure TMainForm.DBGridClientDrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
  var
    Grid : TStringGrid;
    Texto : String;
    Rectangulo : TRect;
begin
  Rectangulo:=Rect;
  Grid := TStringGrid(Sender);
  if Field.IsBlob then begin
    Grid.Canvas.FillRect(Rect);
    Texto := Field.AsString;
    DrawText( Grid.Canvas.Handle,
                      PChar(Texto),
                      StrLen(PChar(Texto)),
                      Rectangulo,
                      DT_WORDBREAK);
    end;
end;

procedure TMainForm.DBGridClientTitleClick(Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = -1;
{$J-}
var
  Index: ShortString;
begin
// ���������� �� ����� �� ���������


  if DBGridClient.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(DBGridClient.DataSource.DataSet) do
  begin
    try
      DBGridClient.Columns[PreviousColumnIndex].title.Font.Style :=
      DBGridClient.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
    except
    end;
    Column.title.Font.Style :=
    Column.title.Font.Style + [fsBold];
    PreviousColumnIndex := Column.Index;
    if (ANSIPos('['+ Column.Field.FieldName + ']', Sort) = 1)
    and (ANSIPos(' DESC', Sort)= 0) then
      Sort := '['+ Column.Field.FieldName + ']' + ' DESC'
    else
      Sort := '[' + Column.Field.FieldName + ']' +' ASC';
  end;
end;

procedure TMainForm.DBGridProductDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  const
    clPaleGreen = TColor($CCFFCC);
    clPaleRed = TColor($CCCCFF);
    // ��������� ������ ������
begin
  if Column.Field.Dataset.FieldByName('������� ����').AsString > Column.Field.Dataset.FieldByName('������� ����').AsString then
     if (gdFocused in State) then //����� �� ������ �����?
       DBGridProduct.Canvas.Brush.Color := clSkyBlue //����� �����
     else
       DBGridProduct.Canvas.Brush.Color := clPaleGreen; //�� ����� ������

//������ ������� �������� ������ ��������� ����������� �����:
  DBGridProduct.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;


procedure TMainForm.DBGridProductTitleClick(Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = -1;
{$J-}
var
  Index: ShortString;
begin
// ���������� �� ����� �� ���������


  if DBGridProduct.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(DBGridProduct.DataSource.DataSet) do
  begin
    try
      DBGridProduct.Columns[PreviousColumnIndex].title.Font.Style :=
      DBGridProduct.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
    except
    end;
    Column.title.Font.Style :=
    Column.title.Font.Style + [fsBold];
    PreviousColumnIndex := Column.Index;
    if (ANSIPos('['+ Column.Field.FieldName + ']', Sort) = 1)
    and (ANSIPos(' DESC', Sort)= 0) then
      Sort := '['+ Column.Field.FieldName + ']' + ' DESC'
    else
      Sort := '[' + Column.Field.FieldName + ']' +' ASC';
  end;
end;

procedure TMainForm.EditClientFilterChange(Sender: TObject);
begin
// ������ ��� ������� ��������
    if Length(EditClientFilter.Text) >0 then
    begin
      DMl.ADOQueryGetClient.Filter := '[�������] LIKE  '''+'*'+ EditClientFilter.Text+'*' + '''';
      DMl.ADOQueryGetClient.Filtered := True;
    end
     else
     begin
      DMl.ADOQueryGetClient.Filtered := False;
     end;
end;

procedure TMainForm.EditFilterCatChange(Sender: TObject);
begin
  // ������ ��� ���������
    if Length(EditFilterCat.Text) >0 then
    begin
      DMl.ADOStoredProcMainView.Filter := '[���������] LIKE  '''+'*'+ EditFilterCat.Text+'*' + '''';
      DMl.ADOStoredProcMainView.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcMainView.Filtered := False;
     end;
end;

procedure TMainForm.EditFilterChange(Sender: TObject);
begin
 // ������ ��� �������  ���������
    if Length(EditFilter.Text) >0 then
    begin
      DMl.ADOStoredProcMainView.Filter := '[�������] LIKE  '''+'*'+ EditFilter.Text+'*' + '''';
      DMl.ADOStoredProcMainView.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcMainView.Filtered := False;
     end;
end;

procedure TMainForm.EditOrderFilterChange(Sender: TObject);
begin
// ������ ��� ������ ������
    if Length(EditOrderFilter.Text) >0 then
    begin
      DMl.ADOStoredProcGetOrder.Filter := '[ID] = ' + EditOrderFilter.Text + '';
      DMl.ADOStoredProcGetOrder.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcGetOrder.Filtered := False;
     end;
end;

procedure TMainForm.MenuItemClick(Sender: TObject); // ���� �� ���� �������
begin
 //
  case (Sender as TMenuItem).Tag of
  1: HandleMenuFunc.ExitFromApp; // ����� �� ���������
  2: HandleMenuFunc.UserChange ; // ����� ������������
  12: HandleMenuFunc.ShowAbout ; //   � ���������
  7: HandleMenuFunc.SortByCat();  // ���������� �� ���������
  8: HandleMenuFunc.SortByName(); // ���������� �� �������� ��������
  9: HandleMenuFunc.SortByPrice(); // ���������� �� ���� ��������
  10: HandleMenuFunc.SortByClient; // ���������� �� ������� �������
  11: HandleMenuFunc.SortByOrderPrice; // ���������� �� ��������� ������
  end;
end;

procedure TMainForm.FillStyleCombobox;
var
  s: string;
begin
  ComboBox1.Items.BeginUpdate;
  try
    ComboBox1.Items.Clear;
    for s in TStyleManager.StyleNames do
       ComboBox1.Items.Add(s);
    ComboBox1.Sorted := True;
    // Select the style that's currently in use in the combobox
    ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  finally
    ComboBox1.Items.EndUpdate;
  end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
      CanClose := False;
     if Application.MessageBox('�������?','����� �� ���������', MB_YESNO+MB_ICONQUESTION) = IDYES then
     begin
       CanClose := True;

     end;
end;

procedure TMainForm.FormShow(Sender: TObject);
var
  s: string;
begin
  SetGridView;
  StatusBarUpdate;
  FillStyleCombobox;

end;

procedure TMainForm.Image1Click(Sender: TObject);
begin
  FormShowModalImage.ShowModal;
end;

procedure TMainForm.LabelLoadText;
begin

try
  LabelURL.Caption := DMl.ADOStoredProcMainView.FieldByName('URL').Value;
except
  LabelURL.Caption := ' ';
end;
try
  LabelSubHeadline.Caption := DMl.ADOStoredProcMainView.FieldByName('������������').Value;
except
  LabelSubHeadline.Caption := ' ';
end;
try
  LabelSubHead.Caption := DMl.ADOStoredProcMainView.FieldByName('���������').Value;
except
  LabelSubHead.Caption := ' ';
end;
try
  LabelSubCat.Caption := DMl.ADOStoredProcMainView.FieldByName('������������').Value;
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
    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOStoredProcMainView.FieldByName('Image').Text);
  except
    image1.Picture.LoadFromFile(GetCurrentDir+ '\Images\no-image-large.jpg');
  end;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  StatusBarUpdate;
  SetGridView;
end;

procedure TMainForm.SetGridView;
begin
  if PageControl1.ActivePageIndex = 0 then // ��������
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
    DBGridProduct.Columns[15].Visible := False;
    end;
    if PageControl1.ActivePageIndex = 1 then // �������
    begin
      DBGridClient.Columns[0].Visible := False;
      DBGridClient.Columns[1].Width := 100;
      DBGridClient.Columns[2].Width := 100;
      DBGridClient.Columns[3].Width := 100;
      DBGridClient.Columns[4].Width := 100;
      DBGridClient.Columns[5].Width := 200;
      DBGridClient.Columns[6].Width := 100;
      DBGridClient.Columns[7].Visible := False;
    end;
    if PageControl1.ActivePageIndex = 2 then // ������
    begin
    try
      DBGrid3.Columns[0].Width := 40;
      DBGrid3.Columns[1].Width := 100;
      DBGrid3.Columns[2].Width := 100;
      DBGrid3.Columns[3].Width := 100;
      DBGrid3.Columns[4].Visible := False;
      DBGrid3.Columns[5].Visible := False;
      DBGrid3.Columns[6].Visible := False;
    except

    end;
    end;
end;

procedure TMainForm.StatusBarUpdate; // ���������� ������ ����
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    try
    StatusBar1.Panels.Items[0].Text := '����� ������� ������: '+   IntToStr(DMl.ADOStoredProcMainView.RecNo);
     except

    end;
    StatusBar1.Panels.Items[1].Text := '���������� �������: '+   IntToStr(DMl.ADOStoredProcMainView.RecordCount);
  end;
  if PageControl1.ActivePageIndex = 1 then
  begin
  try

    StatusBar1.Panels.Items[0].Text := '����� ������� ������: '+   IntToStr(DMl.ADOQueryGetClient.RecNo);
  except

  end;
    StatusBar1.Panels.Items[1].Text := '���������� �������: '+   IntToStr(DMl.ADOQueryGetClient.RecordCount);
  end;
  if PageControl1.ActivePageIndex = 2 then
  begin
    StatusBar1.Panels.Items[0].Text := '����� ������� ������: '+   IntToStr(DMl.ADOStoredProcGetOrder.RecNo);
    StatusBar1.Panels.Items[1].Text := '���������� �������: '+   IntToStr(DMl.ADOStoredProcGetOrder.RecordCount);
  end;

end;

procedure TMainForm.ToolButton11Click(Sender: TObject);
begin
  FormSkinType.ShowModal;
end;



procedure TMainForm.ToolButton15Click(Sender: TObject);
begin
  FormNotes.Show;
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  ClientProgramsForm.ShowModal; // ��������� ��������
end;

procedure TMainForm.ToolButton3Click(Sender: TObject);
begin                                             // ����������
  FormSchedule.ShowModal;
end;

procedure TMainForm.ToolButton5Click(Sender: TObject);
begin
  FormEvents.ShowModal;    // ������� ��������
end;

procedure TMainForm.ToolButton7Click(Sender: TObject);
begin
  StatForm.ShowModal;
end;

procedure TMainForm.ToolButton9Click(Sender: TObject);
begin
  SubMainForm.ShowModal;
end;

{ THandleMenuFunc }

procedure THandleMenuFunc.AddBookmark;
begin

end;

procedure THandleMenuFunc.CopySelectedToClipBoard;
begin

end;

procedure THandleMenuFunc.CopyToClipBoard;
begin

end;

procedure THandleMenuFunc.ExitFromApp;
begin
  Close;
end;

procedure THandleMenuFunc.ExportPrice;
begin

end;

procedure THandleMenuFunc.ShowAbout;
begin
  AboutForm.ShowModal;
end;

procedure THandleMenuFunc.SortByCat(desc: Boolean);
begin
if desc = True then
    DMl.ADOStoredProcMainView.Sort := '���������'
  else
    DMl.ADOStoredProcMainView.Sort := '��������� DESC';
end;

procedure THandleMenuFunc.SortByClient;
begin
  DMl.ADOQueryGetClient.Sort := '['+'�������'+']'
end;

procedure THandleMenuFunc.SortByName(desc: Boolean);
begin
  if desc = True then
    DMl.ADOStoredProcMainView.Sort := '�������'
  else
    DMl.ADOStoredProcMainView.Sort := '������� DESC';
end;

procedure THandleMenuFunc.SortByOrderPrice; { TODO : ��������� }
begin
  //DMl.ADOStoredProcGetOrder.Sort := '['+' '+']'
end;

procedure THandleMenuFunc.SortByPrice(desc: Boolean);
begin
  if desc = True then
    DMl.ADOStoredProcGuestView.Sort := '['+'������� ����'+']'
  else
    DMl.ADOStoredProcGuestView.Sort := '['+'������� ����'+']'+ ' DESC';
end;

procedure THandleMenuFunc.UserChange;
begin
  LoginForm.Show;
  MainForm.Visible := False;
end;

end.
