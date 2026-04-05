unit UnitRepProducao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepProducao1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    A: TQRDBText;
    B: TQRDBText;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    DENTRADA: TDataSource;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    PF: TQRLabel;
    PI: TQRLabel;
    TENTRADA: TIBTable;
    TENTRADACODLANCAMENTO: TIntegerField;
    TENTRADACODPRODUTO: TFloatField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAQTORA: TFloatField;
    TENTRADAQSERRADA: TFloatField;
    TENTRADADATA: TDateTimeField;
    TENTRADAPRODUTO: TIBStringField;
    TENTRADACODIGOESSENCIA: TFloatField;
    TENTRADARESULTADO: TFloatField;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    TENTRADAVALTORA: TFloatField;
    QRExpr3: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepProducao1: TRepProducao1;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepProducao1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
end;

procedure TRepProducao1.FormShow(Sender: TObject);
begin
DM.QManutencao.Open; 
end;

end.
