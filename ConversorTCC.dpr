program ConversorTCC;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untfrmfrmBancCone in 'untfrmfrmBancCone.pas' {frmfrmBancCone: TFrame},
  untDM in 'untDM.pas' {DM: TDataModule},
  untConf in 'untConf.pas' {frmConf},
  untConfBanc in 'untConfBanc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmConf, frmConf);
  Application.Run;
end.
