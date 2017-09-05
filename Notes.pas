unit Notes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Mask, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, DBDateTimePicker,
  Vcl.Buttons;

type
  TFormNotes = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBRichEditNoteMainText: TDBRichEdit;
    DBEditNoteTitle: TDBEdit;
    DBDateTimePickerNote: TDBDateTimePicker;
    BitBtnSave: TBitBtn;
    BitBtnAdd: TBitBtn;
    BitBtnDelete: TBitBtn;
    PanelLeft: TPanel;
    PanelRigth: TPanel;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure BitBtnAddClick(Sender: TObject);
    procedure BitBtnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetWidthGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotes: TFormNotes;

implementation

{$R *.dfm}

uses DM;

procedure TFormNotes.BitBtnAddClick(Sender: TObject);
begin
  DMl.ADOQueryNotes.Append;
  DBDateTimePickerNote.Date := Now;
end;

procedure TFormNotes.BitBtnDeleteClick(Sender: TObject);
begin
  DMl.ADOQueryNotes.Delete;
end;

procedure TFormNotes.BitBtnSaveClick(Sender: TObject);
begin
  try
  begin
    if Dml.ADOQueryNotes.FieldByName('����').Text = '' then
      Dml.ADOQueryNotes.FieldByName('����').AsDateTime := DBDateTimePickerNote.Date;
    DMl.ADOQueryNotes.Post;
  end;
  except
    ShowMessage('��������� ��������� ������');
  end;
end;

procedure TFormNotes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #27) then
  Close;
end;

procedure TFormNotes.FormShow(Sender: TObject); //������� ������� ����
begin
  DBDateTimePickerNote.Date := Now;
  SetWidthGrid;
end;

procedure TFormNotes.SetWidthGrid; // ��������� ������ �����
begin
  try
    DBGrid1.Columns[0].Width := 20;
    DBGrid1.Columns[1].Width := 200;
    DBGrid1.Columns[2].Visible := False;
    DBGrid1.Columns[3].Width := (DBGrid1.Width - (20 + 200));
  except

  end;
end;

end.
