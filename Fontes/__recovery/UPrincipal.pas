unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    StatBarPrincipal: TStatusBar;
    PanelMenuPrincipal: TPanel;
    Menu_Principal: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Cadastros1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Clientes1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PDV1: TMenuItem;
    Caixa1: TMenuItem;
    GerenciarVendas1: TMenuItem;
    RelatrioVendas1: TMenuItem;
    N6: TMenuItem;
    VendasAbertas1: TMenuItem;
    btnClientes: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnPdv: TSpeedButton;
    N7: TMenuItem;
    Ajustes1: TMenuItem;
    Sair1: TMenuItem;
    N8: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.