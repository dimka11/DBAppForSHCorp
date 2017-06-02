unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons;

type
  TMainForm = class(TForm)
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
    Splitter1: TSplitter;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    RightPanel: TPanel;
    Image1: TImage;
    LeftPanel: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    MidPanel: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    LeftTopPanel: TPanel;
    RightBotPanel: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses RecCir, SkinTypeTest, ClientPrograms;

procedure TMainForm.ToolButton11Click(Sender: TObject);
begin
  FormSkinType.ShowModal;
end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
begin
  FormRecCir.ShowModal;
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  ClientProgramsForm.ShowModal;
end;

end.
