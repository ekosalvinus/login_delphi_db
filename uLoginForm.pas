unit uLoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtUser: TEdit;
    edtPass: TEdit;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

uses uModule, uMainForm;

procedure TLoginForm.btnLoginClick(Sender: TObject);
begin
with dm.FDConnection1 do begin
  Close;
  dm.FDQuery1.Close;
  dm.FDQuery1.open('select * from pengguna where user_id='+QuotedStr(edtuser.Text));
  Open;
end;
if dm.FDQuery1.RecordCount=0 then
Application.MessageBox('Maaf, Username Tesebut Tidak Ada','Informasi',MB_OK or MB_ICONINFORMATION)
else begin
if dm.FDQuery1.FieldByName('pass_id').AsString<>edtpass.text then
Application.MessageBox('Pastikan Password atau Username benar','Error',MB_OK or MB_ICONERROR)
else begin
  mainform.Show;
  end
end;
end;

end.
