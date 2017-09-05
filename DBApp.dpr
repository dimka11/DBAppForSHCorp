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
  Stat in 'Stat.pas' {StatForm},
  EditClient in 'EditClient.pas' {FormEditClient},
  OrderAdd in 'OrderAdd.pas' {FormOrderAdd},
  EditProduct in 'EditProduct.pas' {FormEditProduct},
  EditOrder in 'EditOrder.pas' {FormEditOrder},
  Vcl.Themes,
  Vcl.Styles,
  Notes in 'Notes.pas' {FormNotes},
  EditStore in 'EditStore.pas' {FormEditStore},
  EditPromo in 'EditPromo.pas' {FormEditPromotion};

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
  Application.CreateForm(TFormEditClient, FormEditClient);
  Application.CreateForm(TFormOrderAdd, FormOrderAdd);
  Application.CreateForm(TFormEditProduct, FormEditProduct);
  Application.CreateForm(TFormEditOrder, FormEditOrder);
  Application.CreateForm(TFormNotes, FormNotes);
  Application.CreateForm(TFormEditStore, FormEditStore);
  Application.CreateForm(TFormEditPromotion, FormEditPromotion);
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
