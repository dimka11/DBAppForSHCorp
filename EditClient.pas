unit EditClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask;

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
    Адрес: TLabel;
    DBRichEdit1: TDBRichEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
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

procedure TFormEditClient.ToolButton1Click(Sender: TObject);//Кнопка  добавить
begin
  if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
    DMl.ADOQueryGetClient.Append;
end;

procedure TFormEditClient.ToolButton3Click(Sender: TObject);//Кнопка удалить
begin
  if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
    DMl.ADOQueryGetClient.Delete;
end;

end.
