unit Unitmedidas;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    Table1CODCOMPRIMENTO: TFloatField;
    Table1COMPRIMENTO: TStringField;
    Table1CODLARGURA: TFloatField;
    Table1LARGURA: TStringField;
    Table1CODEXPESSURA: TFloatField;
    Table1EXPESSURA: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Table1: TTable;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Table1.Open;
end;

end.