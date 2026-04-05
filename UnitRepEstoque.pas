unit UnitRepEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepEstoque = class(TForm)
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
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    TENTRADACODIGO: TIntegerField;
    TENTRADAESSENCIA: TIBStringField;
    TENTRADAETOROS: TFloatField;
    TENTRADATENTRADA: TFloatField;
    TENTRADATSAIDA: TFloatField;
    TENTRADAESERRADA: TFloatField;
    TENTRADAEINICIAL: TFloatField;
    QRLabel28: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEstoque: TRepEstoque;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
end;


end.
