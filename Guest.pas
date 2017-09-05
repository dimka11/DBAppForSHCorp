unit Guest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.Mask, ShellApi, Vcl.Imaging.jpeg, comobj, OleServer, Vcl.Themes;

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
    Bookmark: TMenuItem;
    CopyToClipboard: TMenuItem;
    Memo1: TMemo;
    CopySelectedToClipBoard: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label1: TLabel;
    ADOQueryExportWord: TADOQuery;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
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
    procedure Image1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure StatusBarUpdate;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CreateWord(const visible: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure FillStyleCombobox;
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
    procedure ExportPrice; // ������� �����
    procedure ShowAbout;  // � ���������
    procedure AddBookmark; // �������� ��������
    procedure CopyToClipBoard; // ����������� ���������� ������� � ����� ������
    procedure CopySelectedToClipBoard; // ����������� ���������� ������� � ����� ������
  end;

var
  GuestForm: TGuestForm;
  HandleMenuFunc: THandleMenuFunc;
  WordObject: Variant;
  WordTable, WordRow: OleVariant;


implementation

{$R *.dfm}

uses Main, DM, About, Login, ShowModalImage;


procedure TGuestForm.ComboBox1Change(Sender: TObject);
begin
  TStyleManager.TrySetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
  MainForm.Visible := True;
  GuestForm.Visible := True;
  MainForm.Visible := False;
end;

procedure TGuestForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);;
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;
procedure TGuestForm.CreateWord(const visible: Boolean);
begin
  WordObject := CreateOleObject('Word.Application');
  WordObject.visible := visible;
  WordObject.Documents.Add;
end;

procedure TGuestForm.DBGrid1CellClick(Column: TColumn);
begin
  LoadImage;
end;

procedure TGuestForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  const
    clPaleGreen = TColor($CCFFCC);
    clPaleRed = TColor($CCCCFF);
    // ��������� ������ ������
begin
  if Column.Field.Dataset.FieldByName('������� ����').AsString > Column.Field.Dataset.FieldByName('������� ����').AsString then
     if (gdFocused in State) then //����� �� ������ �����?
       DBGrid1.Canvas.Brush.Color := clSkyBlue //����� �����
     else
       DBGrid1.Canvas.Brush.Color := clPaleGreen; //�� ����� ������

//������ ������� �������� ������ ��������� ����������� �����:
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;

procedure TGuestForm.DBGrid1TitleClick(Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = -1;
{$J-}
var
  Index: ShortString;
begin
// ���������� �� ����� �� ���������


  if DBGrid1.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(DBGrid1.DataSource.DataSet) do
  begin
    try
      DBGrid1.Columns[PreviousColumnIndex].title.Font.Style :=
      DBGrid1.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
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

procedure TGuestForm.EditFilterCatChange(Sender: TObject);
begin
  // ������ ��� ���������
    if Length(EditFilterCat.Text) >0 then
    begin
      DMl.ADOStoredProcGuestView.Filter := '[���������] LIKE  '''+'*'+ EditFilterCat.Text+'*' + '''';
      DMl.ADOStoredProcGuestView.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcGuestView.Filtered := False;
     end;
end;

procedure TGuestForm.EditFilterChange(Sender: TObject);

begin
  // ������ ��� �������  ���������
    if Length(EditFilter.Text) >0 then
    begin
      DMl.ADOStoredProcGuestView.Filter := '[�������] LIKE  '''+'*'+ EditFilter.Text+'*' + '''';
      DMl.ADOStoredProcGuestView.Filtered := True;
    end
     else
     begin
      DMl.ADOStoredProcGuestView.Filtered := False;
     end;
end;

procedure TGuestForm.FillStyleCombobox;
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
  StatusBarUpdate;
  FillStyleCombobox;
end;

procedure TGuestForm.Image1Click(Sender: TObject);
begin
  FormShowModalImage.ShowModal;
end;

procedure TGuestForm.LabelLoadText; // �������� ����������
begin
try
  LabelURL.Caption := DMl.ADOStoredProcGuestView.FieldByName('URL').Value;
except
  LabelURL.Caption := ' ';
end;
try
  LabelSubHeadline.Caption := DMl.ADOStoredProcGuestView.FieldByName('������������').Value;
except
  LabelSubHeadline.Caption := ' ';
end;
try
  LabelSubHead.Caption := DMl.ADOStoredProcGuestView.FieldByName('���������').Value;
except
  LabelSubHead.Caption := ' ';
end;
try
  LabelSubCat.Caption := DMl.ADOStoredProcGuestView.FieldByName('������������').Value;
except
  LabelSubCat.Caption := ' ';
end;
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
    image1.Picture.LoadFromFile(GetCurrentDir+ '\Images\no-image-large.jpg');
  end;
end;

procedure TGuestForm.MenuItemClick(Sender: TObject); // ���� �� ���� �������
begin
  //
  case (Sender as TMenuItem).Tag of
  1: HandleMenuFunc.ExitFromApp; // ����� �� ���������
  2: HandleMenuFunc.UserChange ; // ����� ������������
  4: HandleMenuFunc.SortByCat; // ���������� �� ���������
  5: HandleMenuFunc.SortByName; // ���������� �� ��������
  6: HandleMenuFunc.SortByPrice; // ���������� �� ���������
  7: HandleMenuFunc.ExportPrice; // ������� ����� �����
  3: HandleMenuFunc.ShowAbout ; //   � ���������
  8: HandleMenuFunc.AddBookmark; // �������� ��������
  9: HandleMenuFunc.CopyToClipBoard; // ����������� � ����� ������
  10: HandleMenuFunc.CopySelectedToClipBoard; // ���������� ���������� � ����� ������
  11: HandleMenuFunc.SortByCat(False); // ���������� �� ���������
  12: HandleMenuFunc.SortByName(False) ; // ���������� �� ��������
  13: HandleMenuFunc.SortByPrice(False) ; // ���������� �� ���������
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

procedure TGuestForm.StatusBarUpdate;  // ���������� ������ ����
begin
  StatusBar1.Panels.Items[0].Text := '����� ������� ������: '+   IntToStr(DMl.ADOStoredProcGuestView.RecNo);
  StatusBar1.Panels.Items[1].Text := '���������� �������: '+   IntToStr(DMl.ADOStoredProcGuestView.RecordCount);

end;

{ THandleMenuFunc }

procedure THandleMenuFunc.AddBookmark;            // ��������
{ TODO : ����� ��� ��� ����������� ���������� ������� }
var
  Bookmark1: TBookmark;
  z: Integer;
  I:Integer;
  Bookmarks: TBookmarkList;
  BookString: string;
begin
(*
    Bookmarks := GuestForm.DBGrid1.SelectedRows;
    try
      DMl.ADOStoredProcGuestView.First;
       for I := 0 to GuestForm.DBGrid1.SelectedRows.Count-1 do
         begin
           Bookmark1:= GuestForm.DBGrid1.SelectedRows[i];
           ShowMessage(DMl.ADOStoredProcGuestView.FieldByName('�������').AsVariant);
         end;
     finally
      //-//-//-//-//-//-//-//-//
     end;
    BookString := Bookmarks[0][0].ToString;
    ShowMessage(BookString);
*)


end;

procedure THandleMenuFunc.CopySelectedToClipBoard;
Const
  //Tab character
  Delim = CHR(9);
var
  i: Integer;
  x: Integer;
  S: String;
  Y: String;
begin
  GuestForm.Memo1.Clear;
  //Copy Fieldnames First
  Y := '';
  for x := 0 to GuestForm.DBGrid1.Columns.Count - 1 do
  Y := Y + (format('%s',[GuestForm.DBGrid1.columns[x].title.caption]))+ Delim;
  GuestForm.Memo1.Lines.Add(Y);

  //Copy Field contents
  if GuestForm.DBGrid1.SelectedRows.Count > 0 then
  begin
    with GuestForm.DBGrid1.DataSource.DataSet do
    begin
      for i := 0 to GuestForm.DBGrid1.SelectedRows.Count-1 do
      begin
          //Bookmark sets the position of the selection
          S := '';
          GotoBookmark(Tbookmark(GuestForm.DBGrid1.SelectedRows[i]));
          for x := 0 to GuestForm.DBGrid1.Columns.Count - 1 do
          Begin
          S := S + (format('%s',[GuestForm.DbGrid1.columns[x].field.asString]))+ Delim;
          end;
          GuestForm.Memo1.Lines.Add(S);
        end;
      end;
    end;
  //Copy to a memo field, then to the clipboard
  GuestForm.Memo1.SelectAll;
  GuestForm.Memo1.CopyToClipboard;
end;

procedure THandleMenuFunc.CopyToClipBoard;
const
  //Tab character
  Delim = CHR(9);
  var
  S: String;
  I: Integer;
  //Stream: TFileStream;
begin
// ����������� ���������� ������� � ����� ������
  //Stream := TFileStream.Create('C:\temp\test.txt', fmCreate);

  while not GuestForm.DBGrid1.DataSource.DataSet.EOF do
  begin
    S := '';

    for I := 0 to GuestForm.DBGrid1.Columns.Count - 1 do
    S := S + TColumn(GuestForm.DBGrid1.Columns[I]).Field.AsString + Delim;
    //line end character
    S := S + CHR(13);
    //Stream.Write(PChar(S)^, Length(S));
    GuestForm.Memo1.Lines.Add(S);
    GuestForm.DBGrid1.DataSource.DataSet.Next();
  end;
  //Stream.Free();
  GuestForm.Memo1.SelectAll;
  GuestForm.Memo1.CopyToClipboard;
end;

procedure THandleMenuFunc.ExitFromApp; // ������� ����������
begin
  GuestForm.Close;
end;

procedure THandleMenuFunc.ExportPrice;  // ������� ������ � WORD
var

  I: Integer;
begin
  GuestForm.ADOQueryExportWord.Active := True;
  GuestForm.CreateWord(False);
   //��������� ������ � ����� ��������� Word�.;
   {
�InsertBefore ��������� ����� � ������ ����������� Range - ������� ������ � �������
� �InsertAfter ��������� ����� � ����� ����������� Range�.
   }

 // Word1.ActiveDocument.tables.item(1).columns.item(<����� �������>).delete // ������� �������
 //   Word1.activeDocument.PageSetup.Orientation := 1; // ���������
  WordObject.activeDocument.PageSetup.Orientation := 1; // �������

  //Word1.ActiveDocument.Range.InsertBefore (Form10.Caption + ' ');
  WordObject.ActiveDocument.Range.InsertBefore ('��������� �������� ');
  WordObject.ActiveDocument.Range.InsertAfter (#13+#10+'�����-���� �� ��������� ��������:'+#13+#10);
  WordObject.ActiveDocument.Range.InsertAfter ('�����-����'+#13+#10+#13+#10);
    //���������� ���������� ������ � ������.
  WordObject.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
  WordObject.ActiveDocument.Range.Font.Name := 'Arial';
  WordObject.ActiveDocument.Range.Font.Size := 14;
  WordObject.ActiveDocument.Range.Font.Bold := True;
  WordObject.ActiveDocument.Range.Characters.Last.Font.Size := 12;;   //��������� ������� ������ �� ��������� ������
  WordObject.ActiveDocument.Range.Characters.Last.Font.Bold := False;
    //�������� �������
  WordObject.ActiveDocument.Tables.Add(WordObject.ActiveDocument.Range.Characters.Last,1,GuestForm.ADOQueryExportWord.Fields.Count);
  WordTable := WordObject.ActiveDocument.Tables.Item(1);
  // ��������� ������ ��������
  begin                                                             // ������ ��������
    WordObject.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 200;
    WordObject.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 150;
    WordObject.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 200;

  end;
    for I := 1 to GuestForm.ADOQueryExportWord.FieldCount do
      begin
      WordTable.Cell(1,i).range.text := (GuestForm.ADOQueryExportWord.Fields[i-1].FieldName);
      WordTable.Cell(1,i).range.font.bold := True;
      end;
  with GuestForm.ADOQueryExportWord do
    while not eof do begin
    //�������� ����� ������
    WordRow := WordTable.Rows.Add;
    WordTable.Cell(WordRow.Index, 1).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 2).Range.ParagraphFormat.Alignment := 0;
    WordTable.Cell(WordRow.Index, 3).Range.ParagraphFormat.Alignment := 0;
    for I := 1 to FieldCount do
      // ��������� � ������ ������
      begin
      WordTable.Cell(WordRow.Index, i).Range.Text := Fields[i-1].AsString ;
      WordTable.Cell(WordRow.Index,i).range.font.bold := False;
     // WordTable.Cell(WordRow.Index,i).range.ParagraphFormat.Alignment := 0;
      end;
      GuestForm.ADOQueryExportWord.Next;
    end;
    WordTable.borders.enable := True;
    WordObject.ActiveDocument.Range.Characters.Last.ParagraphFormat.Alignment := 0;
    WordObject.ActiveDocument.Range.InsertAfter(#13+#10);
    WordObject.ActiveDocument.Range.InsertAfter(#13+#10);
    WordObject.ActiveDocument.Range.InsertAfter (Date);
    WordObject.ActiveDocument.Tables.Item(1).PreferredWidthType := 2; //
    WordObject.ActiveDocument.Tables.Item(1).PreferredWidth  := 100;
    WordObject.visible := True;
    WordObject.ActiveDocument.SaveAs(GetCurrentDir + '/Reports/Price.docx');
end;

procedure THandleMenuFunc.ShowAbout; // ��������� ����� � ���������.
begin
  AboutForm.ShowModal;
end;

procedure THandleMenuFunc.SortByCat(desc : Boolean = True);
begin
  if desc = True then
    DMl.ADOStoredProcGuestView.Sort := '���������'
  else
    DMl.ADOStoredProcGuestView.Sort := '��������� DESC';
end;

procedure THandleMenuFunc.SortByName(desc : Boolean = True);
begin
  if desc = True then
    DMl.ADOStoredProcGuestView.Sort := '�������'
  else
    DMl.ADOStoredProcGuestView.Sort := '������� DESC';
end;

procedure THandleMenuFunc.SortByPrice(desc : Boolean = True);
  begin
  if desc = True then
    DMl.ADOStoredProcGuestView.Sort := '['+'������� ����'+']'
  else
    DMl.ADOStoredProcGuestView.Sort := '['+'������� ����'+']'+ ' DESC';
end;

procedure THandleMenuFunc.UserChange; // ����� ���� �������
begin
  LoginForm.Show;
  GuestForm.Visible := False;
end;

end.
