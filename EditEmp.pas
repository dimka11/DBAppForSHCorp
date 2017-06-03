unit EditEmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin;

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
    DBEdit4: TDBEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditEmpForm: TEditEmpForm;

implementation

{$R *.dfm}

uses DM;

procedure TEditEmpForm.ToolButton1Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  begin
    DMl.ADOStoredProcGetEmp.Append;
  end;
end;

procedure TEditEmpForm.ToolButton2Click(Sender: TObject);
begin
 if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  begin
    DMl.ADOStoredProcGetEmp.Delete;
  end;
end;

end.
