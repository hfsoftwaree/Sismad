unit UnitEntradaToros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin;

type
  TfrmEntradaToros = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    nota: TEvDBZeroEdit;
    Label4: TLabel;
    data: TEvDBDateEdit;
    Label3: TLabel;
    saida: TEvDBDateEdit;
    Label33: TLabel;
    maskedit1: TMaskEdit;
    Label34: TLabel;
    hora: TDBEdit;
    GroupBox3: TGroupBox;
    transportador: TDBEdit;
    Label10: TLabel;
    frete: TDBComboBox;
    Label11: TLabel;
    placa: TDBEdit;
    Label12: TLabel;
    placauf: TDBComboBox;
    Label13: TLabel;
    cnpjcpf: TDBEdit;
    Label14: TLabel;
    endereco: TDBEdit;
    Label20: TLabel;
    municipio: TDBLookupComboBox;
    Label21: TLabel;
    uf: TDBEdit;
    Label22: TLabel;
    ie: TDBEdit;
    Label23: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    numero: TEvDBZeroEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    pesoliquido: TEvDBNumEdit;
    especie: TDBEdit;
    marca: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    totalproduto: TEvDBNumEdit;
    Label32: TLabel;
    bcicms: TEvDBNumEdit;
    Label26: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    valicms: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    EvDBNumEdit11: TEvDBNumEdit;
    totalnota: TEvDBNumEdit;
    bcfunrural: TEvDBNumEdit;
    valfunrural: TEvDBNumEdit;
    Label45: TLabel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    aliqicms: TEvDBNumEdit;
    aliqfunrural: TEvDBNumEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Bevel1: TBevel;
    quantidade: TEvDBNumEdit;
    Label35: TLabel;
    Label25: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Label31: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEDIT6: TEvDBZeroEdit;
    fornecedor1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    BitBtn8: TBitBtn;
    nota1: TSpinEditXP;
    BitBtn13: TBitBtn;
    fornecedor: TDBEdit;
    Label7: TLabel;
    inscricao: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaToros: TfrmEntradaToros;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada;


{$R *.dfm}


end.
