unit UnitRepSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase, IBQuery;

type
  TRepSaida = class(TForm)
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
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    PF: TQRLabel;
    PI: TQRLabel;
    DENTRADA: TDataSource;
    QRLabel28: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    QRBand3: TQRBand;
    QRShape6: TQRShape;
    TENTRADA: TIBQuery;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape3: TQRShape;
    TOTAL: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepSaida: TRepSaida;

implementation

uses UnitDM;





{$R *.dfm}





procedure TRepSaida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TENTRADA.Close; 
DM.QManutencao.Close;
end;

procedure TRepSaida.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open; 
end;

end.
