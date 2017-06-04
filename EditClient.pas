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

end.
