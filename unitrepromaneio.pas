unit unitrepromaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable, IBQuery, QRPrev;

type
  Trepromaneio = class(TForm)
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
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
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
    TENTRADAPRAZO: TFloatField;
    TENTRADADESCONTO: TFloatField;
    TENTRADACODVENDEDOR: TFloatField;
    TENTRADAVENDEDOR: TIBStringField;
    TENTRADAPLAQUETA: TFloatField;
    TENTRADACOLUMN7: TIBStringField;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape6: TQRShape;
    TOTAL: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel11: TQRLabel;
    OBS: TQRRichText;
    QRLabel24: TQRLabel;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    FORNECEDOR: TQRLabel;
    NF: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    QRLabel15: TQRLabel;
    QRShape8: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr1: TQRExpr;
    TOTAL1: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape9: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRShape10: TQRShape;
    QRLabel19: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repromaneio: Trepromaneio;

implementation

uses UnitDM;


{$R *.dfm}



procedure Trepromaneio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Filtered:=False;
TENTRADA.Close;
repromaneio.Query1.Filtered := False;
repromaneio.Query1.Close;
end;

procedure Trepromaneio.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open;

end;


end.
