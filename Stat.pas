unit Stat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, VclTee.TeeGDIPlus,
  Vcl.StdCtrls, Vcl.ComCtrls, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.Win.ADODB,
  VCLTee.Series, Vcl.Buttons, oleserver, comobj, ExcelXP;

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
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    Series1: TLineSeries;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBChart2: TDBChart;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Button2: TButton;
    Series2: TLineSeries;
    ADOQuery3: TADOQuery;
    DataSource2: TDataSource;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Button3: TButton;
    Panel5: TPanel;
    DBChart3: TDBChart;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Panel7: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    Button4: TButton;
    Panel8: TPanel;
    DBChart4: TDBChart;
    Panel9: TPanel;
    DBGrid4: TDBGrid;
    Series3: TLineSeries;
    Series4: TLineSeries;
    SpeedButton1: TSpeedButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ExportDBGrid2(toExcel: Boolean);
    procedure ExportDBGrid3(toExcel: Boolean);
    procedure ExportDBGrid4(toExcel: Boolean);
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

procedure TStatForm.Button1Click(Sender: TObject);
var
  dat,da:WideString;
  Receipts: double;
  profit: integer;
  totalprofit: double;
begin
 dat:=FormatDateTime('mm', DateTimePicker1.Date)+'/'+FormatDateTime('dd',DateTimePicker1.Date)+'/'+FormatDateTime('yyyy',DateTimePicker1.Date);
 da:=FormatDateTime('mm', DateTimePicker2.Date)+'/'+FormatDateTime('dd',DateTimePicker2.Date)+'/'+FormatDateTime('yyyy',DateTimePicker2.Date);
 ADOQuery1.close;
 ADOQuery1.SQL.Clear;
 //   ADOQuery1.SQl.add('SELECT O.ID, C.SecondName AS Клиент, E.SecondName AS Сотрудник, O.DateOf AS Дата, Sum(P.CurrentPrice* OrderItem.Quantity) AS [Сумма заказа] ');
 ADOQuery1.SQl.add('SELECT O.ID, C.SecondName AS [Фамилия Клиента],C.FirstName AS [Имя клиента], E.SecondName AS [Фамилия сотрудника], E.FirstName AS [Имя сотрудника], O.DateOf AS Дата, Sum(P.CurrentPrice* OrderItem.Quantity) AS [Сумма заказа] ');
 ADOQuery1.SQl.add('FROM (((Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.ClientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID) INNER JOIN OrderItem ON O.ID = OrderItem.OrderID) INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');

 ADOQuery1.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery1.SQl.add('GROUP BY O.ID, C.SecondName, C.FirstName, E.SecondName, E.FirstName, O.DateOf ');
 //ShowMessage(ADOQuery1.SQL.Text);
 ADOQuery1.Open;


 // Выручка и прибыль
 ADOQuery2.Close;
 ADOQuery2.SQL.Clear;
 ADOQuery2.SQL.Add('SELECT Sum(P.CurrentPrice* OrderItem.Quantity) AS [Сумма заказа] ');
 ADOQuery2.SQL.Add('FROM (((Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.ClientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID) INNER JOIN OrderItem ON O.ID = OrderItem.OrderID) INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');
 ADOQuery2.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery2.Open;
 LabelReceipts.Caption := ADOQuery2.FieldByName('Сумма заказа').Text + ' руб.';


 try
  //profit := StrToInt(LabelReceipts.Caption);
  profit := ADOQuery2.FieldByName('Сумма заказа').AsInteger;
  totalprofit := profit * 0.3;
  LabelProfit.Caption := FloatToStr(totalprofit) + ' руб.';
  except
 end;

 ////////////////

 with series1 do
begin
  datasource := ADOquery1;
  xlabelssource:='Дата';
  YValues.Valuesource:='Сумма заказа';
  checkdatasource;
end;
  DBChart1.Title.Text[0] := 'Выручка за период с ' + DateToStr(DateTimePicker1.Date) + ' по ' + DateToStr(DateTimePicker2.Date);
end;

procedure TStatForm.Button2Click(Sender: TObject);
var
  dat,da:WideString;
  Receipts: double;
  profit: integer;
  totalprofit: double;
begin
  dat:=FormatDateTime('mm', DateTimePicker3.Date)+'/'+FormatDateTime('dd',DateTimePicker3.Date)+'/'+FormatDateTime('yyyy',DateTimePicker1.Date);
  da:=FormatDateTime('mm', DateTimePicker4.Date)+'/'+FormatDateTime('dd',DateTimePicker4.Date)+'/'+FormatDateTime('yyyy',DateTimePicker2.Date);
  ADOQuery3.close;
 ADOQuery3.SQL.Clear;
 ADOQuery3.SQl.add('SELECT O.DateOf AS Дата, Sum(P.CurrentPrice* OrderItem.Quantity) AS [Выручка за день] ');
 ADOQuery3.SQl.add('FROM (((Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.ClientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID) INNER JOIN OrderItem ON O.ID = OrderItem.OrderID) INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');

 ADOQuery3.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery3.SQl.add('GROUP BY  O.DateOf ');
 //ShowMessage(ADOQuery3.SQL.Text);
 ADOQuery3.Open;
 Button5.Enabled := True;
 try
  DBGrid2.Columns[1].Title.Caption := 'Сумма руб.';
  except

 end;


 // Выручка и прибыль
 ADOQuery2.Close;
 ADOQuery2.SQL.Clear;
 ADOQuery2.SQL.Add('SELECT Sum(P.CurrentPrice* OrderItem.Quantity) AS [Сумма заказа] ');
 ADOQuery2.SQL.Add('FROM (((Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.ClientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID) INNER JOIN OrderItem ON O.ID = OrderItem.OrderID) INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');
 ADOQuery2.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery2.Open;
 Label8.Caption := ADOQuery2.FieldByName('Сумма заказа').Text + ' руб.';


 try
  //profit := StrToInt(Label8.Caption);
  profit := ADOQuery2.FieldByName('Сумма заказа').AsInteger;
  totalprofit := profit * 0.3;
  Label10.Caption := FloatToStr(totalprofit) + ' руб.';
  except
 end;

  with series2 do
begin
  datasource := ADOquery3;
  xlabelssource:='Дата';
  YValues.Valuesource:='Выручка за день';
  checkdatasource;
end;
  DBChart2.Title.Text[0] := 'Выручка за период с ' + DateToStr(DateTimePicker3.Date) + ' по ' + DateToStr(DateTimePicker4.Date);

end;


procedure TStatForm.Button3Click(Sender: TObject);
var
  dat,da:WideString;
  Receipts: double;
  profit: integer;
  totalprofit: double;
begin
  dat:=FormatDateTime('mm', DateTimePicker5.Date)+'/'+FormatDateTime('dd',DateTimePicker5.Date)+'/'+FormatDateTime('yyyy',DateTimePicker5.Date);
  da:=FormatDateTime('mm', DateTimePicker6.Date)+'/'+FormatDateTime('dd',DateTimePicker6.Date)+'/'+FormatDateTime('yyyy',DateTimePicker6.Date);
  // По клиентам

  ADOQuery4.close;
 ADOQuery4.SQL.Clear;
 ADOQuery4.SQl.add('SELECT C.SecondName AS Фамилия,C.FirstName AS Имя, Count(O.ID) AS [Количество заказов], Sum(P.CurrentPrice* OI.Quantity) AS Сумма ');
 ADOQuery4.SQl.add('FROM ((Client AS C INNER JOIN [Order] AS O ON C.ID = O.ClientID) INNER JOIN OrderItem AS OI ON O.ID = OI.OrderID) INNER JOIN Product AS P ON OI.ProductID = P.ID');

 ADOQuery4.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery4.SQl.add('GROUP BY C.SecondName, C.FirstName');
 //ShowMessage(ADOQuery4.SQL.Text);
 ADOQuery4.Open;
 Button6.Enabled := True;
  try
  DBGrid3.Columns[3].Title.Caption := 'Сумма руб.';
  except

 end;
 with series3 do
begin
  datasource := ADOQuery4;
  xlabelssource:='Фамилия';
  YValues.Valuesource:='Количество заказов';
  checkdatasource;
end;
  DBChart3.Title.Text[0] := 'Заказов за период с ' + DateToStr(DateTimePicker5.Date) + ' по ' + DateToStr(DateTimePicker6.Date);


/////Выручка и прибыль
  ADOQuery2.Close;
 ADOQuery2.SQL.Clear;
 ADOQuery2.SQL.Add('SELECT Sum(P.CurrentPrice* OrderItem.Quantity) AS [Сумма заказа] ');
 ADOQuery2.SQL.Add('FROM (((Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.ClientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID) INNER JOIN OrderItem ON O.ID = OrderItem.OrderID) INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');
 ADOQuery2.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery2.Open;
 Label14.Caption := ADOQuery2.FieldByName('Сумма заказа').Text + ' руб.';

 try
  //profit := StrToInt(Label14.Caption);
  profit := ADOQuery2.FieldByName('Сумма заказа').AsInteger;
  totalprofit := profit * 0.3;
  Label16.Caption := FloatToStr(totalprofit) + ' руб.';
  except
 end;

end;

procedure TStatForm.Button4Click(Sender: TObject);
var
  dat,da:WideString;
  profit: integer;
  Receipts: double;
  totalprofit: double;
begin
  dat:=FormatDateTime('mm', DateTimePicker7.Date)+'/'+FormatDateTime('dd',DateTimePicker7.Date)+'/'+FormatDateTime('yyyy',DateTimePicker7.Date);
  da:=FormatDateTime('mm', DateTimePicker8.Date)+'/'+FormatDateTime('dd',DateTimePicker8.Date)+'/'+FormatDateTime('yyyy',DateTimePicker8.Date);
  // По продуктам
   ADOQuery5.close;
 ADOQuery5.SQL.Clear;
 ADOQuery5.SQl.add('SELECT P.Title AS Продукт, COUNT(OI.ProductID) AS [Продано (шт)] ');
 ADOQuery5.SQl.add('FROM (Product AS P INNER JOIN OrderItem AS OI ON P.ID = OI.ProductID) INNER JOIN [Order] AS O ON OI.OrderID = O.ID ');

 ADOQuery5.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery5.SQl.add('GROUP BY P.Title; ');
 //ShowMessage(ADOQuery5.SQL.Text);
 ADOQuery5.Open;
 Button7.Enabled := True;
 with series4 do
begin
  datasource := ADOQuery5;
  xlabelssource:='Продукт';
  YValues.Valuesource:='Продано (шт)';
  checkdatasource;
end;
  DBChart4.Title.Text[0] := 'Продано за период с ' + DateToStr(DateTimePicker7.Date) + ' по ' + DateToStr(DateTimePicker8.Date);

/////Выручка и прибыль
 ADOQuery2.Close;
 ADOQuery2.SQL.Clear;
 ADOQuery2.SQL.Add('SELECT Sum(P.CurrentPrice* OrderItem.Quantity) AS [Сумма заказа] ');
 ADOQuery2.SQL.Add('FROM (((Client AS C INNER JOIN [ORDER] AS O ON C.ID = O.ClientID) INNER JOIN Employee AS E ON E.ID = O.EmployeeID) INNER JOIN OrderItem ON O.ID = OrderItem.OrderID) INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');
 ADOQuery2.SQl.add('WHERE (O.DateOf between #'+dat+'# and #'+da+'#)');
 ADOQuery2.Open;
 try
 DBGrid4.Columns[0].Width := 200;
 except

 end;
 Label20.Caption := ADOQuery2.FieldByName('Сумма заказа').Text + ' руб.';


 try
  //profit := StrToInt(Label20.Caption);
  profit := ADOQuery2.FieldByName('Сумма заказа').AsInteger;
  totalprofit := profit * 0.3;
  Label22.Caption := FloatToStr(totalprofit) + ' руб.';
  except
 end;

end;

procedure TStatForm.Button5Click(Sender: TObject);
var
gcd: string;
begin
   if PageControl1.ActivePageIndex = 1 then
  begin
   // gcd := GetCurrentDir + '\Отчет\1.XLS';
  // ExportToExcel(DBGrid1.DataSource.DataSet,gcd);
  ExportDBGrid2(True);
  end;
  if PageControl1.ActivePageIndex = 2 then
    ExportDBGrid3(True);
  if PageControl1.ActivePageIndex = 3 then
    ExportDBGrid4(True);
end;

procedure TStatForm.ExportDBGrid2(toExcel: Boolean);
var
 bm: TBookmark;
 col, row: Integer;
 sline: string;
 mem: TMemo;
 ExcelApp: Variant;
begin
  Screen.Cursor := crHourglass;
  DBGrid2.DataSource.DataSet.DisableControls;
  bm := DBGrid2.DataSource.DataSet.GetBookmark;
  DBGrid2.DataSource.DataSet.First;

  // создаём объект Excel
  if toExcel then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add(1);
    ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Отчет о выручке';
  end;

  // Сперва отправляем данные в memo
  // работает быстрее, чем отправлять их напрямую в Excel
  mem := TMemo.Create(Self);
  mem.Visible := false;
  mem.Parent := StatForm;
  mem.Clear;
  sline := '';

  // добавляем информацию для имён колонок
  for col := 0 to DBGrid2.FieldCount-1 do
    sline := sline + DBGrid2.Fields[col].DisplayLabel + #9;
  mem.Lines.Add(sline);

  // получаем данные из memo
  for row := 0 to DBGrid2.DataSource.DataSet.RecordCount-1 do
  begin
    sline := '';
    for col := 0 to DBGrid2.FieldCount-1 do
      sline := sline + DBGrid2.Fields[col].AsString + #9;
    mem.Lines.Add(sline);
    DBGrid2.DataSource.DataSet.Next;
  end;

  // копируем данные в clipboard
  mem.SelectAll;
  mem.CopyToClipboard;

  // если необходимо, то отправляем их в Excel
  // если нет, то они уже в буфере обмена
  if toExcel then
  try
  begin
    ExcelApp.workbooks[1].worksheets[1].columns[1].columnwidth:=60;
    ExcelApp.workbooks[1].worksheets[1].columns[2].columnwidth:=30;
    ExcelApp.workbooks[1].worksheets[1].columns[3].columnwidth:=30;
    ExcelApp.Workbooks[1].WorkSheets['Отчет о выручке'].Paste;
    ExcelApp.Visible := true;
  end;
  except

  end;
end;


procedure TStatForm.ExportDBGrid3(toExcel: Boolean);
var
 bm: TBookmark;
 col, row: Integer;
 sline: string;
 mem: TMemo;
 ExcelApp: Variant;
begin
  Screen.Cursor := crHourglass;
  DBGrid3.DataSource.DataSet.DisableControls;
  bm := DBGrid3.DataSource.DataSet.GetBookmark;
  DBGrid3.DataSource.DataSet.First;

  // создаём объект Excel
  if toExcel then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add(1);
    ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Отчет по клиентам';
  end;

  // Сперва отправляем данные в memo
  // работает быстрее, чем отправлять их напрямую в Excel
  mem := TMemo.Create(Self);
  mem.Visible := false;
  mem.Parent := StatForm;
  mem.Clear;
  sline := '';

  // добавляем информацию для имён колонок
  for col := 0 to DBGrid3.FieldCount-1 do
    sline := sline + DBGrid3.Fields[col].DisplayLabel + #9;
  mem.Lines.Add(sline);

  // получаем данные из memo
  for row := 0 to DBGrid3.DataSource.DataSet.RecordCount-1 do
  begin
    sline := '';
    for col := 0 to DBGrid3.FieldCount-1 do
      sline := sline + DBGrid3.Fields[col].AsString + #9;
    mem.Lines.Add(sline);
    DBGrid3.DataSource.DataSet.Next;
  end;

  // копируем данные в clipboard
  mem.SelectAll;
  mem.CopyToClipboard;

  // если необходимо, то отправляем их в Excel
  // если нет, то они уже в буфере обмена
  if toExcel then
  try
  begin
    ExcelApp.workbooks[1].worksheets[1].columns[1].columnwidth:=60;
    ExcelApp.workbooks[1].worksheets[1].columns[2].columnwidth:=30;
    ExcelApp.workbooks[1].worksheets[1].columns[3].columnwidth:=30;
    ExcelApp.Workbooks[1].WorkSheets['Отчет по клиентам'].Paste;
    ExcelApp.Visible := true;
  end;
  except

  end;
end;

procedure TStatForm.ExportDBGrid4(toExcel: Boolean);
var
 bm: TBookmark;
 col, row: Integer;
 sline: string;
 mem: TMemo;
 ExcelApp: Variant;
begin
    Screen.Cursor := crHourglass;
  DBGrid4.DataSource.DataSet.DisableControls;
  bm := DBGrid4.DataSource.DataSet.GetBookmark;
  DBGrid4.DataSource.DataSet.First;

  // создаём объект Excel
  if toExcel then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add(1);
    ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Отчет по продуктам';
  end;

  // Сперва отправляем данные в memo
  // работает быстрее, чем отправлять их напрямую в Excel
  mem := TMemo.Create(Self);
  mem.Visible := false;
  mem.Parent := StatForm;
  mem.Clear;
  sline := '';

  // добавляем информацию для имён колонок
  for col := 0 to DBGrid4.FieldCount-1 do
    sline := sline + DBGrid4.Fields[col].DisplayLabel + #9;
  mem.Lines.Add(sline);

  // получаем данные из memo
  for row := 0 to DBGrid4.DataSource.DataSet.RecordCount-1 do
  begin
    sline := '';
    for col := 0 to DBGrid4.FieldCount-1 do
      sline := sline + DBGrid4.Fields[col].AsString + #9;
    mem.Lines.Add(sline);
    DBGrid4.DataSource.DataSet.Next;
  end;

  // копируем данные в clipboard
  mem.SelectAll;
  mem.CopyToClipboard;

  // если необходимо, то отправляем их в Excel
  // если нет, то они уже в буфере обмена
  if toExcel then
  try
  begin
    ExcelApp.workbooks[1].worksheets[1].columns[1].columnwidth:=100;
    ExcelApp.workbooks[1].worksheets[1].columns[2].columnwidth:=30;
    //ExcelApp.workbooks[1].worksheets[1].columns[3].columnwidth:=10;
    ExcelApp.Workbooks[1].WorkSheets['Отчет по продуктам'].Paste;
    ExcelApp.Visible := true;
  end;
  except

  end;
end;

procedure TStatForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TStatForm.FormShow(Sender: TObject);
begin
  DBChart1.Title.Text[0] := '';
  DBChart2.Title.Text[0] := '';
  DBChart3.Title.Text[0] := '';
  DBChart4.Title.Text[0] := '';
end;

end.
