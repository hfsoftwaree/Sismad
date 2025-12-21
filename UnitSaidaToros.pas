unit UnitSaidaToros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin;

type
  TfrmSaidaToros = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    nota: TEvDBZeroEdit;
    Label4: TLabel;
    data: TEvDBDateEdit;
    Label3: TLabel;
    saida: TEvDBDateEdit;
    Label33: TLabel;
    maskedit1: TMaskEdit;
    Label34: TLabel;
    hora: TDBEdit;
    GroupBox3: TGroupBox;
    transportador: TDBEdit;
    Label10: TLabel;
    frete: TDBComboBox;
    Label11: TLabel;
    placa: TDBEdit;
    Label12: TLabel;
    placauf: TDBComboBox;
    Label13: TLabel;
    cnpjcpf: TDBEdit;
    Label14: TLabel;
    endereco: TDBEdit;
    Label20: TLabel;
    municipio: TDBLookupComboBox;
    Label21: TLabel;
    uf: TDBEdit;
    Label22: TLabel;
    ie: TDBEdit;
    Label23: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    numero: TEvDBZeroEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    pesoliquido: TEvDBNumEdit;
    especie: TDBEdit;
    marca: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    totalproduto: TEvDBNumEdit;
    Label32: TLabel;
    bcicms: TEvDBNumEdit;
    Label26: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    valicms: TEvDBNumEdit;
    EvDBNumEdit7: TEvDBNumEdit;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    EvDBNumEdit11: TEvDBNumEdit;
    totalnota: TEvDBNumEdit;
    bcfunrural: TEvDBNumEdit;
    valfunrural: TEvDBNumEdit;
    Label45: TLabel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    aliqicms: TEvDBNumEdit;
    aliqfunrural: TEvDBNumEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Bevel1: TBevel;
    quantidade: TEvDBNumEdit;
    Label35: TLabel;
    Label25: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Label31: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    fornecedor1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    BitBtn8: TBitBtn;
    nota1: TSpinEditXP;
    BitBtn13: TBitBtn;
    DBEDIT6: TEvDBZeroEdit;
    fornecedor: TDBEdit;
    inscricao: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure quantidadeExit(Sender: TObject);
    procedure municipioExit(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure horaChange(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure pesoliquidoExit(Sender: TObject);
    procedure aliqicmsExit(Sender: TObject);
    procedure aliqfunruralExit(Sender: TObject);
    procedure EvDBNumEdit10Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure nota1Exit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure nota1Change(Sender: TObject);
    procedure maskedit1Exit(Sender: TObject);
    procedure maskedit1Change(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure notaEnter(Sender: TObject);
    procedure dataEnter(Sender: TObject);
    procedure saidaEnter(Sender: TObject);
    procedure totalnotaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaidaToros: TfrmSaidaToros;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitEntradaToros, UnitSaidaMadeirasProdutos, UnitPesquisa3,
  UnitSaidaMadeiras;


{$R *.dfm}

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;


procedure TfrmSaidaToros.BitBtn4Click(Sender: TObject);
begin
DM.QCredor.Open;
if DM.QCredor.RecordCount = 0 then
begin
DM.QCredor.Close;
Application.MessageBox('Não há Cliente(s) Cadastrado(s), Verifíque!', 'Saída', mb_Ok + mb_IconExclamation);
end
else
begin
DM.QCredor.Close;
DM.TSaida.Open;
DM.TSaida.Append;
DM.QMunicipio.Open;
frmPesquisa3.ShowModal;
end;
end;

procedure TfrmSaidaToros.BitBtn5Click(Sender: TObject);
begin
DM.QSaida.Open;
if DM.QSaida.RecordCount = 0 then
begin
DM.QSaida.Close;
Application.MessageBox('Não há Lançamento(s) para ser(em) Excluido(s)!', 'Exclusão', mb_Ok + mb_IconInformation);
end
else
begin
BitBtn7.Visible := True;
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn6.Visible := False;
DM.QCredor.Open;
  with DM.QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Credor Order by NOMECREDOR');
      Open;
PageControl1.ActivePage := TabSheet2;
//fornecedor1.SetFocus;
    end;
end
end;

procedure TfrmSaidaToros.BitBtn1Click(Sender: TObject);
begin
	if fornecedor.Text='' then
   	begin
         Application.MessageBox('Fornecedor deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         frmPesquisa3.ShowModal;
    end
    else
begin
	if nota.Text='000000' then
   	begin
         Application.MessageBox('Numero da Nota Fiscal deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         nota.SetFocus;
    end
    else
begin
	if data.EditText = '' then
   	begin
         Application.MessageBox('Data de Emissão deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         data.SetFocus;
    end
    else
begin
	if saida.EditText = '' then
   	begin
         Application.MessageBox('Data da Saida deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         saida.SetFocus;
    end
    else
begin
	if transportador.Text='' then
   	begin
         Application.MessageBox('Transportador deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         transportador.SetFocus;
    end
    else
begin
	if totalproduto.Text='' then
   	begin
         Application.MessageBox('Valor Total dos Produtos deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         totalproduto.SetFocus;
    end
    else
begin
	if totalnota.Text='' then
   	begin
         Application.MessageBox('Valor Total da Nota deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         totalnota.SetFocus;
    end;
    end;
    end;
    end;
    end;
    end;
    end;

if (fornecedor.Text <> '')and (nota.Text <> '') and (data.Text <> '') and (saida.Text <> '')and (transportador.Text <> '')and (totalproduto.Text <> '')and (totalnota.Text <> '') then
begin
If Application.MessageBox('Confirma a Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      DM.TSaida.Post;
      If Application.MessageBox('Continua Lançamento?', 'Confirmação',
      mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      bitbtn9.Enabled := false;
      bitbtn10.Enabled := false;
      bitbtn11.Enabled := false;
      bitbtn12.Enabled := false;
      DM.TSaida.Append;
      DBGrid2.Visible := False;
      DBGrid3.Visible := True;
      DM.TSaida_discriminacao.Close;
      frmPesquisa3.ShowModal;
      end
      else
      begin
      DM.TSaida.Close;
      DM.TSaida_discriminacao.Close;
      DM.QCredor.Close;
      DM.QEssencia.Close;
      DM.QMunicipio.Close;
      BitBtn4.Enabled := True;
      BitBtn5.Enabled := True;
      BitBtn6.Enabled := True;
      Close;
      end
    end;
    end;
//nota.SetFocus;
end;

procedure TfrmSaidaToros.BitBtn2Click(Sender: TObject);
begin
if DM.TSaida_Discriminacao.RecordCount <> 0 then
begin
Application.MessageBox('Para cancelamento deste lançamento, exclua primeiro o(s) produto(s) informado(s)!', 'Lançamento', mb_Ok + mb_IconError);
bitbtn9.SetFocus;
end
else
begin
DM.TSaida.Cancel;
DM.TSaida.Close;
DM.TSaida_discriminacao.Cancel;
DM.TSaida_discriminacao.Close;
DM.QCredor.Close;
DM.QMunicipio.Close;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Enabled := True;
BitBtn12.Enabled := false;
BitBtn9.Enabled := false;
BitBtn10.Enabled := false;
BitBtn11.Enabled := false;
Transportador.SetFocus;
Data.Clear;
DBGrid2.Visible := False;
DBGrid3.Visible := True;
end;
end;

procedure TfrmSaidaToros.BitBtn3Click(Sender: TObject);
begin
nota1.Clear;
DM.TSaida.Close;
DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_discriminacao.Close;
DM.TSaida1.Close;
DM.TSaida_Discriminacao1.Filtered := False;
DM.TSaida_Discriminacao1.Close;
DM.QCredor.Close;
DM.QEssencia.Close;
DM.QMunicipio.Close;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Enabled := True;
Close;
end;

procedure TfrmSaidaToros.FormShow(Sender: TObject);
begin
Self.Tag := 1;
DM.TEntrada.Close;
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
transportador.SetFocus;
end;

procedure TfrmSaidaToros.BitBtn7Click(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn13.Visible := False;
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
BitBtn6.Visible := True;
DM.QCredor.Close;
DM.TSaida1.Close;
DM.TSaida_Discriminacao1.Close;
transportador.SetFocus;
end;

procedure TfrmSaidaToros.TabSheet1Show(Sender: TObject);
begin
BitBtn7.Visible := False;
BitBtn13.Visible := False;
BitBtn6.Visible := True;
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
BitBtn5.Enabled := True;
DM.QFornecedor.Close;
DM.TEntrada1.Close;
DM.TEntradaDiscriminacao1.Close;
transportador.SetFocus;
end;

procedure TfrmSaidaToros.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmSaidaToros.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmSaidaToros.DBEdit4Exit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TfrmSaidaToros.TabSheet2Show(Sender: TObject);
begin
nota1.Clear;
BitBtn6.Visible := False;
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn7.Visible := True;
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

procedure TfrmSaidaToros.quantidadeExit(Sender: TObject);
begin
if length (quantidade.Text) < 7 then
exit
else
Application.MessageBox('Quantidade inválida, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
quantidade.SetFocus;
quantidade.Clear;
end;


procedure TfrmSaidaToros.municipioExit(Sender: TObject);
begin
if municipio.Text = '' then
begin
uf.Text := '';
end
else
begin
uf.Text := DM.QMunicipio['SIG_UF'];
end;
end;

procedure TfrmSaidaToros.BitBtn8Click(Sender: TObject);
begin
if fornecedor1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
fornecedor1.SetFocus;
end;

if (fornecedor1.Text <> '') then
begin
   if (fornecedor1.text <> '') and (nota1.Text <> '') then
   begin
   DM.TSaida1.Filtered := False;
   DM.TSaida1.Close;
   DM.TSaida1.Filter := 'RAZAO_SOCIAL = ' + QuotedStr(fornecedor1.Text) + ' and NF_NUMERO = ' + QuotedStr(nota1.Text);
   DM.TSaida1.Filtered := True;
   DM.TSaida1.Open;
   DM.TSaida1.IndexFieldNames := ('NF_NUMERO');

   BitBtn13.Visible := True;
      if DM.TSaida1.RecordCount = 0 then
      begin
      DM.TSaida1.Close;
      DM.TSaida_Discriminacao1.Close;
      Application.MessageBox('Não há Nota Fiscal para vizualizar com os critérios informados!', 'Informação', mb_Ok + mb_IconError);
      fornecedor1.SetFocus;
      BitBtn13.Visible := False;
      end
      else
      begin
   DM.TSaida_Discriminacao1.Filtered := False;
   DM.TSaida_Discriminacao1.Close;
   DM.TSaida_Discriminacao1.Filter := 'NFNUMERO = ' + QuotedStr(nota1.Text);
   DM.TSaida_Discriminacao1.Filtered := True;
   DM.TSaida_Discriminacao1.Open;
   end
   end;
   end;

   if (fornecedor1.text <> '') and (nota1.Text = '') then
   begin
   DM.TSaida1.Filtered := False;
   DM.TSaida1.Close;
   DM.TSaida1.Filter := 'RAZAO_SOCIAL = ' + QuotedStr(fornecedor1.Text);
   DM.TSaida1.Filtered := True;
   DM.TSaida1.Open;
   DM.TSaida1.IndexFieldNames := ('NF_NUMERO');

   BitBtn13.Visible := True;
      if DM.TSaida1.RecordCount = 0 then
      begin
      DM.TSaida1.Close;
      DM.TSaida_Discriminacao1.Close;
      Application.MessageBox('Não há Nota Fiscal para vizualizar com os critérios informados!', 'Informação', mb_Ok + mb_IconError);
      fornecedor1.SetFocus;
      BitBtn13.Visible := False;
      end
      else
      begin
   DM.TSaida_Discriminacao1.Filtered := False;
   DM.TSaida_Discriminacao1.Close;
   DM.TSaida_Discriminacao1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.TSaida_Discriminacao1.Filtered := True;
   DM.TSaida_Discriminacao1.Open;
   end      
   end;
end;


procedure TfrmSaidaToros.BitBtn9Click(Sender: TObject);
var total, total1 : Real;
begin
If Application.MessageBox('Deseja Excluir esse produto?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   DM.TSaida_discriminacao.Delete;
   total := 0;
   total1 := 0;

   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + (nota.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

   DM.TSaida_discriminacao.Prior;
   while not DM.TSaida_discriminacao.Eof do
     begin
        total := DM.TSaida_discriminacao['VALTOTAL'] + total ;
        total1 := DM.TSaida_discriminacao['QUANTIDADE'] + total1 ;
        DM.TSaida_discriminacao.Next;
     end;
    frmSaidaMadeiras.totalproduto.text := FormatCurr('#0.00',total);
    frmSaidaMadeiras.quantidade.text := FormatCurr('#0.000',total1);
end
else
//Fornecedor1.SetFocus;
end;

procedure TfrmSaidaToros.horaChange(Sender: TObject);
begin
MASKEDIT1.Text := hora.Text;
end;

procedure TfrmSaidaToros.BitBtn10Click(Sender: TObject);
begin
DM.TSaida_discriminacao.Next;
end;

procedure TfrmSaidaToros.BitBtn11Click(Sender: TObject);
begin
DM.TSaida_discriminacao.Prior;
end;

procedure TfrmSaidaToros.pesoliquidoExit(Sender: TObject);
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
  DM.TSaida_discriminacao.Open;
  DM.TSaida_discriminacao.Append;
  frmSaidaMadeirasProdutos.DBEDIT3.Text := DBEDit6.Text;
  frmSaidaMadeirasProdutos.DBEDIT4.Text := nota.Text;
  frmSaidaMadeirasProdutos.DBEDIT6.Text := FORNECEDOR.Text;
  frmSaidaMadeirasProdutos.DBEDIT7.Text := DBEDIT1.Text;
  frmSaidaMadeirasProdutos.DBEDIT8.Text := INSCRICAO.Text;
  frmSaidaMadeirasProdutos.Show;
  frmSaidaMadeirasProdutos.DBEDIT1.SetFocus;
  end
  else
  totalnota.SetFocus;
  end;
end;

procedure TfrmSaidaToros.aliqicmsExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= bcicms.Value;
      vn2:= aliqicms.Value;
      vsoma := vn1 * vn2/100;
      valicms.Text := FloatToStr(vsoma);
end;

procedure TfrmSaidaToros.aliqfunruralExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= bcfunrural.Value;
      vn2:= aliqfunrural.Value;
      vsoma := vn1 * vn2/100;
      valfunrural.Text := FloatToStr(vsoma);
end;

procedure TfrmSaidaToros.EvDBNumEdit10Exit(Sender: TObject);
begin
DM.TSaida_Discriminacao.Filtered := False;
DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + (nota.Text);
DM.TSaida_Discriminacao.Filtered := True;

if DM.TSaida_Discriminacao.RecordCount = 0 then
begin
Application.MessageBox('Deve-se informar pelo menos 01(um) produto para esta Nota Fiscal!', 'Informação', mb_Ok + mb_IconError);
end
else
BITBTN1.Click;
end;

procedure TfrmSaidaToros.BitBtn6Click(Sender: TObject);
begin
DM.QSaida.Close;
DM.QSaida.Open;
if DM.QSaida.RecordCount = 0 then
begin
DM.QSaida.Close;
Application.MessageBox('Não há Lançamento(s) para ser(em) pesquisado(s)!', 'Pesquisa', mb_Ok + mb_IconInformation);
end
else
begin
BitBtn7.Visible := True;
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
BitBtn5.Enabled := False;
BitBtn6.Visible := False;
DM.QCredor.Open;
  with DM.QCredor do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from Credor Order by NOMECREDOR');
      Open;
PageControl1.ActivePage := TabSheet2;
//fornecedor1.SetFocus;
    end;
end
end;

procedure TfrmSaidaToros.nota1Exit(Sender: TObject);
begin
bitbtn8.setfocus;
end;

procedure TfrmSaidaToros.DBGrid1Exit(Sender: TObject);
begin
fornecedor1.SetFocus;
end;

procedure TfrmSaidaToros.nota1Change(Sender: TObject);
begin
if Length (nota1.Text) > 6 then
begin
Application.MessageBox('Quantidade de digitos informados excedeu o permitindo, Verifique!', 'Informação', mb_Ok + mb_IconError);
nota1.SetFocus;
nota1.Clear;
end;
end;

procedure TfrmSaidaToros.maskedit1Exit(Sender: TObject);
begin
if MaskEdit1.Text = '' then
begin
exit;
end;

if Length (hora.Text) < 4 then
begin
Application.MessageBox('Hora Informada Inválida, Verifique!', 'Informação', mb_Ok + mb_IconError);
MaskEdit1.SetFocus;
MaskEdit1.Clear;
end
else
exit;
end;

procedure TfrmSaidaToros.maskedit1Change(Sender: TObject);
begin
hora.Text := MASKEDIT1.Text;
end;

procedure TfrmSaidaToros.BitBtn12Click(Sender: TObject);
begin
DM.QProduto.Open;
DM.TSaida_discriminacao.Open;
DM.TSaida_discriminacao.Append;
frmSaidaMadeirasProdutos.DBEDIT3.Text := DBEDit6.Text;
frmSaidaMadeirasProdutos.DBEDIT4.Text := nota.Text;
frmSaidaMadeirasProdutos.DBEDIT6.Text := FORNECEDOR.Text;
frmSaidaMadeirasProdutos.DBEDIT7.Text := DBEDIT1.Text;
frmSaidaMadeirasProdutos.DBEDIT8.Text := INSCRICAO.Text;
frmSaidaMadeirasProdutos.Show;
frmSaidaMadeirasProdutos.DBEDIT1.SetFocus;
end;

procedure TfrmSaidaToros.BitBtn13Click(Sender: TObject);
begin
if DM.TSaida1.RecordCount = 0 then
begin
Application.MessageBox('Não há Lançamento(s) para ser(em) excluído(s)!', 'Pesquisa', mb_Ok + mb_IconError);
bitbtn3.SetFocus;
end
else
begin
If Application.MessageBox('Confirma Exclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    tbDBDeleteAll(DM.TSaida_Discriminacao1);

    DM.TSaida1.Delete;
    DM.TSaida1.Refresh;
    if DM.TSaida_Discriminacao1.RecordCount <> 0 then
    begin
   DM.TSaida_Discriminacao1.Filtered := False;
   DM.TSaida_Discriminacao1.Close;
   DM.TSaida_Discriminacao1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.TSaida_Discriminacao1.Filtered := True;
   DM.TSaida_Discriminacao1.Open;
   end
   else
   begin
DBGrid1.SetFocus;
end;
end;
end
end;

procedure TfrmSaidaToros.notaEnter(Sender: TObject);
begin
if fornecedor.Text = '' then
begin
BitBtn12.Enabled := False;
BitBtn9.Enabled := False;
BitBtn10.Enabled := False;
BitBtn11.Enabled := False;
end
else
begin
BitBtn12.Enabled := True;
end;
end;

procedure TfrmSaidaToros.dataEnter(Sender: TObject);
begin
Data.Text := DateToStr(now);
end;

procedure TfrmSaidaToros.saidaEnter(Sender: TObject);
begin
saida.Text := DATA.Text;
end;

procedure TfrmSaidaToros.totalnotaEnter(Sender: TObject);
begin
totalnota.Text := totalproduto.Text;
end;


procedure TfrmSaidaToros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;




procedure TfrmSaidaToros.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   DM.TSaida_Discriminacao1.Filtered := False;
   DM.TSaida_Discriminacao1.Close;
   DM.TSaida_Discriminacao1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.TSaida_Discriminacao1.Filtered := True;
   DM.TSaida_Discriminacao1.Open;
end;


procedure TfrmSaidaToros.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   DM.TSaida_Discriminacao1.Filtered := False;
   DM.TSaida_Discriminacao1.Close;
   DM.TSaida_Discriminacao1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.TSaida_Discriminacao1.Filtered := True;
   DM.TSaida_Discriminacao1.Open;
end;

procedure TfrmSaidaToros.DBGrid1CellClick(Column: TColumn);
begin
   DM.TSaida_Discriminacao1.Filtered := False;
   DM.TSaida_Discriminacao1.Close;
   DM.TSaida_Discriminacao1.Filter := 'NFNUMERO = ' + QuotedStr(DBEDIT2.Text);
   DM.TSaida_Discriminacao1.Filtered := True;
   DM.TSaida_Discriminacao1.Open;
end;

end.
