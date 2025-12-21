unit unitfrmcontaspagarmanutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, jpeg, EDBNum, EDBDate, ENumEd, EDateEd, ToolEdit,
  CurrEdit, IBQuery;

type
  Tfrmcontaspagarmanutencao = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ImageList1: TImageList;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    FORNECEDOR: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    tipo: TRadioGroup;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EvDateEdit1: TEvDateEdit;
    EvDateEdit2: TEvDateEdit;
    GroupBox3: TGroupBox;
    DBMemo2: TDBMemo;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    DataSource1: TDataSource;
    contaspagar: TIBQuery;
    contaspagarID_CODIGO: TIntegerField;
    contaspagarDATA_EMISSAO: TDateField;
    contaspagarDATA_VENCIMENTO: TDateField;
    contaspagarID_FORNECEDOR: TIntegerField;
    contaspagarNOME_FORNECEDOR: TIBStringField;
    contaspagarHISTORICO: TIBStringField;
    contaspagarID_CATEGORIA: TIBBCDField;
    contaspagarNOME_CATEGORIA: TIBStringField;
    contaspagarID_SUB_CATEGORIA: TIBBCDField;
    contaspagarNOME_SUB_CATEGORIA: TIBStringField;
    contaspagarDOCUMENTO: TIBStringField;
    contaspagarVALOR: TFloatField;
    contaspagarSELECAO: TIBStringField;
    contaspagarJURO: TFloatField;
    contaspagarMULTA: TFloatField;
    contaspagarVALOR_TOTAL: TFloatField;
    contaspagarDATA_PAGAMENTO: TDateField;
    contaspagarSTATUS_CODIGO: TIBStringField;
    DBEdit1: TDBEdit;
    Edit6: TEdit;
    Panel1: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure contaspagarAfterOpen(DataSet: TDataSet);
    procedure tipoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagarmanutencao: Tfrmcontaspagarmanutencao;

implementation

uses UnitDM, UnitPrincipal, unitfrmcontaspagar;


{$R *.dfm}

procedure Tfrmcontaspagarmanutencao.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn9Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmcontaspagarmanutencao.FormShow(Sender: TObject);
begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '0';
      Open;
      end;   
end;

procedure Tfrmcontaspagarmanutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
contaspagar.Close ;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn5Click(Sender: TObject);
begin
SELF.Tag := 1;
Application.CreateForm(Tfrmcontaspagar, frmcontaspagar);
frmcontaspagar.ShowModal;
frmcontaspagar.Free;
end;

procedure Tfrmcontaspagarmanutencao.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
if tipo.ItemIndex = 0 then
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with contaspagar do
  	begin
    Close;
    SQL.Clear ;
    SQL.Add('select * from CONTAS_PAGAR');
    SQL.Add('Where STATUS_CODIGO =:busca');
    SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    ParamByName('busca').Text := '0';
    Open;
    end;
end;

if tipo.ItemIndex = 1 then
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with contaspagar do
  	begin
    Close;
    SQL.Clear ;
    SQL.Add('select * from CONTAS_PAGAR');
    SQL.Add('Where STATUS_CODIGO =:busca');
    SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    ParamByName('busca').Text := '1';
    Open;
    end;
end;

if tipo.ItemIndex = 2 then
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with contaspagar do
  	begin
    Close;
    SQL.Clear ;
    SQL.Add('select * from CONTAS_PAGAR');
    SQL.Add('Where STATUS_CODIGO =:busca');
    SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    ParamByName('busca').Text := '2';
    Open;
    end;
end;

if tipo.ItemIndex = 3 then
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with contaspagar do
  	begin
    Close;
    SQL.Clear ;
    SQL.Add('select * from CONTAS_PAGAR');
    SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    Open;
    end;
end;

end;

procedure Tfrmcontaspagarmanutencao.contaspagarAfterOpen(
  DataSet: TDataSet);
begin
TFloatField(contaspagar.FieldByName('VALOR')).DisplayFormat := ',0.00';

end;

procedure Tfrmcontaspagarmanutencao.tipoClick(Sender: TObject);
begin
case (Tipo.ItemIndex) of
      0: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '0';
      Open;
      end;
  end;

      1: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '1';
      Open;
      end;
  end;

      2: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '2';
      Open;
      end;
  end;

      3: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Order by DATA_VENCIMENTO');
      Open;
      end;
end;
end;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn2Click(Sender: TObject);
begin
SELF.Tag := 2;
Application.CreateForm(Tfrmcontaspagar, frmcontaspagar);
frmcontaspagar.ShowModal;
frmcontaspagar.Free;
end;

procedure Tfrmcontaspagarmanutencao.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn6Click(Sender: TObject);
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if contaspagar.RecordCount = 0 then
begin
Application.MessageBox('Não a lançamento para sere Excluído!', 'Exclusão', mb_Ok + mb_IconInformation);
end
else
begin
If Application.MessageBox('Confirma Exclusão desta Conta?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
EDIT6.Text := DBEDIT1.Text ;
With contaspagar do
begin
  close;
  SQL.Clear ;
  SQL.Add('DELETE from CONTAS_PAGAR Where ID_CODIGO =:codigo');
  ParamByName('codigo').AsInteger := StrToInt(edit6.text);
  ExecSQL;
  end;

case (Tipo.ItemIndex) of
      0: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '0';
      Open;
      end;
  end;

      1: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '1';
      Open;
      end;
  end;

      2: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Where STATUS_CODIGO =:codigo');
      SQL.Add('Order by DATA_VENCIMENTO');
      ParamByName('codigo').AsString := '2';
      Open;
      end;
  end;

      3: Begin
With contaspagar do
  begin
      close;
      SQL.Clear ;
      SQL.Add('Select * from CONTAS_PAGAR');
      SQL.Add('Order by DATA_VENCIMENTO');
      Open;
      end;
end;
end;  
end;
end;
end;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn17Click(Sender: TObject);
begin
contaspagar.First ;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn18Click(Sender: TObject);
begin
contaspagar.Prior ;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn19Click(Sender: TObject);
begin
contaspagar.Next  ;
end;

procedure Tfrmcontaspagarmanutencao.BitBtn20Click(Sender: TObject);
begin
contaspagar.Last ;
end;

end.
