unit Schedule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TFormSchedule = class(TForm)
    DBNavigator1: TDBNavigator;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBMemo2: TDBMemo;
    Label3: TLabel;
    DBMemo3: TDBMemo;
    Label4: TLabel;
    DBMemo4: TDBMemo;
    Label5: TLabel;
    DBMemo5: TDBMemo;
    Label6: TLabel;
    DBMemo6: TDBMemo;
    Label7: TLabel;
    DBMemo7: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSchedule: TFormSchedule;

implementation

{$R *.dfm}

uses DM;

end.
