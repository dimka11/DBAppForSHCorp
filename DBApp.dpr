program DBApp;



uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  Login in 'Login.pas' {LoginForm},
  Guest in 'Guest.pas' {GuestForm},
  About in 'About.pas' {AboutForm},
  DM in 'DM.pas' {DMl: TDataModule},
  ClientPrograms in 'ClientPrograms.pas' {ClientProgramsForm},
  ClientProg in 'ClientProg.pas' {FormClientProg},
  ClPr in 'ClPr.pas' {ClPrForm},
  SkinTypeTest in 'SkinTypeTest.pas' {FormSkinType},
  RecCir in 'RecCir.pas' {FormRecCir},
  SubMain in 'SubMain.pas' {SubMainForm},
  ShowModalImage in 'ShowModalImage.pas' {FormShowModalImage},
  Events in 'Events.pas' {FormEvents},
  Schedule in 'Schedule.pas' {FormSchedule},
  EditEmp in 'EditEmp.pas' {EditEmpForm},
  Stat in 'Stat.pas' {StatForm};

{ClientProgramsForm}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.ShowMainForm := False;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TGuestForm, GuestForm);
  Application.CreateForm(TDMl, DMl);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TFormShowModalImage, FormShowModalImage);
  Application.CreateForm(TFormEvents, FormEvents);
  Application.CreateForm(TFormSchedule, FormSchedule);
  Application.CreateForm(TEditEmpForm, EditEmpForm);
  Application.CreateForm(TEditEmpForm, EditEmpForm);
  Application.CreateForm(TStatForm, StatForm);
  LoginForm.Visible := True;
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TClientProgramsForm, ClientProgramsForm);
  //Application.CreateForm(TFormClientProg, FormClientProg); //FMX Form
  Application.CreateForm(TClPrForm, ClPrForm);
  Application.CreateForm(TFormSkinType, FormSkinType);
  Application.CreateForm(TFormRecCir, FormRecCir);
  Application.CreateForm(TSubMainForm, SubMainForm);
  Application.Run;
end.
