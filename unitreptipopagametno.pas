unit unitreptipopagametno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase, IBQuery;

type
  TReptipopagamento = class(TForm)
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
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    PI: TQRLabel;
    DENTRADA: TDataSource;
    QRLabel28: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    total2: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    TP: TQRLabel;
    Query1: TIBQuery;
    QRExpr1: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reptipopagamento: TReptipopagamento;

implementation

uses UnitDM;





{$R *.dfm}





procedure TReptipopagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
QUERY1.CLOSE;
DM.QManutencao.Close;
end;

procedure TReptipopagamento.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open; 
end;

end.
