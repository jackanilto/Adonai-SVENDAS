program Adonai_svendas;

uses
  Vcl.Forms,
  UPrincipal in 'Fontes\UPrincipal.pas' {frmPrincipal},
  UClientes in 'Fontes\UClientes.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Adonai Vendas';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
