unit unitfrmchequesdevolvidosmotivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DB, IBCustomDataSet, IBTable, StdCtrls, Buttons,
  DBCtrls, Grids, DBGrids;

type
  Tfrmchequesdevolvidosmotivo = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Table1: TIBTable;
    DataSource1: TDataSource;
    DBMemo2: TDBMemo;
    frmchequesdevolvidos: TLabel;
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchequesdevolvidosmotivo: Tfrmchequesdevolvidosmotivo;

implementation

uses UnitPrincipal, UnitDM, UnitVenda;

{$R *.dfm}

procedure Tfrmchequesdevolvidosmotivo.BitBtn7Click(Sender: TObject);
begin
Close;
end;

end.
