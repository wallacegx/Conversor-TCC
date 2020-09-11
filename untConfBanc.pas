unit untConfBanc;

interface

uses
  forms, untDM;

procedure SetDatabaseName(ls_CamiBanc: String);
function GetDatabaseName(): String;
function GetDatabaseConnection(): Boolean;
procedure SetDatabaseConnection(lb_Valor: Boolean);


implementation

procedure SetDatabaseName(ls_CamiBanc: String);
begin
  DM.Banco.DatabaseName := ls_CamiBanc;
end;

//------------------------------------------------------------------------------

function GetDatabaseName(): String;
begin
  Result := DM.Banco.DatabaseName;
end;

//------------------------------------------------------------------------------

function GetDatabaseConnection(): Boolean;
begin
  Result := DM.Banco.Connected;
end;

//------------------------------------------------------------------------------

procedure SetDatabaseConnection(lb_Valor: Boolean);
begin
  DM.Banco.Connected := lb_Valor;
end;

end.
