unit EditEmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Data.Win.ADODB;

type
  TEditEmpForm = class(TForm)
    DBNavigator1: TDBNavigator;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ToolButton3: TToolButton;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditEmpForm: TEditEmpForm;

implementation

{$R *.dfm}

uses DM, EditClient;

procedure TEditEmpForm.DBEdit1Change(Sender: TObject);
begin
  FormEditClient.FirstLetterToUpperCase(Sender);
end;

procedure TEditEmpForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  FormEditClient.OnlyLetters(Sender, Key);
end;

procedure TEditEmpForm.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  FormEditClient.OnlyLetters(Sender, Key);
end;

procedure TEditEmpForm.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  FormEditClient.OnlyNumbers(Sender, Key);
end;

procedure TEditEmpForm.FormCreate(Sender: TObject);
begin
  ADODataSet1.Active := True;
end;

procedure TEditEmpForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TEditEmpForm.ToolButton1Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  begin
    DMl.ADOStoredProcGetEmpList.Append;
  end;
end;

procedure TEditEmpForm.ToolButton2Click(Sender: TObject);
begin
 if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    DMl.ADOStoredProcGetEmpList.Delete;
  end;
end;

procedure TEditEmpForm.ToolButton4Click(Sender: TObject);
begin
  DMl.ADOStoredProcGetEmpList.Post;
end;

end.
