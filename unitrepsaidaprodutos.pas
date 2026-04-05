unit unitrepsaidaprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  Trepsaidaprodutos = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    TOTAL: TQRLabel;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    TENTRADACODDISCRIMINACAO: TIntegerField;
    TENTRADACODIGOFORNECEDOR: TFloatField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAUNIDADE: TIBStringField;
    TENTRADAQUANTIDADE: TFloatField;
    TENTRADAVALUNITARIO: TFloatField;
    TENTRADAVALTOTAL: TFloatField;
    TENTRADAALIQICMS: TFloatField;
    TENTRADACODIGOPRODUTO: TFloatField;
    TENTRADASITUACAO_TRIBUTARIA: TIBStringField;
    TENTRADATOTALPRODUTO: TFloatField;
    TENTRADADATALANCAMENTO: TDateTimeField;
    TENTRADANFNUMERO: TFloatField;
    TENTRADAESSENCIATIPO: TIBStringField;
    TENTRADACODIGOESSENCIA: TFloatField;
    TENTRADAFORNECEDOR: TIBStringField;
    TENTRADAINSCRICAO: TIBStringField;
    TENTRADACOMPRIMENTO: TFloatField;
    TENTRADALARGURA: TFloatField;
    TENTRADAEXPESSURA: TFloatField;
    TENTRADATOTALM3: TFloatField;
    TENTRADAFORMAPAGTO: TIBStringField;
    TENTRADAPRAZO: TFloatField;
    TENTRADADESCONTO: TFloatField;
    TENTRADACODVENDEDOR: TFloatField;
    TENTRADAVENDEDOR: TIBStringField;
    TENTRADAPLAQUETA: TFloatField;
    TENTRADACOLUMN7: TIBStringField;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    PI: TQRLabel;
    PF: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText4: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repsaidaprodutos: Trepsaidaprodutos;

implementation

uses UnitDM;


{$R *.dfm}

procedure Trepsaidaprodutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
 
end;

procedure Trepsaidaprodutos.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open;
end;


end.
