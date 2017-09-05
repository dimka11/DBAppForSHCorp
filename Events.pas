unit Events;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.ExtCtrls, DBDateTimePicker;

type
  TFormEvents = class(TForm)
    GridPanel1: TGridPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    DBDateTimePicker1: TDBDateTimePicker;
    DBNavigator1: TDBNavigator;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvents: TFormEvents;

implementation

{$R *.dfm}

uses DM;

procedure TFormEvents.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

end.
