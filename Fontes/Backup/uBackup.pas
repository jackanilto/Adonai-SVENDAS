unit uBackup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.IBWrapper, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Comp.UI;

type
  TfrmBackupRestore = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDIBBackup1: TFDIBBackup;
    FDIBRestore1: TFDIBRestore;
    procedure BitBtn1Click(Sender: TObject);
    procedure FDIBBackup1Progress(ASender: TFDPhysDriverService;
      const AMessage: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackupRestore: TfrmBackupRestore;

implementation

{$R *.dfm}

uses UPrincipal;

procedure TfrmBackupRestore.BitBtn1Click(Sender: TObject);
begin
  FDIBBackup1.DriverLink := FDPhysFBDriverLink1;

  FDIBBackup1.UserName := 'sysdba';
  FDIBBackup1.Password := 'masterkey';
  FDIBBackup1.Host := 'localhost';
  FDIBBackup1.Protocol := iplocal;

  FDIBBackup1.Database := 'C:\Adonai-SVENDAS\Database\ADONAIPDV.FDB';
  FDIBBackup1.BackupFiles.Add('C:\Adonai-SVENDAS\ADONAIPDV.BackupDB');

  FDIBBackup1.Backup;
end;

procedure TfrmBackupRestore.FDIBBackup1Progress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  Memo1.Lines.Add(AMessage);
  Application.ProcessMessages;

end;

end.
