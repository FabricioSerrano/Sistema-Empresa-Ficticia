unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDM, uMenu,
  Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    edtLogin: TEdit;
    edtSenha: TEdit;
    lbnLogin: TLabel;
    lbnSenha: TLabel;
    lbnLimparLogin: TLabel;
    lbnLimparSenha: TLabel;
    Splitter1: TSplitter;
    Label1: TLabel;
    btnLogin: TBitBtn;
    btnSair: TBitBtn;
    procedure lbnLimparSenhaClick(Sender: TObject);
    procedure lbnLimparLoginClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}



procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Text := 'SELECT * FROM tb_usuarios WHERE login = "' + edtLogin.Text + '" and senha = "' + edtSenha.Text + '"';
  DM.ADOQuery1.Open;

  if DM.ADOQuery1.RecordCount > 0 then
    begin
      frmMenu.Show;
      frmLogin.Visible := False;
    end
    else
      begin
        Application.MessageBox('Login ou Senha incorretos', 'Validação', MB_ICONERROR + mb_ok);;
        edtLogin.SetFocus;
      end;
end;



procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.lbnLimparLoginClick(Sender: TObject);
begin
  edtLogin.Clear;
end;

procedure TfrmLogin.lbnLimparSenhaClick(Sender: TObject);
begin
  edtSenha.Clear;
end;

end.
