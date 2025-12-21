unit Unitdvpf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, EDBNum;

type
  TfrmDvpf = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBComboBox2: TDBComboBox;
    MaskEdit1: TMaskEdit;
    DBEdit11: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBN1: TDBNavigator;
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
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel11: TPanel;
    Panel16: TPanel;
    MaskEdit4: TMaskEdit;
    DBEdit3: TDBEdit;
    EvCheckCNPJ1: TEvCheckCNPJ;
    EvCheckCPF1: TEvCheckCPF;
    Panel5: TPanel;
    MaskEdit5: TMaskEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel17: TPanel;
    DBComboBox3: TDBComboBox;
    Panel10: TPanel;
    DBEdit4: TDBEdit;
    Panel12: TPanel;
    DBComboBox4: TDBComboBox;
    ImageList1: TImageList;
    TabSheet3: TTabSheet;
    Panel14: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    s: TDBGrid;
    Panel22: TPanel;
    B: TDBLookupComboBox;
    E: TDBEdit;
    D: TDBComboBox;
    C: TEvDBNumEdit;
    label2: TEvDBNumEdit;
    DBN2: TDBNavigator;
    Button1: TButton;
    DBEdit10: TDBEdit;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDvpf: TfrmDvpf;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}


end.
