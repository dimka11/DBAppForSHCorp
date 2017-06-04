unit Stat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, VclTee.TeeGDIPlus,
  Vcl.StdCtrls, Vcl.ComCtrls, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TStatForm = class(TForm)
    TopPanel: TPanel;
    DBGrid1: TDBGrid;
    TopRightPanel: TPanel;
    DBChart1: TDBChart;
    BotPanel: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Label3: TLabel;
    LabelReceipts: TLabel;
    Label4: TLabel;
    LabelProfit: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatForm: TStatForm;

implementation

{$R *.dfm}

uses DM;

end.
