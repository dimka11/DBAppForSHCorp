unit ClientPrograms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Excel2010, comObj,
  Vcl.StdCtrls;

type
  TClientProgramsForm = class(TForm)
    StringGrid1: TStringGrid;
    TopPanel: TPanel;
    BotPanel: TPanel;
    StatusBar1: TStatusBar;
    TabControl1: TTabControl;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure NamesForTabs;
    procedure FillStringGrid;
    procedure TabControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientProgramsForm: TClientProgramsForm;
  Excel: OleVariant;
  WorkSheet : Variant;

implementation

{$R *.dfm}

uses RecCir;



procedure TClientProgramsForm.Button1Click(Sender: TObject);
begin
   FormRecCir.ShowModal;
end;

procedure TClientProgramsForm.FillStringGrid;
var
  i, j: integer;
begin
    // Ширина столбцов
    //for i := 0 to Excel.Sheets[TabControl1.TabIndex +1].UsedRange.Columns.Count  do
      //StringGrid1.ColWidths[i -1] := 200;   // НЕРАБОЧИЙ КОД
      try
        StringGrid1.ColWidths[0] := 400;
        StringGrid1.ColWidths[1] := 400;
        StringGrid1.ColWidths[2] := 400;
        StringGrid1.ColWidths[3] := 400;
        StringGrid1.ColWidths[4] := 400;
        StringGrid1.ColWidths[5] := 400;
        StringGrid1.ColWidths[6] := 400;
        StringGrid1.ColWidths[7] := 400;
        StringGrid1.ColWidths[8] := 5;
      except

      end;

     with StringGrid1 do
      for i:=0 to RowCount-1 do
        Rows[i].Clear;
    StringGrid1.ColCount := Excel.Sheets[TabControl1.TabIndex + 1].UsedRange.Columns.Count;
    StringGrid1.RowCount := Excel.Sheets[TabControl1.TabIndex + 1].UsedRange.Rows.Count;
    for i := 1 to Excel.Sheets[TabControl1.TabIndex + 1].UsedRange.Rows.Count do
    for j := 1 to Excel.Sheets[TabControl1.TabIndex + 1].UsedRange.Columns.Count do
    StringGrid1.Cells[j-1, i-1] := Excel.Sheets[TabControl1.TabIndex + 1].Cells[i, j].Text;
end;

procedure TClientProgramsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Excel.Workbooks.Close;
end;

procedure TClientProgramsForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TClientProgramsForm.FormPaint(Sender: TObject);
begin
    try
        StringGrid1.ColWidths[0] := 400;
        StringGrid1.ColWidths[1] := 400;
        StringGrid1.ColWidths[2] := 400;
        StringGrid1.ColWidths[3] := 400;
        StringGrid1.ColWidths[4] := 400;
        StringGrid1.ColWidths[5] := 400;
        StringGrid1.ColWidths[6] := 400;
        StringGrid1.ColWidths[7] := 400;
        StringGrid1.ColWidths[8] := 5;
      except


    end;
end;

procedure TClientProgramsForm.FormShow(Sender: TObject);
var
  i, j: word;
begin
  Excel := CreateOleObject('Excel.Application');
  Excel.Workbooks.Open(GetCurrentDir+ '/Docs/pr.xlsx');
  NamesForTabs;  // Имена для табов
  FillStringGrid;
end;

procedure TClientProgramsForm.NamesForTabs;
var
  i: Integer;
begin
  for i := 1 to Excel.Sheets.Count do
  begin
    TabControl1.Tabs[i -1] := Excel.Sheets[i].Name;
  end;


end;

procedure TClientProgramsForm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  const
    clPaleGreen = TColor($CCFFCC);
    clPaleRed = TColor($CCCCFF);
begin
 //Если ячейка получает фокус, то нам надо закрасить её другими цветами
  if (gdFocused in State) then
  begin
    StringGrid1.Canvas.Brush.Color := clDkGray;
    StringGrid1.Canvas.Font.Color := clWhite;
  end
  else //Если же ячейка теряет фокус, то закрашиваем её красным и зелёным
    if ACol = 0 then
      StringGrid1.Canvas.Brush.color := clWebLightBlue
      else if Acol = 1 then
        StringGrid1.canvas.brush.Color := clWebLightYellow
      else if Acol = 2 then
        StringGrid1.canvas.brush.Color := clWebLightBlue
      else if Acol = 3  then
        StringGrid1.canvas.brush.Color := clWebLightYellow
    else
      StringGrid1.canvas.brush.Color := clWebLightBlue;
          if ARow = 0 then
          begin
            StringGrid1.Canvas.Font.Size := 10;
            StringGrid1.Canvas.Font.Style := [fsbold];
          end;


  //Теперь закрасим ячейки, но только, если ячейка не Title- Row/Column
  //Естественно это завит от того, есть у Вас title-Row/Columns или нет.

  if (ACol >= 0) and (ARow >= 0) then
  begin
    //Закрашиваем бэкграунд
    StringGrid1.Canvas.FillRect(Rect);

    //Закрашиваем текст (Text). Также здесь можно добавить выравнивание и т.д..
    StringGrid1.Canvas.TextOut(Rect.Left, Rect.Top, StringGrid1.Cells[ACol, ARow]);
  end;
end;

procedure TClientProgramsForm.TabControl1Change(Sender: TObject);
begin
  FillStringGrid;
end;

end.
