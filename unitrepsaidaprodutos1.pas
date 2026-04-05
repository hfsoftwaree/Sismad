unit unitrepsaidaprodutos1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable, IBQuery;

type
  Trepsaidaprodutos1 = class(TForm)
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
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
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
    Query1: TIBQuery;
    DataSource1: TDataSource;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    ESSENCIA: TQRLabel;
    PRODUTO: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  repsaidaprodutos1: Trepsaidaprodutos1;

implementation

uses UnitDM;


{$R *.dfm}

procedure Trepsaidaprodutos1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;

end;

procedure Trepsaidaprodutos1.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open;
end;


end.
