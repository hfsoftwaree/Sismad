unit unitfrmchequesdevolvidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, jpeg, EDBNum, EDBDate;

type
  Tfrmchequesdevolvidos = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    frmchequesdevolvidos: TLabel;
    ImageList1: TImageList;
    DBGrid1: TDBGrid;
    pesquisa: TGroupBox;
    Edit2: TEdit;
    Label2: TLabel;
    Tipo: TRadioGroup;
    procedure BitBtn3Click(Sender: TObject);
    procedure TipoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchequesdevolvidos: Tfrmchequesdevolvidos;

implementation

uses UnitDM, UnitPrincipal, unitfrmchequesdevolvidosmotivos;


{$R *.dfm}

procedure Tfrmchequesdevolvidos.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmchequesdevolvidos.TipoClick(Sender: TObject);
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


procedure Tfrmchequesdevolvidos.BitBtn1Click(Sender: TObject);
begin
//cheques devolvidos devem ser lancados no caixa como debito com o titulo
//Cheque Devolvido (numerodocheque)

Application.CreateForm(Tfrmchequesdevolvidosmotivo, frmchequesdevolvidosmotivo);
frmchequesdevolvidosmotivo.ShowModal;
frmchequesdevolvidosmotivo.Free;
end;

end.
