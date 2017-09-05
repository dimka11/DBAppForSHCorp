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
    DBGridEmpList: TDBGrid;
    HouseLeftPanel: TPanel;
    HouseRightPanel: TPanel;
    DBGridStores: TDBGrid;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    TabSheet3: TTabSheet;
    LPanel: TPanel;
    RPanel: TPanel;
    DBGridOffers: TDBGrid;
    OffersPanel: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadImage;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEmpListDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGridEmpListDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ChangeStorePicture;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SetDBGridsWidth;
    procedure PageControl1Change(Sender: TObject);
    procedure StatusBarUpdate;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SubMainForm: TSubMainForm;

implementation

{$R *.dfm}

uses DM, EditEmp, EditStore, EditPromo;

procedure TSubMainForm.Button1Click(Sender: TObject);
var
  Panel1: TPanel;
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    EditEmpForm.ShowModal;
  end;
  if PageControl1.ActivePageIndex = 1 then
  begin
    FormEditStore.ShowModal;
  end;
  if PageControl1.ActivePageIndex = 2 then
  begin
    FormEditPromotion.ShowModal;
  end;
end;

procedure TSubMainForm.Button2Click(Sender: TObject);
begin
 if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
 begin
    if PageControl1.ActivePageIndex = 0 then
  begin
    DMl.ADOStoredProcGetEmpList.Delete;
  end;
  if PageControl1.ActivePageIndex = 1 then
  begin
    DMl.ADOQueryStore.Delete;
  end;
  if PageControl1.ActivePageIndex = 2 then
  begin
    DMl.ADOQueryGetPromo.Delete;
  end;
 end;
end;

procedure TSubMainForm.ChangeStorePicture;
begin
try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOQueryStore.FieldByName('Image').Text);
  except
    image1.Picture.LoadFromFile(GetCurrentDir+ '\Images\no-image-large.jpg');
  end;
end;


procedure TSubMainForm.Button3Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    EditEmpForm.ShowModal;
  end;
  if PageControl1.ActivePageIndex = 1 then
  begin
    FormEditStore.ShowModal;
  end;
  if PageControl1.ActivePageIndex = 2 then
  begin
    FormEditPromotion.ShowModal;
  end;
end;
end;




procedure TSubMainForm.DBGridEmpListDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Assigned(Column) then
  begin
   DBGridEmpList.Canvas.FillRect(Rect);
   DBGridEmpList.Canvas.TextRect(Rect, Rect.Left, Rect.Top, ' '+Column.Field.AsString);
  end;
end;

procedure TSubMainForm.DBGridEmpListDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
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

procedure TSubMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TSubMainForm.FormShow(Sender: TObject); // Изменение ширины
begin
  LoadImage;
  SetDBGridsWidth;
  StatusBarUpdate;
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

procedure TSubMainForm.PageControl1Change(Sender: TObject);
begin
  SetDBGridsWidth;
  StatusBarUpdate;
end;

procedure TSubMainForm.SetDBGridsWidth;
begin
  DBGridEmpList.Columns[0].Visible := False;
  DBGridEmpList.Columns[1].Width := 200;
  DBGridEmpList.Columns[2].Width := 115;
  DBGridEmpList.Columns[3].Width := 115;
  DBGridEmpList.Columns[4].Width := 200;
  DBGridStores.Columns[0].Visible := False;
  DBGridStores.Columns[1].Width := 150;
  DBGridStores.Columns[2].Width := 150;
  DBGridStores.Columns[3].Width := 150;
  DBGridStores.Columns[4].Visible := False;
  DBGridOffers.Columns[0].Visible := False;
  DBGridOffers.Columns[1].Width := 100;
  DBGridOffers.Columns[1].Width := 200;
  DBGridOffers.Columns[1].Width := 300;
end;

procedure TSubMainForm.StatusBarUpdate;
begin
if PageControl1.ActivePageIndex = 0 then
  begin
    StatusBar1.Panels.Items[0].Text := 'Номер текущей записи: '+   IntToStr(DMl.ADOStoredProcGetEmpList.RecNo);
    StatusBar1.Panels.Items[1].Text := 'Количество записей: '+   IntToStr(DMl.ADOStoredProcGetEmpList.RecordCount);
  end;
  if PageControl1.ActivePageIndex = 1 then
  begin
    StatusBar1.Panels.Items[0].Text := 'Номер текущей записи: '+   IntToStr(DMl.ADOQueryStore.RecNo);
    StatusBar1.Panels.Items[1].Text := 'Количество записей: '+   IntToStr(DMl.ADOQueryStore.RecordCount);
  end;
  if PageControl1.ActivePageIndex = 2 then
  begin
    StatusBar1.Panels.Items[0].Text := 'Номер текущей записи: '+   IntToStr(DMl.ADOQueryGetPromo.RecNo);
    StatusBar1.Panels.Items[1].Text := 'Количество записей: '+   IntToStr(DMl.ADOQueryGetPromo.RecordCount);
  end;

end;

end.
