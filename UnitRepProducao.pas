unit UnitRepProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase, IBQuery;

type
  TRepProducao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    NRELATORIO: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    PF: TQRLabel;
    PI: TQRLabel;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    QRLabel10: TQRLabel;
    TENTRADACODLANCAMENTO: TIntegerField;
    TENTRADACODPRODUTO: TFloatField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAQTORA: TFloatField;
    TENTRADAQSERRADA: TFloatField;
    TENTRADADATA: TDateTimeField;
    TENTRADAPRODUTO: TIBStringField;
    TENTRADACODIGOESSENCIA: TFloatField;
    TENTRADARESULTADO: TFloatField;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepProducao: TRepProducao;

implementation

uses UnitDM;





{$R *.dfm}





procedure TRepProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TENTRADA.Close; 
DM.QManutencao.Close;
end;

procedure TRepProducao.FormShow(Sender: TObject);
begin
DM.QManutencao.Open; 
end;

end.
