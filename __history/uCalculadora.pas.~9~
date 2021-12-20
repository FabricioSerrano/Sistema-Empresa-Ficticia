unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalculadora = class(TForm)
    edtVisor: TEdit;
    btnUm: TButton;
    btnDois: TButton;
    btnTres: TButton;
    btnQuatro: TButton;
    btnCinco: TButton;
    btnSeis: TButton;
    btnSete: TButton;
    btnOito: TButton;
    btnNove: TButton;
    btnC: TButton;
    btnZero: TButton;
    btnMulti: TButton;
    btnDiv: TButton;
    btnSub: TButton;
    btnSoma: TButton;
    btnNeg: TButton;
    btnIgual: TButton;
    btnVirg: TButton;
    edtOper: TEdit;
    Label1: TLabel;
    procedure btnUmClick(Sender: TObject);
    procedure btnDoisClick(Sender: TObject);
    procedure btnTresClick(Sender: TObject);
    procedure btnQuatroClick(Sender: TObject);
    procedure btnCincoClick(Sender: TObject);
    procedure btnSeisClick(Sender: TObject);
    procedure btnSeteClick(Sender: TObject);
    procedure btnOitoClick(Sender: TObject);
    procedure btnNoveClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnNegClick(Sender: TObject);
    procedure btnVirgClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
   



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;
  val1, val2 : real;
  funcao : integer;

implementation

{$R *.dfm}

procedure TfrmCalculadora.btnCClick(Sender: TObject);
begin

//limpa o visor e zera as variáveis

edtVisor.Clear;
edtOper.clear;
val1 := 0;
val2 := 0;
btnNeg.Enabled := True;
end;

procedure TfrmCalculadora.btnCincoClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnCinco.Caption;
end;

procedure TfrmCalculadora.btnDivClick(Sender: TObject);
begin
val1 := StrToFloat(edtVisor.text);
edtOper.Text := edtVisor.Text + ' / ';
edtVisor.Clear;
funcao := 3; //divisão = 3
btnNeg.Enabled := True;
end;

procedure TfrmCalculadora.btnDoisClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnDois.Caption;
end;

procedure TfrmCalculadora.btnIgualClick(Sender: TObject);
var
soma:real;


  begin
    val2 := StrToFloat(edtVisor.Text);

    case (funcao) of 1 :
      begin
        soma := val1 + val2;
        edtOper.Text := edtOper.Text + edtVisor.Text + ' =';
        edtVisor.Text := FloatToStr(soma);

      end;

      2:
      begin
        soma := val1 -val2;
        edtOper.Text := edtOper.Text + edtVisor.Text + ' =';
        edtVisor.Text := FloatToStr(soma);
      end;

      3:
      begin
        if (val2 <> 0) then
          begin
          soma := val1 / val2;
          edtOper.Text := edtOper.Text + edtVisor.Text + ' =';
          edtVisor.Text := FloatToStr(soma);
          end

          else

            begin
            edtVisor.Text := 'ERRO';
            end;
      end;

      4:
      begin
        soma := val1 * val2;
        edtOper.Text := edtOper.Text + edtVisor.Text + ' =';
        edtVisor.Text := FloatToStr(soma);
      end;
    end;
    btnNeg.Enabled := True;
  end;

procedure TfrmCalculadora.btnMultiClick(Sender: TObject);
begin
val1 := StrToFloat(edtVisor.text);
edtOper.Text := edtVisor.Text + ' x ';
edtVisor.Clear;
funcao := 4; //multiplicação = 4
btnNeg.Enabled := True;
end;

procedure TfrmCalculadora.btnNegClick(Sender: TObject);
begin
edtVisor.Text := '-' + edtVisor.Text;
btnNeg.Enabled := False;
end;

procedure TfrmCalculadora.btnNoveClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnNove.Caption;
end;

procedure TfrmCalculadora.btnOitoClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnOito.Caption;
end;

procedure TfrmCalculadora.btnQuatroClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnQuatro.Caption;
end;

procedure TfrmCalculadora.btnSeisClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnSeis.Caption;
end;

procedure TfrmCalculadora.btnSeteClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnSete.Caption;
end;

procedure TfrmCalculadora.btnSomaClick(Sender: TObject);
begin
val1 := StrToFloat(edtVisor.text);
edtOper.Text := edtVisor.Text + ' + ';
edtVisor.Clear;
funcao := 1; //soma = 1
btnNeg.Enabled := True;
end;

procedure TfrmCalculadora.btnSubClick(Sender: TObject);
begin
val1 := StrToFloat(edtVisor.text);
edtOper.Text := edtVisor.Text + ' - ';
edtVisor.Clear;
funcao := 2; //subtração = 2
btnNeg.Enabled := True;
end;

procedure TfrmCalculadora.btnTresClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnTres.Caption;
end;

procedure TfrmCalculadora.btnUmClick(Sender: TObject);
begin
  edtVisor.Text := edtVisor.Text + btnUm.Caption;
end;

procedure TfrmCalculadora.btnVirgClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + ',';
end;

procedure TfrmCalculadora.btnZeroClick(Sender: TObject);
begin
edtVisor.Text := edtVisor.Text + btnZero.Caption;
end;



procedure TfrmCalculadora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if Key = VK_NUMPAD1 then
   btnUm.Click;

if Key = VK_NUMPAD2 then
   btnDois.Click;

if Key = VK_NUMPAD3 then
   btnTres.Click;

if Key = VK_NUMPAD4 then
   btnQuatro.Click;

if Key = VK_NUMPAD5 then
   btnCinco.Click;

if Key = VK_NUMPAD6 then
   btnSeis.Click;

if Key = VK_NUMPAD7 then
   btnSete.Click;

if Key = VK_NUMPAD8 then
   btnOito.Click;

if Key = VK_NUMPAD9 then
   btnNove.Click;

if Key = VK_NUMPAD0 then
   btnZero.Click;

if Key = VK_ADD then
   btnSoma.Click;

if Key = VK_SUBTRACT then
   btnSub.Click;

if Key = VK_MULTIPLY then
   btnMulti.Click;

if Key = VK_SUBTRACT then
   btnDiv.Click;

if Key = VK_DELETE then
   btnC.Click;

if Key = VK_RETURN then
   btnIgual.Click;

if Key = VK_DECIMAL then
   btnVirg.Click;
end;



procedure TfrmCalculadora.FormShow(Sender: TObject);
begin
frmCalculadora.SetFocus;
end;

end.
