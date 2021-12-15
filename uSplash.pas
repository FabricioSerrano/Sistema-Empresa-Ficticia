unit uSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uLogin;

type
  TfrmSplash = class(TForm)
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Splitter1: TSplitter;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 2;
  if (ProgressBar1.Position = 100) then
    begin
      Timer1.Enabled := false;
      frmSplash.Destroy;
      frmLogin.Show;
    end;

end;

end.
