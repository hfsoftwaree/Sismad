unit UnitCCFretero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EDBDate, DBCtrls, EDBNum, Mask, EDBZero, Grids, DBGrids,
  StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TfrmCCFretero = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel10: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    EvDBZeroEdit1: TEvDBZeroEdit;
    DBEDIT1: TEvDBZeroEdit;
    ESSENCIA: TDBLookupComboBox;
    QUANTIDADE: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    DBEdit2: TDBEdit;
    EvDBDateEdit1: TEvDBDateEdit;
    Panel7: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCCFretero: TfrmCCFretero;

implementation

{$R *.dfm}

end.
