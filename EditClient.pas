unit EditClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, DBDateTimePicker, Data.DB,
  Data.Win.ADODB;

type
  TFormEditClient = class(TForm)
    DBNavigator1: TDBNavigator;
    GridPanel1: TGridPanel;
    ToolBar1: TToolBar;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Àäğåñ: TLabel;
    DBRichEdit1: TDBRichEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label4: TLabel;
    DBDateTimePicker1: TDBDateTimePicker;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OnlyNumbers(Sender: TObject; var Key: Char);
    procedure OnlyLetters(Sender: TObject; var Key: Char);
    procedure FirstLetterToUpperCase(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditClient: TFormEditClient;

implementation

{$R *.dfm}

uses DM;

procedure TFormEditClient.DBEdit1Change(Sender: TObject);
begin
  FirstLetterToUpperCase(Sender);
end;

procedure TFormEditClient.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  OnlyLetters(Sender, Key);
end;

procedure TFormEditClient.DBEdit2Change(Sender: TObject);
begin
  FirstLetterToUpperCase(Sender);
end;

procedure TFormEditClient.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  OnlyLetters(Sender, Key);
end;

procedure TFormEditClient.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  OnlyNumbers(Sender, Key);
end;

procedure TFormEditClient.FirstLetterToUpperCase(Sender: TObject);
var
  l: Integer;
begin
  if Length(TDBEdit(Sender).Text)>0 then
  begin
    l:=TDBEdit(Sender).SelStart;
    TDBEdit(Sender).Text:=AnsiUpperCase(TEdit(Sender).Text[1])+Copy(TEdit(Sender).Text, 2, Length(TEdit(Sender).Text));
    TDBEdit(Sender).SelStart:=l;
  end;
end;

procedure TFormEditClient.FormCreate(Sender: TObject);
begin
  ADODataSet1.Active := True;
end;

procedure TFormEditClient.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TFormEditClient.FormShow(Sender: TObject);
begin
  DBDateTimePicker1.Date := Now;
end;

procedure TFormEditClient.OnlyLetters(Sender: TObject; var Key: Char);
begin
  If not (Pos(key,'ÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞßàáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿ-'+ #8)>0) Then Key:=#0;
end;

procedure TFormEditClient.OnlyNumbers(Sender: TObject; var Key: Char);
begin
    if not(key in [',',#8,'0'..'9']) then key:=#0;
end;

procedure TFormEditClient.ToolButton1Click(Sender: TObject);//Êíîïêà  äîáàâèòü
begin
  if Application.MessageBox('Äîáàâèòü?','',MB_YESNO)=IDYES then
    DMl.ADOQueryGetClient.Append;
end;

procedure TFormEditClient.ToolButton3Click(Sender: TObject);//Êíîïêà óäàëèòü
begin
  if Application.MessageBox('Óäàëèòü?','',MB_YESNO)=IDYES then
    DMl.ADOQueryGetClient.Delete;
end;

end.
