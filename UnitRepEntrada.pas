unit UnitRepEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase, IBQuery;

type
  TRepEntrada = class(TForm)
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
    QRSubDetail1: TQRSubDetail;
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
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    PF: TQRLabel;
    PI: TQRLabel;
    DENTRADA: TDataSource;
    TENTRADA: TIBTable;
    TENTRADACODIGOENTRADA: TIntegerField;
    TENTRADANF_NUMERO: TFloatField;
    TENTRADANATUREZA_OPERACAO: TIBStringField;
    TENTRADACFOP: TFloatField;
    TENTRADAIE_SUBST_TRIBUTARIO: TIBStringField;
    TENTRADARAZAO_SOCIAL: TIBStringField;
    TENTRADACGC: TFloatField;
    TENTRADAENDERECO: TIBStringField;
    TENTRADABAIRRO: TIBStringField;
    TENTRADACEP: TIBStringField;
    TENTRADAMUNICIPIO: TIBStringField;
    TENTRADATELEFONE: TIBStringField;
    TENTRADAUF: TIBStringField;
    TENTRADADATA_EMISSAO: TDateTimeField;
    TENTRADADATA_SAIDA: TDateTimeField;
    TENTRADAHORA_SAIDA: TIBStringField;
    TENTRADACODIGOFORNECEDOR: TFloatField;
    TENTRADABASE_CALCULO_ICMS: TFloatField;
    TENTRADAVALOR_ICMS: TFloatField;
    TENTRADABASE_CALCULO_ICMS_SUBST: TFloatField;
    TENTRADAVALOR_ICMS_SUBST: TFloatField;
    TENTRADAVALOR_FRETE: TFloatField;
    TENTRADAVALOR_SEGURO: TFloatField;
    TENTRADAOUTRAS_DESPESAS: TFloatField;
    TENTRADAVALOR_IPI: TFloatField;
    TENTRADAVALOR_TOTAL_NOTA: TFloatField;
    TENTRADAVALOR_TOTAL_PRODUTOS: TFloatField;
    TENTRADANOME_TRANSPORTADOR: TIBStringField;
    TENTRADAFRETE: TIBStringField;
    TENTRADAPLACA: TIBStringField;
    TENTRADAPLACA_UF: TIBStringField;
    TENTRADACNPJ_CPF: TIBStringField;
    TENTRADAENDERECO_TRANSPORTADOR: TIBStringField;
    TENTRADAMUNICIPIO_TRANSPORTADOR: TIBStringField;
    TENTRADAUF_TRANSPORTADOR: TIBStringField;
    TENTRADAIE_TRANSPORTADOR: TIBStringField;
    TENTRADAQUANTIDADE: TFloatField;
    TENTRADAESPECIE: TIBStringField;
    TENTRADAMARCA: TIBStringField;
    TENTRADANUMERO: TFloatField;
    TENTRADAPESO_BRUTO: TFloatField;
    TENTRADAPESO_LIQUIDO: TFloatField;
    TENTRADADADOS_ADICIONAIS: TIBStringField;
    TENTRADADATA_RECEBIMENTO: TDateTimeField;
    TENTRADAALIQ_FUNRURAL: TFloatField;
    TENTRADAVALOR_FUNRURAL: TFloatField;
    TENTRADAALIQ_ICMS: TFloatField;
    TENTRADABASE_CALCULO_FUNRURAL: TFloatField;
    TENTRADAINSC_ESTADUAL: TIBStringField;
    QRLabel28: TQRLabel;
    QRDBText16: TQRDBText;
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
  RepEntrada: TRepEntrada;

implementation

uses UnitDM;





{$R *.dfm}





procedure TRepEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TENTRADA.Close; 
DM.QManutencao.Close;
end;

procedure TRepEntrada.FormShow(Sender: TObject);
begin
//DM.QManutencao.Open; 
end;

end.
