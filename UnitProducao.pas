unit UnitProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, EDBNum, SSBaseXP, SSEdit, EDBDate, dbAleNavegador;

type
  TfrmProducao = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel17: TPanel;
    Panel5: TPanel;
    ImageList1: TImageList;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DATA: TEvDBDateEdit;
    QTORO: TEvDBNumEdit;
    QSERRADA: TEvDBNumEdit;
    IND: TEditCurrencyXP;
    ESSENCIA: TDBEdit;
    Panel9: TPanel;
    BitBtn5: TBitBtn;
    EvDBZeroEdit1: TEvDBZeroEdit;
    PRODUTO: TDBEdit;
    CODPRODUTO: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    tAleDBNav1: tAleDBNav;
    DBEdit2: TEvDBNumEdit;
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProducao: TfrmProducao;

implementation

uses UnitDM, UnitPrincipal, UnitPesquisa1, UnitPesquisa2;


{$R *.dfm}

procedure TfrmProducao.BitBtn4Click(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
BitBtn3.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn6.Enabled := False;
DATA.SetFocus;
Data.Text := DateToStr(now);
end;


End.
