unit ShowModalImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFormShowModalImage = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormShowModalImage: TFormShowModalImage;

implementation

{$R *.dfm}

uses DM, Guest;

procedure TFormShowModalImage.FormShow(Sender: TObject);
begin
  if GuestForm.Showing then
  begin
  try
  begin
    FormShowModalImage.Image1.Picture.LoadFromFile(GetCurrentDir+'/Images/'+DMl.ADOStoredProcGuestView.FieldByName('Image').Text);
    Image1.Stretch := False;
    Image1.Width := Image1.Picture.Width;
    Image1.Height := Image1.Picture.Height;
    FormShowModalImage.Width := Image1.Width;
    FormShowModalImage.Height := Image1.Height;
  end;
  except
    begin
    FormShowModalImage.Image1.Picture.LoadFromFile(GetCurrentDir+ '\Images\no-image-large.jpg');
    Image1.Stretch := False;
    Image1.Width := Image1.Picture.Width;
    Image1.Height := Image1.Picture.Height;
    FormShowModalImage.Width := Image1.Width;
    FormShowModalImage.Height := Image1.Height;
    end;
  end;
end;
end;
end.
