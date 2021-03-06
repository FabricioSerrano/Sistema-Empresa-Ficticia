unit uValidador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCpfValidador = class(TForm)
    Label1: TLabel;
    edtCpf: TEdit;
    lbnTimer: TLabel;
    Timer1: TTimer;
    btnValidar: TButton;
    btnNovaColsulta: TButton;
    btnSair: TButton;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure btnNovaColsultaClick(Sender: TObject);
  private
    { Private declarations }
    function ValidaCPF(CPF: string):Boolean;
  public
    { Public declarations }
  end;

var
  frmCpfValidador: TfrmCpfValidador;

implementation

{$R *.dfm}

procedure TfrmCpfValidador.btnNovaColsultaClick(Sender: TObject);
begin
  edtCpf.clear;
end;

procedure TfrmCpfValidador.btnSairClick(Sender: TObject);
begin
  frmCpfValidador.Visible := false;
end;

procedure TfrmCpfValidador.btnValidarClick(Sender: TObject);
var
  hora: TDateTime;
begin
  begin
    //pegar hora
    //pode ser GetTime()
    //hora := GetTime();
    //hora := Time();
    //ShowMessage(TimeToStr(hora));

  end;

  if ValidaCPF(edtCpf.text) then
    begin
      Application.MessageBox('CPF V?lido.', 'Aviso', MB_ICONINFORMATION + mb_ok);
    end
    else
      Application.MessageBox('CPF Inv?lido', 'Aviso', MB_ICONERROR + mb_ok);

end;

function TFrmCpfValidador.ValidaCPF(CPF: string): Boolean;
var
  i: Integer;
  cpfSoNumero: String;
  cpfRepetido: Boolean;
  digito1, digito2: Integer;
begin
  result := False;
  //limpa o que n?o for n?mero
  cpfSoNumero := '';
  for i := 1 to length(CPF) do
    begin
      case char(CPF[i]) of
        '0' .. '9':
          cpfSoNumero := cpfSoNumero + CPF[i];
      end;
    end;

    //verifica se possui os 11 digitos

    if length(cpfSoNumero) <> 11 then
      begin
        exit;
      end;

      //teste se o cpf ? repetido como 000.000.000-00
    cpfRepetido := True;
    for i := 2 to length(cpfSoNumero) do
      begin
        if cpfSoNumero[1] <> cpfSoNumero[i] then
          begin
            //se o cpf possui um digito diferente ele passou no teste
            cpfRepetido := False;
            break;
          end;
      end;

    //se o cpf ? composto por numeros repetidos retorna true
    if (cpfRepetido) then
      begin
        exit;
      end;

    //executa o calculo para o primeiro digito verificador
    digito1 := 0;
    for i := 1 to 9 do
      begin
        digito1 := digito1 + (StrToInt(cpfSoNumero[10 - i])* (i + 1));
      end;

    //formula do primeiro verificarod soma
    digito1 := ((11- (digito1 mod 11))mod 11) mod 10;

    //verifica se o 1? digito confere

    if inttostr(digito1) <> cpfSoNumero[10] then
      begin
        exit;
      end;

    //executa o calculo para o segundo digito verificador
    digito2 := 0;
    for i := 1 to 10 do
      begin
        digito2 := digito2 + (strtoint(cpfSoNumero[11 - i])*(i + 1));
      end;

      digito2 := ((11-(digito2 mod 11))mod 11)mod 10;

      if inttostr(digito2) <> cpfSoNumero[11] then
        begin
          exit;
        end;

        result := True;
end;

procedure TfrmCpfValidador.Timer1Timer(Sender: TObject);
begin
  lbnTimer.Caption := DateTimeToStr(now);
end;

end.
