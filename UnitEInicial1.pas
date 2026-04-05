unit UnitEInicial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, EDBNum, DBCtrls, Buttons, Grids,
  DBGrids, DB, IBCustomDataSet, IBTable, SSBaseXP;

type
  TfrmEInicial1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    TINICIAL: TEvDBNumEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ESSENCIA: TEdit;
    GroupBox3: TGroupBox;
    TOTAL1: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIAChange(Sender: TObject);
    procedure TINICIALExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEInicial1: TfrmEInicial1;

implementation

uses UnitDM;

{$R *.dfm}

procedure TfrmEInicial1.BitBtn3Click(Sender: TObject);
begin
ESSENCIA.Clear;
DM.TEssencia.Cancel;
DM.TEssencia.Close;
Close;
end;

procedure TfrmEInicial1.BitBtn1Click(Sender: TObject);
var total:Real;
begin
If Application.MessageBox('Confirma Inclusão do Saldo?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TEssencia.Post;
DM.TEssencia.Refresh;
ESSENCIA.Clear;

total := 0;
DM.TEssencia.First;
while not DM.TEssencia.Eof do
  begin
    total := DM.TEssencia['ESERRADA'] + total ;
    DM.TEssencia.Next;
    end;
    total1.Caption := FormatCurr('#0.0000',total);
end
end;

procedure TfrmEInicial1.FormShow(Sender: TObject);
var total : Real;
begin
ESSENCIA.SetFocus;
DM.TEssencia.Close;
DM.TEssencia.Open;
DM.TEssencia.IndexFieldNames := ('ESSENCIA');
DM.TEssencia.Refresh;
DM.TEssencia.Edit;

total := 0;
DM.TEssencia.First;
while not DM.TEssencia.Eof do
  begin
    total := DM.TEssencia['ESERRADA'] + total ;
    DM.TEssencia.Next;
    end;
    total1.Caption := FormatCurr('#0.0000',total);
end;

procedure TfrmEInicial1.ESSENCIAChange(Sender: TObject);
begin
DM.TEssencia.Locate('ESSENCIA',ESSENCIA.text,[lopartialkey,locaseinsensitive]);
end;


procedure TfrmEInicial1.TINICIALExit(Sender: TObject);
begin
bitbtn1.Click;
end;


end.
