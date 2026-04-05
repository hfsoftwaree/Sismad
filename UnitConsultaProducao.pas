unit UnitConsultaProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, EDateEd, jpeg, Grids, DBGrids;

type
  TfrmConsultaProducao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    data: TEvDateEdit;
    Label5: TLabel;
    data1: TEdit;
    CheckBox1: TCheckBox;
    Image1: TImage;
    DBGrid1: TDBGrid;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProducao: TfrmConsultaProducao;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;


end.
