unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    btnConfiguracao: TBitBtn;
    procedure btnConfiguracaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  untConf;

{$R *.dfm}

procedure TfrmPrincipal.btnConfiguracaoClick(Sender: TObject);
begin

  try
    frmConf := TfrmConf.Create(Self);

    frmConf.ShowModal();

  finally
    frmConf.Free;
  end;

end;

end.
