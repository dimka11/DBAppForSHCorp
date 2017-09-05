unit EditStore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFormEditStore = class(TForm)
    GridPanel1: TGridPanel;
    DBNavigator1: TDBNavigator;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditStore: TFormEditStore;

implementation

{$R *.dfm}

uses DM;

procedure TFormEditStore.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TFormEditStore.ToolButton1Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  DMl.ADOQueryStore.Append;
end;

procedure TFormEditStore.ToolButton3Click(Sender: TObject);
begin
if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  DMl.ADOQueryStore.Delete;
end;

procedure TFormEditStore.ToolButton5Click(Sender: TObject);
begin
  DMl.ADOQueryStore.Post;
end;

end.
