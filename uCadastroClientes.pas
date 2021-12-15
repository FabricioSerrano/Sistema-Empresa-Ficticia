unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmCadastroClientes = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Label6: TLabel;
    btnValidador: TBitBtn;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnValidadorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

uses uMenu, uValidador;



procedure TfrmCadastroClientes.btnValidadorClick(Sender: TObject);
begin
  frmCpfValidador.show;
end;

procedure TfrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMenu.show;
end;

end.
