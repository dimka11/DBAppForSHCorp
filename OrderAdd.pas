unit OrderAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, DBDateTimePicker, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, comobj, oleserver;

type
  TFormOrderAdd = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEditEmp: TDBEdit;
    Label2: TLabel;
    DBEditClient: TDBEdit;
    Label5: TLabel;
    DBDateTimePicker1: TDBDateTimePicker;
    LeftPanel: TPanel;
    RightPanel: TPanel;
    TopPanel: TPanel;
    BotPanel: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    ButtonSave: TButton;
    Label3: TLabel;
    DBRichEdit1: TDBRichEdit;
    DataSource2: TDataSource;
    ADODataSet2: TADODataSet;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    ButtonAddOrder: TButton;
    ButtonAddOrderItem: TButton;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    ADOQuery1: TADOQuery;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADODataSetReceipt: TADODataSet;
    procedure FormShow(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure DBEditEmpDblClick(Sender: TObject);
    procedure AddSelectedEmp(Sender: TObject);
    procedure AddSelectedClient(Sender: TObject);
    procedure AddSelectedProduct(Sender: TObject);
    procedure DBEditClientDblClick(Sender: TObject);
    procedure DBEditProductDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ButtonAddOrderClick(Sender: TObject);
    procedure ButtonAddOrderItemClick(Sender: TObject);
    procedure SetDBGridWidth;
    procedure Button1Click(Sender: TObject);
    procedure GetTotalPrice;
    procedure Button2Click(Sender: TObject);
    procedure DBDateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrderAdd: TFormOrderAdd;

implementation

{$R *.dfm}

uses DM, Main;

procedure TFormOrderAdd.AddSelectedClient(Sender: TObject);
begin
  DMl.ADOStoredProcGetOrder.Edit;
  DBEditClient.Text := DMl.ADOQueryViewClientList.FieldByName('ID').Text;
  Screen.ActiveForm.Close;
end;

procedure TFormOrderAdd.AddSelectedEmp;
begin
  DMl.ADOStoredProcGetOrder.Edit;
  DBEditEmp.Text := Dml.ADOStoredProcGetEmpList.FieldByName('ID').Text;
  //(GetParentForm(TControl(Self))).Close;
  Screen.ActiveForm.Close;

end;

procedure TFormOrderAdd.AddSelectedProduct(Sender: TObject);
var
  RecordNumber: Integer;
begin
  //DBEditProduct.Text := Dml.ADOQueryViewProductList.FieldByName('ID').Text;
  ADODataSet2.FieldByName('ProductID').Text := DMl.ADOQueryViewProductList.FieldByName('ID').Text;
  Screen.ActiveForm.Close;
  ADODataSet2.Post;
  //ADODataSet2.Refresh;
  RecordNumber := ADODataSet2.RecNo;
  ADODataSet2.Active := False;
  ADODataSet2.Active := True;
  MainForm.SetGridView;
  ADODataSet2.RecNo := RecordNumber;
  GetTotalPrice;
  SetDBGridWidth;
end;

procedure TFormOrderAdd.Button1Click(Sender: TObject);
begin
  ADODataSet2.Edit;
  ADODataSet2.Post;
  GetTotalPrice;
end;

procedure TFormOrderAdd.Button2Click(Sender: TObject); // Печать чека
var WordApp, WD, NewDoc, WordTable, WordRow : OleVariant;
  i: Integer;
begin
  ADODataSetReceipt.Active := True;
  ADODataSetReceipt.RecNo := DMl.ADOStoredProcGetOrder.RecNo;
   WD := ExtractFilePath(ParamStr(0))+'Docs\Чек.dot';
  try
    WordApp := CreateOleObject('Word.Application');
  except
    ShowMessage('');
    exit;
  end;
  WordApp.visible := False;
    NewDoc := WordApp.documents.add(WD);
    NewDoc.bookmarks.item('OrderID').range.insertafter(DMl.ADOStoredProcGetOrder.FieldByName('ID').AsString);
    NewDoc.bookmarks.item('OrderDate').range.insertafter(DMl.ADOStoredProcGetOrder.FieldByName('Дата').AsString);
    NewDoc.bookmarks.item('Employee').range.insertafter(DMl.ADOStoredProcGetOrder.FieldByName('Фамилия Сотрудника').AsString + ' ' + ADODataSetReceipt.FieldByName('Имя Сотрудника').AsString);
    NewDoc.bookmarks.item('Client').range.insertafter(DMl.ADOStoredProcGetOrder.FieldByName('Фамилия клиента').AsString + ' ' + ADODataSetReceipt.FieldByName('Имя клиента').AsString );
    NewDoc.bookmarks.item('TotalPrice').range.insertafter(ADOQuery1.FieldByName('Total').AsString + ' Рублей');
    WordApp.ActiveDocument.Paragraphs.Add;
    //WordApp.ActiveDocument.Range.Font.Bold := True;
    //WordApp.ActiveDocument.Range.ParagraphFormat.Alignment := 1;
    WordApp.ActiveDocument.Range.InsertAfter (#13+#10+'Наименования:'+#13+#10);
    //Создание таблицы
  WordApp.ActiveDocument.Tables.Add(WordApp.ActiveDocument.Range.Characters.Last,1,3);
  WordTable := WordApp.ActiveDocument.Tables.Item(1);
   // Изменение ширины столбцов

    WordApp.ActiveDocument.tables.item(1).columns.item(1).PreferredWidth := 300;
    WordApp.ActiveDocument.tables.item(1).columns.item(2).PreferredWidth := 100;
    WordApp.ActiveDocument.tables.item(1).columns.item(3).PreferredWidth := 90;
    WordTable.Cell(1,1).range.font.bold := True;
    WordTable.Cell(1,2).range.font.bold := True;
    WordTable.Cell(1,3).range.font.bold := True;
    WordTable.Cell(1,1).range.text :=  'Наименование';
    WordTable.Cell(1,2).range.text := 'Количество'  ;
    WordTable.Cell(1,3).range.text := 'Сумма';



  // Вставка заказанной продукции
    ADODataSet2.First;


   // WordApp.ActiveDocument.Range.InsertAfter('Наименование                '+ 'Количество     '+ ' шт. ' + 'Сумма   ');
    //WordApp.ActiveDocument.Range.InsertAfter(#13+#10);
    //WordApp.ActiveDocument.Range.Font.Bold := False;
    //WordApp.ActiveDocument.Range.ParagraphFormat.Alignment := 3;
    for i := 1 to ADODataSet2.RecordCount do
    begin
      WordRow := WordTable.Rows.Add;
      WordTable.Cell(WordRow.Index, 1).Range.Text := ADODataSet2.FieldByName('Title').AsString;
      WordTable.Cell(WordRow.Index, 2).Range.Text := ADODataSet2.FieldByName('Quantity').AsString + ' шт.';
      WordTable.Cell(WordRow.Index, 3).Range.Text := ADODataSet2.FieldByName('Total').AsString + ' руб.';
      WordTable.Cell(WordRow.Index,1).range.font.bold := False;
      WordTable.Cell(WordRow.Index,2).range.font.bold := False;
      WordTable.Cell(WordRow.Index,3).range.font.bold := False;


      //WordApp.ActiveDocument.Range.InsertAfter(ADODataSet2.FieldByName('Title').AsString + ' ' + ADODataSet2.FieldByName('Quantity').AsString + ' ' + ADODataSet2.FieldByName('Total').AsString + '  Руб.' );
      //WordApp.ActiveDocument.Range.InsertAfter(#13+#10);
      ADODataSet2.Next
    end;
    WordApp.visible := True;

end;

procedure TFormOrderAdd.ButtonAddOrderClick(Sender: TObject);
begin
  DMl.ADOStoredProcGetOrder.Append;
  DBDateTimePicker1.Date := Now;
end;

procedure TFormOrderAdd.ButtonAddOrderItemClick(Sender: TObject);
var
  FormSelectProduct: TForm;
  SelectProductDBGrid: TDBGrid;
begin
  ADODataSet2.Append;
  FormSelectProduct := TForm.Create(Self);
  SelectProductDBGrid :=  TDBGrid.Create(Self);
  SelectProductDBGrid.Parent := FormSelectProduct;
  SelectProductDBGrid.Align := alClient;
  SelectProductDBGrid.DataSource := DMl.DataSourceViewProductList;
  SelectProductDBGrid.OnDblClick := AddSelectedProduct;
  FormSelectProduct.ShowModal;


  //ADODataSet2.Refresh;
end;

procedure TFormOrderAdd.ButtonSaveClick(Sender: TObject);
var
  RecordNumber: Integer;
begin
try
  DMl.ADOStoredProcGetOrder.Post;
  RecordNumber := DMl.ADOStoredProcGetOrder.RecNo;
  DMl.ADOStoredProcGetOrder.Active := False;
  DMl.ADOStoredProcGetOrder.Active := True;
  MainForm.SetGridView;
  DMl.ADOStoredProcGetOrder.RecNo := RecordNumber;

except
    Application.MessageBox('Проверьте введенныю информацию','Ошибка',MB_OK);
end;
end;



procedure TFormOrderAdd.DBDateTimePicker1Change(Sender: TObject);
begin
  DMl.ADOStoredProcGetOrder.Edit;
end;

procedure TFormOrderAdd.DBEditClientDblClick(Sender: TObject);
var
  FormSelectClient: TForm;
  SelectClientDBGrid: TDBGrid;
begin
  FormSelectClient := TForm.Create(Self);
  SelectClientDBGrid :=  TDBGrid.Create(Self);
  SelectClientDBGrid.Parent := FormSelectClient;
  SelectClientDBGrid.Align := alClient;
  ////////////
    DMl.DataSourceViewClientList.DataSet.Active := False;
    DMl.DataSourceViewClientList.DataSet.Active := True;
    MainForm.SetGridView;
  SelectClientDBGrid.DataSource := DMl.DataSourceViewClientList;
  SelectClientDBGrid.OnDblClick := AddSelectedClient;
  FormSelectClient.ShowModal;
end;

procedure TFormOrderAdd.DBEditEmpDblClick(Sender: TObject);
var
  FormSelectEmp: TForm;
  SelectEmpDBGrid: TDBGrid;

begin
  FormSelectEmp := TForm.Create(Self);
  SelectEmpDBGrid :=  TDBGrid.Create(Self);
  SelectEmpDBGrid.Parent := FormSelectEmp;
  SelectEmpDBGrid.Align := alClient;
  SelectEmpDBGrid.DataSource := DMl.DataSourceGetEmpList;
  SelectEmpDBGrid.OnDblClick := AddSelectedEmp;
  FormSelectEmp.ShowModal;
end;



procedure TFormOrderAdd.DBEditProductDblClick(Sender: TObject);
var
  FormSelectProduct: TForm;
  SelectProductDBGrid: TDBGrid;
begin
  FormSelectProduct := TForm.Create(Self);
  SelectProductDBGrid :=  TDBGrid.Create(Self);
  SelectProductDBGrid.Parent := FormSelectProduct;
  SelectProductDBGrid.Align := alClient;
  SelectProductDBGrid.DataSource := DMl.DataSourceViewProductList;
  SelectProductDBGrid.OnDblClick := AddSelectedProduct;
  FormSelectProduct.ShowModal;
end;

procedure TFormOrderAdd.FormActivate(Sender: TObject);
begin
  //DMl.ADOQueryAddOrder.Append;
end;

procedure TFormOrderAdd.FormCreate(Sender: TObject);
begin
  ADODataSet2.Active := True;

end;

procedure TFormOrderAdd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TFormOrderAdd.FormShow(Sender: TObject);
begin
  DMl.ADOStoredProcGetOrder.Edit;
  SetDBGridWidth;
end;

procedure TFormOrderAdd.GetTotalPrice;
var
  QueryResult: Integer;
begin
  ADOQuery1.Active := False;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select OrderID, sum(Total) AS Total ');
  ADOQuery1.SQL.Add('from ( ');
  ADOQuery1.SQL.Add('SELECT  ');
  ADOQuery1.SQL.Add('    OrderItem.ID');
  ADOQuery1.SQL.Add('    , ProductID');
  ADOQuery1.SQL.Add('    , OrderID');
  ADOQuery1.SQL.Add('    , Quantity');
  ADOQuery1.SQL.Add('    , P.Title');
  ADOQuery1.SQL.Add('    ,P.CurrentPrice');
  ADOQuery1.SQL.Add('    , P.ID');
  ADOQuery1.SQL.Add('    , (P.CurrentPrice* OrderItem.Quantity) AS Total');
  ADOQuery1.SQL.Add('FROM OrderItem ');
  ADOQuery1.SQL.Add('INNER JOIN Product AS P ON OrderItem.ProductID = P.ID ');
  ADOQuery1.SQL.Add(') t ');
  ADOQuery1.SQL.Add('WHERE OrderID = ' + DBEdit1.Text);
  ADOQuery1.SQL.Add('group by OrderId');
  try
    ADOQuery1.Active := True;
    Label9.Caption := ADOQuery1.FieldByName('Total').AsString + ' ' + 'Рублей';
  except

  end;

end;

procedure TFormOrderAdd.SetDBGridWidth;
begin
  DBGrid1.Columns[0].Visible := False;
  DBGrid1.Columns[1].Visible := False;
  DBGrid1.Columns[2].Visible := False;
  DBGrid1.Columns[3].Width := 40;
  DBGrid1.Columns[3].Title.Caption := 'Кол-во';
  DBGrid1.Columns[4].Width := 200;
  DBGrid1.Columns[4].Title.Caption := 'Название';
  DBGrid1.Columns[5].Width := 40;
  DBGrid1.Columns[5].Title.Caption := 'Цена';
  DBGrid1.Columns[6].Visible := False;
  DBGrid1.Columns[7].Title.Caption := 'Итого';
end;

end.
