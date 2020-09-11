unit untfrmfrmBancCone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmfrmBancCone = class(TFrame)
    tmrConeBanc: TTimer;
    lblConectado: TLabel;
    procedure tmrConeBancTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  untDM;

{$R *.dfm}

procedure TfrmfrmBancCone.tmrConeBancTimer(Sender: TObject);
begin

  if DM.Banco.Connected then
  begin
    lblConectado.Caption := 'Banco Conectado!';
  end
  else
  begin
    lblConectado.Caption := 'Banco Desconectado!';
  end;

end;

end.
