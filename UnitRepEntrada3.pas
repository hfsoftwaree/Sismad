unit UnitRepEntrada3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepEntrada3 = class(TForm)
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
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    TOTAL: TQRLabel;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    NF: TQRDBText;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
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
    TENTRADATRANSFORMADO: TFloatField;
    TENTRADATORALOTEESSENCIA: TIBStringField;
    TENTRADASITUACAO: TFloatField;
    TENTRADASITDATA: TDateTimeField;
    TENTRADASITHORA: TDateTimeField;
    TENTRADAFORNECEDOR: TIBStringField;
    TENTRADACPF: TFloatField;
    TENTRADAINSCRICAO: TIBStringField;
    TENTRADAOBS: TIBStringField;
    TENTRADACOMPRIMENTO: TFloatField;
    TENTRADALARGURA: TFloatField;
    TENTRADAEXPESSURA: TFloatField;
    TENTRADATOTALM3: TFloatField;
    TENTRADAPLAQUETA: TFloatField;
    TENTRADAOBSCODIGO: TFloatField;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText18: TQRDBText;
    TENTRADAVALORVENDAM3: TFloatField;
    TENTRADALUCRO: TFloatField;
    TENTRADAVALORVENDA: TFloatField;
    TENTRADAQTDEM2: TFloatField;
    TENTRADAQTDEML: TFloatField;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEntrada3: TRepEntrada3;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepEntrada3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Close;
end;

procedure TRepEntrada3.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open;
//TENTRADA.Open; 
end;

end.
