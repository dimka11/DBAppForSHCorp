unit EditClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TFormEditClient = class(TForm)
    DBNavigator1: TDBNavigator;
    GridPanel1: TGridPanel;
    ToolBar1: TToolBar;
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
