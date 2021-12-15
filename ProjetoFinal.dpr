program ProjetoFinal;

uses
  Vcl.Forms,
  uSplash in 'uSplash.pas' {frmSplash},
  uLogin in 'uLogin.pas' {frmLogin},
  uDM in 'uDM.pas' {DM: TDataModule},
  uMenu in 'uMenu.pas' {frmMenu},
  uCalculadora in 'uCalculadora.pas' {frmCalculadora},
  uValidador in 'uValidador.pas' {frmCpfValidador},
  uCadastroUsuario in 'uCadastroUsuario.pas' {frmCadastroUsuario},
  uCadastroClientes in 'uCadastroClientes.pas' {frmCadastroClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.CreateForm(TfrmCpfValidador, frmCpfValidador);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
