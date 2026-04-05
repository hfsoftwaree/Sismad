unit UnitDVPF1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, EDBNum;

type
  TfrmDvpf1 = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel17: TPanel;
    ImageList1: TImageList;
    s: TDBGrid;
    Panel5: TPanel;
    B: TDBLookupComboBox;
    E: TDBEdit;
    D: TDBComboBox;
    C: TEvDBNumEdit;
    label2: TEvDBNumEdit;
    DBEdit1: TDBEdit;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDvpf1: TfrmDvpf1;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}




end.
