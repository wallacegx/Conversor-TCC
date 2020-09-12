unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TfrmPrincipal = class(TForm)
    btnConfiguracao: TBitBtn;
    qryTabelas: TIBQuery;
    dtsTabelas: TDataSource;
    qryTabelasRDBRELATION_NAME: TIBStringField;
    grdTabelas: TDBGrid;
    DBGrid1: TDBGrid;
    qryTabela: TIBQuery;
    dtsTabela: TDataSource;
    Button1: TButton;
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qryTabelasAfterScroll(DataSet: TDataSet);
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

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  qryTabelas.Open;
end;

procedure TfrmPrincipal.qryTabelasAfterScroll(DataSet: TDataSet);
begin
  qryTabela.SQL.Clear;
  qryTabela.SQL.Add('SELECT *');
  qryTabela.SQL.Add('FROM ' + qryTabelas.FieldByName('RDB$RELATION_NAME').AsString);
  qryTabela.Open;
end;

end.
