unit untConf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  untfrmfrmBancCone,
  untConfBanc;

type
  TfrmConf = class(TForm)
    FileOpenDialog1: TFileOpenDialog;
    edtCaminho: TEdit;
    lblCaminho: TLabel;
    btnSeleCami: TSpeedButton;
    btnConectar: TButton;
    frmfrmBancCone1: TfrmfrmBancCone;
    procedure btnSeleCamiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConf: TfrmConf;

implementation


{$R *.dfm}

procedure TfrmConf.btnConectarClick(Sender: TObject);
begin
  SetDatabaseConnection(not(GetDatabaseConnection()));
end;

//------------------------------------------------------------------------------

procedure TfrmConf.btnSeleCamiClick(Sender: TObject);
begin

  if GetDatabaseConnection() then
  begin
    raise Exception.Create('Desconecte o banco antes de altera-lo');
  end;

  if FileOpenDialog1.Execute then
  begin
    edtCaminho.Text := FileOpenDialog1.FileName;
    SetDatabaseName('localhost:' + edtCaminho.Text);
  end;
end;

//------------------------------------------------------------------------------

procedure TfrmConf.FormCreate(Sender: TObject);
begin
  edtCaminho.Text := GetDatabaseName();
end;

end.
