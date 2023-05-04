unit FBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper, FireDAC.Phys.FBDef, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Stan.Intf, FireDAC.UI.Intf,
  FireDAC.Comp.UI;

type
  TfrmBackup = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtOrigem: TEdit;
    edtDestino: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    Backup: TFDIBBackup;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

{$R *.dfm}

uses UPrincipal, UDM;



procedure TfrmBackup.Button1Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    edtOrigem.Text:= OpenDialog1.FileName;

end;

procedure TfrmBackup.Button2Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    edtDestino.Text:= OpenDialog1.FileName;
end;

procedure TfrmBackup.Button3Click(Sender: TObject);
begin

     Backup.DriverLink  := FBDriverLink;
     Backup.UserName    :=  'sysdba';
     Backup.Password    :=  'masterkey';
     Backup.Host        :=  'Servidor';
     Backup.Protocol    :=  ipLocal;
     Backup.Database    :=  edtOrigem.Text;
     Backup.BackupFiles.Clear;
     Backup.BackupFiles.Add(edtDestino.Text);
     Backup.Backup;

     MessageDlg('Backup realizado',mtInformation,[mbOK],0)

end;


end.
