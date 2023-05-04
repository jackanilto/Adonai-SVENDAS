program Adonai_svendas;

uses
  Vcl.Forms,
  UPrincipal in 'Fontes\UPrincipal.pas' {frmPrincipal},
  UClientes in 'Fontes\UClientes.pas' {frmClientes},
  UFuncoes in 'Fontes\UFuncoes.pas',
  UProdutos in 'Fontes\UProdutos.pas' {frmProdutos},
  UPDV in 'Fontes\UPDV.pas' {frmPDV},
  UDM in 'Fontes\UDM.pas' {DM: TDataModule},
  FBackup in 'Fontes\FBackup.pas' {frmBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Adonai Vendas';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmBackup, frmBackup);
  Application.Run;
end.
