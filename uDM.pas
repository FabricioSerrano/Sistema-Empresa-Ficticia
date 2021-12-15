unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1id: TAutoIncField;
    ADOQuery1nome: TWideStringField;
    ADOQuery1login: TWideStringField;
    ADOQuery1senha: TWideStringField;
    ADOQuery1nivel: TIntegerField;
    tbUsuarios: TADOTable;
    tbUsuariosid: TAutoIncField;
    tbUsuariosnome: TWideStringField;
    tbUsuarioslogin: TWideStringField;
    tbUsuariossenha: TWideStringField;
    tbUsuariosnivel: TIntegerField;
    tbClientes: TADOTable;
    tbClientesid: TAutoIncField;
    tbClientesnome: TWideStringField;
    tbClientescpf_cnpj: TWideStringField;
    tbClientesendereco: TWideStringField;
    tbClientesuf: TWideStringField;
    tbClientestelefone: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
