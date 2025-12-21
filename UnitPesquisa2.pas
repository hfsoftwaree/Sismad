unit UnitPesquisa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  IBCustomDataSet, IBQuery, IBTable, SSSpin, DBEditSearch, DBFilter,
  DbAleSqlBusca, EZeroEd, EDBFind;

type
  TfrmPesquisa2 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    DCONSULTA: TDataSource;
    TCONSULTA: TIBTable;
    TCONSULTACODDISCRIMINACAO: TIntegerField;
    TCONSULTACODIGOFORNECEDOR: TFloatField;
    TCONSULTAESSENCIA: TIBStringField;
    TCONSULTAUNIDADE: TIBStringField;
    TCONSULTAQUANTIDADE: TFloatField;
    TCONSULTAVALUNITARIO: TFloatField;
    TCONSULTAVALTOTAL: TFloatField;
    TCONSULTAALIQICMS: TFloatField;
    TCONSULTACODIGOPRODUTO: TFloatField;
    TCONSULTASITUACAO_TRIBUTARIA: TIBStringField;
    TCONSULTATOTALPRODUTO: TFloatField;
    TCONSULTADATALANCAMENTO: TDateTimeField;
    TCONSULTANFNUMERO: TFloatField;
    TCONSULTAESSENCIATIPO: TIBStringField;
    TCONSULTACODIGOESSENCIA: TFloatField;
    TCONSULTATRANSFORMADO: TFloatField;
    TCONSULTATORALOTEESSENCIA: TIBStringField;
    TCONSULTASITUACAO: TFloatField;
    TCONSULTASITDATA: TDateTimeField;
    TCONSULTASITHORA: TDateTimeField;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa2: TfrmPesquisa2;

implementation

uses UnitDM,UnitPrincipal, UnitEntradaToros, UnitProducao;

{$R *.dfm}

procedure TfrmPesquisa2.BitBtn2Click(Sender: TObject);
begin
TCONSULTA.Close;
Close;
end;

procedure TfrmPesquisa2.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
TCONSULTA.Filtered := False;
TCONSULTA.Close;
TCONSULTA.Filter := 'SITUACAO = ' + ('0');
TCONSULTA.Filtered := True;
TCONSULTA.Open;
TCONSULTA.Last;
Panel2.Caption := '' + intTostr(TCONSULTA.RecordCount);
TCONSULTA.First; 
TCONSULTA.IndexFieldNames := ('CODIGOPRODUTO');
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TfrmPesquisa2.BitBtn1Click(Sender: TObject);
begin
frmProducao.CODPRODUTO.Text := TCONSULTA['CODIGOPRODUTO'];
frmProducao.DBEDIT5.Text := TCONSULTA['CODIGOESSENCIA'];
frmProducao.ESSENCIA.Text := TCONSULTA['ESSENCIA'];
frmProducao.QTORO.Text := TCONSULTA['QUANTIDADE'];
frmProducao.DBEDIT2.Text := TCONSULTA['VALTOTAL'];
Close;
end;

procedure TfrmPesquisa2.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
TCONSULTA.IndexFieldNames := ('CODIGOPRODUTO');
end;

if ComboBox1.ItemIndex = 1 then
begin
TCONSULTA.IndexFieldNames := ('DATALANCAMENTO');
end;

if ComboBox1.ItemIndex = 2 then
begin
TCONSULTA.IndexFieldNames := ('ESSENCIA');
end;

if ComboBox1.ItemIndex = 3 then
begin
TCONSULTA.IndexFieldNames := ('NFNUMERO');
end;

end;

procedure TfrmPesquisa2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;



procedure TfrmPesquisa2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
   bitBtn1.Click;
   Key:=#0;
   end;
end;

procedure TfrmPesquisa2.Edit1Change(Sender: TObject);
begin
if edit1.Text = '' then
begin
TCONSULTA.First;
end
else
if (edit1.Text>='A') and (edit1.Text<='Z') then
begin
TCONSULTA.Locate('ESSENCIA',Edit1.text,[]);
end
else
begin
if (edit1.Text>='0') and (edit1.Text<='9') then
begin
TCONSULTA.Locate('CODIGOPRODUTO',Edit1.text,[]);
end
END;

end;

procedure TfrmPesquisa2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_DOWN then
dbgrid1.SetFocus;
end;

procedure TfrmPesquisa2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_BACK then
edit1.SetFocus;
end;

end.
