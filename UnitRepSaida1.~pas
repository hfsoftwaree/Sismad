unit UnitRepSaida1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TRepSaida1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRBand3: TQRBand;
    QRSubDetail1: TQRSubDetail;
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
    QRDBText13: TQRDBText;
    QRDBText4: TQRDBText;
    DFECHAMENTO: TDataSource;
    TFECHAMENTO: TIBTable;
    TFECHAMENTOCODIGOLANCAMENTO: TIntegerField;
    TFECHAMENTOCODIGOCLIENTE: TFloatField;
    TFECHAMENTONF: TFloatField;
    TFECHAMENTODATA: TDateTimeField;
    TFECHAMENTOQTDE_PRODUTOS: TFloatField;
    TFECHAMENTOTOTALM3: TFloatField;
    TFECHAMENTOVAL_TOT_PRODUTOS: TFloatField;
    TFECHAMENTOFORMAPAGAMENTO: TIBStringField;
    TFECHAMENTODESCONTO: TFloatField;
    TFECHAMENTOVAL_TOT_NOTA: TFloatField;
    TFECHAMENTOPARCELA1: TDateTimeField;
    TFECHAMENTOPARCELA2: TDateTimeField;
    TFECHAMENTOMOEDA: TIBStringField;
    TFECHAMENTONUMEROPARCELAS: TFloatField;
    TFECHAMENTOINTERVALOPARCELAS: TFloatField;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    TFECHAMENTOESSENCIA: TIBStringField;
    TFECHAMENTOCODIGOESSENCIA: TFloatField;
    TFECHAMENTOTIPOPAGAMENTO: TIBStringField;
    TFECHAMENTOVALORENTRADA: TFloatField;
    TFECHAMENTOCODIGOVENDEDOR: TIntegerField;
    TFECHAMENTONOMEVENDEDOR: TIBStringField;
    QRSubDetail2: TQRSubDetail;
    QRShape6: TQRShape;
    TOTAL: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel11: TQRLabel;
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
    QRLabel18: TQRLabel;
    QRLabel26: TQRLabel;
    FONE: TQRLabel;
    BAIRRO: TQRLabel;
    CNPJ1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    CIDADE: TQRLabel;
    ENDERECO: TQRLabel;
    FORNECEDOR: TQRLabel;
    NF: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape3: TQRShape;
    TIPO: TQRDBText;
    TENTRADAQTDEM2: TFloatField;
    TENTRADAQTDEML: TFloatField;
    TENTRADATIPOCODIGO: TIBStringField;
    TENTRADATIPOLANCAMENTO: TIBStringField;
    TFECHAMENTOQTDEM2: TFloatField;
    TFECHAMENTOQTDEML: TFloatField;
    TFECHAMENTOTIPOCODIGO: TIBStringField;
    TFECHAMENTOTIPOLANCAMENTO: TIBStringField;
    TFECHAMENTONOMECLIENTE: TIBStringField;
    VALIDADE: TQRLabel;
    VALIDADE1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape9: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    TENTRADAFECHAMENTOTIPO: TIBStringField;
    TENTRADAFECHAMENTODESCRICAO: TIBStringField;
    TENTRADAFONECONTATO: TIBStringField;
    TENTRADAFONECONTATO1: TIBStringField;
    TENTRADAESTREGACODIGO: TIBStringField;
    TENTRADAENTREGASTATUS: TIBStringField;
    TENTRADAENTREGADATA: TDateTimeField;
    TFECHAMENTOFECHAMENTOTIPO: TIBStringField;
    TFECHAMENTOFECHAMENTODESCRICAO: TIBStringField;
    TFECHAMENTOFONECONTATO: TIBStringField;
    TFECHAMENTOFONECONTATO1: TIBStringField;
    TFECHAMENTOENTREGACODIGO: TIBStringField;
    TFECHAMENTOENTREGASTATUS: TIBStringField;
    TFECHAMENTOENTREGADATA: TDateTimeField;
    TFECHAMENTOENTREGAPROGRAMADA: TIBStringField;
    TFECHAMENTOENTREGAPROGDATA: TDateTimeField;
    TFECHAMENTOENTREGAPROGHORA: TTimeField;
    TFECHAMENTOOBS: TIBStringField;
    TFECHAMENTOPRAZOENTREGA: TIBStringField;
    TFECHAMENTOOUTRASDESPESAS: TFloatField;
    TFECHAMENTOVALORFRETE: TFloatField;
    TFECHAMENTOVALORDESCONTO: TFloatField;
    QRLabel16: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel41: TQRLabel;
    QRShape10: TQRShape;
    OBS: TQRMemo;
    OBS1: TQRMemo;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape8: TQRShape;
    QRLabel44: TQRLabel;
    QRDBText30: TQRDBText;
    TENTRADAFORMAPAGAMENTO: TIBStringField;
    TENTRADATIPOPAGAMENTO: TIBStringField;
    TFECHAMENTOPRAZO: TIBStringField;
    TFECHAMENTODATAPEDIDO: TDateTimeField;
    TFECHAMENTOFECHAMENTO_MOTIVO: TMemoField;
    TENTRADACHECK: TIBStringField;
    QRDBText31: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel46: TQRLabel;
    TFECHAMENTOTIPOPAGAMENTO1: TIBStringField;
    QRLabel47: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText35: TQRDBText;
    QRExpr4: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepSaida1: TRepSaida1;

implementation

uses UnitDM;


{$R *.dfm}

procedure TRepSaida1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QManutencao.Close;
TENTRADA.Filtered:=False;
TENTRADA.Close;
TFECHAMENTO.Close;
end;

procedure TRepSaida1.FormShow(Sender: TObject);
begin
tipo.Caption := 'tipo' +'30 dias';
end;


end.
