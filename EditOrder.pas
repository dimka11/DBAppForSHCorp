unit EditOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, DBDateTimePicker, Vcl.StdCtrls, Vcl.Mask;

type
  TFormEditOrder = class(TForm)
    DBNavigator1: TDBNavigator;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBDateTimePicker1: TDBDateTimePicker;
    Label2: TLabel;
    LeftPanel: TPanel;
    RightPanel: TPanel;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditOrder: TFormEditOrder;

implementation

{$R *.dfm}

uses DM, OrderAdd;

procedure TFormEditOrder.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TFormEditOrder.ToolButton1Click(Sender: TObject);
begin
  FormOrderAdd.ShowModal;
end;

procedure TFormEditOrder.ToolButton3Click(Sender: TObject);
begin
if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
    DMl.ADOStoredProcGetOrder.Delete;
end;

end.
