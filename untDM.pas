unit untDM;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB;

type
  TDM = class(TDataModule)
    Banco: TIBDatabase;
    Trans: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
