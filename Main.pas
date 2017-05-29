unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    BotPanel: TPanel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TopPanel: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TForm3;

implementation

{$R *.dfm}

end.
