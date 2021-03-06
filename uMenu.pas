unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, uCalculadora, uValidador, uDM,
  Vcl.Buttons;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Splitter1: TSplitter;
    Label1: TLabel;
    Arquivo1: TMenuItem;
    Editar: TMenuItem;
    Cadastro: TMenuItem;
    Clientes: TMenuItem;
    Usuarios: TMenuItem;
    Sair: TMenuItem;
    Abrir: TMenuItem;
    BlocoNotas: TMenuItem;
    Calculadora: TMenuItem;
    Validador: TMenuItem;
    lbnNivel: TLabel;
    lbnHora: TLabel;
    Timer1: TTimer;
    btnVoltarLogin: TBitBtn;
    procedure SairClick(Sender: TObject);
    procedure BlocoNotasClick(Sender: TObject);
    procedure CalculadoraClick(Sender: TObject);
    procedure ValidadorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UsuariosClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnVoltarLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uLogin, ucadastroUsuario, uCadastroClientes;

procedure TfrmMenu.BlocoNotasClick(Sender: TObject);
begin
  WinExec('notepad.exe', sw_shownormal);
end;



procedure TfrmMenu.btnVoltarClick(Sender: TObject);
begin
  frmMenu.Visible := False;
  frmLogin.Visible := True;
end;

procedure TfrmMenu.btnVoltarLoginClick(Sender: TObject);
begin
  frmLogin.Visible := True;
  frmMenu.Visible := False;
  frmLogin.edtLogin.Clear;
  frmLogin.edtSenha.Clear;
end;

procedure TfrmMenu.CalculadoraClick(Sender: TObject);
begin
  frmCalculadora.show;
end;

procedure TfrmMenu.ClientesClick(Sender: TObject);
begin
  frmCadastroClientes.show;
  frmMenu.Visible := False;
end;

procedure TfrmMenu.ValidadorClick(Sender: TObject);
begin
  frmCpfValidador.show;
end;
procedure TfrmMenu.FormShow(Sender: TObject);
begin
  if (DM.ADOQuery1Nivel.Value = 0) then
    begin
      lbnNivel.Caption := 'Operacional';
      Usuarios.Visible := false;
    end
    else
      begin
        lbnNivel.Caption := 'Administrador';
        Usuarios.Enabled := true;
      end;

end;

procedure TfrmMenu.SairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenu.Timer1Timer(Sender: TObject);
var
  hora: TDateTime;
begin
  hora := Time();
  lbnHora.Caption := timetostr(hora);
end;

procedure TfrmMenu.UsuariosClick(Sender: TObject);
begin
  frmCadastroUsuario.show;
  frmMenu.Visible := False;
end;

end.
