unit Unitromaneioserrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, EDBZero, StdCtrls, Buttons, Mask, DBCtrls,
  EDBNum, Grids, DBGrids, EDBDate, SSBaseXP, SSEdit, IBCustomDataSet,IBTable, SSSpin,
  DB, SSDateEdit, Gauges, DbPrgrss;

type
  TfrmRomaneioserrada = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    EditFax: TDBEdit;
    GroupBox2: TGroupBox;
    g: TGroupBox;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label12: TLabel;
    nota1: TEvDBZeroEdit;
    data1: TEvDBDateEdit;
    Label11: TLabel;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label2: TLabel;
    Label7: TLabel;
    BitBtn7: TBitBtn;
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    m3: TLabel;
    valtotal: TLabel;
    fornecedor: TEdit;
    inscricao: TEdit;
    nota: TSpinEditXP;
    data: TDateEditXP;
    Edit1: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure dataExit(Sender: TObject);
    procedure inscricaoChange(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure notaExit(Sender: TObject);
    procedure dataEnter(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRomaneioserrada: TfrmRomaneioserrada;

implementation

uses UnitDM, UnitPesquisa3, Unitromaneioserradaprodutos, UnitManutencao1,
  UnitRepRomaneioSerrada;

{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;


procedure TfrmRomaneioserrada.BitBtn3Click(Sender: TObject);
begin
g.Caption := 'Produtos ';
    fornecedor.Text := '';
    inscricao.Text := '';
    edit1.Text := '';
    nota.Text := '0';
    data.Text := '';
   valtotal.Caption  := '';
    m3.Caption  := '';
    nota.Enabled := false;
    data.Enabled := false;    
        BitBtn12.Enabled := false;
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn11.Enabled := false;

      DM.TROMANEIOSERRADA.Filtered := False;
      DM.TROMANEIOSERRADA.Close;
      DM.QCredor.Close;
      DM.QEssencia.Close;
close;
end;

procedure TfrmRomaneioserrada.BitBtn5Click(Sender: TObject);
begin
DM.QCredor.Open;
if DM.QCredor.RecordCount = 0 then
begin
DM.QCredor.Close;
Application.MessageBox('Não há Cliente(s) Cadastrado(s), Verifíque!', 'Saída', mb_Ok + mb_IconExclamation);
end
else
begin
//bitbtn5.Enabled := False;
//bitbtn3.Enabled := False;
//bitbtn4.Enabled := False;
    fornecedor.Text := '';
    inscricao.Text := '';
    valtotal.Caption  := '';
    m3.Caption  := '';
    edit1.Text := '';
    nota.Text := '0';
    data.Text := '';
    BitBtn12.Enabled := true;
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn11.Enabled := false;
DM.QCredor.Close;
DM.TROMANEIOSERRADA.Filtered := False;
DM.TROMANEIOSERRADA.Close;
//DM.TROMANEIOSERRADA.Open;
//DM.TROMANEIOSERRADA.Append;
frmPesquisa3.ShowModal;
end;
end;

procedure TfrmRomaneioserrada.BitBtn2Click(Sender: TObject);
begin
//if DM.TROMANEIO_SERRADADISCRIMINACAO.RecordCount <> 0 then
//begin
//Application.MessageBox('Para cancelamento deste lançamento, exclua primeiro o(s) produto(s) informado(s), ou clique em Gravar para prosseguir!', 'Lançamento', mb_Ok + mb_IconError);
//bitbtn9.SetFocus;
//end
//else
//begin
    g.Caption := 'Produtos ';
    DM.TROMANEIOSERRADA.cancel;
    DM.TROMANEIOSERRADA.Filtered := False;
    DM.TROMANEIOSERRADA.close;
    fornecedor.Text := '';
    inscricao.Text := '';
    valtotal.Caption  := '';
    m3.Caption  := '';
    edit1.Text := '';
    nota.Text := '0';
    data.Text := '';

    bitbtn5.Enabled := True;
    bitbtn3.Enabled := True;
    bitbtn4.Enabled := True;
    BitBtn12.Enabled := false;
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn11.Enabled := false;
    nota.Enabled := false;
    data.Enabled := false;
//end;
end;

procedure TfrmRomaneioserrada.FormShow(Sender: TObject);
begin
Self.Tag := 1;
bitbtn5.SetFocus; 
end;

procedure TfrmRomaneioserrada.BitBtn12Click(Sender: TObject);
begin
   DM.TROMANEIOSERRADA.Filtered := False;
   DM.TROMANEIOSERRADA.Close;
   DM.TROMANEIOSERRADA.Filter := 'NF = ' + QuotedStr(nota.Text)+ ' and CODEMPRESA = ' + QuotedStr(edit1.Text);
   DM.TROMANEIOSERRADA.Filtered := True;
DM.TROMANEIOSERRADA.Open;
DM.TROMANEIOSERRADA.Append;
frmRomaneioserradaprodutos.Show;
frmRomaneioserradaprodutos.DBEDIT1.SetFocus;
end;

procedure TfrmRomaneioserrada.dataExit(Sender: TObject);
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
  DM.TROMANEIOSERRADA.Open;
  DM.TROMANEIOSERRADA.Append;
  frmromaneioserradaprodutos.Show;
  frmromaneioserradaprodutos.DBEDIT1.SetFocus;
  end
end;
end;

procedure TfrmRomaneioserrada.inscricaoChange(Sender: TObject);
begin
maskedit1.Text := inscricao.Text;
end;

procedure TfrmRomaneioserrada.MaskEdit1Change(Sender: TObject);
begin
inscricao.Text := MaskEdit1.Text;
end;


procedure TfrmRomaneioserrada.BitBtn9Click(Sender: TObject);
var total, total1 : Real;
begin
If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   DM.TROMANEIOSERRADA.Delete;
   g.Caption := 'Produtos > ' + intTostr(DM.TROMANEIOSERRADA.RecordCount);   
   total := 0;
   total1 := 0;

   DM.TROMANEIOSERRADA.Filtered := False;
   DM.TROMANEIOSERRADA.Close;
   DM.TROMANEIOSERRADA.Filter := 'NF = ' + QuotedStr(nota.Text)+ ' and CODEMPRESA = ' + QuotedStr(edit1.Text);
   DM.TROMANEIOSERRADA.Filtered := True;
   DM.TROMANEIOSERRADA.Open;

   DM.TROMANEIOSERRADA.Prior;
   while not DM.TROMANEIOSERRADA.Eof do
     begin
        total := DM.TROMANEIOSERRADA['VLTOTAL'] + total ;
        total1 := DM.TROMANEIOSERRADA['TOTALM3'] + total1 ;
        DM.TROMANEIOSERRADA.Next;
     end;
    frmromaneioserrada.valtotal.Caption  := FormatCurr('#0.00',total);
    frmromaneioserrada.m3.Caption  := FormatCurr('#0.0000',total1);
end
else
nota.SetFocus;
end;

procedure TfrmRomaneioserrada.BitBtn10Click(Sender: TObject);
begin
DM.TROMANEIOSERRADA.Next;
end;

procedure TfrmRomaneioserrada.BitBtn11Click(Sender: TObject);
begin
DM.TROMANEIOSERRADA.Prior;
end;




procedure TfrmRomaneioserrada.BitBtn4Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QROMANEIOSERRADADISC.Open;
if DM.QROMANEIOSERRADADISC.RecordCount = 0 then
begin
DM.QROMANEIOSERRADADISC.Close;
Application.MessageBox('Não há lançamento(s) de Romaneio de Madeira Serrada, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
    DM.TROMANEIOSERRADA.cancel;
    DM.TROMANEIOSERRADA.Filtered := False;
    DM.TROMANEIOSERRADA.close;
    fornecedor.Text := '';
    inscricao.Text := '';
    valtotal.Caption  := '';
    m3.Caption  := '';
    edit1.Text := '';
    nota.Text := '0';
    data.Text := '';

    BitBtn12.Enabled := false;
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn11.Enabled := false;
    nota.Enabled := false;
    data.Enabled := false;
DM.QROMANEIOSERRADADISC.Close;
frmRRomaneioSerrada.ShowModal;
end;
end;
end;

procedure TfrmRomaneioserrada.BitBtn7Click(Sender: TObject);
begin
DM.TROMANEIOSERRADA.EDIT;
frmRomaneioserradaprodutos.Show;
frmRomaneioserradaprodutos.DBEDIT1.SetFocus;
end;



procedure TfrmRomaneioserrada.BitBtn6Click(Sender: TObject);
var total, total1 : Real;
begin
if DM.TROMANEIOSERRADA.RecordCount = 0 then
begin
Application.MessageBox('Não há Lançamento(s) para ser(em) excluído(s), Verífique!', 'Pesquisa', mb_Ok + mb_IconError);
bitbtn3.SetFocus;
end
else
begin
If Application.MessageBox('Ao confirmar, todos os lançamentos efetuados desta empresa para esta Nota Fiscal serão excluídos, Confirma Exclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    tbDBDeleteAll(DM.TROMANEIOSERRADA);
    frmromaneioserrada.g.Caption := 'Produtos > ' + intTostr(DM.TROMANEIOSERRADA.RecordCount);    
    DM.TROMANEIOSERRADA.close;
    fornecedor.Text := '';
    inscricao.Text := '';
    edit1.Text := '';
    nota.Text := '0';
    data.Text := '';
    M3.CAPTION := '';
    nota.Enabled := false;
    data.Enabled := false;    
    VALTOTAL.CAPTION := '';
    bitbtn5.Enabled := True;
    bitbtn3.Enabled := True;
    bitbtn4.Enabled := True;
        BitBtn12.Enabled := false;
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn11.Enabled := false;
   end
   else
   begin
    nota.SetFocus;
end;
end;
end;

procedure TfrmRomaneioserrada.notaExit(Sender: TObject);
var total, total1 : Real;
begin
   DM.TROMANEIOSERRADA.Filtered := False;
   DM.TROMANEIOSERRADA.Close;
   DM.TROMANEIOSERRADA.Filter := 'NF = ' + QuotedStr(nota.Text)+ ' and CODEMPRESA = ' + QuotedStr(edit1.Text);
   DM.TROMANEIOSERRADA.Filtered := True;
   DM.TROMANEIOSERRADA.open;

begin
   if DM.TROMANEIOSERRADA.RecordCount <> 0 then
     begin
     g.Caption := 'Produtos > ' + intTostr(DM.TROMANEIOSERRADA.RecordCount);
     BitBtn9.Enabled := True;
     BitBtn10.Enabled := True;
     BitBtn11.Enabled := True;
     BitBtn7.Enabled := True;
        BitBtn12.Enabled := True;

     total := 0;
     total1 := 0;
     DM.TROMANEIOSERRADA.First;
     while not DM.TROMANEIOSERRADA.Eof do
     begin
        total := DM.TROMANEIOSERRADA['VLTOTAL'] + total ;
        total1 := DM.TROMANEIOSERRADA['TOTALM3'] + total1 ;
        DM.TROMANEIOSERRADA.Next;
     end;
     valtotal.Caption  := FormatCurr('#0.00',total);
     m3.Caption  := FormatCurr('#0.0000',total1);
     If Application.MessageBox('Já possui lançamento para o numero de Nota Fiscal informado, do Cliente selecionado, Deseja Continuar?', 'Confirmação',
     mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        exit;
        end
        else
        begin
        nota.SetFocus;
        nota.Text := '0';
        end
   end;
end;
     g.Caption := 'Produtos > ' + intTostr(DM.TROMANEIOSERRADA.RecordCount);
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn11.Enabled := false;
end;

procedure TfrmRomaneioserrada.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
//data1.Text := data.Text;
end;






end.
