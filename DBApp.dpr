program DBApp;



uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginForm},
  Guest in 'Guest.pas' {GuestForm},
  Main in 'Main.pas' {MainForm},
  About in 'About.pas' {AboutForm},
  DM in 'DM.pas' {DMl: TDataModule},
  ClientPrograms in 'ClientPrograms.pas' {ClientProgramsForm};

{ClientProgramsForm}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TGuestForm, GuestForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TDMl, DMl);
  Application.CreateForm(TClientProgramsForm, ClientProgramsForm);
  Application.Run;
end.
