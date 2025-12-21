unit UnitRepRomaneioSerrada1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepRomaneioserrada = class(TForm)
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
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    DENTRADA: TDataSource;
    TSAIDA: TIBTable;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    OBS: TQRRichText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape7: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    ENDERECO: TQRLabel;
    QRLabel25: TQRLabel;
    BAIRRO: TQRLabel;
    QRLabel27: TQRLabel;
    CIDADE: TQRLabel;
    QRLabel29: TQRLabel;
    FONE: TQRLabel;
    CNPJ: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    TSAIDACODEMPRESA: TFloatField;
    TSAIDANF: TFloatField;
    TSAIDADATA: TDateTimeField;
    TSAIDAPRODUTO: TIBStringField;
    TSAIDAESSENCIA: TIBStringField;
    TSAIDAQUANTIDADE: TFloatField;
    TSAIDACOMPRIMENTO: TFloatField;
    TSAIDALARGURA: TFloatField;
    TSAIDAEXPESSURA: TFloatField;
    TSAIDATOTALM3: TFloatField;
    TSAIDAVLUNITARIO: TFloatField;
    TSAIDAVLTOTAL: TFloatField;
    TSAIDACODLANCAMENTO: TIntegerField;
    TSAIDACODESSENCIA: TFloatField;
    TSAIDACODPRODUTO: TFloatField;
    TSAIDAUNIDADE: TIBStringField;
    TSAIDACODSUBPRODUTO: TFloatField;
    CLIENTE: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepRomaneioserrada: TRepRomaneioserrada;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepRomaneioserrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TSAIDA.Close;
end;

procedure TRepRomaneioserrada.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open;
//TSAIDA.Open;
end;

end.
