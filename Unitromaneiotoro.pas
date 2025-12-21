unit Unitromaneiotoro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, EDBZero, StdCtrls, Buttons, Mask, DBCtrls,
  EDBNum, Grids, DBGrids, EDBDate, SSBaseXP, SSEdit, IBCustomDataSet,IBTable, SSSpin,
  DB, SSDateEdit, Gauges, DbPrgrss;

type
  TfrmRomaneiotoro = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    EditFax: TDBEdit;
    GroupBox2: TGroupBox;
    g: TGroupBox;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label12: TLabel;
    nota1: TEvDBZeroEdit;
    data1: TEvDBDateEdit;
    Label11: TLabel;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label2: TLabel;
    BitBtn7: TBitBtn;
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    m3: TLabel;
    valtotal: TLabel;
    fornecedor: TEdit;
    inscricao: TEdit;
    nota: TSpinEditXP;
    data: TDateEditXP;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dataExit(Sender: TObject);
    procedure dataEnter(Sender: TObject);
    procedure inscricaoChange(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRomaneiotoro: TfrmRomaneiotoro;

implementation

uses UnitDM, UnitPesquisa3, Unitromaneioserradaprodutos, UnitManutencao1,
  UnitRepRomaneioSerrada, Unitromaneioserrada, Unitromaneiotorosprodutos,
  UnitPesquisaEntrada, UnitRRomaneioToros;

{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;




procedure TfrmRomaneiotoro.FormShow(Sender: TObject);
begin
Self.Tag := 1;
bitbtn5.SetFocus; 
end;

procedure TfrmRomaneiotoro.dataExit(Sender: TObject);
begin
	if fornecedor.Text = '' then
   	begin
    exit;
    end
    else
if nota.text = '000000' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
    end;

if (fornecedor.Text <> '') and (nota.text <> '000000') then
begin
If Application.MessageBox('Deseja Inserir Produtos Agora?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  DM.QProduto.Open;
  DM.TROMANEIOSERRADA.Open;
  DM.TROMANEIOSERRADA.Append;
  frmromaneioserradaprodutos.Show;
  frmromaneioserradaprodutos.DBEDIT1.SetFocus;
  end
end;
end;




procedure TfrmRomaneiotoro.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
//data1.Text := data.Text;
end;






procedure TfrmRomaneiotoro.inscricaoChange(Sender: TObject);
begin
maskedit1.Text := inscricao.Text;
end;

procedure TfrmRomaneiotoro.MaskEdit1Change(Sender: TObject);
begin
inscricao.Text := MaskEdit1.Text;
end;

end.
