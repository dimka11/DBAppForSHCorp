unit EditPromo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, DBDateTimePicker, Vcl.StdCtrls, Vcl.Mask;

type
  TFormEditPromotion = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBNavigator1: TDBNavigator;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Стоимость: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBRichEdit1: TDBRichEdit;
    Label3: TLabel;
    DBDateTimePicker1: TDBDateTimePicker;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditPromotion: TFormEditPromotion;

implementation

{$R *.dfm}

uses DM;

procedure TFormEditPromotion.ToolButton1Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
  Dml.ADOQueryGetPromo.Append;
end;

procedure TFormEditPromotion.ToolButton3Click(Sender: TObject);
begin
if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
  Dml.ADOQueryGetPromo.Delete;
end;

procedure TFormEditPromotion.ToolButton5Click(Sender: TObject);
begin
  Dml.ADOQueryGetPromo.Post;
end;

end.
