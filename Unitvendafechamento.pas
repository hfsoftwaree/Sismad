unit Unitvendafechamento;

interface

uses
  Windows, IniFiles, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  ENumEd, ToolEdit, CurrEdit, SSBaseXP, SSEdit, DB, IBCustomDataSet,
  IBQuery, EDBDate, EDateEd, EDBTime, RXDBCtrl;

type
  TfrmVendaFechamento = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    DESCONTO: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    DBEdit3: TDBEdit;
    Panel13: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    QTDEPROD: TEvDBNumEdit;
    QTDEM3: TEvDBNumEdit;
    VALPRODUTOS: TEvDBNumEdit;
    NOTA: TDBEdit;
    parc1: TEvDBDateEdit;
    parc2: TEvDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Panel8: TPanel;
    VALENTRADA: TEvDBNumEdit;
    Panel9: TPanel;
    TIPOPAGAMENTO: TDBComboBox;
    VENDEDOR: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    tipoentrega: TDBComboBox;
    dataentrega: TEvDBDateEdit;
    horaentrega: TMaskEdit;
    horaentrega1: TDBEdit;
    Panel5: TPanel;
    prazoentrega: TDBComboBox;
    Panel7: TPanel;
    data: TEvDBDateEdit;
    Panel10: TPanel;
    Panel14: TPanel;
    OUTRASDESPESAS: TEvDBNumEdit;
    VALFRETE: TEvDBNumEdit;
    VALDESCONTO: TEvDBNumEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    FORMA: TDBComboBox;
    Panel15: TPanel;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DESCGERAL: TCurrencyEdit;
    DESCGERAL1: TCurrencyEdit;
    Memo1: TMemo;
    DESCGERAL2: TCurrencyEdit;
    DBEdit11: TDBEdit;
    Label5: TLabel;
    Panel19: TPanel;
    TIPO: TDBComboBox;
    Edit2: TEdit;
    Panel20: TPanel;
    DBComboBox1: TDBComboBox;
    TP: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DESCONTOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure intparcelasExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DATAEnter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure VENDEDORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tipoentregaChange(Sender: TObject);
    procedure horaentregaChange(Sender: TObject);
    procedure horaentrega1Change(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure OUTRASDESPESASExit(Sender: TObject);
    procedure VALFRETEExit(Sender: TObject);
    procedure tipoentregaExit(Sender: TObject);
    procedure FORMAExit(Sender: TObject);
    procedure TIPOPAGAMENTOExit(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure TIPOPAGAMENTOChange(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure TIPOPAGAMENTOEnter(Sender: TObject);
    procedure TIPOChange(Sender: TObject);
    procedure TIPOExit(Sender: TObject);
    procedure DESCONTOEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaFechamento: TfrmVendaFechamento;


implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitVenda, UnitPesquisa3,
  UnitPrincipal;

{$R *.dfm}
type
  TChars = set of Char;
function FilterChars(const S: string; const ValidChars: TChars): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  if S[I] in ValidChars then
  Result := Result + S[I];
end;

procedure TfrmVendaFechamento.BitBtn1Click(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma, vsoma1 : Real;
begin
  if VENDEDOR.Text = '' then
    begin
         Application.MessageBox('Vendedor deve ser informado, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
         VENDEDOR.SetFocus;
         end
         else
    begin
  if TIPOENTREGA.Text = '' then
    begin
         Application.MessageBox('Tipo de Entrega, deve ser informada, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
         TIPOENTREGA.SetFocus;
    end;
    end;

if (VENDEDOR.Text <>'') and (TIPOENTREGA.Text <> '') then
begin
if dbedit9.Text = 'A PRAZO' then
      begin
          if dbedit10.Text = '' then
          begin
          Application.MessageBox('Tipo de Pagamento deve ser informado, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
//          tipopagamento.SetFocus;
          end
          else
          begin
          if dbedit10.Text <> '' then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vn3:= (VALFRETE.Value);
      vn4:= (OUTRASDESPESAS.Value);
      vsoma := vn1 * vn2/100;
      VALDESCONTO.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma + vn3 + vn4;
      VALTOTAL.Text := FloatToStr(vsoma1);

If Application.MessageBox('Confirma fechamento da venda?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
frmvenda.groupbox2.Enabled := true;
if dm.TSAIDAFECHAMENTO['DESCONTO'] = null then DM.TSAIDAFECHAMENTO['DESCONTO'] := '0';
if dm.TSAIDAFECHAMENTO['VALORENTRADA'] = null then DM.TSAIDAFECHAMENTO['VALORENTRADA'] := '0';
   DM.TSaida_Discriminacao.First;
   dm.TSaida_Discriminacao.Edit;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        dm.TSaida_Discriminacao['TIPOCODIGO'] := edit2.Text ;
        dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := TIPO.Text ;
        dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
        dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
        DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
        if frmvenda.Edit4.Text = '' then DM.TSaida_Discriminacao['FONECONTATO']:= '00-0000-0000' else DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
        dm.TSaida_Discriminacao['FORMAPAGAMENTO'] := DBEDIT9.Text;
        dm.TSaida_Discriminacao['TIPOPAGAMENTO'] := DBEDIT10.Text ;
        frmvenda.FORMAPAGAMENTO.ItemIndex := frmvenda.FORMAPAGAMENTO.Items.IndexOf(DBEDIT9.text);
        frmvenda.TIPOPAGAMENTO.ItemIndex := frmvenda.TIPOPAGAMENTO.Items.IndexOf(DBEDIT10.text);
        frmvenda.TIPOLANCAMENTO.ItemIndex := frmvenda.TIPOLANCAMENTO.Items.IndexOf(TIPO.text);        
        DM.TSaida_Discriminacao.Next;
        dm.TSaida_Discriminacao.Edit;
     end;
     dm.TSaida_Discriminacao.Post;
     frmvenda.GroupBox2.Enabled := true;

    DM.TSTATUS1.open;
    DM.TSTATUS1.Edit;
    DM.TSTATUS1['CODIGOSTATUS'] := '1';
    DM.TSTATUS1['STATUS'] := 'Aguardando Fechamento';

   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn12.Enabled := false else frmvenda.bitbtn12.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn9.Enabled := false else frmvenda.bitbtn9.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn1.Enabled := false else frmvenda.bitbtn1.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn5.Enabled := false else frmvenda.bitbtn5.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn8.Enabled := true else frmvenda.bitbtn8.Enabled := false;

  dm.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '1';
  dm.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
  if frmvenda.Edit4.Text = '' then DM.TSAIDAFECHAMENTO['FONECONTATO']:= '00-0000-0000' else DM.TSAIDAFECHAMENTO['FONECONTATO']:= frmvenda.Edit4.Text;
  frmvenda.status1.Caption :=DM.TSTATUS1['STATUS'];
  dm.TSTATUS1.Post;

    if frmvenda.status1.Caption = 'Venda Finalizada' then
    begin
    frmvenda.status1.Font.Color := clRed;
    frmvenda.label28.Font.Color := clRed;
    end
    else
    begin
    frmvenda.status1.Font.Color := clgreen;
    frmvenda.label28.Font.Color := clgreen;
    end;


  if desconto.Text = '0,000' then
  begin
      dbedit4.Text := '0,00';
      DM.TSAIDAFECHAMENTO.Post;
      DM.TSAIDAFECHAMENTO.close;
      DM.T_VENDEDOR.Close;
      Self.Close;
      frmvenda.BitBtn4.Enabled := true;
      frmvenda.bitbtn3.SetFocus;
  end
  else
  begin
  if (desconto.Text <> '0') then
  begin
      DM.TSAIDAFECHAMENTO.Post;
      DM.TSAIDAFECHAMENTO.close;
      DM.T_VENDEDOR.Close;
      ibquery1.Close;

      Self.Close;
      frmvenda.BitBtn4.Enabled := true;
      frmvenda.bitbtn3.SetFocus;
  end;
  end;
  end;
  end;
  end;
  end;
end;

if dbedit9.text = 'A VISTA' then
begin
          if dbedit10.Text = '' then
          begin
          Application.MessageBox('Tipo de Pagamento deve ser informado, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
//          tipopagamento.SetFocus;
          end
          else
          begin
          if dbedit10.Text <> '' then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vn3:= (VALFRETE.Value);
      vn4:= (OUTRASDESPESAS.Value);
      vsoma := vn1 * vn2/100;
      VALDESCONTO.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma + vn3 + vn4;
      VALTOTAL.Text := FloatToStr(vsoma1);

If Application.MessageBox('Confirma fechamento da venda?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
frmvenda.groupbox2.Enabled := true;
if dm.TSAIDAFECHAMENTO['DESCONTO'] = null then DM.TSAIDAFECHAMENTO['DESCONTO'] := '0';
if dm.TSAIDAFECHAMENTO['VALORENTRADA'] = null then DM.TSAIDAFECHAMENTO['VALORENTRADA'] := '0';
   DM.TSaida_Discriminacao.First;
   dm.TSaida_Discriminacao.Edit;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        dm.TSaida_Discriminacao['TIPOCODIGO'] := edit2.Text ;
        dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := TIPO.Text ;
        dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
        dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
        DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
        if frmvenda.Edit4.Text = '' then DM.TSaida_Discriminacao['FONECONTATO']:= '00-0000-0000' else DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
        dm.TSaida_Discriminacao['FORMAPAGAMENTO'] := DBEDIT9.Text;
        dm.TSaida_Discriminacao['TIPOPAGAMENTO'] := DBEDIT10.Text ;
        frmvenda.FORMAPAGAMENTO.ItemIndex := frmvenda.FORMAPAGAMENTO.Items.IndexOf(DBEDIT9.text);
        frmvenda.TIPOPAGAMENTO.ItemIndex := frmvenda.TIPOPAGAMENTO.Items.IndexOf(DBEDIT10.text);
        frmvenda.TIPOLANCAMENTO.ItemIndex := frmvenda.TIPOLANCAMENTO.Items.IndexOf(TIPO.text);
        DM.TSaida_Discriminacao.Next;
        dm.TSaida_Discriminacao.Edit;
     end;
     dm.TSaida_Discriminacao.Post;
     frmvenda.GroupBox2.Enabled := true;     

    DM.TSTATUS1.open;
    DM.TSTATUS1.Edit;
    DM.TSTATUS1['CODIGOSTATUS'] := '1';
    DM.TSTATUS1['STATUS'] := 'Aguardando Fechamento';
    if frmvenda.Edit4.Text = '' then DM.TSAIDAFECHAMENTO['FONECONTATO']:= '00-0000-0000' else DM.TSAIDAFECHAMENTO['FONECONTATO']:= frmvenda.Edit4.Text;
    dm.TSTATUS1.Post;
    frmvenda.status1.Caption :=DM.TSTATUS1['STATUS'];
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn12.Enabled := false else frmvenda.bitbtn12.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn9.Enabled := false else frmvenda.bitbtn9.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn1.Enabled := false else frmvenda.bitbtn1.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn5.Enabled := false else frmvenda.bitbtn5.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn8.Enabled := true else frmvenda.bitbtn8.Enabled := false;

  dm.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '1';
  dm.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
  if frmvenda.Edit4.Text = '' then DM.TSAIDAFECHAMENTO['FONECONTATO']:= '00-0000-0000' else DM.TSAIDAFECHAMENTO['FONECONTATO']:= frmvenda.Edit4.Text;

  if desconto.Text = '0,000' then
  begin
      dbedit4.Text := '0,00';
      DM.TSAIDAFECHAMENTO.Post;
      DM.TSAIDAFECHAMENTO.close;
      DM.T_VENDEDOR.Close;
      ibquery1.Close;
      Self.Close;
      frmvenda.BitBtn4.Enabled := true;
     frmvenda.bitbtn3.SetFocus;
  end
  else
  begin
  if (desconto.Text <> '0,000') then
  begin
      DM.TSAIDAFECHAMENTO.Post;
      DM.TSAIDAFECHAMENTO.close;
      DM.T_VENDEDOR.Close;
      Self.Close;
      frmvenda.BitBtn4.Enabled := true;
      frmvenda.bitbtn3.SetFocus;
      end
      end;
      end;
      end
      else
end;
end;
end;

procedure TfrmVendaFechamento.DESCONTOExit(Sender: TObject);
var vn1, vn2, vsoma, vsoma1 : real;
begin
if desconto.Text = '0,00' then
begin
dbedit4.Text := '0,00';
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'REQUISIÇÃO') then
begin
	if desconto.Value > descgeral.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'DINHEIRO') then
begin
	if desconto.Value > descgeral.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'CHEQUE') then
begin
	if desconto.Value > descgeral.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'DEP.CONTA') then
begin
	if desconto.Value > descgeral.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'CARTAO DEBITO') then
begin
	if desconto.Value > descgeral1.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'TROCA') then
begin
	if desconto.Value > descgeral.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A VISTA')and(tipopagamento.Text = 'BOLETO') then
begin
	if desconto.Value > descgeral.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A PRAZO') and (TIPOPAGAMENTO.Text <> 'PERMUTA') then
begin
	if desconto.Value > descgeral2.Value  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;

if (forma.Text = 'A PRAZO') and (TIPOPAGAMENTO.Text = 'PERMUTA') then
begin
	if desconto.Value > 100  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end;


if (forma.Text = 'A VISTA') and (TIPOPAGAMENTO.Text = 'PERMUTA') then
begin
	if desconto.Value > 100  then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vsoma := vn1 * vn2/100;
      valdesconto.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma;
      VALTOTAL.Text := FloatToStr(vsoma1);
      end;
end
else
begin

if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'DINHEIRO') then
begin
  if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'CARTAO DEBITO') then
    begin
      if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'DEP.CONTA') then
      begin
        if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'CHEQUE') then
        begin
        if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'TROCA') then
        begin
        if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'BOLETO') then
        begin
        if (forma.Text = 'A VISTA')and(tipopagamento.Text <> 'REQUISIÇÃO') then
        begin
        if desconto.Text <> '0,00' then
        begin
        Application.MessageBox('Desconto não permitido para este tipo de pagamento, Verífique!', 'Fechamento de Venda', mb_Ok + mb_IconInformation);
        DESCONTO.SetFocus;
        desconto.SelectAll;
        end
        else
        begin
        vn1:=0;
        vn2:=0;
        vsoma:=0;
        vn1:= (VALPRODUTOS.Value);
        vn2:= (DESCONTO.Value);
        vsoma := vn1 * vn2/100;
        valdesconto.Text := FloatToStr(vsoma);
        edit1.Text := FloatToStr(vsoma);
        vsoma1 := vn1 - vsoma;
        VALTOTAL.Text := FloatToStr(vsoma1);
        end;
        end;
        end;
        end;
        end;
      end;
  END;
end;
end;

end;

procedure TfrmVendaFechamento.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmVendaFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
var format, format1 : Real;
begin
   DM.TSAIDAFECHAMENTO.Filter := 'NF = ' + (frmvenda.nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(frmvenda.DBEDIT6.Text);
   DM.TSAIDAFECHAMENTO.Filtered := True;
   DM.TSAIDAFECHAMENTO.Open;

begin
   if DM.TSAIDAFECHAMENTO.RecordCount = 0 then
   begin
//      DM.TSAIDAFECHAMENTO.Close;
      end
      else
   begin
   if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
   begin
   format := 0;
   format1 := 0;
   format := DM.TSAIDAFECHAMENTO['DESCONTO'];
   format1 := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];

   frmvenda.forma.Caption := DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO'];
   frmvenda.desconto.Caption := DM.TSAIDAFECHAMENTO['DESCONTO'];
   frmvenda.totnota.Caption := DM.TSAIDAFECHAMENTO['VAL_TOT_NOTA'];
   end;
   frmvenda.desconto.caption := FormatCurr('#0.000 %',format);
   frmvenda.totnota.caption := FormatCurr('#,0.00',format1);
   frmvenda.BitBtn4.Enabled := true;
   frmvenda.BitBtn30.Enabled := true;
   frmvenda.BitBtn39.Enabled := True;     
//   frmvenda.BitBtn8.Enabled := true;
   end;
   end;
//If Application.MessageBox('Continua lançamento?', 'Confirmação',
//mb_YesNo + mb_ICONQUESTION) = idYes then
//begin
//frmvenda.BitBtn4.Click;
//end
//else
//frmvenda.BitBtn3.Click;
end;

procedure TfrmVendaFechamento.FormShow(Sender: TObject);
begin
tipo.ItemIndex := tipo.Items.IndexOf(frmvenda.tipolancamento.Text );
ibquery1.Open;
descgeral.Text := ibquery1['DESCGERAL'];
descgeral1.Text := ibquery1['DESCGERAL1'];
descgeral2.Text := ibquery1['DESCGERAL2'];
memo1.Lines.Text := 'Desconto Máximo permitido para Venda a Vista (Dinheiro): '+ FloatToStr(DESCGERAL.Value)+'%'+#13 + 'Desconto Máximo permitido para Venda a Vista (Cartão Débito): '+ FloatToStr(DESCGERAL1.Value)+'%'+#13 + 'Desconto Máximo permitido para Venda a Prazo: '+ FloatToStr(DESCGERAL2.Value)+'%';

DM.T_VENDEDOR.Close;
DM.T_VENDEDOR.Open;
DM.T_VENDEDOR.Last;
DM.T_VENDEDOR.first;
DM.T_VENDEDOR.IndexName := ('NOMEVENDEDOR');
//VENDEDOR.Text := frmPrincipal.StatusBar1.Panels[1];
if frmvenda.Label27.Caption <> '0' then desconto.Enabled := false else desconto.Enabled := true;

   DM.TSAIDAFECHAMENTO.close;
   DM.TSAIDAFECHAMENTO.Filtered := False;
   DM.TSAIDAFECHAMENTO.Close;
   DM.TSAIDAFECHAMENTO.Filter := 'NF = ' + (frmvenda.nota.Text)+ ' and CODIGOCLIENTE = ' + QuotedStr(frmvenda.DBEDIT6.Text);
   DM.TSAIDAFECHAMENTO.Filtered := True;
   DM.TSAIDAFECHAMENTO.Open;
   DM.TSAIDAFECHAMENTO.edit;

dbedit5.Text := frmvenda.DBEdit7.Text ;
dbedit6.Text := frmvenda.TIPOLANCAMENTO.Text;
DBEDIT3.Text := frmvenda.dbedit6.Text;
DBEDIT7.Text := frmvenda.fornecedor.Text;
DBEDIT8.Text := frmvenda.data.Text;
nota.Text := frmvenda.nota.Text;
qtdeprod.Text := frmvenda.totprod.caption;
qtdem3.Text := frmvenda.totm3.caption;
valprodutos.Text := frmvenda.totvenda.caption;
valtotal.Text := frmvenda.totnota.caption;
if frmvenda.FORMAPAGAMENTO.Text <> '' then forma.ItemIndex := forma.Items.IndexOf(frmvenda.FORMAPAGAMENTO.Text) else forma.Items.IndexOf(DM.TSAIDAFECHAMENTO['FORMAPAGAMENTO']);
if frmvenda.TIPOPAGAMENTO.Text <> '' then tipopagamento.ItemIndex := tipopagamento.Items.IndexOf(frmvenda.TIPOPAGAMENTO.Text) else TIPOPAGAMENTO.Items.IndexOf(DM.TSAIDAFECHAMENTO['TIPOPAGAMENTO']);
if frmvenda.TIPOLANCAMENTO.Text <> '' then TIPO.ItemIndex := TIPO.Items.IndexOf(frmvenda.TIPOLANCAMENTO.Text) else TIPO.Items.IndexOf(DM.TSAIDAFECHAMENTO['TIPOLANCAMENTO']);

//dbedit9.Text := frmvenda.FORMAPAGAMENTO.Text;
//dbedit10.Text := frmvenda.TIPOPAGAMENTO.Text ;

if tipoentrega.ItemIndex = 1 then
begin
label2.Visible := true;
dataentrega.Visible := true;
label3.Visible := true;
horaentrega.Visible := true;
end
else
begin
label2.Visible := false;
dataentrega.Visible := false;
label3.Visible := false;
horaentrega.Visible := false;
end;

//if data.Text = '  /  /    'then
//begin
//data.Text := dateToStr(now);
//end;

end;




procedure TfrmVendaFechamento.intparcelasExit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TfrmVendaFechamento.FormDestroy(Sender: TObject);
begin
//frmvenda.Button1.Click; 
end;

procedure TfrmVendaFechamento.DATAEnter(Sender: TObject);
begin
if data.Text = '  /  /    ' then
begin
data.Text := DateToStr(Now);
end
else

end;

procedure TfrmVendaFechamento.BitBtn3Click(Sender: TObject);
begin
ibquery1.Close; 
        DM.T_VENDEDOR.Close;
        Self.Close;
//        frmvenda.BitBtn4.Enabled := true;
        frmvenda.DBGrid2.SetFocus;
end;

procedure TfrmVendaFechamento.VENDEDORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = VK_SPACE then

VENDEDOR.DropDown;
end;

procedure TfrmVendaFechamento.tipoentregaChange(Sender: TObject);
begin
if tipoentrega.ItemIndex = 1 then
begin
label2.Visible := true;
dataentrega.Visible := true;
label3.Visible := true;
horaentrega.Visible := true;
prazoentrega.ItemIndex := -1;
prazoentrega.Enabled := false;
end
else
begin
label2.Visible := false;
dataentrega.Visible := false;
label3.Visible := false;
horaentrega.Visible := false;
prazoentrega.Enabled := true;
end;
end;

procedure TfrmVendaFechamento.horaentregaChange(Sender: TObject);
begin
horaentrega1.Text := horaentrega.Text;
end;

procedure TfrmVendaFechamento.horaentrega1Change(Sender: TObject);
begin
horaentrega.Text := horaentrega1.Text ;
end;

procedure TfrmVendaFechamento.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
begin
  if DBmemo1.Lines.Text = '' then
  begin
  Key:=#8;
  bitbtn1.SetFocus;
  end
  else
  end
else
end;

procedure TfrmVendaFechamento.OUTRASDESPESASExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma, vsoma1:Real;
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vn3:= (VALFRETE.Value);
      vn4:= (OUTRASDESPESAS.Value);
      vsoma := vn1 * vn2/100;
      VALDESCONTO.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma + vn3 + vn4;
      VALTOTAL.Text := FloatToStr(vsoma1);
end;

procedure TfrmVendaFechamento.VALFRETEExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma, vsoma1:Real;
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= (VALPRODUTOS.Value);
      vn2:= (DESCONTO.Value);
      vn3:= (VALFRETE.Value);
      vn4:= (OUTRASDESPESAS.Value);
      vsoma := vn1 * vn2/100;
      VALDESCONTO.Text := FloatToStr(vsoma);
      edit1.Text := FloatToStr(vsoma);
      vsoma1 := vn1 - vsoma + vn3;
      VALTOTAL.Text := FloatToStr(vsoma1);
end;

procedure TfrmVendaFechamento.tipoentregaExit(Sender: TObject);
begin
if tipoentrega.ItemIndex = 1 then
begin
label2.Visible := true;
dataentrega.Visible := true;
label3.Visible := true;
horaentrega.Visible := true;
prazoentrega.ItemIndex := -1;
prazoentrega.Enabled := false;
end
else
begin
label2.Visible := false;
dataentrega.Visible := false;
label3.Visible := false;
horaentrega.Visible := false;
prazoentrega.Enabled := true;
end;
end;

procedure TfrmVendaFechamento.FORMAExit(Sender: TObject);
begin
if dbedit9.Text = '' then dbedit9.Text := FORMA.Text ;
end;

procedure TfrmVendaFechamento.TIPOPAGAMENTOExit(Sender: TObject);
begin
if dbedit10.Text = '' then dbedit10.Text := TIPOPAGAMENTO.Text ;

if tipopagamento.ItemIndex = 0 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '0';
end
else
begin
if tipopagamento.ItemIndex = 1 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '1';
end
else
begin
if tipopagamento.ItemIndex = 2 then
begin
TP.Text := '2';
end
else
begin
if tipopagamento.ItemIndex = 3 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '3';
end
else
begin
if tipopagamento.ItemIndex = 4 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '4';
end
else
begin
if tipopagamento.ItemIndex = 5 then
begin
TP.Text := '5';
end
else
begin
if tipopagamento.ItemIndex = 6 then
begin
TP.Text := '6';
end
else
begin
if tipopagamento.ItemIndex = 7 then
begin
TP.Text := '7';
end
else
begin
if tipopagamento.ItemIndex = 8 then
begin
TP.Text := '8';
end
else
begin
if tipopagamento.ItemIndex = 9 then
begin
TP.Text := '9';
end
else
begin
if tipopagamento.ItemIndex = 10 then
begin
TP.Text := '10';
end
else
begin
if tipopagamento.ItemIndex = 11 then
begin
TP.Text := '11';
end
else
begin
if tipopagamento.ItemIndex = 12 then
begin
TP.Text := '12';
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;

if tipopagamento.ItemIndex <> 0 then
begin
  if tipopagamento.ItemIndex <> 1 then
  begin
    if tipopagamento.ItemIndex <> 3 then
    begin
      if tipopagamento.ItemIndex <> 4 then
      begin
      dbedit11.Text := '';
      label5.Visible := false;
      dbedit11.Visible := false;
      end;
    end;
  end;
end;
end;

procedure TfrmVendaFechamento.Memo1Enter(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeColor := false;
frmprincipal.EvFocusColor1.ChangeFont := false;
end;

procedure TfrmVendaFechamento.Memo1Exit(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeColor := true;
frmprincipal.EvFocusColor1.ChangeFont := true;
end;

procedure TfrmVendaFechamento.TIPOPAGAMENTOChange(Sender: TObject);
begin
if tipopagamento.ItemIndex = 0 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '0';
end
else
begin
if tipopagamento.ItemIndex = 1 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '1';
end
else
begin
if tipopagamento.ItemIndex = 2 then
begin
TP.Text := '2';
end
else
begin
if tipopagamento.ItemIndex = 3 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '3';
end
else
begin
if tipopagamento.ItemIndex = 4 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '4';
end
else
begin
if tipopagamento.ItemIndex = 5 then
begin
TP.Text := '5';
end
else
begin
if tipopagamento.ItemIndex = 6 then
begin
TP.Text := '6';
end
else
begin
if tipopagamento.ItemIndex = 7 then
begin
TP.Text := '7';
end
else
begin
if tipopagamento.ItemIndex = 8 then
begin
TP.Text := '8';
end
else
begin
if tipopagamento.ItemIndex = 9 then
begin
TP.Text := '9';
end
else
begin
if tipopagamento.ItemIndex = 10 then
begin
TP.Text := '10';
end
else
begin
if tipopagamento.ItemIndex = 11 then
begin
TP.Text := '11';
end
else
begin
if tipopagamento.ItemIndex = 12 then
begin
TP.Text := '12';
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;

if tipopagamento.ItemIndex <> 0 then
begin
  if tipopagamento.ItemIndex <> 1 then
  begin
    if tipopagamento.ItemIndex <> 3 then
    begin
      if tipopagamento.ItemIndex <> 4 then
      begin
      dbedit11.Text := '';
      label5.Visible := false;
      dbedit11.Visible := false;
      end;
    end;
  end;
end;
end;

procedure TfrmVendaFechamento.DBEdit11Change(Sender: TObject);
begin
DBEDIT11.Text := FilterChars(DBEDIT11.Text,['/', '0'..'9']);
end;

procedure TfrmVendaFechamento.TIPOPAGAMENTOEnter(Sender: TObject);
begin
if tipopagamento.ItemIndex = 0 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '0';
end
else
begin
if tipopagamento.ItemIndex = 1 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '1';
end
else
begin
if tipopagamento.ItemIndex = 2 then
begin
TP.Text := '2';
end
else
begin
if tipopagamento.ItemIndex = 3 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '3';
end
else
begin
if tipopagamento.ItemIndex = 4 then
begin
label5.Visible := true;
dbedit11.Visible := true;
TP.Text := '4';
end
else
begin
if tipopagamento.ItemIndex = 5 then
begin
TP.Text := '5';
end
else
begin
if tipopagamento.ItemIndex = 6 then
begin
TP.Text := '6';
end
else
begin
if tipopagamento.ItemIndex = 7 then
begin
TP.Text := '7';
end
else
begin
if tipopagamento.ItemIndex = 8 then
begin
TP.Text := '8';
end
else
begin
if tipopagamento.ItemIndex = 9 then
begin
TP.Text := '9';
end
else
begin
if tipopagamento.ItemIndex = 10 then
begin
TP.Text := '10';
end
else
begin
if tipopagamento.ItemIndex = 11 then
begin
TP.Text := '11';
end
else
begin
if tipopagamento.ItemIndex = 12 then
begin
TP.Text := '12';
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;

procedure TfrmVendaFechamento.TIPOChange(Sender: TObject);
begin
if tipo.ItemIndex = 0 then
begin
edit2.Text := '0'; //Orcamento
end
else
begin
if tipo.ItemIndex = 1 then
begin
edit2.Text := '1';   // Venda
end
else
begin
if tipo.ItemIndex = 2 then
begin
edit2.Text := '2';   // Transformacao
end
end
end
end;

procedure TfrmVendaFechamento.TIPOExit(Sender: TObject);
begin
if tipo.ItemIndex = 0 then
begin
edit2.Text := '0'; //Orcamento
end
else
begin
if tipo.ItemIndex = 1 then
begin
edit2.Text := '1';   // Venda
end
else
begin
if tipo.ItemIndex = 2 then
begin
edit2.Text := '2';   // Transformacao
end
end
end
end;

procedure TfrmVendaFechamento.DESCONTOEnter(Sender: TObject);
begin
If (VALENTRADA.Text <> '0,00') And (DBCombobox1.Text = '') then
begin
Application.MessageBox('Tipo da Entrada deve ser informada, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
DBCombobox1.SetFocus ;
end;
end;

end.
