unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList;

type
  TfrmProdutos = class(TForm)
    STBProdutos: TStatusBar;
    DBGProdutos: TDBGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses UPrincipal, UDM;





procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TfrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;

  // Como alternativa pode ser utilizado
  // Application.Terminate;
end;

end.
