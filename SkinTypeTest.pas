unit SkinTypeTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormSkinType = class(TForm)
    Label1: TLabel;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    Button2: TButton;
    TestResult: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSkinType: TFormSkinType;

implementation

{$R *.dfm}

procedure TFormSkinType.Button1Click(Sender: TObject);
var
  i: Integer;
  sum: Integer;
begin
  sum := 0;
  for I := 0 to ComponentCount -1 do
    if Components[i] is TRadioGroup then
    begin
    sum := sum + (TRadioGroup(Components[i]).ItemIndex) +1;
    if TRadioGroup(Components[i]).ItemIndex = -1 then
    begin
      sum := -99;
      break;
    end;

    end;

    case sum of
      -99..5: TestResult.Caption := 'Заполнены не все пункты теста' ;
       6..9: TestResult.Caption :='Жирная/ проблемная';
       10..16: TestResult.Caption :='комбинированная/ смешаная';
       17..18: TestResult.Caption :='нормальная';
       19..24: TestResult.Caption :='сухая/чувствительная';
    end;
end;

procedure TFormSkinType.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  for I := 0 to ComponentCount -1 do
    if Components[i] is TRadioGroup then
      TRadioGroup(Components[i]).ItemIndex := -1;
end;

procedure TFormSkinType.CreateParams(var Params: TCreateParams);
begin
  inherited;
  if CheckWin32Version(5, 1) then
    Params.ExStyle := Params.ExStyle or WS_EX_COMPOSITED;
end;

end.
