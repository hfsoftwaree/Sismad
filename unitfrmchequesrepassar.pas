unit unitfrmchequesrepassar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, jpeg, EDBNum, EDBDate;

type
  Tfrmchequesrepassar = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    ImageList1: TImageList;
    DBGrid1: TDBGrid;
    pesquisa: TGroupBox;
    Edit2: TEdit;
    Label2: TLabel;
    Tipo: TRadioGroup;
    procedure BitBtn3Click(Sender: TObject);
    procedure TipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchequesrepassar: Tfrmchequesrepassar;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure Tfrmchequesrepassar.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmchequesrepassar.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
        Pesquisa.Caption := 'Pesquisa por Numero';
        end;

     1: Begin
        Pesquisa.Caption := 'Pesquisa por Vencimento';
        end;

     2: Begin
        Pesquisa.Caption := 'Pesquisa por Valor';
        end;

     3: Begin
        Pesquisa.Caption := 'Pesquisa por Titular';
        end;
end;
end;


end.
