unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmProdutos = class(TForm)
    STBProdutos: TStatusBar;
    DBGProdutos: TDBGrid;
    edtPesqProd: TEdit;
    Label1: TLabel;
    RGBuscar: TRadioGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesqProdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure buscarTudo;
    procedure buscarNome;
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses UPrincipal, UDM;





procedure TfrmProdutos.buscarNome;
begin
     DM.QProdutos.Close;
     DM.QProdutos.SQL.Clear;
     DM.QProdutos.SQL.Add('select * from produtos where prod_nome collate win_ptbr LIKE :nome order by prod_nome asc');
     DM.QProdutos.Open();
end;

procedure TfrmProdutos.buscarTudo;
begin
     DM.QProdutos.Close;
     DM.QProdutos.SQL.Clear;
     DM.QProdutos.SQL.Add('select * from produtos order by prod_nome asc');
     DM.QProdutos.Open();
end;

procedure TfrmProdutos.edtPesqProdChange(Sender: TObject);
begin
    buscarNome;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
  buscarTudo;
end;

procedure TfrmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;

  // Como alternativa pode ser utilizado
  // Application.Terminate;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
 buscarTudo;
end;

end.
