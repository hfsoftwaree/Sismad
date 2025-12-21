unit UnitEntradaSerrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin, jpeg, EDateEd, ENumEd, SSBaseXP, SSEdit, Gauges;

type
  TfrmEntradaSerrada = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    g: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBGrid3: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    quantidade: TLabel;
    nota: TSpinEditXP;
    DBEDIT6: TEdit;
    data: TEvDateEdit;
    Label6: TLabel;
    pecas: TLabel;
    fornecedor: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    unitario: TEvDBNumEdit;
    TOTNOTA: TCurrencyEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn115: TBitBtn;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    M2: TLabel;
    Label11: TLabel;
    ML: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn115Click(Sender: TObject);
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
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaSerrada: TfrmEntradaSerrada;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada, UnitEntradaToros, UnitEntradaSerradaProdutos,
  unitentradaserradagauge, Unitentradaserradagauge1,
  Unitentradaserradagauge2, UnitRepEntrada3;


{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure TfrmEntradaSerrada.BitBtn4Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QFornecedor.Open;
if DM.QFornecedor.RecordCount = 0 then
begin
DM.QFornecedor.Close;
Application.MessageBox('Não há Fornecedor(es) Cadastrado(s), Verifíque!', 'Entrada', mb_Ok + mb_IconExclamation);
end
else
begin
//bitbtn4.Enabled := False;
DM.QMunicipio.Open;
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.ShowModal;
frmpesquisa.Free;
end;
end;
end;

procedure TfrmEntradaSerrada.BitBtn115Click(Sender: TObject);
var total, total1, total2, total3, total4, total5, total6,total7, total8 : Real;
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin

if DM.TESDISCRIMINACAO.RecordCount = 1 then
begin
If Application.MessageBox('Deseja Excluir este produto?', 'Confirmação',
 mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT4.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT5.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

     DM.TESTOQUE.Prior;
     while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total5;
        total6 := DM.TESDISCRIMINACAO['TOTALM3'] + total6;
        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
//     if DM.TESTOQUE['TOTALM3']=0then dm.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;

     DM.TESDISCRIMINACAO.Delete;
     DM.TESDISCRIMINACAO.Last;
   Application.CreateForm(Tfrmentradaserradagauge2, frmentradaserradagauge2);
   frmentradaserradagauge2.showmodal;
   frmentradaserradagauge2.free;
   bitbtn115.Enabled := false;
   bitbtn10.Enabled := false;
   bitbtn11.Enabled := false;
    end;
    end
    else
begin
if DM.TESDISCRIMINACAO.RecordCount <> 1 then
begin
If Application.MessageBox('Deseja Excluir este produto?', 'Confirmação',
 mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT4.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT5.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := DM.TESDISCRIMINACAO['QUANTIDADE'] + total5;
        total6 := DM.TESDISCRIMINACAO['TOTALM3'] + total6;
        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
//     if DM.TESTOQUE['TOTALM3']=0then dm.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;

   DM.TESDISCRIMINACAO.Delete;
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + QuotedStr(frmentradaserrada.nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(frmentradaserrada.DBEDIT6.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;
   DM.TESDISCRIMINACAO.Last;
   Application.CreateForm(Tfrmentradaserradagauge2, frmentradaserradagauge2);
   frmentradaserradagauge2.showmodal;
   frmentradaserradagauge2.free;
end;
end;
end;
end;
end;

procedure TfrmEntradaSerrada.BitBtn2Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('É preciso estar logado como "admin" para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.TESDISCRIMINACAO.Cancel;
DM.TESDISCRIMINACAO.Close;
DM.QFornecedor.Close;
DM.QMunicipio.Close;
g.Caption := 'Produtos ';
BitBtn4.Enabled := True;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
Data.Clear;
DBGrid2.Visible := False;
DBGrid3.Visible := True;
dbedit6.Text := '';
nota.Text := '0';
fornecedor.Text := '';
data.Text:= '';
quantidade.caption := '';
pecas.caption := '';
TOTNOTA.Text  := '';
end;
end;

procedure TfrmEntradaSerrada.BitBtn3Click(Sender: TObject);
begin
dbedit6.Text := '1';
DM.TESDISCRIMINACAO.Cancel;
g.Caption := 'Produtos ';
BitBtn4.Enabled := True;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
Data.Clear;
DBGrid2.Visible := False;
DBGrid3.Visible := True;
//dbedit6.Text := '';
nota.Text := '0';
fornecedor.Text := '';
data.Text:= '';
quantidade.caption := '';
pecas.caption := '';
TOTNOTA.Text  := '';
unitario.text := '';
Close;
end;



procedure TfrmEntradaSerrada.FormShow(Sender: TObject);
begin
Self.Tag := 1;
nota.SetFocus; 
//bitbtn4.SetFocus;
end;

procedure TfrmEntradaSerrada.TabSheet1Show(Sender: TObject);
begin
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
DM.QFornecedor.Close;
end;

procedure TfrmEntradaSerrada.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmEntradaSerrada.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmEntradaSerrada.TabSheet2Show(Sender: TObject);
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

procedure TfrmEntradaSerrada.BitBtn10Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Next;
end;

procedure TfrmEntradaSerrada.BitBtn11Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Prior;
end;

procedure TfrmEntradaSerrada.pesoliquidoExit(Sender: TObject);
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




procedure TfrmEntradaSerrada.BitBtn12Click(Sender: TObject);
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
      bitbtn4.Click ;
//      Application.CreateForm(TfrmPesquisa, frmPesquisa);
  //    frmPesquisa.ShowModal;
    //  frmpesquisa.Free;
    end
    else
begin
if nota.text = '0' then
    begin
      Application.MessageBox('Numero da Nota Fiscal deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
      nota.SetFocus;
      end;
    end;

if (fornecedor.Text <> '') and (nota.text <> '0') then
begin
Data.Text := DateToStr(now);
DM.QProduto.Open;
DM.TESDISCRIMINACAO.Open;
DM.TESDISCRIMINACAO.Append;
Application.CreateForm(TfrmEntradaSerradaProdutos, frmEntradaSerradaProdutos);
frmEntradaSerradaProdutos.DBEDIT3.Text := DBEDit6.Text;
frmEntradaSerradaProdutos.DBEDIT4.Text := nota.Text;
frmEntradaSerradaProdutos.DBEDIT6.Text := fornecedor.Text;
frmEntradaSerradaProdutos.Showmodal;
frmentradaserradaprodutos.Free;
end
else
//nota.SetFocus;
end;
end;

procedure TfrmEntradaSerrada.dataEnter(Sender: TObject);
begin
if DM.TESDISCRIMINACAO.RecordCount = 0 then
begin
Data.Text := DateToStr(now);
end
else

end;



procedure TfrmEntradaSerrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;



procedure TfrmEntradaSerrada.notaExit(Sender: TObject);
var total, total1, total2 : Real;
begin
if nota.Text = '' then
begin
nota.Text := '0';
end;

begin
if dbedit6.Text = '' then
begin
nota.Text := '0';
//bitbtn4.Click;
exit;
end
else
begin
if dbedit6.Text <> '' then
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO1.Close;
   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + QuotedStr(nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(DBEDIT6.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;
   DM.TESDISCRIMINACAO.Last;
end;
end;


begin
   if DM.TESDISCRIMINACAO.RecordCount <> 0 then
   begin
   data.Text := DM.TESDISCRIMINACAO['DATALANCAMENTO'];
   DBGrid3.Visible := False;
   DBGrid2.Visible := True;
   BitBtn10.Enabled := True;
   BitBtn11.Enabled := True;
   bitbtn115.Enabled := True;
//    unitario.Visible := true;

     If Application.MessageBox('Já possui lançamento para o numero de Nota Fiscal informado, do Fornecedor selecionado, Deseja Continuar?', 'Confirmação',
     mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
//        exit;
        Application.CreateForm(Tfrmentradaserradagauge1, frmentradaserradagauge1);
        frmentradaserradagauge1.showmodal;
        frmentradaserradagauge1.free;
        end
        else
        begin
        nota.Text := '0';
        DM.TESDISCRIMINACAO.Filtered := False;
        DM.TESDISCRIMINACAO.Close;
        quantidade.Caption := '';
        nota.SetFocus;
        end;
        end;

if DM.TESDISCRIMINACAO.RecordCount = 0 then
   begin
    g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);
    pecas.Caption := '';
    quantidade.Caption := '';
  //  unitario.Visible := false;
    totnota.Text := '';
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := false;
    Bitbtn115.Enabled := False;
end;
end;
end;
end;


procedure TfrmEntradaSerrada.EvDateEdit1Enter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;


procedure TfrmEntradaSerrada.DBEdit1Change(Sender: TObject);
begin
   edit1.Text := DBEDIT1.Text;
   edit1.Text := StringReplace(edit1.Text, ',', '.', []);

end;

procedure TfrmEntradaSerrada.DBEdit2Change(Sender: TObject);
begin
   edit2.Text := DBEDIT2.Text;
   edit2.Text := StringReplace(edit2.Text, ',', '.', []);

end;

procedure TfrmEntradaSerrada.DBEdit3Change(Sender: TObject);
begin
   edit3.Text := DBEDIT3.Text;
   edit3.Text := StringReplace(edit3.Text, ',', '.', []);

end;






procedure TfrmEntradaSerrada.FormDestroy(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Filtered := False;
DM.TESDISCRIMINACAO.Close;
DM.TESDISCRIMINACAO1.Close;
DM.QFornecedor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
end;

procedure TfrmEntradaSerrada.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then 
KEY := 0; 

end;

procedure TfrmEntradaSerrada.DBGrid3TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid2.Columns.Count - 1 do
  DBGrid2.Columns[i].Title.Font.Style := [];
  DM.TESDISCRIMINACAO.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];

end;

procedure TfrmEntradaSerrada.BitBtn1Click(Sender: TObject);
begin
if fornecedor.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.Click ;
end
else
begin
if nota.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota.SetFocus;
end;
end;

if (fornecedor.Text <> '') and (nota.Text <> '0') then
begin
  Application.CreateForm(TRepEntrada3, RepEntrada3);
  RepEntrada3.TENTRADA.Filtered:=False;
  RepEntrada3.TENTRADA.Close;
  RepEntrada3.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(DBEdit6.Text) + ' and NFNUMERO = ' + QuotedStr(nota.Text);
  RepEntrada3.TENTRADA.Filtered:=True;
  RepEntrada3.TENTRADA.Open;
  repentrada3.TENTRADA.Last;
  repentrada3.TOTAL.Caption := 'TOTAL (' + IntToStr(repentrada3.TENTRADA.RecordCount)+ ')';

  DM.QManutencao.Open;
  if RepEntrada3.TENTRADA.RecordCount = 0 then
begin
RepEntrada3.TENTRADA.Filtered:=False;
RepEntrada3.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
//bitbtn4.SetFocus;
end
else
begin
//  if combobox1.ItemIndex = 0 then
//  begin

  RepEntrada3.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
  RepEntrada3.NF.Caption := nota.text;
  RepEntrada3.QuickRep1.Preview;
  repentrada3.Free;
//  end
 // else
//  begin
//  if combobox1.ItemIndex = 1 then
//  begin
//  RepEntrada3.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//  RepEntrada3.NF.Caption := nota1.text;
//  RepEntrada3.QuickRep1.Preview;
//  repentrada3.Free;
//  end;
//end;
end;
end;
end;

end.
