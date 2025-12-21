unit UnitFretero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ;

type
  TfrmFretero = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit1: TMaskEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
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
    Panel8: TPanel;
    Panel9: TPanel;
    DBComboBox1: TDBComboBox;
    Panel13: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel14: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    EvCheckCPF1: TEvCheckCPF;
    Panel5: TPanel;
    MaskEdit5: TMaskEdit;
    DBEdit7: TDBEdit;
    Panel17: TPanel;
    Panel11: TPanel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    ImageList1: TImageList;
    DBEDIT11: TDBLookupComboBox;
    UF: TDBEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFretero: TfrmFretero;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}


end.
