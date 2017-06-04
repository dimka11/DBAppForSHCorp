unit EditProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask;

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
    DBEdit5: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    DBRichEdit3: TDBRichEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditProduct: TFormEditProduct;

implementation

{$R *.dfm}

uses DM;

procedure TFormEditProduct.ToolButton1Click(Sender: TObject);
begin
if Application.MessageBox('Добавить?','',MB_YESNO)=IDYES then
    DMl.ADOStoredProcGuestView.Append;
end;

procedure TFormEditProduct.ToolButton3Click(Sender: TObject);
begin
if Application.MessageBox('Удалить?','',MB_YESNO)=IDYES then
    DMl.ADOStoredProcGuestView.Delete;
end;

end.
