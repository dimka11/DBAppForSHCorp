unit EditProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtDlgs, Data.DB, Data.Win.ADODB;

type
  TFormEditProduct = class(TForm)
    DBNavigator1: TDBNavigator;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    RigthPanel: TPanel;
    Panel2: TPanel;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure LoadImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditProduct: TFormEditProduct;

implementation

{$R *.dfm}

uses DM, EditClient;

procedure TFormEditProduct.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  FormEditClient.OnlyNumbers(Sender, Key);
end;

procedure TFormEditProduct.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  FormEditClient.OnlyNumbers(Sender, Key);
end;

procedure TFormEditProduct.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  FormEditClient.OnlyNumbers(Sender, Key);
end;

procedure TFormEditProduct.DBEdit5DblClick(Sender: TObject);
var
  nFileName: String;
  curdir: String;
  l: Integer;
  begin
   curdir := GetCurrentDir;
  if OpenPictureDialog1.Execute then
  begin
    l:=TDBEdit(Sender).SelStart;
    TDBEdit(Sender).Text:=AnsiUpperCase(TEdit(Sender).Text[1])+Copy(TEdit(Sender).Text, 2, Length(TEdit(Sender).Text));
    TDBEdit(Sender).SelStart:=l;
    Dml.ADOStoredProcMainView.Edit;
    Dml.ADOStoredProcMainView.FieldValues['Image'] := nFileName;
  end;
end;

procedure TFormEditProduct.FormCreate(Sender: TObject);
begin
  ADODataSet1.Active := True;
end;

procedure TFormEditProduct.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TFormEditProduct.LoadImage;
begin
  try
    image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOStoredProcMainView.FieldByName('Image').Text);
  except
    image1.Picture.LoadFromFile(GetCurrentDir+ '\Images\no-image-large.jpg');
  end;
end;

procedure TFormEditProduct.ToolButton1Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  DMl.ADOStoredProcMainView.Append;
end;

procedure TFormEditProduct.ToolButton3Click(Sender: TObject);
begin
if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
    DMl.ADOStoredProcMainView.Delete;
end;

end.
