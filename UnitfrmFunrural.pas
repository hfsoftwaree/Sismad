unit UnitfrmFunrural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, EDateEd, jpeg, Grids, DBGrids;

type
  TfrmFunRural = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    datainicial: TEvDateEdit;
    Label5: TLabel;
    datainicial1: TEdit;
    Image1: TImage;
    DBGrid1: TDBGrid;
    essencia: TEdit;
    BitBtn4: TBitBtn;
    FORNECEDOR: TEdit;
    Label2: TLabel;
    DataFinal: TEvDateEdit;
    DataFinal1: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Bevel3: TBevel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFunRural: TfrmFunRural;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, UnitPesquisaEntrada;

{$R *.dfm}


end.
