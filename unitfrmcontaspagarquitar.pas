unit unitfrmcontaspagarquitar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, jpeg, EDBNum, EDBDate;

type
  Tfrmcontaspagarquitar = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    ImageList1: TImageList;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    FORNECEDOR: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagarquitar: Tfrmcontaspagarquitar;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure Tfrmcontaspagarquitar.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
