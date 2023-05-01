unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    FBDriver: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    QProdutos: TFDQuery;
    QProdutosPROD_ID: TIntegerField;
    QProdutosPROD_NOME: TStringField;
    QProdutosPROD_BARRAS: TStringField;
    QProdutosPROD_REFER: TStringField;
    QProdutosPROD_CUSTO: TFloatField;
    QProdutosPROD_PRECO: TFloatField;
    QProdutosPROD_PRECO_PRAZO: TFloatField;
    QProdutosPROD_ESTOQUE: TIntegerField;
    DSProdutos: TDataSource;
    TBCliente: TFDTable;
    TBClientePROD_ID: TIntegerField;
    TBClientePROD_NOME: TStringField;
    TBClientePROD_BARRAS: TStringField;
    TBClientePROD_REFER: TStringField;
    TBClientePROD_CUSTO: TFloatField;
    TBClientePROD_PRECO: TFloatField;
    TBClientePROD_PRECO_PRAZO: TFloatField;
    TBClientePROD_ESTOQUE: TIntegerField;
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
