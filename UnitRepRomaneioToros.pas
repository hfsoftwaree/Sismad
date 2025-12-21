unit UnitRepRomaneioToros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepRomaneioToros = class(TForm)
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
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
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
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    OBS: TQRRichText;
    TENTRADACODEMPRESA: TFloatField;
    TENTRADANF: TFloatField;
    TENTRADADATA: TDateTimeField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAQUANTIDADE: TFloatField;
    TENTRADACOMPRIMENTO: TFloatField;
    TENTRADALARGURA: TFloatField;
    TENTRADATOTALM3: TFloatField;
    TENTRADAVLUNITARIO: TFloatField;
    TENTRADAVLTOTAL: TFloatField;
    TENTRADACODLANCAMENTO: TIntegerField;
    TENTRADACODESSENCIA: TFloatField;
    TENTRADAUNIDADE: TIBStringField;
    TENTRADACODPRODUTO: TFloatField;
    QRLabel27: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel23: TQRLabel;
    ENDERECO: TQRLabel;
    CIDADE: TQRLabel;
    CLIENTE: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    CNPJ: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    BAIRRO: TQRLabel;
    FONE: TQRLabel;
    QRLabel29: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepRomaneioToros: TRepRomaneioToros;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepRomaneioToros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
end;

procedure TRepRomaneioToros.FormShow(Sender: TObject);
begin
DM.QManutencao.Open;
TENTRADA.Open; 
end;

end.
