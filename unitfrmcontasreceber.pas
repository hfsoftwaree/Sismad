unit unitfrmcontasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, jpeg, EDBNum, EDBDate;

type
  Tfrmcontasreceber = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel17: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel13: TPanel;
    Panel23: TPanel;
    Panel28: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    EvDBDateEdit1: TEvDBDateEdit;
    EvDBDateEdit2: TEvDBDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    DBMemo1: TDBMemo;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber: Tfrmcontasreceber;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure Tfrmcontasreceber.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
