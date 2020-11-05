program PLoginForm;

uses
  Vcl.Forms,
  uLoginForm in 'uLoginForm.pas' {LoginForm},
  uMainForm in 'uMainForm.pas' {MainForm},
  uModule in 'uModule.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
