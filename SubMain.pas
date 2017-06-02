unit SubMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSubMainForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SubMainForm: TSubMainForm;

implementation

{$R *.dfm}

procedure TSubMainForm.Button1Click(Sender: TObject);
var
  Panel1: TPanel;
begin
  Panel1 := TPanel.Create(SubMainForm);
  Panel1.Parent := SubMainForm;
  Panel1.Left := 0;
  Panel1.Top := 0;
  Panel1.Width := 100;
  Panel1.Height := 100;

end;

end.
