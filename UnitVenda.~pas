unit UnitVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin, jpeg, EDateEd, SSBaseXP, EDBCombo, SSEdit, ENumEd, IBQuery,shellapi;

type
  TfrmVenda = class(TForm)
    ImageList1: TImageList;
    Image1: TImage;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dbedit7: TEdit;
    Edit5: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    status1: TLabel;
    Label13: TLabel;
    nota: TSpinEditXP;
    DBEDIT6123: TEdit;
    data: TEvDateEdit;
    fornecedor: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    datafechamento: TEvDBDateEdit;
    DBEDIT6: TEdit;
    BitBtn13: TBitBtn;
    tipolancamento: TComboBox;
    g: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn9: TBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    totm3: TLabel;
    Label6: TLabel;
    totprod: TLabel;
    Label10: TLabel;
    totvenda: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    forma: TLabel;
    desconto: TLabel;
    totnota: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn14: TBitBtn;
    tipo: TRadioGroup;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn15: TBitBtn;
    BitBtn17: TBitBtn;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    DBEdit8: TDBEdit;
    Label26: TLabel;
    Edit4: TEdit;
    DataSource2: TDataSource;
    Query2: TIBQuery;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    BitBtn18: TBitBtn;
    Label27: TLabel;
    BitBtn16: TBitBtn;
    GroupBox6: TGroupBox;
    DataSource3: TDataSource;
    Query3: TIBQuery;
    Label28: TLabel;
    DBEdit9: TDBEdit;
    DBGrid5: TDBGrid;
    DBMemo1: TDBMemo;
    BitBtn19: TBitBtn;
    GroupBox7: TGroupBox;
    Label40: TLabel;
    Label31: TLabel;
    FORMAPAGAMENTO: TComboBox;
    TIPOPAGAMENTO: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    FORMAPAGAMENTO1: TEdit;
    TIPOPAGAMENTO1: TEdit;
    DataSource4: TDataSource;
    QSaida: TIBQuery;
    Edit6: TEdit;
    BitBtn20: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn21: TBitBtn;
    TabSheet3: TTabSheet;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    DBMemo2: TDBMemo;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    TabSheet4: TTabSheet;
    DataSource5: TDataSource;
    devolucao1: TIBQuery;
    DataSource6: TDataSource;
    fechamento: TIBQuery;
    devolucao: TIBTable;
    devolucaoCOMPRIMENTO: TFloatField;
    devolucaoLARGURA: TFloatField;
    devolucaoEXPESSURA: TFloatField;
    devolucaoTOTALM3: TFloatField;
    devolucaoDESCONTO: TFloatField;
    devolucaoTOTALPRODUTO: TFloatField;
    devolucaoVALTOTAL: TFloatField;
    devolucaoESSENCIA: TIBStringField;
    devolucaoUNIDADE: TIBStringField;
    devolucaoQUANTIDADE: TFloatField;
    devolucaoESSENCIATIPO: TIBStringField;
    devolucaoCHECK: TIBStringField;
    ImageList2: TImageList;
    devolucaoCODIGOESSENCIA: TFloatField;
    devolucaoCODIGOPRODUTO: TFloatField;
    devolucaoFECHAMENTOTIPO: TIBStringField;
    devolucaoFECHAMENTODESCRICAO: TIBStringField;
    devolucaoCODIGOFORNECEDOR: TFloatField;
    fechamentoCODIGOLANCAMENTO: TIntegerField;
    fechamentoCODIGOCLIENTE: TFloatField;
    fechamentoNF: TFloatField;
    fechamentoDATA: TDateTimeField;
    fechamentoESSENCIA: TIBStringField;
    fechamentoQTDE_PRODUTOS: TFloatField;
    fechamentoTOTALM3: TFloatField;
    fechamentoVAL_TOT_PRODUTOS: TFloatField;
    fechamentoFORMAPAGAMENTO: TIBStringField;
    fechamentoDESCONTO: TFloatField;
    fechamentoVAL_TOT_NOTA: TFloatField;
    fechamentoPARCELA1: TDateTimeField;
    fechamentoPARCELA2: TDateTimeField;
    fechamentoMOEDA: TIBStringField;
    fechamentoNUMEROPARCELAS: TFloatField;
    fechamentoINTERVALOPARCELAS: TFloatField;
    fechamentoCODIGOESSENCIA: TFloatField;
    fechamentoTIPOPAGAMENTO: TIBStringField;
    fechamentoVALORENTRADA: TFloatField;
    fechamentoCODIGOVENDEDOR: TIntegerField;
    fechamentoNOMEVENDEDOR: TIBStringField;
    fechamentoQTDEM2: TFloatField;
    fechamentoQTDEML: TFloatField;
    fechamentoTIPOCODIGO: TIBStringField;
    fechamentoTIPOLANCAMENTO: TIBStringField;
    fechamentoNOMECLIENTE: TIBStringField;
    fechamentoFECHAMENTOTIPO: TIBStringField;
    fechamentoFECHAMENTODESCRICAO: TIBStringField;
    fechamentoFONECONTATO: TIBStringField;
    fechamentoFONECONTATO1: TIBStringField;
    fechamentoENTREGACODIGO: TIBStringField;
    fechamentoENTREGASTATUS: TIBStringField;
    fechamentoENTREGADATA: TDateTimeField;
    fechamentoENTREGAPROGRAMADA: TIBStringField;
    fechamentoENTREGAPROGDATA: TDateTimeField;
    fechamentoENTREGAPROGHORA: TTimeField;
    fechamentoOBS: TIBStringField;
    fechamentoPRAZOENTREGA: TIBStringField;
    fechamentoOUTRASDESPESAS: TFloatField;
    fechamentoVALORFRETE: TFloatField;
    fechamentoVALORDESCONTO: TFloatField;
    fechamentoDATAPEDIDO: TDateTimeField;
    fechamentoFECHAMENTO_MOTIVO: TMemoField;
    BitBtn39: TBitBtn;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox8: TGroupBox;
    Label34: TLabel;
    Label32: TLabel;
    Edit8: TEdit;
    nota1: TSpinEditXP;
    DBEdit15: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox9: TGroupBox;
    Panel5: TPanel;
    BitBtn32: TBitBtn;
    GroupBox10: TGroupBox;
    DBGrid4: TDBGrid;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox11: TGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit14: TEdit;
    Panel6: TPanel;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn36: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn38: TBitBtn;
    fechamentoPRAZO: TIBStringField;
    BitBtn40: TBitBtn;
    DataSource7: TDataSource;
    qcredor: TIBQuery;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure pesoliquidoExit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure dataEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure notaExit(Sender: TObject);
    procedure EvDateEdit1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure aChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn9Click(Sender: TObject);
    procedure TIPOLANCAMENTOChange(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8Change(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure notaEnter(Sender: TObject);
    procedure notaClick(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure datafechamentoChange(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure FORMAPAGAMENTOChange(Sender: TObject);
    procedure TIPOPAGAMENTOChange(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure tipoClick(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure DBEdit12Change(Sender: TObject);
    procedure nota1Click(Sender: TObject);
    procedure nota1Enter(Sender: TObject);
    procedure nota1Exit(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure devolucao1AfterOpen(DataSet: TDataSet);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure TabSheet2Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure tipolancamentoEnter(Sender: TObject);
    procedure FORMAPAGAMENTOEnter(Sender: TObject);
    procedure TIPOPAGAMENTOEnter(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada, UnitEntradaToros, UnitEntradaSerradaProdutos,
  UnitPesquisa3, Unitvendaprodutos, Unitvendafechamento,
  Unitvendaprodutos1, UnitManutencao1, UnitRSaida1,
  unitvendaimprimirromaneiovenda, Unitvendaprodo1edit,
  unitfrmvendafinaliza, unitrepromaneio, unitfrmocorrencia,
  unitfrmvendacontato, unitfrmvendabaixa;


{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure TfrmVenda.BitBtn4Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if (dm.TSaida_Discriminacao.RecordCount <> 0) and (dm.TSAIDAFECHAMENTO.RecordCount = 0) then
begin
Application.MessageBox('Fechamento da venda deve ser informado, Verifíque!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
bitbtn12.Enabled := false;
bitbtn9.Enabled := false;
bitbtn1.Enabled := false;
bitbtn39.Enabled := false;
bitbtn10.Enabled := false;
bitbtn11.Enabled := false;

nota.Text := '0';
fornecedor.Text := '';
data.Text:= '';
tipolancamento.ItemIndex := -1;
dbedit6.Text:= '';
totprod.caption:= '';
totm3.caption:= '';
totvenda.caption:= '';
forma.Caption := '';
desconto.Caption := '';
totnota.Caption  := '';
g.Caption := 'Produtos ';
status1.Caption := '';
edit4.Text := '';
FORMAPAGAMENTO.ItemIndex := -1;
TIPOPAGAMENTO.ItemIndex := -1;

DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;
DM.TSAIDAFECHAMENTO.Filtered := False;
DM.TSAIDAFECHAMENTO.Close;

with DM.QCredor  do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select * from Credor');
      SQL.Add('Where PADROES_INATIVO =:busca');
      SQL.Add('Order by NOMECREDOR'); 
      ParamByName('busca').Text := '2';
      Open;
      end;

if DM.QCredor.RecordCount = 0 then
begin
DM.QCredor.Close;
Application.MessageBox('Não há Cliente(s) Cadastrado(s), Verifíque!', 'Entrada', mb_Ok + mb_IconExclamation);
end
else
begin
groupbox2.Enabled := true;
Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.ShowModal;
frmpesquisa3.Free;
end;
end;
end;
end;

procedure TfrmVenda.BitBtn2Click(Sender: TObject);
begin
if (dm.TSaida_Discriminacao.RecordCount <> 0) and (dm.TSAIDAFECHAMENTO.RecordCount = 0) then
begin
Application.MessageBox('Fechamento da venda deve ser informado, Verifíque!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.TSaida_Discriminacao.Cancel;
DM.TSaida_Discriminacao.Filtered := FALSE;
DM.TSaida_Discriminacao.Close;

DM.TSAIDAFECHAMENTO.Filtered := False;
DM.TSAIDAFECHAMENTO.Close;

DM.QFornecedor.Close;
DM.QMunicipio.Close;

groupbox2.Enabled := false;

BitBtn4.Enabled := True;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
BitBtn12.Enabled := false;
BitBtn14.Enabled := false;
BitBtn5.Enabled := false;
BitBtn1.Enabled := false;
BitBtn9.Enabled := false;
BitBtn8.Enabled := false;
BitBtn6.Enabled := false;
BitBtn7.Enabled := false;
BitBtn39.Enabled := false;
dbedit6.Text := '0';
fornecedor.Text := '';
nota.Text := '0';
Data.Clear;
//data.Text:= '';
status1.Caption  := '';
g.Caption := 'Produtos ';
totprod.caption:= '';
totm3.caption:= '';
totvenda.caption:= '';
forma.Caption := '';
desconto.Caption := '';
totnota.Caption  := '';
tipolancamento.ItemIndex := -1;
dbedit7.Text := '';
edit5.Text := '';
edit4.Text := '';
FORMAPAGAMENTO.ItemIndex := -1;
TIPOPAGAMENTO.ItemIndex := -1;
formapagamento1.Text := '';
tipopagamento1.Text := '';
//bitbtn4.SetFocus ;
end;
end;

procedure TfrmVenda.BitBtn3Click(Sender: TObject);
begin
if (dm.TSaida_Discriminacao.RecordCount <> 0) and (dm.TSAIDAFECHAMENTO.RecordCount = 0) then
begin
Application.MessageBox('Fechamento da venda deve ser informado, Verifíque!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
tipolancamento.ItemIndex := 1;
g.Caption := 'Produtos ';
BitBtn4.Enabled := True;
dbedit6.Text := '';
Close;
end;
end;


procedure TfrmVenda.FormShow(Sender: TObject);
begin
Self.Tag := 1;
PageControl1.ActivePage := TabSheet1;
bitbtn4.SetFocus;
end;

procedure TfrmVenda.TabSheet1Show(Sender: TObject);
begin
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
DM.QFornecedor.Close;
end;

procedure TfrmVenda.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmVenda.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmVenda.TabSheet2Show(Sender: TObject);
begin
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
DM.QFornecedor.Open;
DM.QFornecedor.Open;
  with DM.QFornecedor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
      Open;
    end;
end;

procedure TfrmVenda.BitBtn10Click(Sender: TObject);
begin
DM.TSaida_Discriminacao.Next;
end;

procedure TfrmVenda.BitBtn11Click(Sender: TObject);
begin
DM.TSaida_Discriminacao.Prior;
end;

procedure TfrmVenda.pesoliquidoExit(Sender: TObject);
begin
if fornecedor.Text = '' then
   	begin
      exit;
    end
    else
if nota.text = '000000' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
    end;

if (fornecedor.Text <> '') and (nota.text <> '000000') then
begin
If Application.MessageBox('Deseja Inserir Produtos Agora?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.QProduto.Open;
DM.TESDISCRIMINACAO.Open;
DM.TESDISCRIMINACAO.Append;
frmEntradaSerradaProdutos.DBEDIT3.Text := DBEDit6.Text;
frmEntradaSerradaProdutos.DBEDIT4.Text := nota.Text;
frmEntradaSerradaProdutos.DBEDIT6.Text := fornecedor.Text;
frmEntradaSerradaProdutos.Show;
frmEntradaSerradaProdutos.DBEDIT1.SetFocus;
end
else

end;
end;

procedure TfrmVenda.BitBtn12Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if fornecedor.Text = '' then
   	begin
      Application.MessageBox('Fornecedor deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
      Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
      frmPesquisa3.ShowModal;
      frmpesquisa3.Free;
    end
    else
begin
if nota.text = '0' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
    end
    else
begin
if tipolancamento.Text = '' then
   	begin
      Application.MessageBox('Tipo de Lançamento deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
      tipolancamento.SetFocus;
    end
    end;
    end;

if (fornecedor.Text <> '') and (nota.text <> '0')and (tipolancamento.text <> '') then
begin
if tipolancamento.ItemIndex = 0 then
    begin
    if edit4.Text = '' then
    begin
    Application.MessageBox('Telefone de contato deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
    edit4.Enabled := true;
    edit4.SetFocus;
    end
    else
    begin
    DM.QProduto.Open;
    DM.TSaida_Discriminacao.Open;
    DM.TSaida_Discriminacao.Append;
    Application.CreateForm(TfrmVendaProdutos1, frmVendaProdutos1);
    frmVendaProdutos1.DBEDIT3.Text := DBEDit6.Text;
    frmVendaProdutos1.DBEDIT4.Text := nota.Text;
    frmVendaProdutos1.Showmodal;
    frmvendaprodutos1.Free;
    end;
    end;

if tipolancamento.ItemIndex <> 0 then
    begin
    DM.QProduto.Open;
    DM.TSaida_Discriminacao.Open;
    DM.TSaida_Discriminacao.Append;
    Application.CreateForm(TfrmVendaProdutos1, frmVendaProdutos1);
    frmVendaProdutos1.DBEDIT3.Text := DBEDit6.Text;
    frmVendaProdutos1.DBEDIT4.Text := nota.Text;
    frmVendaProdutos1.Showmodal;
    frmvendaprodutos1.Free;
    end;
end
else
nota.SetFocus;
end;
end;


procedure TfrmVenda.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;



procedure TfrmVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;

end;

procedure TfrmVenda.notaExit(Sender: TObject);
var total, total1, total2, total3 : Real;
var format, format1 : Real;
begin
if (dbedit6.Text <> '') then
begin
   DM.TSAIDAFECHAMENTO.Filter := 'NF = ' + QuotedStr(nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(DBEDIT6.Text);
   DM.TSAIDAFECHAMENTO.Filtered := True;
   DM.TSAIDAFECHAMENTO.Open;

if DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] = '8' then
begin
Application.MessageBox('Pedido Cançelado!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn2.Click ;
end
else
begin
if (DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] <> '8') then
  begin
   if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
   begin
   format := 0;
   format1 := 0;
   format := DM.TSAIDAFECHAMENTO['DESCONTO'];
   format1 := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   forma.Caption := DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO'];
   desconto.Caption := DM.TSAIDAFECHAMENTO['DESCONTO'];
   totnota.Caption := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   desconto.caption := FormatCurr('#0.000 %',format);
   totnota.caption := FormatCurr('#,0.00',format1);
   bitbtn8.Enabled := true;
   bitbtn30.Enabled := true;
   end
   else
   begin
   forma.Caption := '';
   desconto.Caption := '';
   totnota.Caption  := '';
   bitbtn8.Enabled := false;
   end;
//   end;


if DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] = '9' then
begin
Application.MessageBox('Orçamento Baixado. Para vizualiza-lo acesse a aba Orçamentos!', 'Informação', mb_Ok + mb_IconInformation);
DM.TSAIDAFECHAMENTO.Filtered := False;
DM.TSAIDAFECHAMENTO.Close;
bitbtn2.Click ;
end
else
begin
if (DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] <> '9') then
  begin
   if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
   begin
   format := 0;
   format1 := 0;
   format := DM.TSAIDAFECHAMENTO['DESCONTO'];
   format1 := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   forma.Caption := DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO'];
   desconto.Caption := DM.TSAIDAFECHAMENTO['DESCONTO'];
   totnota.Caption := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   desconto.caption := FormatCurr('#0.000 %',format);
   totnota.caption := FormatCurr('#,0.00',format1);
   bitbtn8.Enabled := true;
   bitbtn30.Enabled := true;
   end
   else
   begin
   forma.Caption := '';
   desconto.Caption := '';
   totnota.Caption  := '';
   bitbtn8.Enabled := false;
   end;
//   end;

   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   begin
   if DM.TSaida_Discriminacao.RecordCount = 0 then
   begin
   QSaida.Close;
   qsaida.SQL.Clear ;
   QSaida.SQL.Add('Select * from SAIDA_FECHAMENTO');
   QSaida.SQL.Add('Where NF =:nf');
   QSaida.ParamByName('nf').Text := nota.Text ; // preenche o parametro
   QSaida.Open;

    if QSaida.RecordCount <> 0 then
    begin
   edit6.Clear;
   dbedit7.Text := '';
   edit5.Text := '';
   tipolancamento.Enabled := true;
   FORMAPAGAMENTO.Enabled := TRUE;
   TIPOPAGAMENTO.Enabled := TRUE;
   tipolancamento.ItemIndex := -1;
   formapagamento.ItemIndex := -1;
   tipopagamento.ItemIndex := -1;
   formapagamento1.Text := '';
   tipopagamento1.Text := '';
   status1.Caption  := '';
   bitbtn12.Enabled := true;
   bitbtn13.Enabled := true;
   bitbtn9.Enabled := false;
   bitbtn1.Enabled := true;

   bitbtn5.Enabled := false;
   BitBtn10.Enabled := false;
   BitBtn11.Enabled := false;
   BitBtn14.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn7.Enabled := false;
   BitBtn1.Enabled := false;
   totprod.Caption := '';
   totm3.Caption := '';
   totvenda.Caption := '';
   g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
    if QSaida['NOMECLIENTE'] = null then Edit6.Text := QSaida['CODIGOCLIENTE'] else edit6.Text := QSaida['NOMECLIENTE'];
    Application.MessageBox(PChar('Para o pedido informado já consta lançamento para o cliente: '+#13 + Edit6.Text),'Informação', mb_Ok + mb_IconInformation);
    //este e um exemplo de como mostrar msg com dados da tabela    Application.MessageBox(  PansiChar(  ' Este aluno pertence a: '  +tabela.fieldbyname('nome_campo').AsString),'Aviso', mb_iconExclamation);
    QSaida.Close;
    data.SetFocus;
    nota.Text := '0';
    end
    else
    begin
   edit6.Clear;
   dbedit7.Text := '';
   edit5.Text := '';
   tipolancamento.Enabled := true;
   FORMAPAGAMENTO.Enabled := TRUE;
   TIPOPAGAMENTO.Enabled := TRUE;
   tipolancamento.ItemIndex := -1;
   formapagamento.ItemIndex := -1;
   tipopagamento.ItemIndex := -1;
   formapagamento1.Text := '';
   tipopagamento1.Text := '';
   status1.Caption  := '';
   bitbtn12.Enabled := true;
   bitbtn9.Enabled := false;
   bitbtn1.Enabled := true;

   bitbtn5.Enabled := false;
   BitBtn10.Enabled := false;
   BitBtn11.Enabled := false;
      BitBtn14.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn7.Enabled := false;
   BitBtn1.Enabled := false;
   totprod.Caption := '';
   totm3.Caption := '';
   totvenda.Caption := '';
   g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
//   g.Caption := 'Produtos > ' + (totprod.caption);
    end;
   end
   else
   begin

   if DM.TSaida_Discriminacao.RecordCount <> 0 then
   begin
   TIPOLANCAMENTO.Enabled := FALSE;
   FORMAPAGAMENTO.Enabled := FALSE;
   TIPOPAGAMENTO.Enabled := FALSE;
   data.Text := DM.TSaida_Discriminacao['DATALANCAMENTO'];
   if DM.TSaida_Discriminacao['TIPOCODIGO'] = null then TIPOLANCAMENTO.ItemIndex := -1 else  tipolancamento.ItemIndex := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['TIPOCODIGO'] = null then DBEDIT7.Text  := '' else dbedit7.Text := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['TIPOLANCAMENTO'] = null then EDIT5.Text  := '' else   edit5.Text := DM.TSaida_Discriminacao['TIPOLANCAMENTO'];
   if DM.TSaida_Discriminacao['FONECONTATO'] = null then edit4.Text := '' else  edit4.Text := DM.TSaida_Discriminacao['FONECONTATO'];
   if DM.TSaida_Discriminacao['FORMAPAGAMENTO'] = null then FORMAPAGAMENTO.ItemIndex := -1 else FORMAPAGAMENTO.ItemIndex := FORMAPAGAMENTO.Items.IndexOf(DM.TSaida_Discriminacao['FORMAPAGAMENTO']);
   if DM.TSaida_Discriminacao['TIPOPAGAMENTO'] = null then TIPOPAGAMENTO.ItemIndex := -1 else  TIPOPAGAMENTO.ItemIndex := TIPOPAGAMENTO.Items.IndexOf(DM.TSaida_Discriminacao['TIPOPAGAMENTO']);
   FORMAPAGAMENTO1.Text := FORMAPAGAMENTO.Text;
   TIPOPAGAMENTO1.Text := TIPOPAGAMENTO.Text;

   BitBtn10.Enabled := True;
   BitBtn11.Enabled := True;
   BitBtn1.Enabled := True;
   
      if DM.TSaida_Discriminacao.RecordCount > 1 then BitBtn39.Enabled := True else  BitBtn39.Enabled := false;
   BitBtn5.Enabled := True;
   BitBtn6.Enabled := True;
   BitBtn7.Enabled := True;
   BitBtn9.Enabled := True;

   total := 0;
   total1 := 0;
   total2 :=0;
   total3 :=0;

   DM.TSaida_Discriminacao.First;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        total := DM.TSaida_Discriminacao['TOTALM3'] + total ;
        total1 := DM.TSaida_Discriminacao['QUANTIDADE'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
          if dm.TSaida_Discriminacao['DESCONTO'] = null then
          begin
          dm.TSaida_Discriminacao.Edit;
          dm.TSaida_Discriminacao['DESCONTO'] := '0';
          dm.TSaida_Discriminacao.Post;
          end
          else
          begin
          total3 := DM.TSaida_Discriminacao['DESCONTO'] + total3 ;
        DM.TSaida_Discriminacao.Next;
     end;
     end;

    totm3.caption := FormatCurr('#0.0000',total);
    totprod.caption := FormatCurr('#0',total1);
    totvenda.caption := FormatCurr('#,0.00',total2);
    label27.Caption := FormatCurr('',total3);

    g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
    status1.Caption := DM.TSaida_Discriminacao['FECHAMENTODESCRICAO'];
    if status1.Caption = 'Venda Finalizada' then
    begin
    status1.Font.Color := clRed;
    label28.Font.Color := clRed;
    end
    else
    begin
    status1.Font.Color := clgreen;
    label28.Font.Color := clgreen;
    end;

//   DM.TSTATUS1.Filter := 'PEDIDO = ' + QuotedStr(nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(DBEDIT6.Text);
  // DM.TSTATUS1.Filtered := True;
//   DM.TSTATUS1.Open;
  // status1.Caption := DM.TSTATUS1['STATUS'];

//   if DM.TSaida_Discriminacao['TIPOFECHAMENTO'] = null then status1.Caption:= '' else  status1.Caption := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn12.Enabled := false else bitbtn12.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn9.Enabled := false else bitbtn9.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn5.Enabled := false else bitbtn5.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn14.Enabled := false else bitbtn14.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn13.Enabled := false else bitbtn13.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] <> 2 then bitbtn8.Enabled := false else bitbtn8.Enabled := true;
//   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn30.Enabled := false else bitbtn30.Enabled := true;

end;
end;
end;
end;
end;
end;
end;
end;
end;

procedure TfrmVenda.EvDateEdit1Enter(Sender: TObject);
begin
if DM.TSaida_Discriminacao.RecordCount = 0 then
begin
Data.Text := DateToStr(now);
end
else

end;

procedure TfrmVenda.BitBtn1Click(Sender: TObject);
var total, total3, total4, total5, total6, total1, total2, total10 : Real;
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if DM.TSaida_Discriminacao.RecordCount = 1 then
begin
if edit3.Text = '' then edit3.Text := '0';
//   DM.TESDISCRIMINACAO.Filtered := False;
  // DM.TESDISCRIMINACAO.Close;
//   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
  // DM.TESDISCRIMINACAO.Filtered := True;
//   DM.TESDISCRIMINACAO.Open;

If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//soma para extorno no estoque
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT4.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT5.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

      if DM.TESTOQUE.RecordCount  <> 0 then
      begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := DM.TSaida_Discriminacao['QUANTIDADE'] + total5;
        total6 := DM.TSaida_Discriminacao['TOTALM3'] + total6;

     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;

          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;
     DM.TESTOQUE.Post;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end
     else
     begin
     if DM.TESTOQUE.RecordCount  = 0 then
     begin
      DM.TESTOQUE.Append;
      DM.TESTOQUE['QUANTIDADE']:= DM.TSaida_Discriminacao['QUANTIDADE'];
      DM.TESTOQUE['CODIGOESSENCIA']:= DM.TSaida_Discriminacao['CODIGOESSENCIA'];
      DM.TESTOQUE['ESSENCIA']:= DM.TSaida_Discriminacao['ESSENCIA'];
      DM.TESTOQUE['ESSENCIATIPO']:= DM.TSaida_Discriminacao['ESSENCIATIPO'];
      DM.TESTOQUE['CODIGOPRODUTO']:= DM.TSaida_Discriminacao['CODIGOPRODUTO'];
      DM.TESTOQUE['COMPRIMENTO']:= DM.TSaida_Discriminacao['COMPRIMENTO'];
      DM.TESTOQUE['LARGURA']:= DM.TSaida_Discriminacao['LARGURA'];
      DM.TESTOQUE['EXPESSURA']:= DM.TSaida_Discriminacao['EXPESSURA'];
      DM.TESTOQUE['TOTALM3']:= DM.TSaida_Discriminacao['TOTALM3'];
          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

      DM.TESTOQUE.Post;
      DM.TESTOQUE.Filtered := FALSE;
      DM.TESTOQUE.Close;
      end;
      end;

//   DM.TESDISCRIMINACAO.Edit;
  // DM.TESDISCRIMINACAO['SITUACAO'] := '0';
//   DM.TESDISCRIMINACAO.Post;
  // DM.TESDISCRIMINACAO.Close;

   if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then DM.TSAIDAFECHAMENTO.Delete;
   DM.TSaida_Discriminacao.Delete;
   tipolancamento.ItemIndex := -1;


   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
   dbedit6.Text :='';
   fornecedor.Text := '';
   nota.Text := '0';
   data.Clear;
   datafechamento.Clear;
   status1.Caption := '';
   edit4.Text := '';
   groupbox2.Enabled := false;
   totprod.caption:= '';
   totm3.caption:= '';
   totvenda.caption:= '';
   forma.Caption := '';
   desconto.Caption := '';
   totnota.Caption  := '';
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := false;
    BitBtn5.Enabled := false;
    BitBtn8.Enabled := false;
    BitBtn1.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn7.Enabled := false;
   BitBtn9.Enabled := false;
   BitBtn12.Enabled := false;

   end;
end
else
begin
if DM.TSaida_Discriminacao.RecordCount <> 1 then
begin
if edit3.Text = '' then edit3.Text := '0';

//   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
  // DM.TESDISCRIMINACAO.Filtered := True;
//   DM.TESDISCRIMINACAO.Open;

If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//soma para extorno no estoque
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

  DM.TESTOQUE.Filtered := False;
  DM.TESTOQUE.Close;
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT4.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT5.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;
   if DM.TESTOQUE.RecordCount <> 0 then
   begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := DM.TSaida_Discriminacao['QUANTIDADE'] + total5;
        total6 := DM.TSaida_Discriminacao['TOTALM3'] + total6;


     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;

          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

     DM.TESTOQUE.Post;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end
     else
     begin
     if DM.TESTOQUE.RecordCount = 0 then
     begin
      DM.TESTOQUE.Append;
      DM.TESTOQUE['QUANTIDADE']:= DM.TSaida_Discriminacao['QUANTIDADE'];
      DM.TESTOQUE['CODIGOESSENCIA']:= DM.TSaida_Discriminacao['CODIGOESSENCIA'];
      DM.TESTOQUE['ESSENCIA']:= DM.TSaida_Discriminacao['ESSENCIA'];
      DM.TESTOQUE['ESSENCIATIPO']:= DM.TSaida_Discriminacao['ESSENCIATIPO'];
      DM.TESTOQUE['CODIGOPRODUTO']:= DM.TSaida_Discriminacao['CODIGOPRODUTO'];
      DM.TESTOQUE['COMPRIMENTO']:= DM.TSaida_Discriminacao['COMPRIMENTO'];
      DM.TESTOQUE['LARGURA']:= DM.TSaida_Discriminacao['LARGURA'];
      DM.TESTOQUE['EXPESSURA']:= DM.TSaida_Discriminacao['EXPESSURA'];
      DM.TESTOQUE['TOTALM3']:= DM.TSaida_Discriminacao['TOTALM3'];
          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

      DM.TESTOQUE.Post;
      DM.TESTOQUE.Filtered := FALSE;
      DM.TESTOQUE.Close;
      end;
      end;

//   DM.TESDISCRIMINACAO.Edit;
  // DM.TESDISCRIMINACAO['SITUACAO']:= '0';
//   DM.TESDISCRIMINACAO.Post;
  // DM.TESDISCRIMINACAO.Close;

   DM.TSaida_Discriminacao.Delete;
   total := 0;
   total1 := 0;
   total2 := 0;


   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   DM.TSaida_Discriminacao.Prior;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        total := DM.TSaida_Discriminacao['TOTALM3'] + total ;
        total1 := DM.TSaida_Discriminacao['QUANTIDADE'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
        total10 := DM.TSaida_Discriminacao['DESCONTO'] + total10 ;
        DM.TSaida_Discriminacao.Next;
     end;
    totm3.caption := FormatCurr('#0.0000',total);
    totprod.caption := FormatCurr('#0',total1);
    totvenda.caption := FormatCurr('#0.00',total2);
    label27.Caption := FormatCurr('',total10);

    g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';

        if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
        begin
        Application.MessageBox('Fechamento da venda devera ser realizado novamente!', 'Lançamento', mb_Ok + mb_IconInformation);
        Application.CreateForm(TfrmVendaFechamento, frmVendaFechamento);
        frmVendaFechamento.showmodal;
        frmvendafechamento.Free;
        end
        else
end;
end;
end;
end;
end;

procedure TfrmVenda.BitBtn5Click(Sender: TObject);
begin
if frmprincipal.fechamentovenda.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if DM.TSAIDAFECHAMENTO.RecordCount = 0 then
begin
Application.MessageBox('Forma de pagamento não informado, Verifique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TFrmvendafinaliza, frmvendafinaliza);
frmvendafinaliza.ShowModal;
frmvendafinaliza.free;
end;
end;
end;

procedure TfrmVenda.DBEdit1Change(Sender: TObject);
begin
   edit1.Text := DBEDIT1.Text;
   edit1.Text := StringReplace(edit1.Text, ',', '.', []);
end;

procedure TfrmVenda.DBEdit2Change(Sender: TObject);
begin
   edit2.Text := DBEDIT2.Text;
   edit2.Text := StringReplace(edit2.Text, ',', '.', []);
end;

procedure TfrmVenda.DBEdit3Change(Sender: TObject);
begin
   edit3.Text := DBEDIT3.Text;
   edit3.Text := StringReplace(edit3.Text, ',', '.', []);
end;

procedure TfrmVenda.aChange(Sender: TObject);
begin
self.Text := totm3.Caption;
end;


procedure TfrmVenda.FormDestroy(Sender: TObject);
begin
DM.TSTATUS1.Filtered := False;
DM.TSTATUS1.Close;

DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Close;

DM.TSAIDAFECHAMENTO.Filtered := False;
DM.TSAIDAFECHAMENTO.Close;

DM.TESDISCRIMINACAO.Filtered := False;
DM.TESDISCRIMINACAO.Close;

DM.QFornecedor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
end;

procedure TfrmVenda.BitBtn6Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmvendaimprimirromaneiovenda, frmvendaimprimirromaneiovenda);
frmvendaimprimirromaneiovenda.Tag := 2;
frmvendaimprimirromaneiovenda.ComboBox2.Visible := false;
frmvendaimprimirromaneiovenda.ComboBox1.Visible := true;
frmvendaimprimirromaneiovenda.ShowModal;
frmvendaimprimirromaneiovenda.Free;
end;
end;

procedure TfrmVenda.BitBtn7Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if DM.TSAIDAFECHAMENTO.RecordCount = 0 then
begin
Application.MessageBox('Para emissão deste relatório, é necessário realizar o Fechamento da Venda!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmvendaimprimirromaneiovenda, frmvendaimprimirromaneiovenda);
  frmvendaimprimirromaneiovenda.Tag := 1;
  frmvendaimprimirromaneiovenda.ComboBox1.Visible := false;
  frmvendaimprimirromaneiovenda.ComboBox2.Visible := true;
  frmvendaimprimirromaneiovenda.ShowModal;
  frmvendaimprimirromaneiovenda.Free;
end;
end;
end;

procedure TfrmVenda.BitBtn8Click(Sender: TObject);
begin
if frmprincipal.cancelarfechamento.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
If Application.MessageBox('Confirma cancelamento do Fechamento da Venda?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//forma.Caption := '';
//desconto.Caption := '';
//totnota.Caption := '';
bitbtn8.Enabled := false;
bitbtn5.Enabled := true;
bitbtn14.Enabled := true;
bitbtn1.Enabled := true;
bitbtn9.Enabled := true;
bitbtn12.Enabled := true;
bitbtn13.Enabled := true;
bitbtn30.Enabled := true;


   DM.TSaida_Discriminacao.First;
   dm.TSaida_Discriminacao.Edit;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
        dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
        DM.TSaida_Discriminacao.Next;
        dm.TSaida_Discriminacao.Edit;
     end;
     dm.TSaida_Discriminacao.Post;
   if DM.TSaida_Discriminacao['TIPOCODIGO'] = null then DBEDIT7.Text  := '' else dbedit7.Text := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['TIPOLANCAMENTO'] = null then EDIT5.Text  := '' else   edit5.Text := DM.TSaida_Discriminacao['TIPOLANCAMENTO'];

    DM.TSAIDAFECHAMENTO.Edit;
    DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '1';
    DM.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
    DM.TSAIDAFECHAMENTO['DATA']:= null;
    DM.TSAIDAFECHAMENTO['ENTREGASTATUS']:= null;
    DM.TSAIDAFECHAMENTO['ENTREGACODIGO']:= null;
    dm.TSAIDAFECHAMENTO.Post;

    DM.TSTATUS1.open;
    DM.TSTATUS1.Edit;
    DM.TSTATUS1['CODIGOSTATUS'] := '1';
    DM.TSTATUS1['STATUS'] := 'Aguardando Fechamento';
    dm.TSTATUS1.Post;
    frmvenda.status1.Caption :=DM.TSaida_Discriminacao['FECHAMENTODESCRICAO'];

    if status1.Caption = 'Venda Finalizada' then
    begin
    status1.Font.Color := clRed;
    label28.Font.Color := clRed;
    end
    else
    begin
    status1.Font.Color := clgreen;
    label28.Font.Color := clgreen;
    end;
end
else
begin
dbgrid2.SetFocus ;
end;
end;
end;

procedure TfrmVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if bitbtn5.Enabled = true then
  begin
  if key = vk_F3 then bitbtn5.Click;
  end;

if bitbtn8.Enabled = true then
  begin
  if key = vk_F4  then bitbtn8.Click;
  end;

if key = vk_ESCAPE  then  bitbtn3.Click;
end;

procedure TfrmVenda.BitBtn9Click(Sender: TObject);
begin
if frmprincipal.editaproduto.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
dbgrid2.SetFocus;
end
else
begin
DM.QProduto.Open;
DM.TSaida_Discriminacao.Open;
DM.TSaida_Discriminacao.edit;
Application.CreateForm(TfrmVendaProdutos1edita, frmVendaProdutos1edita);
//frmVendaProdutos1.DBEDIT3.Text := DBEDit6.Text;
//frmVendaProdutos1.DBEDIT4.Text := nota.Text;
frmVendaProdutos1edita.Showmodal;
frmvendaprodutos1edita.Free;
end;
end;

procedure TfrmVenda.TIPOLANCAMENTOChange(Sender: TObject);
begin
if tipolancamento.ItemIndex = 0 then
begin
dbedit7.Text := '1';
end
else
begin
if tipolancamento.ItemIndex = 1 then
begin
dbedit7.Text := '2';
end;
end;
end;

procedure TfrmVenda.BitBtn13Click(Sender: TObject);
begin
      DM.QCredor.Open;
      Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
      frmPesquisa3.ShowModal;
      frmpesquisa3.Free;
end;

procedure TfrmVenda.ComboBox1Change(Sender: TObject);
begin
if tipolancamento.ItemIndex = 0 then
begin
dbedit7.Text := '0'; //Orcamento
edit5.Text := tipolancamento.Text;
edit4.Enabled := true;
end
else
begin
if tipolancamento.ItemIndex = 1 then
begin
dbedit7.Text := '1';   // Venda
edit5.Text := tipolancamento.Text;
edit4.Enabled := false;
end
else
begin
if tipolancamento.ItemIndex = 2 then
begin
dbedit7.Text := '2';   // Transformacao
edit5.Text := tipolancamento.Text;
edit4.Enabled := false;
end
end
end
end;

procedure TfrmVenda.BitBtn14Click(Sender: TObject);
begin
Application.CreateForm(TfrmVendaFechamento, frmVendaFechamento);
frmvendafechamento.showmodal;
frmvendafechamento.Free;
end;

procedure TfrmVenda.TabSheet2Enter(Sender: TObject);
begin
//bitbtn2.Click; 
end;


procedure TfrmVenda.DBGrid2TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid2.Columns.Count - 1 do
  DBGrid2.Columns[i].Title.Font.Style := [];
  dm.TSaida_Discriminacao.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];
//dm.TSaida_Discriminacao.IndexFieldNames := Column.FieldName
end;

procedure TfrmVenda.BitBtn15Click(Sender: TObject);
var total, total1, total2: Real;
var format, format1 : Real;
begin
case (Tipo.ItemIndex) of
      0: Begin

with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, DESCONTO, VAL_TOT_NOTA, FORMAPAGAMENTO, FONECONTATO, NOMEVENDEDOR, TOTALM3, QTDE_PRODUTOS, FECHAMENTOTIPO, FECHAMENTO_MOTIVO, DATAPEDIDO, TIPOCODIGO');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where TIPOCODIGO =:busca AND FECHAMENTOTIPO <>:busca1'); // linha para atender as condições
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '0'; // preenche o parametro
    query1.ParamByName('busca1').Text := '9'; // preenche o parametro
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';

  if query1.RecordCount = 0 then
    begin
    bitbtn16.Enabled := true;
    bitbtn17.Click ;
    Application.MessageBox('Não há registro a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    end
    else
    begin
    Query1.Last;
    groupbox3.Caption := 'Orçamento(s) (' + IntToStr(query1.RecordCount)+ ')';

    if (query1['TIPOCODIGO'] = '0') and (query1['FECHAMENTOTIPO'] <> '9') then
    begin
    bitbtn20.Enabled := true;
    bitbtn20.Caption := 'Bai&xar Orçamento';
    end
    else
    begin
    if (query1['TIPOCODIGO'] = '0') and (query1['FECHAMENTOTIPO'] = '9') then
    begin
    bitbtn20.Enabled := true;
    bitbtn20.Caption := 'Estornar Bai&xa';
    end;
    end;

    with query3 do
  	begin
    Query3.Close;
    Query3.SQL.Clear ;
    query3.SQL.Add('select DATAOCORRENCIA, OCORRENCIA, FOLOWUPPARA, CODIGO');
    query3.SQL.Add('from OCORRENCIA');
    query3.SQL.Add('where NFNUMERO =:nf AND CODIGOCLIENTE =:cliente'); // linha para atender as condições
    query3.SQL.Add('ORDER BY DATAOCORRENCIA');
    query3.ParamByName('nf').Text := DBEDIT8.Text ; // preenche o parametro
    query3.ParamByName('cliente').Text := DBEDIT9.Text ; // preenche o parametro
    query3.Open;
    query3.Last ;
    groupbox6.Caption := 'Contatos (' + IntToStr(query3.RecordCount)+ ')';    
    if query3.RecordCount <> 0 then bitbtn19.enabled := true;
    END;

    with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

   //somatoria da tabela saida
   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);

   //somatoria da tabela fechamento
   total := 0;
   total1 := 0;
   total2 :=0;

   query1.First;
   while not query1.Eof do
     begin
        total2 := query1['VAL_TOT_NOTA'] + total2 ;
        query1.Next;
     end;
    label40.caption := FormatCurr('#,0.00',total2);
    end;
    end;
   bitbtn40.Enabled := true;
   bitbtn16.Enabled := true;
   bitbtn19.Enabled := true;
   DBGRID5.Enabled := true;
   bitbtn21.Enabled := true;
   end;
   end;
end;

case (Tipo.ItemIndex) of
      1: Begin

with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, DESCONTO, VAL_TOT_NOTA, FORMAPAGAMENTO, FONECONTATO, NOMEVENDEDOR, TOTALM3, QTDE_PRODUTOS, TIPOCODIGO, FECHAMENTOTIPO, FECHAMENTO_MOTIVO, DATAPEDIDO');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where FECHAMENTOTIPO =:busca1'); // linha para atender as condições
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca1').Text := '9'; // preenche o parametro
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';

    if query1.RecordCount = 0 then
    begin
    bitbtn16.Enabled := true;
    bitbtn17.Click ;
    Application.MessageBox('Não há registro a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    end
    else
    begin
    Query1.Last;
    groupbox3.Caption := 'Orçamento(s) (' + IntToStr(query1.RecordCount)+ ')';
    with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

   //somatoria da tabela saida
   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);

   //somatoria da tabela fechamento
   total := 0;
   total1 := 0;
   total2 :=0;

   query1.First;
   while not query1.Eof do
     begin
        total2 := query1['VAL_TOT_NOTA'] + total2 ;
        query1.Next;
     end;
    label40.caption := FormatCurr('#,0.00',total2);
    end;
    
   bitbtn21.Enabled := false;
   bitbtn16.Enabled := false;
   bitbtn19.Enabled := false;
   DBGRID5.Enabled := false;


   if (query1['TIPOCODIGO'] = '0') and (query1['FECHAMENTOTIPO'] <> '9') then
   begin
   bitbtn20.Enabled := true;
   bitbtn20.Caption := 'Bai&xar Orçamento';
   end
   else
   begin
   if (query1['TIPOCODIGO'] = '0') and (query1['FECHAMENTOTIPO'] = '9') then
   begin
   bitbtn20.Enabled := true;
   bitbtn20.Caption := 'Reabrir Orçamento';
   end;
   end;
   end;
   end;
end;
end;

case (Tipo.ItemIndex) of
      2: Begin

with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, DESCONTO, VAL_TOT_NOTA, FORMAPAGAMENTO, FONECONTATO, NOMEVENDEDOR, TOTALM3, QTDE_PRODUTOS, TIPOCODIGO, FECHAMENTOTIPO, FECHAMENTO_MOTIVO, DATAPEDIDO');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where FECHAMENTOTIPO =:busca1'); // linha para atender as condições
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca1').Text := '8'; // preenche o parametro
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';

  if query1.RecordCount = 0 then
    begin
    bitbtn16.Enabled := true;
    bitbtn17.Click ;    
    Application.MessageBox('Não há registro a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    end
    else
    begin
    Query1.Last;
    groupbox3.Caption := 'Venda(s) (' + IntToStr(query1.RecordCount)+ ')';
    with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '1'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

   //somatoria da tabela saida
   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);

   //somatoria da tabela fechamento
   total := 0;
   total1 := 0;
   total2 :=0;

   query1.First;
   while not query1.Eof do
     begin
        total2 := query1['VAL_TOT_NOTA'] + total2 ;
        query1.Next;
     end;
    label40.caption := FormatCurr('#,0.00',total2);
    end;
    end;
   bitbtn21.Enabled := false;
   bitbtn16.Enabled := false;
   bitbtn19.Enabled := false;
   DBGRID5.Enabled := false;
    end;
end;
end;
end;

procedure TfrmVenda.BitBtn17Click(Sender: TObject);
begin
groupbox3.Caption := 'Clientes';
groupbox5.Caption := 'Produtos';
label17.caption:= '';
label15.caption:= '';
label19.caption:= '';
label23.Caption := '';
label24.Caption := '';
label25.Caption  := '';
label40.Caption  := '';
bitbtn16.Enabled := false;
bitbtn20.Enabled := false;
bitbtn19.Enabled := false;
bitbtn21.Enabled := false;
Query2.Close;
Query1.Close;
Query3.Close;
end;

procedure TfrmVenda.DBGrid1CellClick(Column: TColumn);
var total, total1, total2: Real;
var format, format1 : Real;
begin
case (Tipo.ItemIndex) of
      0: Begin
with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

with query3 do
  	begin
    Query3.Close;
    Query3.SQL.Clear ;
    query3.SQL.Add('select DATAOCORRENCIA, OCORRENCIA, FOLOWUPPARA, CODIGO');
    query3.SQL.Add('from OCORRENCIA');
    query3.SQL.Add('where NFNUMERO =:nf AND CODIGOCLIENTE =:cliente'); // linha para atender as condições
    query3.SQL.Add('ORDER BY DATAOCORRENCIA');
    query3.ParamByName('nf').Text := DBEDIT8.Text ; // preenche o parametro
    query3.ParamByName('cliente').Text := DBEDIT9.Text ; // preenche o parametro
    query3.Open;

   DBGrid3.Fields[3].EditMask:= '0.00';
   DBGrid3.Fields[4].EditMask:= '0.000';
   DBGrid3.Fields[5].EditMask:= '0.000';
   DBGrid3.Fields[6].EditMask:= '0.0000';
   DBGrid3.Fields[7].EditMask:= ',0.00';
    end;
    end;
    end;
    end;

//case (Tipo.ItemIndex) of
  //  1: Begin
    //with query2 do
//  	begin
  //  Query2.Close;
    //Query2.SQL.Clear ;
//    query2.SQL.Add('select * from SAIDA');
  //  query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    //query2.SQL.Add('ORDER BY ESSENCIA');
//    query2.ParamByName('busca').Text := '1'; // preenche o parametro
  //  query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    //query2.Open;
//    Query2.Last;
  //  groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    //dbgrid1.SetFocus;
//    end;
  //  end;
//end;
end;


procedure TfrmVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;

//with query2 do
  //	begin
//    Query2.Close;
  //  Query2.SQL.Clear ;
    //query2.SQL.Add('select * from SAIDA');
//    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
  //  query2.SQL.Add('ORDER BY ESSENCIA');
    //query2.ParamByName('busca').Text := '0'; // preenche o parametro
//    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
  //  query2.Open;
    //Query2.Last;
//    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
  //  dbgrid1.SetFocus;
    //end;

//case (Tipo.ItemIndex) of
  //    1: Begin
//with query2 do
  //	begin
    //Query2.Close;
//    Query2.SQL.Clear ;
  //  query2.SQL.Add('select * from SAIDA');
    //query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
//    query2.SQL.Add('ORDER BY ESSENCIA');
  //  query2.ParamByName('busca').Text := '1'; // preenche o parametro
//    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
  //  query2.Open;
    //Query2.Last;
//    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
  //      dbgrid1.SetFocus;
//    end;
  //  end;
//    end;
end;

procedure TfrmVenda.DBEdit8Change(Sender: TObject);
var total, total1, total2: Real;
var format, format1 : Real;
begin
case (Tipo.ItemIndex) of
      0: Begin
      if dbedit8.Text <> '' then
      begin
with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

with query3 do
  	begin
    Query3.Close;
    Query3.SQL.Clear ;
    query3.SQL.Add('select DATAOCORRENCIA, OCORRENCIA, FOLOWUPPARA, CODIGO');
    query3.SQL.Add('from OCORRENCIA');
    query3.SQL.Add('where NFNUMERO =:nf AND CODIGOCLIENTE =:cliente'); // linha para atender as condições
    query3.SQL.Add('ORDER BY DATAOCORRENCIA');
    query3.ParamByName('nf').Text := DBEDIT8.Text ; // preenche o parametro
    query3.ParamByName('cliente').Text := DBEDIT9.Text ; // preenche o parametro
    query3.Open;
    query3.Last ;
    groupbox6.Caption := 'Contatos (' + IntToStr(query3.RecordCount)+ ')';    

   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);

   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);
   end;
   end;
    if query3.RecordCount <> 0 then bitbtn19.enabled := true else bitbtn19.Enabled := false;
   end;
end;
end;

case (Tipo.ItemIndex) of
      1: Begin
      if dbedit8.Text <> '' then
      begin
with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);

   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);
   end;
   end;
end;
end;

case (Tipo.ItemIndex) of
      2: Begin
      if dbedit8.Text <> '' then
      begin
with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY ESSENCIA');
    query2.ParamByName('busca').Text := '1'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    dbgrid1.SetFocus;

   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);

   total := 0;
   total1 := 0;
   total2 :=0;

   query2.First;
   while not query2.Eof do
     begin
        total := query2['TOTALM3'] + total ;
        total1 := query2['QUANTIDADE'] + total1 ;
        total2 := query2['VALTOTAL'] + total2 ;
        query2.Next;
     end;
    label15.caption := FormatCurr('#0.0000',total);
    label17.caption := FormatCurr('#0',total1);
    label19.caption := FormatCurr('#,0.00',total2);

   format := 0;
   format1 := 0;
   format := query1['DESCONTO'];
   format1 := query1['VAL_TOT_NOTA'];
   label23.Caption := query1['FORMAPAGAMENTO'];
   label24.Caption := query1['DESCONTO'];
   label25.Caption := query1['VAL_TOT_NOTA'];
   label24.caption := FormatCurr('#0.00 %',format);
   label25.caption := FormatCurr('#,0.00',format1);
   end;
   end;
end;
end;
end;


procedure TfrmVenda.TabSheet1Enter(Sender: TObject);
begin
groupbox3.Caption := 'Clientes';
groupbox5.Caption := 'Produtos';
label17.caption:= '';
label15.caption:= '';
label19.caption:= '';
label23.Caption := '';
label24.Caption := '';
label25.Caption  := '';
label40.Caption := '';
bitbtn16.Enabled := false;
bitbtn20.Enabled := false;
Query2.Close;
Query1.Close;
Query3.Close;
bitbtn4.SetFocus;
end;

procedure TfrmVenda.BitBtn18Click(Sender: TObject);
begin
groupbox3.Caption := 'Clientes';
groupbox5.Caption := 'Produtos';
label17.caption:= '';
label15.caption:= '';
label19.caption:= '';
label23.Caption := '';
label24.Caption := '';
label25.Caption := '';
label40.Caption := '';
bitbtn16.Enabled := false;
bitbtn20.Enabled := false;
Query2.Close;
Query1.Close;
Query3.Close;
frmvenda.Cursor := crDefault;
Close;
end;

procedure TfrmVenda.notaEnter(Sender: TObject);
begin
nota.SelectAll;
end;

procedure TfrmVenda.notaClick(Sender: TObject);
begin
nota.SelectAll;
end;

procedure TfrmVenda.BitBtn16Click(Sender: TObject);
begin
self.Tag := 1;
Application.CreateForm(Tfrmvendacontato, frmvendacontato);
frmvendacontato.ShowModal;
frmvendacontato.Free;
end;

procedure TfrmVenda.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 with DBGrid2 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00A4FFA4
    else
      Canvas.Brush.Color := clWhite;
        Canvas.Font.Color := $000080FF;
//        Canvas.Font.Color := Clgreen;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TfrmVenda.datafechamentoChange(Sender: TObject);
begin
if datafechamento.Text = '  /  /    ' then
begin
label28.Caption  := '';
end
else
begin
label28.Caption := datafechamento.Text;
end;
end;

procedure TfrmVenda.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;

end;

procedure TfrmVenda.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0; 

end;

procedure TfrmVenda.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;

if Key = VK_SPACE then
begin
    bitbtn31.Caption := 'Desmarcar Todos';
    bitbtn31.Tag := 2;
devolucao.Edit;
if devolucao.FieldByName('CHECK').AsString = 'A' then
devolucao.FieldByName('CHECK').AsString := ''
else
devolucao.FieldByName('CHECK').AsString := 'A' ;
end;

if key = VK_BACK then nota1.SetFocus;
end;

procedure TfrmVenda.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
end;

procedure TfrmVenda.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 with DBGrid1 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00A4FFA4 //cor da linha pintada
    else
      Canvas.Brush.Color := clWhite; //cor da linha normal
        Canvas.Font.Color := $000080FF; //cor do texto
//        Canvas.Font.Color := Clgreen;

    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TfrmVenda.DBGrid5DblClick(Sender: TObject);
begin
if query3.RecordCount <> 0 then
begin
self.tag := 2;
Application.CreateForm(Tfrmvendacontato, frmvendacontato);
frmvendacontato.ShowModal;
frmvendacontato.Free;
end;
end;

procedure TfrmVenda.BitBtn19Click(Sender: TObject);
begin
if query3.RecordCount <> 0 then
begin
self.tag := 2;
Application.CreateForm(Tfrmvendacontato, frmvendacontato);
frmvendacontato.ShowModal;
frmvendacontato.Free;
end;
end;

procedure TfrmVenda.FORMAPAGAMENTOChange(Sender: TObject);
begin
FORMAPAGAMENTO1.Text := FORMAPAGAMENTO.Text ;
end;

procedure TfrmVenda.TIPOPAGAMENTOChange(Sender: TObject);
begin
TIPOPAGAMENTO1.TEXT := TIPOPAGAMENTO.Text;
end;

procedure TfrmVenda.BitBtn25Click(Sender: TObject);
begin
if query1.active = False then
begin
end
else
begin
query1.First ;
end;
end;

procedure TfrmVenda.BitBtn26Click(Sender: TObject);
begin
if query1.active = False then
begin
end
else
begin
query1.Prior ;
end;
end;

procedure TfrmVenda.BitBtn27Click(Sender: TObject);
begin
if query1.active = False then
begin
end
else
begin
query1.Next ;
end;
end;

procedure TfrmVenda.BitBtn28Click(Sender: TObject);
begin
if query1.active = False then
begin
end
else
begin
query1.Last ;
end;
end;

procedure TfrmVenda.BitBtn20Click(Sender: TObject);
var total, total3, total4, total5, total6, total1, total2, total10 : Real;
begin
//Baixa Orcamento
if (query1['TIPOCODIGO'] = '0') and (query1['FECHAMENTOTIPO'] <> '9') then
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
self.Tag := 1;
Application.CreateForm(Tfrmvendabaixa, frmvendabaixa);
frmvendabaixa.Caption := 'Baixa de Orçamento';
frmvendabaixa.ShowModal;
frmvendabaixa.Free;
end;
end;

//Reabre Orcamento
if (query1['TIPOCODIGO'] = '0') and (query1['FECHAMENTOTIPO'] = '9') then
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
If Application.MessageBox('Confirma Reabertura do Orçamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//soma para extorno no estoque
   frmvenda.QUERY2.first;
   while not frmvenda.QUERY2.Eof do
     begin
        DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (frmvenda.DBEDIT13.Text)+ ' and CODIGOPRODUTO = ' + (frmvenda.DBEDIT14.Text) + 'and COMPRIMENTO = ' + (frmvenda.EDIT7.Text)+ 'and LARGURA = ' + (frmvenda.EDIT9.Text)+ 'and EXPESSURA = ' + (frmvenda.EDIT10.Text);
        DM.TESTOQUE.Filtered := True;
        dm.TESTOQUE.Open;
//        if dm.TESTOQUE.RecordCount <> 0 then showmessage('Prosseguir') else showmessage('erro');
        DM.TESTOQUE.Edit;
        total3 := 0;
        total4 := 0;
        total5:=0;
        total6 :=0;

        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := frmvenda.QUERY2['QUANTIDADE'] + total5;
        total6 := frmvenda.QUERY2['TOTALM3'] + total6;

        DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
        DM.TESTOQUE['TOTALM3'] := total4 - total6;
          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;
          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;

//        if dm.TESTOQUE.RecordCount <> 0 then showmessage('Proximo?') else showmessage('erro');
        DM.TESTOQUE.Post;
        frmvenda.QUERY2.Next;
     end;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;

DM.TSAIDAFECHAMENTO.Filter :=  'NF = ' + QuotedStr(dbedit8.Text)+ 'and CODIGOCLIENTE= ' + QuotedStr(DBEdit9.Text)+ 'and FECHAMENTOTIPO= ' + '9';
DM.TSAIDAFECHAMENTO.Filtered:=True;
DM.TSAIDAFECHAMENTO.Open;
DM.TSAIDAFECHAMENTO.edit;
DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '1';
DM.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
DM.TSAIDAFECHAMENTO['FECHAMENTO_MOTIVO'] := '';
DM.TSAIDAFECHAMENTO.Post;
DM.TSAIDAFECHAMENTO.Filtered:=false;
DM.TSAIDAFECHAMENTO.close;
//bitbtn15.Click ;
DM.TSAIDAFECHAMENTO.Filter :=  'FECHAMENTOTIPO = '+ '9';
DM.TSAIDAFECHAMENTO.Filtered:=True;
DM.TSAIDAFECHAMENTO.Open;
if DM.TSAIDAFECHAMENTO.RecordCount = 0 then bitbtn17.Click else bitbtn15.Click ;
end;
end;
end;
end;

procedure TfrmVenda.BitBtn21Click(Sender: TObject);
var total, total1, total2, total3 : Real;
var format, format1 : Real;
begin
dbedit6.Text := dbedit9.Text ;
nota.Text := dbedit8.Text ;
fornecedor.Text := query1['NOMECLIENTE'];

   DM.TSAIDAFECHAMENTO.Filter := 'NF = ' + QuotedStr(nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(DBEDIT6.Text);
   DM.TSAIDAFECHAMENTO.Filtered := True;
   DM.TSAIDAFECHAMENTO.Open;

   if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
   begin
   format := 0;
   format1 := 0;
   format := DM.TSAIDAFECHAMENTO['DESCONTO'];
   format1 := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   forma.Caption := DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO'];
   desconto.Caption := DM.TSAIDAFECHAMENTO['DESCONTO'];
   totnota.Caption := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   desconto.caption := FormatCurr('#0.000 %',format);
   totnota.caption := FormatCurr('#,0.00',format1);
   bitbtn8.Enabled := true;
   bitbtn30.Enabled := true;
   end
   else
   begin
   forma.Caption := '';
   desconto.Caption := '';
   totnota.Caption  := '';
   bitbtn8.Enabled := false;
   end;

   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   if DM.TSaida_Discriminacao.RecordCount = 0 then
   begin
   QSaida.Close;
   qsaida.SQL.Clear ;
   QSaida.SQL.Add('Select * from SAIDA_FECHAMENTO');
   QSaida.SQL.Add('Where NF =:nf');
   QSaida.ParamByName('nf').Text := nota.Text ; // preenche o parametro
   QSaida.Open;

    if QSaida.RecordCount <> 0 then
    begin
   edit6.Clear;
   dbedit7.Text := '';
   edit5.Text := '';
   tipolancamento.Enabled := true;
   FORMAPAGAMENTO.Enabled := TRUE;
   TIPOPAGAMENTO.Enabled := TRUE;
   tipolancamento.ItemIndex := -1;
   formapagamento.ItemIndex := -1;
   tipopagamento.ItemIndex := -1;
   formapagamento1.Text := '';
   tipopagamento1.Text := '';
   status1.Caption  := '';
   bitbtn12.Enabled := true;
   bitbtn13.Enabled := true;
   bitbtn9.Enabled := false;
   bitbtn1.Enabled := true;
   bitbtn5.Enabled := false;
   BitBtn10.Enabled := false;
   BitBtn11.Enabled := false;
      BitBtn14.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn7.Enabled := false;
   BitBtn1.Enabled := false;
   totprod.Caption := '';
   totm3.Caption := '';
   totvenda.Caption := '';
   g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
    if QSaida['NOMECLIENTE'] = null then Edit6.Text := QSaida['CODIGOCLIENTE'] else edit6.Text := QSaida['NOMECLIENTE'];
    Application.MessageBox(PChar('Para o pedido informado já consta lançamento para o cliente: '+#13 + Edit6.Text),'Informação', mb_Ok + mb_IconInformation);
    //este e um exemplo de como mostrar msg com dados da tabela    Application.MessageBox(  PansiChar(  ' Este aluno pertence a: '  +tabela.fieldbyname('nome_campo').AsString),'Aviso', mb_iconExclamation);
    QSaida.Close;
    data.SetFocus;
    nota.Text := '0';
    end
    else
    begin
   edit6.Clear;
   dbedit7.Text := '';
   edit5.Text := '';
   tipolancamento.Enabled := true;
   FORMAPAGAMENTO.Enabled := TRUE;
   TIPOPAGAMENTO.Enabled := TRUE;
   tipolancamento.ItemIndex := -1;
   formapagamento.ItemIndex := -1;
   tipopagamento.ItemIndex := -1;
   formapagamento1.Text := '';
   tipopagamento1.Text := '';
   status1.Caption  := '';
   bitbtn12.Enabled := true;
   bitbtn9.Enabled := false;
   bitbtn1.Enabled := true;
   bitbtn5.Enabled := false;
   BitBtn10.Enabled := false;
   BitBtn11.Enabled := false;
      BitBtn14.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn7.Enabled := false;
   BitBtn1.Enabled := false;
   totprod.Caption := '';
   totm3.Caption := '';
   totvenda.Caption := '';
   g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
//   g.Caption := 'Produtos > ' + (totprod.caption);
    end;
   end
   else
   begin

   if DM.TSaida_Discriminacao.RecordCount <> 0 then
   begin
   TIPOLANCAMENTO.Enabled := FALSE;
   FORMAPAGAMENTO.Enabled := FALSE;
   TIPOPAGAMENTO.Enabled := FALSE;
   data.Text := DM.TSaida_Discriminacao['DATALANCAMENTO'];
   if DM.TSaida_Discriminacao['TIPOCODIGO'] = null then TIPOLANCAMENTO.ItemIndex := -1 else  tipolancamento.ItemIndex := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['TIPOCODIGO'] = null then DBEDIT7.Text  := '' else dbedit7.Text := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['TIPOLANCAMENTO'] = null then EDIT5.Text  := '' else   edit5.Text := DM.TSaida_Discriminacao['TIPOLANCAMENTO'];
   if DM.TSaida_Discriminacao['FONECONTATO'] = null then edit4.Text := '' else  edit4.Text := DM.TSaida_Discriminacao['FONECONTATO'];
   if DM.TSaida_Discriminacao['FORMAPAGAMENTO'] = null then FORMAPAGAMENTO.ItemIndex := -1 else FORMAPAGAMENTO.ItemIndex := FORMAPAGAMENTO.Items.IndexOf(DM.TSaida_Discriminacao['FORMAPAGAMENTO']);
   if DM.TSaida_Discriminacao['TIPOPAGAMENTO'] = null then TIPOPAGAMENTO.ItemIndex := -1 else  TIPOPAGAMENTO.ItemIndex := TIPOPAGAMENTO.Items.IndexOf(DM.TSaida_Discriminacao['TIPOPAGAMENTO']);
   FORMAPAGAMENTO1.Text := FORMAPAGAMENTO.Text;
   TIPOPAGAMENTO1.Text := TIPOPAGAMENTO.Text;

   BitBtn10.Enabled := True;
   BitBtn11.Enabled := True;
   BitBtn1.Enabled := True;
         if DM.TSaida_Discriminacao.RecordCount > 1 then BitBtn39.Enabled := True else  BitBtn39.Enabled := false;
   BitBtn5.Enabled := True;
   BitBtn6.Enabled := True;
   BitBtn7.Enabled := True;
   BitBtn9.Enabled := True;

   total := 0;
   total1 := 0;
   total2 :=0;
   total3 :=0;

   DM.TSaida_Discriminacao.First;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        total := DM.TSaida_Discriminacao['TOTALM3'] + total ;
        total1 := DM.TSaida_Discriminacao['QUANTIDADE'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
          if dm.TSaida_Discriminacao['DESCONTO'] = null then
          begin
          dm.TSaida_Discriminacao.Edit;
          dm.TSaida_Discriminacao['DESCONTO'] := '0';
          dm.TSaida_Discriminacao.Post;
          end
          else
          begin
          total3 := DM.TSaida_Discriminacao['DESCONTO'] + total3 ;
        DM.TSaida_Discriminacao.Next;
     end;
     end;

    totm3.caption := FormatCurr('#0.0000',total);
    totprod.caption := FormatCurr('#0',total1);
    totvenda.caption := FormatCurr('#,0.00',total2);
    label27.Caption := FormatCurr('',total3);

    g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';
    status1.Caption := DM.TSaida_Discriminacao['FECHAMENTODESCRICAO'];
    if status1.Caption = 'Venda Finalizada' then
    begin
    status1.Font.Color := clRed;
    label28.Font.Color := clRed;
    end
    else
    begin
    status1.Font.Color := clgreen;
    label28.Font.Color := clgreen;
    end;

//   DM.TSTATUS1.Filter := 'PEDIDO = ' + QuotedStr(nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(DBEDIT6.Text);
  // DM.TSTATUS1.Filtered := True;
//   DM.TSTATUS1.Open;
  // status1.Caption := DM.TSTATUS1['STATUS'];

//   if DM.TSaida_Discriminacao['TIPOFECHAMENTO'] = null then status1.Caption:= '' else  status1.Caption := DM.TSaida_Discriminacao['TIPOCODIGO'];
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn12.Enabled := false else bitbtn12.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn9.Enabled := false else bitbtn9.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn5.Enabled := false else bitbtn5.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn14.Enabled := false else bitbtn14.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] = 2 then bitbtn13.Enabled := false else bitbtn13.Enabled := true;
   if DM.TSaida_Discriminacao['FECHAMENTOTIPO'] <> 2 then bitbtn8.Enabled := false else bitbtn8.Enabled := true;

PageControl1.ActivePage := TabSheet1;
end;
end;
end;


procedure TfrmVenda.BitBtn22Click(Sender: TObject);
begin
if DM.TSaida_Discriminacao.active = False then
begin
end
else
begin
DM.TSaida_Discriminacao.First ;
end;
end;

procedure TfrmVenda.BitBtn23Click(Sender: TObject);
begin
if DM.TSaida_Discriminacao.active = False then
begin
end
else
begin
DM.TSaida_Discriminacao.Prior ;
end;
end;

procedure TfrmVenda.BitBtn24Click(Sender: TObject);
begin
if DM.TSaida_Discriminacao.active = False then
begin
end
else
begin
DM.TSaida_Discriminacao.Next;
end;
end;

procedure TfrmVenda.BitBtn29Click(Sender: TObject);
begin
if DM.TSaida_Discriminacao.active = False then
begin
end
else
begin
DM.TSaida_Discriminacao.Last;
end;
end;

procedure TfrmVenda.BitBtn30Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if dbedit7.Text = '0' then
begin
  If Application.MessageBox('Orçamento só pode ser baixado através da aba Orçamentos. Gostaria de Baixa-lo?', 'Confirmação',
  mb_YesNo + mb_ICONQUESTION) = idYes then
  begin
  PageControl1.ActivePage := TabSheet2;
  bitbtn15.Click ;
  query1.Locate('NOMECLIENTE',fornecedor.text,[lopartialkey,locaseinsensitive]);
  bitbtn20.Click ;
  bitbtn2.Click;
  end
  else
  begin
  //
  end;
  end
  else
begin
if dbedit7.Text <> '0' then
begin
self.Tag := 2;
Application.CreateForm(Tfrmvendabaixa, frmvendabaixa);
frmvendabaixa.Caption := 'Cancelamento de Venda';
frmvendabaixa.ShowModal;
frmvendabaixa.Free;
end;
end;
end;
end;

procedure TfrmVenda.tipoClick(Sender: TObject);
begin
case (Tipo.ItemIndex) of
      0: Begin
      groupbox6.Caption := 'Contatos';
      DBMEMO2.Visible := false;
      DBGRID5.Visible := true;
      DBMEMO1.Visible := true;
      if query1.Active = true then bitbtn17.Click;
      end
      else
      begin


case (Tipo.ItemIndex) of
      1: Begin
      groupbox6.Caption := 'Motivo';
      DBMEMO2.Visible := TRUE;
      DBGRID5.Visible := FALSE;
      DBMEMO1.Visible := FALSE;
      if query1.Active = true then bitbtn17.Click;
      end
      else
      begin

case (Tipo.ItemIndex) of
      2: Begin
      groupbox6.Caption := 'Motivo';
      DBMEMO2.Visible := TRUE;
      DBGRID5.Visible := FALSE;
      DBMEMO1.Visible := FALSE;
      if query1.Active = true then bitbtn17.Click;
end;
end;
end;
end;
end;
end;
end;

procedure TfrmVenda.Query2AfterOpen(DataSet: TDataSet);
begin
TFloatField(query2.FieldByName('COMPRIMENTO')).DisplayFormat := '0.00';
TFloatField(query2.FieldByName('LARGURA')).DisplayFormat := '0.00';
TFloatField(query2.FieldByName('EXPESSURA')).DisplayFormat := '0.000';
TFloatField(query2.FieldByName('TOTALM3')).DisplayFormat := '0.0000';
TFloatField(query2.FieldByName('TOTALPRODUTO')).DisplayFormat := '0.00';
TFloatField(query2.FieldByName('DESCONTO')).DisplayFormat := '0.00';
TFloatField(query2.FieldByName('VALTOTAL')).DisplayFormat := '0.00';
end;

procedure TfrmVenda.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
iCheck: Integer;
rRect: TRect;
begin
if Column.FieldName = 'CHECK' then
begin
DBGrid4.Canvas.FillRect(Rect);
iCheck := 0;
if devolucao.FieldByName('CHECK').AsString = 'A' then
iCheck := DFCS_CHECKED
else
iCheck := 0;
rRect := Rect;
InflateRect(rRect,-2,-2);
DrawFrameControl(DBGrid4.Canvas.Handle,rRect,DFC_BUTTON, DFCS_BUTTONCHECK or iCheck);
end
else
begin
with DBGrid4 do
  begin
    if devolucao.FieldByName('CHECK').AsString = 'A' then
    begin
//        Canvas.Font.Color := clblack; //cor da letra quando selecionado
      if (gdSelected in State) then
//        Canvas.Brush.Color := $0097FFFF // cor da selecao
      else
      begin
//        Canvas.Font.Style := [fsBold]; //negrita letra
        Canvas.Font.Color := $000080FF; //cor da letra
      end
    end;
    Canvas.FillRect(Rect);
    DBGRID4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;
end;
end;

procedure TfrmVenda.DBGrid4CellClick(Column: TColumn);
begin
if devolucao.Active = false then
begin
//nada
end
else
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
bitbtn31.Caption := 'Desmarcar Todos';
bitbtn31.Tag := 2;
edit14.Text := '0';
devolucao.Edit;

if devolucao.FieldByName('CHECK').AsString = 'A' then
begin
devolucao.FieldByName('CHECK').AsString := '';
devolucao.Post;
end
else
begin
devolucao.FieldByName('CHECK').AsString := 'A' ;
devolucao.Post;
end;
end;
end;
end;

procedure TfrmVenda.DBGrid2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  mousePt: TGridcoord;
begin
  mousePt := DbGrid2.MouseCoord(x,y);
  if mousePt.y = 0 then
    Screen.Cursor := crHandPoint
  else
    Screen.Cursor := crDefault;

end;

procedure TfrmVenda.DBEdit10Change(Sender: TObject);
begin
   edit7.Text := DBEDIT10.Text;
   edit7.Text := StringReplace(edit7.Text, ',', '.', []);
end;

procedure TfrmVenda.DBEdit11Change(Sender: TObject);
begin
   edit9.Text := DBEDIT11.Text;
   edit9.Text := StringReplace(edit9.Text, ',', '.', []);
end;

procedure TfrmVenda.DBEdit12Change(Sender: TObject);
begin
   edit10.Text := DBEDIT12.Text;
   edit10.Text := StringReplace(edit10.Text, ',', '.', []);
end;

procedure TfrmVenda.nota1Click(Sender: TObject);
begin
nota1.SelectAll;
end;

procedure TfrmVenda.nota1Enter(Sender: TObject);
begin
nota1.SelectAll;
end;

procedure TfrmVenda.nota1Exit(Sender: TObject);
var total, total1, total2, total3 : Real;
var format, format1 : Real;
begin
if nota1.Text = '0' then
begin
bitbtn32.Click ;
end
else
begin
with FECHAMENTO do
  	begin
    FECHAMENTO.Close;
    FECHAMENTO.SQL.Clear ;
    FECHAMENTO.SQL.Add('select * from SAIDA_FECHAMENTO');
    FECHAMENTO.SQL.Add('where NF =:busca'); // linha para atender as condições
    FECHAMENTO.ParamByName('busca').Text := NOTA1.Text ; // preenche o parametro
    FECHAMENTO.Open;

if FECHAMENTO.RecordCount = 0 then
begin
FECHAMENTO.Close;
devolucao.Active := false;
bitbtn32.Click ;
nota1.Text := '0';
nota1.SetFocus ;
nota1.SelectAll ;
Application.MessageBox('Não consta lançamento para o Numero de Pedido informado. Verifique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if fechamento['NOMECLIENTE'] = null then  else EDIT8.Text := fechamento['NOMECLIENTE'];

if fechamento['FECHAMENTOTIPO'] = 2 then
  begin
   format := 0;
   format1 := 0;
   format := FECHAMENTO['DESCONTO'];
   format1 := FECHAMENTO['VAL_TOT_NOTA'];
   label44.Caption := FECHAMENTO['FORMAPAGAMENTO'];
   label45.Caption := FECHAMENTO['DESCONTO'];
   label46.Caption := FECHAMENTO['VAL_TOT_NOTA'];
   label45.caption := FormatCurr('#0.000 %',format);
   label46.caption := FormatCurr('#,0.00',format1);

   devolucao.Active := true;
   devolucao.Filter := 'NFNUMERO = ' + QuotedStr(nota1.Text)+ 'and  CODIGOFORNECEDOR = ' + QuotedStr(dbedit21.Text);
   devolucao.Filtered := True;
   devolucao.Open;
   devolucao.IndexFieldNames := 'CHECK';;

   total := 0;
   total1 := 0;
   total2 :=0;
   total3 :=0;

   devolucao.First;
   devolucao.Edit;
   while not devolucao.Eof do
     begin
    label35.caption := FormatCurr('#0.0000',total);
    label37.caption := FormatCurr('#0',total1);
    label39.caption := FormatCurr('#,0.00',total2);

    total := devolucao['TOTALM3'] + total ;
    total1 := devolucao['QUANTIDADE'] + total1 ;
    total2 := devolucao['VALTOTAL'] + total2 ;
        devolucao.FieldByName('CHECK').AsString := 'A';
        if devolucao.FieldByName('CHECK').AsString = 'A' then edit14.Text := '1';
    devolucao.Next;
    devolucao.Edit;
      end;
    devolucao.Post ;
    label37.caption := FormatCurr('#0',total1);
    label35.caption := FormatCurr('#0.0000',total);
    label39.caption := FormatCurr('#,0.00',total2);
    groupbox10.Caption := 'Itens > (' + IntToStr(devolucao.RecordCount)+ ')';
    bitbtn31.Tag := 1;
    bitbtn31.Caption := 'Marcar Todos';
    bitbtn31.Enabled := true;
end
else
begin
  if fechamento['FECHAMENTOTIPO'] = 7   then
  begin
   format := 0;
   format1 := 0;
   format := FECHAMENTO['DESCONTO'];
   format1 := FECHAMENTO['VAL_TOT_NOTA'];
   label44.Caption := FECHAMENTO['FORMAPAGAMENTO'];
   label45.Caption := FECHAMENTO['DESCONTO'];
   label46.Caption := FECHAMENTO['VAL_TOT_NOTA'];
   label45.caption := FormatCurr('#0.000 %',format);
   label46.caption := FormatCurr('#,0.00',format1);

   devolucao.Active := true;
   devolucao.Filter := 'NFNUMERO = ' + QuotedStr(nota1.Text)+ 'and  CODIGOFORNECEDOR = ' + QuotedStr(dbedit21.Text);
   devolucao.Filtered := True;
   devolucao.Open;
   devolucao.IndexFieldNames := 'CHECK';;

   total := 0;
   total1 := 0;
   total2 :=0;
   total3 :=0;

   devolucao.First;
   devolucao.Edit;
   while not devolucao.Eof do
     begin
    label35.caption := FormatCurr('#0.0000',total);
    label37.caption := FormatCurr('#0',total1);
    label39.caption := FormatCurr('#,0.00',total2);

    total := devolucao['TOTALM3'] + total ;
    total1 := devolucao['QUANTIDADE'] + total1 ;
    total2 := devolucao['VALTOTAL'] + total2 ;
        devolucao.FieldByName('CHECK').AsString := 'A';    
       if devolucao.FieldByName('CHECK').AsString = 'A' then edit14.Text := '1';
    devolucao.Next;
    devolucao.Edit;
      end;
    devolucao.Post ;
    label37.caption := FormatCurr('#0',total1);
    label35.caption := FormatCurr('#0.0000',total);
    label39.caption := FormatCurr('#,0.00',total2);
    groupbox10.Caption := 'Itens > (' + IntToStr(devolucao.RecordCount)+ ')';
//    bitbtn31.Tag := 1;
  //  bitbtn31.Caption := 'Marcar Todos';
    //bitbtn31.Enabled := true;
end
else
begin
if (fechamento['FECHAMENTOTIPO'] <> 2)and(fechamento['FECHAMENTOTIPO'] <> 2) then
  begin
  FECHAMENTO.Close;
  devolucao.Active := false;
  nota1.Text := '0';
  nota1.SetFocus ;
  nota1.SelectAll;
  Application.MessageBox('Só é permitido a devolução de mercadorias para Vendas Finalizadas.','Informação', mb_Ok + mb_IconInformation);

  end
  end;
  end;
  end;
  end;
end;
end;


procedure TfrmVenda.BitBtn32Click(Sender: TObject);
begin
//devolucao.Close;
NOTA1.Text := '0';
EDIT8.Text := '';
LABEL35.Caption := '';
LABEL37.Caption := '';
LABEL39.Caption := '';
LABEL44.Caption := '';
LABEL45.Caption := '';
LABEL46.Caption := '';
bitbtn31.Tag := 1;
bitbtn31.Caption := 'Marcar Todos';
bitbtn31.Enabled := false;
devolucao.Active := false;
fechamento.Close ;
end;

procedure TfrmVenda.BitBtn33Click(Sender: TObject);
begin
if bitbtn38.Tag = 1 then
begin
NOTA1.Text := '0';
EDIT8.Text := '';
LABEL35.Caption := '';
LABEL37.Caption := '';
LABEL39.Caption := '';
LABEL44.Caption := '';
LABEL45.Caption := '';
LABEL46.Caption := '';
bitbtn31.Tag := 1;
bitbtn31.Caption := 'Marcar Todos';
bitbtn31.Enabled := false;
devolucao.Active := false;
devolucao.Close;
fechamento.Close ;
bitbtn38.Tag := 0;
close;
end
else
begin
if bitbtn38.Tag = 0 then
begin
if devolucao.Active = true then
begin
with devolucao do
   begin
    EDIT;
    devolucao.first;
    repeat
    edit;
    devolucao.FieldByName('CHECK').AsString := '';
    devolucao.Post;
    devolucao.Next;
    until devolucao.eof;
    END;
    bitbtn38.Tag := 0;
    close;
    end
    else
bitbtn38.Tag := 0;
close;
end;
end;
end;

procedure TfrmVenda.devolucao1AfterOpen(DataSet: TDataSet);
begin
TFloatField(devolucao.FieldByName('COMPRIMENTO')).DisplayFormat := '0.00';
TFloatField(devolucao.FieldByName('LARGURA')).DisplayFormat := '0.00';
TFloatField(devolucao.FieldByName('EXPESSURA')).DisplayFormat := '0.000';
TFloatField(devolucao.FieldByName('TOTALM3')).DisplayFormat := '0.0000';
TFloatField(devolucao.FieldByName('TOTALPRODUTO')).DisplayFormat := '0.00';
TFloatField(devolucao.FieldByName('DESCONTO')).DisplayFormat := '0.00';
TFloatField(devolucao.FieldByName('VALTOTAL')).DisplayFormat := '0.00';
end;

procedure TfrmVenda.BitBtn34Click(Sender: TObject);
begin
if devolucao.active = False then
begin
end
else
begin
devolucao.First ;
end;
end;

procedure TfrmVenda.BitBtn35Click(Sender: TObject);
begin
if devolucao.active = False then
begin
end
else
begin
devolucao.prior ;
end;
end;

procedure TfrmVenda.BitBtn36Click(Sender: TObject);
begin
if devolucao.active = False then
begin
end
else
begin
devolucao.next;
end;
end;

procedure TfrmVenda.BitBtn37Click(Sender: TObject);
begin
if devolucao.active = False then
begin
end
else
begin
devolucao.last;
end;
end;

procedure TfrmVenda.DBGrid4TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid4.Columns.Count - 1 do
  DBGrid4.Columns[i].Title.Font.Style := [];
with devolucao do
  	begin
//    devolucao.Close;
  //  devolucao.SQL.Clear ;
//    devolucao.SQL.Add('select * from SAIDA');
  //  devolucao.SQL.Add('where NFNUMERO =:busca');
//    devolucao.SQL.Add('ORDER BY '+ Column.FieldName);
    devolucao.IndexFieldNames := column.FieldName ;
    Column.Title.Font.Style := [fsBold];
//    devolucao.ParamByName('busca').Text := nota1.Text ;
    devolucao.Open;
    groupbox10.Caption := 'Itens > (' + IntToStr(devolucao.RecordCount)+ ')';
    end;
end;

procedure TfrmVenda.TabSheet2Exit(Sender: TObject);
begin
groupbox3.Caption := 'Clientes';
groupbox5.Caption := 'Produtos';
label17.caption:= '';
label15.caption:= '';
label19.caption:= '';
label23.Caption := '';
label24.Caption := '';
label25.Caption  := '';
label40.Caption  := '';
bitbtn16.Enabled := false;
bitbtn20.Enabled := false;
bitbtn19.Enabled := false;
bitbtn21.Enabled := false;
Query2.Close;
Query1.Close;
Query3.Close;
end;

procedure TfrmVenda.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
case (Tipo.ItemIndex) of
      0: Begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, DESCONTO, VAL_TOT_NOTA, FORMAPAGAMENTO, FONECONTATO, NOMEVENDEDOR, TOTALM3, QTDE_PRODUTOS, TIPOCODIGO, FECHAMENTOTIPO, FECHAMENTO_MOTIVO, DATAPEDIDO');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where TIPOCODIGO =:busca AND FECHAMENTOTIPO <>:busca1'); // linha para atender as condições
    query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca').Text := '0'; // preenche o parametro
    query1.ParamByName('busca1').Text := '9'; // preenche o parametro
    query1.Open;
    Query1.Last;
    groupbox3.Caption := 'Orçamento(s) (' + IntToStr(query1.RecordCount)+ ')';
    end;
end;
end;

case (Tipo.ItemIndex) of
      1: Begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, DESCONTO, VAL_TOT_NOTA, FORMAPAGAMENTO, FONECONTATO, NOMEVENDEDOR, TOTALM3, QTDE_PRODUTOS, TIPOCODIGO, FECHAMENTOTIPO, FECHAMENTO_MOTIVO, DATAPEDIDO');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where FECHAMENTOTIPO =:busca1'); // linha para atender as condições
    query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca1').Text := '9'; // preenche o parametro
    query1.Open;
    Query1.Last;
    groupbox3.Caption := 'Orçamento(s) (' + IntToStr(query1.RecordCount)+ ')';
    end;
end;
end;

case (Tipo.ItemIndex) of
      2: Begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, DESCONTO, VAL_TOT_NOTA, FORMAPAGAMENTO, FONECONTATO, NOMEVENDEDOR, TOTALM3, QTDE_PRODUTOS, TIPOCODIGO, FECHAMENTOTIPO, FECHAMENTO_MOTIVO, DATAPEDIDO');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where FECHAMENTOTIPO =:busca1'); // linha para atender as condições
    query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca1').Text := '8'; // preenche o parametro
    query1.Open;
    Query1.Last;
    groupbox3.Caption := 'Orçamento(s) (' + IntToStr(query1.RecordCount)+ ')';
    end;
end;
end;

end;

procedure TfrmVenda.DBGrid3TitleClick(Column: TColumn);
var
  I: Integer;
begin
case (Tipo.ItemIndex) of
      0: Begin

  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
    with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    end;
end;
end;

case (Tipo.ItemIndex) of
      1: Begin

  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
    with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query2.ParamByName('busca').Text := '0'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    end;
end;
end;

case (Tipo.ItemIndex) of
      2: Begin

  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
    with query2 do
  	begin
    Query2.Close;
    Query2.SQL.Clear ;
    query2.SQL.Add('select * from SAIDA');
    query2.SQL.Add('where TIPOCODIGO =:busca AND NFNUMERO =:nf'); // linha para atender as condições
    query2.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query2.ParamByName('busca').Text := '1'; // preenche o parametro
    query2.ParamByName('nf').AsInteger := StrToInt(DBEDIT8.Text ); // preenche o parametro
    query2.Open;
    Query2.Last;
    groupbox5.Caption := 'Produtos (' + IntToStr(query2.RecordCount)+ ')';
    end;
end;
end;
end;

procedure TfrmVenda.DBGrid5TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid5.Columns.Count - 1 do
  DBGrid5.Columns[i].Title.Font.Style := [];
    with query3 do
  	begin
    Query3.Close;
    Query3.SQL.Clear ;
    query3.SQL.Add('select DATAOCORRENCIA, OCORRENCIA, FOLOWUPPARA, CODIGO');
    query3.SQL.Add('from OCORRENCIA');
    query3.SQL.Add('where NFNUMERO =:nf AND CODIGOCLIENTE =:cliente'); // linha para atender as condições
    query3.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query3.ParamByName('nf').Text := DBEDIT8.Text ; // preenche o parametro
    query3.ParamByName('cliente').Text := DBEDIT9.Text ; // preenche o parametro
    query3.Open;
    query3.Last ;
    groupbox6.Caption := 'Contatos (' + IntToStr(query3.RecordCount)+ ')';
    end;

end;

procedure TfrmVenda.BitBtn31Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if bitbtn31.Tag = 1 then
begin
    bitbtn31.Caption := 'Desmarcar Todos';
    bitbtn31.Tag := 2;
with devolucao do
   begin
    EDIT;
    devolucao.first;
    repeat
    edit;
    devolucao.FieldByName('CHECK').AsString := 'A';
    devolucao.Post;
    devolucao.Next;
    until devolucao.eof;
    edit14.Text := '1';
    END;
    end
    else
    begin
if bitbtn31.Tag = 2 then
begin
    bitbtn31.Caption := 'Marcar Todos';
    bitbtn31.Tag := 1;
    devolucao.first;
    repeat
    devolucao.edit;
    devolucao['CHECK']:='';
    devolucao.Post;
    devolucao.Next;
    until devolucao.eof;
    devolucao.refresh;
    edit14.Text := '0';
end;
end;
end;
end;

procedure TfrmVenda.BitBtn38Click(Sender: TObject);
var total, total3, total4, total5, total6, total1, total2, total10 : Real;
begin
if devolucao.Active = false then
else

if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
If Application.MessageBox('Confirma Devolução de mercadorias?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//soma para extorno no estoque
   devolucao.first;
   while not devolucao.Eof do
     begin
        DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT20.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT19.Text) + 'and COMPRIMENTO = ' + (EDIT11.Text)+ 'and LARGURA = ' + (EDIT12.Text)+ 'and EXPESSURA = ' + (EDIT13.Text);
        DM.TESTOQUE.Filtered := True;
        dm.TESTOQUE.Open;
//        if dm.TESTOQUE.RecordCount <> 0 then showmessage('Prosseguir') else showmessage('erro');
        DM.TESTOQUE.Edit;
        DEVOLUCAO.Edit;
        total3 := 0;
        total4 := 0;
        total5:=0;
        total6 :=0;

        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := DEVOLUCAO['QUANTIDADE'] + total5;
        total6 := DEVOLUCAO['TOTALM3'] + total6;

        DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
        DM.TESTOQUE['TOTALM3'] := total4 + total6;
          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;
          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;
          if DEVOLUCAO['FECHAMENTOTIPO']= '' then next else DEVOLUCAO['FECHAMENTOTIPO'] := '7';
          if DEVOLUCAO['FECHAMENTODESCRICAO']= '' then next else  DEVOLUCAO['FECHAMENTODESCRICAO'] := 'Devolucao';
//        if dm.TESTOQUE.RecordCount <> 0 then showmessage('Proximo?') else showmessage('erro');
        DM.TESTOQUE.Post;
        DEVOLUCAO.Next;
     end;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;

DM.TSAIDAFECHAMENTO.Filter :=  'NF = ' + QuotedStr(nota1.Text)+ 'and CODIGOCLIENTE = ' + QuotedStr(dbedit21.Text);
DM.TSAIDAFECHAMENTO.Filtered:=True;
DM.TSAIDAFECHAMENTO.Open;
DM.TSAIDAFECHAMENTO.edit;
DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '7';
DM.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Devolucao';
DM.TSAIDAFECHAMENTO.Post;
DM.TSAIDAFECHAMENTO.Filtered:=false;
DM.TSAIDAFECHAMENTO.close;
bitbtn38.Tag := 1;
Application.MessageBox('Pedido devolvido com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
end;
end;
end;

procedure TfrmVenda.DBEdit16Change(Sender: TObject);
begin
   edit11.Text := DBEDIT16.Text;
   edit11.Text := StringReplace(edit11.Text, ',', '.', []);
end;

procedure TfrmVenda.DBEdit17Change(Sender: TObject);
begin
   edit12.Text := DBEDIT17.Text;
   edit12.Text := StringReplace(edit12.Text, ',', '.', []);
end;

procedure TfrmVenda.DBEdit18Change(Sender: TObject);
begin
   edit13.Text := DBEDIT18.Text;
   edit13.Text := StringReplace(edit13.Text, ',', '.', []);
end;

procedure TfrmVenda.TabSheet3Exit(Sender: TObject);
begin
bitbtn32.Click ;
end;

procedure TfrmVenda.BitBtn39Click(Sender: TObject);
var total, total3, total4, total5, total6, total1, total2, total10 : Real;
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if edit3.Text = '' then edit3.Text := '0';

If Application.MessageBox('Ao excluír todos os lançamentos, o Fechamento deveraá ser refeito. Confirma?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//soma para extorno no estoque
   DM.TSaida_Discriminacao.first;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (frmvenda.DBEDIT4.Text)+ ' and CODIGOPRODUTO = ' + (frmvenda.DBEDIT5.Text) + 'and COMPRIMENTO = ' + (frmvenda.EDIT1.Text)+ 'and LARGURA = ' + (frmvenda.EDIT2.Text)+ 'and EXPESSURA = ' + (frmvenda.EDIT3.Text);
        DM.TESTOQUE.Filtered := True;
        dm.TESTOQUE.Open;
        DM.TESTOQUE.Edit;
        
        total3 := 0;
        total4 := 0;
        total5:=0;
        total6 :=0;

        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := DM.TSaida_Discriminacao['QUANTIDADE'] + total5;
        total6 := DM.TSaida_Discriminacao['TOTALM3'] + total6;

        DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
        DM.TESTOQUE['TOTALM3'] := total4 + total6;

          if DM.TESTOQUE['QTDEM2'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEM2'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEM2'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;
          if DM.TESTOQUE['QTDEML'] = '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := '0,00';
          end
          else
          begin
          if DM.TESTOQUE['QTDEML'] <> '0,00' then
          begin
          DM.TESTOQUE['QTDEML'] := DM.TESTOQUE['QUANTIDADE'];
          end;
          end;
        DM.TESTOQUE.Post;
        DM.TSaida_Discriminacao.Delete;
     end;
     DM.TSaida_Discriminacao.Next;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     DM.TSAIDAFECHAMENTO.Delete;     

     status1.Caption := '';
     bitbtn1.Enabled := false;
     bitbtn9.Enabled := false;
     bitbtn39.Enabled := false;
     bitbtn10.Enabled := false;
     bitbtn11.Enabled := false;
     bitbtn14.Enabled := false;
     bitbtn30.Enabled := false;
     bitbtn5.Enabled := false;
     bitbtn6.Enabled := false;
     bitbtn7.Enabled := false;
     totprod.Caption := '';
     totm3.Caption := '';
     totvenda.Caption := '';
     forma.Caption := '';
     desconto.Caption := '';
     totnota.Caption := '';

end
else

end;
end;

procedure TfrmVenda.tipolancamentoEnter(Sender: TObject);
begin
if tipolancamento.ItemIndex = -1 then
begin
dbedit7.Text := '1'; //Orcamento
tipolancamento.ItemIndex := 1;
edit5.Text := tipolancamento.Text;
end;
end;

procedure TfrmVenda.FORMAPAGAMENTOEnter(Sender: TObject);
begin
if formapagamento.ItemIndex = -1 then
begin
FORMAPAGAMENTO.ItemIndex := 1;
FORMAPAGAMENTO1.Text := formapagamento.Text ;
end;
end;

procedure TfrmVenda.TIPOPAGAMENTOEnter(Sender: TObject);
begin
if tipopagamento.ItemIndex = -1 then
begin
tipopagamento.ItemIndex := 7;
TIPOPAGAMENTO1.TEXT := TIPOPAGAMENTO.Text;
end;
end;

procedure TfrmVenda.BitBtn40Click(Sender: TObject);
var
Mail : String;
begin
with qcredor do
  begin
  close;
  SQL.Clear;
  SQL.Add('Select CODIGOCREDOR, NOMECREDOR, EMAIL');
  SQL.Add('from CREDOR');
  SQL.Add('Order by NOMECREDOR');
  open;
  end;
qcredor.Locate('CODIGOCREDOR',DBEdit9.text,[lopartialkey,locaseinsensitive]);
if qcredor['EMAIL']=null then
begin
qcredor.Close ;
Application.MessageBox('Não hà e-mail cadastrado para o Cliente Selecionado!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Mail := 'mailto:'+qcredor['EMAIL']+ '?subject=' + 'ORÇAMENTO';
ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
qcredor.Close;
end;
end;

procedure TfrmVenda.PageControl1Change(Sender: TObject);
begin
if (dm.TSaida_Discriminacao.RecordCount <> 0) and (dm.TSAIDAFECHAMENTO.RecordCount = 0) then
begin
groupbox2.Enabled := false;
PageControl1.TabIndex := 0;
Application.MessageBox('Fechamento da venda deve ser informado, Verifíque!', 'Informação', mb_Ok + mb_IconInformation);
end
end;

end.

