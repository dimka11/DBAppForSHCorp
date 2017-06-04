unit OrderAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, DBDateTimePicker, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormOrderAdd = class(TForm)
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
    DBDateTimePicker1: TDBDateTimePicker;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrderAdd: TFormOrderAdd;

implementation

{$R *.dfm}

uses DM;

procedure TFormOrderAdd.Button1Click(Sender: TObject);
begin
try
  DMl.ADOQueryAddOrder.Post;

except
    Application.MessageBox('Проверьте введенныю информацию','Ошибка',MB_OK);
end;
end;

procedure TFormOrderAdd.DBEdit1DblClick(Sender: TObject);
var
  FormSelectEmp: TForm;
  SelectEmpDBGrid: TDBGrid;

begin
  FormSelectEmp := TForm.Create(Self);
  SelectEmpDBGrid :=  TDBGrid.Create(Self);
  SelectEmpDBGrid.Parent := FormSelectEmp;
  SelectEmpDBGrid.Align := alClient;
  SelectEmpDBGrid.DataSource := DMl.DataSourceViewEmpList;
  FormSelectEmp.ShowModal;  //Показать форму


end;

procedure TFormOrderAdd.FormShow(Sender: TObject);
begin
  Dml.ADOStoredProcGetOrder.Append;
  DBDateTimePicker1.Date := Now;
end;

end.
