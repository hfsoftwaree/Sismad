unit UnitRepfechamentovenda1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase, IBQuery;

type
  TRepFechamentosaida1 = class(TForm)
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
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    PF: TQRLabel;
    PI: TQRLabel;
    DENTRADA: TDataSource;
    QRLabel28: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    Query5: TIBQuery;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    TOTAL: TQRLabel;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
    TOTAL1: TQRLabel;
    QRShape8: TQRShape;
    QRExpr3: TQRExpr;
    DataSource2: TDataSource;
    Query2: TIBQuery;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRSubDetail5: TQRSubDetail;
    QRSubDetail6: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape10: TQRShape;
    TOTAL2: TQRLabel;
    QRExpr5: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepFechamentosaida1: TRepFechamentosaida1;

implementation

uses UnitDM;





{$R *.dfm}





procedure TRepFechamentosaida1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//query5.Refresh; 
query5.Close;
DM.QManutencao.Close;
end;

procedure TRepFechamentosaida1.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open;
end;




end.
