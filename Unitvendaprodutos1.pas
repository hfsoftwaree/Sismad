unit Unitvendaprodutos1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, EDBTime, Grids, DBGrids, xCalcltr, ToolEdit, CurrEdit, DB,
  IBCustomDataSet, IBQuery;

type
  TfrmVendaProdutos1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    EXP: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    ESSENCIA: TDBLookupComboBox;
    DBEDIT1: TEvDBZeroEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    ESSENCIATIPO: TDBLookupComboBox;
    Panel13: TPanel;
    DBEdit9: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    COMP: TEvDBNumEdit;
    LARG: TEvDBNumEdit;
    Panel6: TPanel;
    Panel10: TPanel;
    VALUNITARIO: TEvDBNumEdit;
    VALTOTAL1: TEvDBNumEdit;
    quantidade1: TEvDBNumEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    calculator: TCalculator;
    EDITDATA: TEvDBDateEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    TIPO: TComboBox;
    Panel14: TPanel;
    m3: TBitBtn;
    m2: TBitBtn;
    ml: TBitBtn;
    jg: TBitBtn;
    mc: TBitBtn;
    Edit11: TEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    Memo1: TMemo;
    Panel9: TPanel;
    desconto: TEvDBNumEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit15: TEdit;
    Bevel1: TBevel;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    Panel15: TPanel;
    Panel16: TPanel;
    EQTDE: TCurrencyEdit;
    EM3: TCurrencyEdit;
    Label2: TLabel;
    Panel17: TPanel;
    TOTPRODUTO: TEvDBNumEdit;
    Panel18: TPanel;
    UNIDADE: TDBComboBox;
    Edit14: TEdit;
    DataSource2: TDataSource;
    qtabela: TIBQuery;
    qtabelaCODDISCRIMINACAO: TIntegerField;
    qtabelaCODIGOFORNECEDOR: TFloatField;
    qtabelaESSENCIA: TIBStringField;
    qtabelaUNIDADE: TIBStringField;
    qtabelaQUANTIDADE: TFloatField;
    qtabelaVALUNITARIO: TFloatField;
    qtabelaVALTOTAL: TFloatField;
    qtabelaALIQICMS: TFloatField;
    qtabelaCODIGOPRODUTO: TFloatField;
    qtabelaSITUACAO_TRIBUTARIA: TIBStringField;
    qtabelaTOTALPRODUTO: TFloatField;
    qtabelaDATALANCAMENTO: TDateTimeField;
    qtabelaNFNUMERO: TFloatField;
    qtabelaESSENCIATIPO: TIBStringField;
    qtabelaCODIGOESSENCIA: TFloatField;
    qtabelaTRANSFORMADO: TFloatField;
    qtabelaTORALOTEESSENCIA: TIBStringField;
    qtabelaSITUACAO: TFloatField;
    qtabelaSITDATA: TDateTimeField;
    qtabelaSITHORA: TDateTimeField;
    qtabelaFORNECEDOR: TIBStringField;
    qtabelaCPF: TFloatField;
    qtabelaINSCRICAO: TIBStringField;
    qtabelaOBS: TIBStringField;
    qtabelaCOMPRIMENTO: TFloatField;
    qtabelaLARGURA: TFloatField;
    qtabelaEXPESSURA: TFloatField;
    qtabelaTOTALM3: TFloatField;
    qtabelaPLAQUETA: TFloatField;
    qtabelaOBSCODIGO: TFloatField;
    qtabelaVALORVENDAM3: TFloatField;
    qtabelaLUCRO: TFloatField;
    qtabelaVALORVENDA: TFloatField;
    qtabelaQTDEM2: TFloatField;
    qtabelaQTDEML: TFloatField;
    qtabelaVALORVENDAUN: TFloatField;
    qtabelaDESCONTOPERMITIDO: TFloatField;
    qtabelaVALORVENDAM31: TFloatField;
    qtabelaVALORVENDAM32: TFloatField;
    qtabelaVALORVENDAM33: TFloatField;
    qtabelaVALORVENDAM34: TFloatField;
    qtabelaVALORVENDAM35: TFloatField;
    qtabelaVALORVENDAUN1: TFloatField;
    qtabelaVALORVENDAUN2: TFloatField;
    qtabelaVALORVENDAUN3: TFloatField;
    qtabelaVALORVENDAUN4: TFloatField;
    qtabelaVALORVENDAUN5: TFloatField;
    qtabelaDESCONTOPERMITIDO1: TFloatField;
    qtabelaDESCONTOPERMITIDO2: TFloatField;
    qtabelaDESCONTOPERMITIDO3: TFloatField;
    qtabelaDESCONTOPERMITIDO4: TFloatField;
    qtabelaDESCONTOPERMITIDO5: TFloatField;
    qtabelaVALORVENDAM36: TFloatField;
    qtabelaVALORVENDAM37: TFloatField;
    qtabelaVALORVENDAUN6: TFloatField;
    qtabelaVALORVENDAUN7: TFloatField;
    qtabelaDESCONTOPERMITIDO6: TFloatField;
    qtabelaDESCONTOPERMITIDO7: TFloatField;
    qtabelaPROMOCAO: TIBStringField;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Edit6: TEdit;
    edit16: TCurrencyEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EXPExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIATIPOClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ESSENCIATIPOEnter(Sender: TObject);
    procedure COMPExit(Sender: TObject);
    procedure LARGExit(Sender: TObject);
    procedure VALTOTAL1Exit(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure COMPChange(Sender: TObject);
    procedure LARGChange(Sender: TObject);
    procedure EXPChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure COMPEnter(Sender: TObject);
    procedure LARGEnter(Sender: TObject);
    procedure EXPEnter(Sender: TObject);
    procedure VALUNITARIOEnter(Sender: TObject);
    procedure quantidade1Enter(Sender: TObject);
    procedure TIPOChange(Sender: TObject);
    procedure TIPOExit(Sender: TObject);
    procedure ESSENCIAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ESSENCIATIPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VALTOTALExit(Sender: TObject);
    procedure m3Click(Sender: TObject);
    procedure m2Click(Sender: TObject);
    procedure mlClick(Sender: TObject);
    procedure jgClick(Sender: TObject);
    procedure mcClick(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure descontoExit(Sender: TObject);
    procedure VALUNITARIOChange(Sender: TObject);
    procedure UNIDADEExit(Sender: TObject);
    procedure ESSENCIAExit(Sender: TObject);
    procedure ESSENCIATIPOExit(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaProdutos1: TfrmVendaProdutos1;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitEntradaSerrada,
  UnitVenda, Unitvendafechamento, UnitPrincipal;

{$R *.dfm}

procedure TfrmVendaProdutos1.BitBtn3Click(Sender: TObject);
begin
query1.Close;
qtabela.Close;
DM.TESTOQUE.cancel;
DM.TSaida_Discriminacao.cancel;
Close;
end;

procedure TfrmVendaProdutos1.BitBtn1Click(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8, total1: Real;
begin
if tipo.ItemIndex  = 0 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
begin
	if COMP.Text='0,00' then
   	begin
         Application.MessageBox('Comprimento deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         COMP.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (quantidade1.Text <> '0,00') and (COMP.Text <> '0,00')and (VALUNITARIO.Text  <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento da(s) peça(s)?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
edit4.Text := quantidade1.Text ;
edit5.Text := essencia.Text;
edit6.Text := essenciatipo.Text;
edit7.Text := comp.Text;
edit10.Text := valunitario.Text;
DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
dm.TSaida_Discriminacao['TIPOCODIGO'] := frmvenda.dbedit7.Text ;
dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := frmvenda.Edit5.Text ;
dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
if desconto.Text = '0,00' then DM.TSaida_Discriminacao['DESCONTO']:= '0';

  /////////////////soma para baixa no estoque
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT9.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

  if DM.TESTOQUE.RecordCount = 0 then
  begin
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := '0';
     DM.TESTOQUE['TOTALM3'] := '0';
     DM.TESTOQUE['ESSENCIA'] := ESSENCIA.Text ;
     DM.TESTOQUE['ESSENCIATIPO'] := ESSENCIATIPO.Text ;
     DM.TESTOQUE['CODIGOESSENCIA']:= DBEDIT5.Text;
     DM.TESTOQUE['CODIGOPRODUTO']:= DBEDIT9.Text;
     DM.TESTOQUE['COMPRIMENTO']:= COMP.Text;
     DM.TESTOQUE['LARGURA']:= LARG.Text;
     DM.TESTOQUE['EXPESSURA']:= EXP.Text;
     DM.TESTOQUE['QTDEM2']:= '0';
     DM.TESTOQUE['QTDEML']:= '0';

     DM.TESTOQUE['QUANTIDADE'] := DM.TESTOQUE['QUANTIDADE']-quantidade1.Text;
     DM.TESTOQUE['TOTALM3'] := DM.TESTOQUE['TOTALM3'] - VALTOTAL.Text;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE.RecordCount <> 0 then
  begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := quantidade1.Value + total5;
        total6 := valtotal.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end;
     end;
     end;
     end;

        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_Discriminacao.Append;

        quantidade1.Text := edit4.Text;
        essencia.KeyValue  := edit5.text;
        essenciatipo.KeyValue := edit6.text;
        comp.Text := edit7.Text;
        edit10.Text := '';
        valunitario.Text := edit10.Text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit14.text);
        dbedit10.Text := edit14.Text ;

        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;
        DBEDIT6.Text := frmvenda.FORNECEDOR.Text;
        DBEDIT2.Text := frmvenda.DBEdit7.Text;
        dbedit7.Text := frmvenda.EDIT5.Text;
        DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
        DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;
        tipo.SetFocus;
        end
        else
        begin
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        close;
        end;
tipo.SetFocus;
        end;
end;
end;


procedure TfrmVendaProdutos1.EXPExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma : Real;
begin
if exp.Text = '' then
begin
exp.Text := '0';
end
else
begin
edit9.Text := exp.Text;
if exp.Text > '0,500' then
begin
Application.MessageBox('Expessura informada invalida, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
exp.SetFocus;
end
else
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;

      vn1:= QUANTIDADE1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;

      vsoma := vn1 * vn2 * vn3 * vn4;

      VALTOTAL.Text := FloatToStr(vsoma);

if (comp.Text <> '0,00') and (larg.Text <> '0,000') and (exp.Text <> '0,000') then
begin
valtotal.TabStop := False;
valtotal.ReadOnly := true;
end
else
begin
valtotal.TabStop := true;
valtotal.ReadOnly := false;
end;
end;
end;
end;

procedure TfrmVendaProdutos1.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmVendaProdutos1.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmVendaProdutos1.ESSENCIAEnter(Sender: TObject);
begin
//ESSENCIA.DropDown;
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmVendaProdutos1.FormShow(Sender: TObject);
begin
UNIDADE.ItemIndex := 8;
dbedit10.Text := unidade.Text ;
DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;
DBEDIT6.Text := frmvenda.fornecedor.Text ; 


if frmvenda.desconto.Caption = '' then
begin
desconto.Enabled := true;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
               dm.QEssencia.Last;
    end;

with DM.QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO');
               SQL.Add('Where INATIVO_CODIGO =:codigo');
               SQL.Add('Order by NOMEGRAU');
               ParamByName('codigo').Text :='2';
               Open;
               dm.QSUBPRODUTOS.Last;
    end;

edit12.Text := quantidade1.Text;
//edit13.Text := valtotal.Text ;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'PEÇAS' then tipo.ItemIndex := 0;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'M3' then tipo.ItemIndex := 1;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'M2' then tipo.ItemIndex := 2;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'ML' then tipo.ItemIndex := 3;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'JG' then tipo.ItemIndex := 4;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'MC' then tipo.ItemIndex := 5;
end
else
begin
if frmvenda.desconto.Caption = '0,000 %' then
begin
desconto.Enabled := true;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
               dm.QEssencia.Last;
    end;

with DM.QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO');
               SQL.Add('Where INATIVO_CODIGO =:codigo');
               SQL.Add('Order by NOMEGRAU');
               ParamByName('codigo').Text :='2';
               Open;
               dm.QSUBPRODUTOS.Last;
    end;

edit12.Text := quantidade1.Text;
//edit13.Text := valtotal.Text ;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'PEÇAS' then tipo.ItemIndex := 0;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'M3' then tipo.ItemIndex := 1;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'M2' then tipo.ItemIndex := 2;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'ML' then tipo.ItemIndex := 3;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'JG' then tipo.ItemIndex := 4;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'MC' then tipo.ItemIndex := 5;
end
else
begin
if frmvenda.desconto.Caption <> '0,000 %' then
begin
desconto.Enabled := false;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
               dm.QEssencia.Last;
    end;

with DM.QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO');
               SQL.Add('Where INATIVO_CODIGO =:codigo');
               SQL.Add('Order by NOMEGRAU');
               ParamByName('codigo').Text :='2';
               Open;               
               dm.QSUBPRODUTOS.Last;
    end;

edit12.Text := quantidade1.Text;
//edit13.Text := valtotal.Text ;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'PEÇAS' then tipo.ItemIndex := 0;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'M3' then tipo.ItemIndex := 1;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'M2' then tipo.ItemIndex := 2;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'ML' then tipo.ItemIndex := 3;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'JG' then tipo.ItemIndex := 4;
IF DM.TSaida_Discriminacao['UNIDADE'] = 'MC' then tipo.ItemIndex := 5;
end;
end;
end;
end;

procedure TfrmVendaProdutos1.ESSENCIATIPOClick(Sender: TObject);
begin
if tipo.ItemIndex = 0 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
edit9.Text := exp.Text;
end
else
begin
if tipo.ItemIndex =1 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
edit8.Text := DM.QSUBPRODUTOS['LARG'];
edit9.Text := DM.QSUBPRODUTOS['EXP'];
//QUANTIDADE1.Text := '0,00';
//COMP.Text := '0,00';
//LARG.Text := '0,000';
//EXP.Text := '0,000';
end
else
begin
if tipo.ItemIndex =2 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =3 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
COMP.Text := DM.QSUBPRODUTOS['COMP'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =4 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
COMP.Text := DM.QSUBPRODUTOS['COMP'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =5 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
COMP.Text := DM.QSUBPRODUTOS['COMP'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end;
end;
end;
end;
end;
end;
end;


procedure TfrmVendaProdutos1.DBEdit2Exit(Sender: TObject);
begin
      bitbtn1.Click;

end;



procedure TfrmVendaProdutos1.ESSENCIATIPOEnter(Sender: TObject);
begin
//ESSENCIATIPO.DropDown;
if tipo.ItemIndex = 0 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =1 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
edit8.Text := DM.QSUBPRODUTOS['LARG'];
edit9.Text := DM.QSUBPRODUTOS['EXP'];
//COMP.Text := '0,00';
//LARG.Text := '0,000';
//EXP.Text := '0,000';
end
else
begin
if tipo.ItemIndex =2 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =3 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
COMP.Text := DM.QSUBPRODUTOS['COMP'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =4 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
COMP.Text := DM.QSUBPRODUTOS['COMP'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end
else
begin
if tipo.ItemIndex =5 then
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
COMP.Text := DM.QSUBPRODUTOS['COMP'];
LARG.Text := DM.QSUBPRODUTOS['LARG'];
EXP.Text := DM.QSUBPRODUTOS['EXP'];
end;
end;
end;
end;
end;
end;
end;


procedure TfrmVendaProdutos1.COMPExit(Sender: TObject);
begin
if COMP.Text = '0,00' then
begin
unidade.ItemIndex := unidade.Items.IndexOf('ML');
edit14.Text := 'ML';
dm.TSaida_Discriminacao['UNIDADE']:= edit14.Text ;
exit;
end
else
begin
if COMP.Text <> '0,00' then
begin
unidade.ItemIndex := unidade.Items.IndexOf('PC');
edit14.Text := 'PC';
dm.TSaida_Discriminacao['UNIDADE']:= edit14.Text ;
end
else
begin
if COMP.Text > '9,99' then
begin
Application.MessageBox('Comprimento informado invalido, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
comp.SetFocus;
end
end
end
end;

procedure TfrmVendaProdutos1.LARGExit(Sender: TObject);
begin
if larg.Text = '' then
begin
exit
end
else
begin
if larg.Text > '1,50' then
begin
Application.MessageBox('Largura informada invalido, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
larg.SetFocus;
end
end
end;


procedure TfrmVendaProdutos1.VALTOTAL1Exit(Sender: TObject);
begin
//bitbtn1.Click ;
end;

procedure TfrmVendaProdutos1.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8: Real;
begin
if tipo.ItemIndex = 0 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
begin
	if COMP.Text='0,00' then
   	begin
         Application.MessageBox('Comprimento deve ser informado pc!', 'Lançamento', mb_Ok + mb_IconInformation);
         COMP.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (quantidade1.Text <> '0,00') and(COMP.Text <> '0,00') then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;

      vsoma := vn1 * vn2 * vn3 * vn4;
//      vsoma1 := vn5 * vn2 * vn1 ;
      vsoma1 := vn5 * vn1 ;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      end;
end
else
begin

if tipo.ItemIndex = 1 then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;
      vn6:= VALTOTAL.Value;

      vsoma := vn1 * vn2 * vn3 * vn4;
      vsoma1 := vn6 * vn5;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      DM.TSaida_Discriminacao['TOTALM3']:= VALTOTAL.value;
      DM.TSaida_Discriminacao['VALTOTAL']:= VALTOTAL1.value;
end
else
begin

if tipo.ItemIndex = 2 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00') then
begin
DM.TSaida_Discriminacao['COMPRIMENTO']:= '0';
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;

      vsoma := vn1 * vn4;
      vsoma1 := vn1 * vn5;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      end;
end
else
begin

if tipo.ItemIndex = 3 then //ML
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and (quantidade1.Text <> '0,00') then
begin
      if comp.Text <> '0,00' then
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;

      vsoma := vn1 * vn2 * vn3 * vn4;
//      vsoma1 := vn5 * vn1;
      vsoma1 := vn5 * vn2 * vn1 ;
      vsoma2 := vn5*vn2;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      edit16.Text := FloatToStr(vsoma2);
      end
      else
      begin
      if comp.Text = '0,00' then
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;

      vsoma := vn1 * vn3 * vn4;
      vsoma1 := vn5 * vn1;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      end;

      end
      end;
end
else
begin

if tipo.ItemIndex = 4 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00') then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;

      vsoma := vn1 * vn2 * vn3 * vn4;
      vsoma1 := vn1 * vn5;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      end;
end
else
begin

if tipo.ItemIndex = 5 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00') then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= COMP.Value;
      vn3:= LARG.Value;
      vn4:= EXP.Value;
      vn5:= VALUNITARIO.Value;

//      vsoma := vn1 * vn3 * vn4;
      vsoma1 := vn1 * vn5;

      VALTOTAL.Text := '0';
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);      
      end;
      end;
      end;
end;
end;
end;
end;
end;

procedure TfrmVendaProdutos1.COMPChange(Sender: TObject);
begin
edit1.Text := comp.Text;
edit1.Text := StringReplace(edit1.Text, ',', '.', []);
end;

procedure TfrmVendaProdutos1.LARGChange(Sender: TObject);
begin
edit2.Text := larg.Text;
edit2.Text := StringReplace(edit2.Text, ',', '.', []);
end;

procedure TfrmVendaProdutos1.EXPChange(Sender: TObject);
begin
edit3.Text := exp.Text;
edit3.Text := StringReplace(edit3.Text, ',', '.', []);
end;

procedure TfrmVendaProdutos1.BitBtn2Click(Sender: TObject);
begin
Calculator.Execute;
end;

procedure TfrmVendaProdutos1.FormDestroy(Sender: TObject);
var total, total1, total2, total3 : Real;
begin
DM.QEssencia.Close;
DM.QSUBPRODUTOS.close;

   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + (frmvenda.nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(frmvenda.DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
//   DM.TSaida_Discriminacao.Open;

if DM.TSaida_Discriminacao.RecordCount <> 0 then
   begin
   frmvenda.tipolancamento.Enabled := false;
   frmvenda.data.Text := DM.TSaida_Discriminacao['DATALANCAMENTO'];
   frmvenda.BitBtn10.Enabled := True;
   frmvenda.BitBtn11.Enabled := True;
   frmvenda.BitBtn14.Enabled := True;
   frmvenda.BitBtn1.Enabled := True;
  
   frmvenda.BitBtn5.Enabled := True;
   frmvenda.BitBtn6.Enabled := True;
   frmvenda.BitBtn7.Enabled := True;
   frmvenda.BitBtn9.Enabled := True;

   total := 0;
   total1 := 0;
   total2 := 0;
   DM.TSaida_discriminacao.First;
   while not DM.TSaida_discriminacao.Eof do
     begin
        total := DM.TSaida_discriminacao['QUANTIDADE'] + total ;
        total1 := DM.TSaida_discriminacao['TOTALM3'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
        total3 := DM.TSaida_Discriminacao['DESCONTO'] + total3 ;
        DM.TSaida_discriminacao.Next;
     end;
    frmvenda.totprod.caption := FormatCurr('#0',total);
    frmvenda.totm3.caption := FormatCurr('#0.0000',total1);
    frmvenda.totvenda.caption := FormatCurr('#,0.00',total2);
    frmvenda.label27.Caption := FormatCurr('',total3);
    frmvenda.g.Caption := 'Itens > (' + IntToStr(DM.TSaida_Discriminacao.RecordCount)+ ')';

    DM.TSTATUS1.open;
    DM.TSTATUS1.Append ;
    DM.TSTATUS1['CODIGOSTATUS'] := '4';
    DM.TSTATUS1['PEDIDO'] := frmvenda.nota.Text ;
    DM.TSTATUS1['CODIGOCLIENTE'] := frmvenda.DBEDIT6.Text  ;
    DM.TSTATUS1['STATUS'] := 'Aguardando Fechamento';
    dm.TSTATUS1.Post;
    frmvenda.status1.Caption := DM.TSTATUS1['STATUS'];
    frmvenda.BitBtn14.Click ;
end
else
begin
if DM.TSaida_Discriminacao.RecordCount = 0 then
   begin
DM.TSaida_Discriminacao.Cancel;
DM.TSaida_Discriminacao.Close;
DM.QFornecedor.Close;
DM.QMunicipio.Close;
frmvenda.g.Caption := 'Itens ';
frmvenda.BitBtn4.Enabled := True;
frmvenda.BitBtn10.Enabled := false;
frmvenda.BitBtn11.Enabled := false;
frmvenda.BitBtn12.Enabled := false;
frmvenda.BitBtn5.Enabled := false;
frmvenda.BitBtn6.Enabled := false;
frmvenda.BitBtn7.Enabled := false;
frmvenda.Data.Clear;
frmvenda.dbedit6.Text := '';
frmvenda.nota.Text := '0';
frmvenda.fornecedor.Text := '';
frmvenda.data.Text:= '';
frmvenda.totprod.caption:= '';
frmvenda.totm3.caption:= '';
frmvenda.totvenda.caption:= '';
frmvenda.forma.Caption := '';
frmvenda.desconto.Caption := '';
frmvenda.totnota.Caption  := '';
frmvenda.edit4.Text := '';
frmvenda.tipolancamento.ItemIndex := -1;
frmvenda.FORMAPAGAMENTO.ItemIndex := -1;
frmvenda.TIPOPAGAMENTO.ItemIndex := -1;
    end;
end;
end;



procedure TfrmVendaProdutos1.COMPEnter(Sender: TObject);
begin
if edit7.Text = '' then
begin

end
else
begin
comp.Text := edit7.Text ;
comp.SelectAll;
end;

end;

procedure TfrmVendaProdutos1.LARGEnter(Sender: TObject);
begin
if edit8.Text = '' then
begin

end
else
begin
larg.Text := edit8.Text ;
larg.SelectAll;
end;

end;

procedure TfrmVendaProdutos1.EXPEnter(Sender: TObject);
begin
if edit9.Text = '' then
begin

end
else
begin
exp.Text := edit9.Text ;
exp.SelectAll;
end;
end;

procedure TfrmVendaProdutos1.VALUNITARIOEnter(Sender: TObject);
begin
//if edit10.Text = '' then
//begin

//end
//else
//begin
//valunitario.Text := edit10.Text ;
//valunitario.SelectAll;
//end;

//////////////////////////////////////////////////////////////////////////////////
if (dbedit5.Text <> '') and (dbedit9.Text <>'') then
begin
if tipo.ItemIndex = 0 then //PC
  begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    qtabela.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro 'inicio'
    qtabela.ParamByName('produto').Text  := dbedit9.Text; // preenche o parametro 'fim'
    qtabela.ParamByName('comp').Text := edit1.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('larg').Text := edit2.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('exp').Text := edit3.Text  ; // preenche o parametro 'fim'
    qtabela.Open;

if qtabela.RecordCount = 0 then
  begin
    if edit10.Text = '' then
    begin
          VALUNITARIO.ReadOnly := false;
    end
    else
    begin
      VALUNITARIO.Text := edit10.Text ;
      VALUNITARIO.SelectAll;
      end;
    end
    else
    begin
if qtabela.RecordCount <> 0 then
    begin
          if unidade.Text = 'M3' then
          begin
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit10.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.ReadOnly := false;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;

  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.ParamByName('comp').Text := edit1.Text ; // preenche o parametro
    query1.ParamByName('larg').Text := edit2.Text ; // preenche o parametro
    query1.ParamByName('exp').Text := edit3.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;

if tipo.ItemIndex = 1 then //M3
  begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto'); // linha para atender as condições
// AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'
    qtabela.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro 'inicio'
    qtabela.ParamByName('produto').Text  := dbedit9.Text; // preenche o parametro 'fim'
//    qtabela.ParamByName('comp').Text := edit1.Text  ; // preenche o parametro 'fim'
  //  qtabela.ParamByName('larg').Text := edit2.Text  ; // preenche o parametro 'fim'
//    qtabela.ParamByName('exp').Text := edit3.Text  ; // preenche o parametro 'fim'
    qtabela.Open;

if qtabela.RecordCount = 0 then
  begin
    if edit10.Text = '' then
    begin
          VALUNITARIO.ReadOnly := false;
    end
    else
    begin
      VALUNITARIO.Text := edit10.Text ;
      VALUNITARIO.SelectAll;
      end;
    end
    else
    begin
if qtabela.RecordCount <> 0 then
    begin
          if unidade.Text = 'M3' then
          begin
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit10.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;


  if (comp.Text <> '0') and(larg.Text <>'0')and(exp.Text <>'0') then
  begin
  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.ParamByName('comp').Text := edit1.Text ; // preenche o parametro
    query1.ParamByName('larg').Text := edit2.Text ; // preenche o parametro
    query1.ParamByName('exp').Text := edit3.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;
  end;

  if (comp.Text = '0') and(larg.Text ='0')and(exp.Text ='0') then
  begin
  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;

if tipo.ItemIndex = 2 then   //M2
begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    qtabela.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro 'inicio'
    qtabela.ParamByName('produto').Text  := dbedit9.Text; // preenche o parametro 'fim'
    qtabela.ParamByName('comp').Text := edit1.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('larg').Text := edit2.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('exp').Text := edit3.Text  ; // preenche o parametro 'fim'
    qtabela.Open;

if qtabela.RecordCount = 0 then
  begin
    if edit10.Text = '' then
    begin
          VALUNITARIO.ReadOnly := false;
    end
    else
    begin
      VALUNITARIO.Text := edit10.Text ;
      VALUNITARIO.SelectAll;
      end;
    end
    else
    begin
if qtabela.RecordCount <> 0 then
    begin
          if unidade.Text = 'M3' then
          begin
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;

  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;

if tipo.ItemIndex = 5 then    //OUTROS
begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto '); // linha para atender as condições
    qtabela.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro 'inicio'
    qtabela.ParamByName('produto').Text  := dbedit9.Text; // preenche o parametro 'fim'
    qtabela.Open;

if qtabela.RecordCount = 0 then
  begin
    if edit10.Text = '' then
    begin
          VALUNITARIO.ReadOnly := false;
    end
    else
    begin
      VALUNITARIO.Text := edit10.Text ;
      VALUNITARIO.SelectAll;
      end;
    end
    else
    begin
if qtabela.RecordCount <> 0 then
    begin
          if unidade.Text = 'M3' then
          begin
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit10.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;

  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;

if tipo.ItemIndex = 4 then //JG
  begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    qtabela.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro 'inicio'
    qtabela.ParamByName('produto').Text  := dbedit9.Text; // preenche o parametro 'fim'
    qtabela.ParamByName('comp').Text := edit1.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('larg').Text := edit2.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('exp').Text := edit3.Text  ; // preenche o parametro 'fim'
    qtabela.Open;

if qtabela.RecordCount = 0 then
  begin
    if edit10.Text = '' then
    begin
          VALUNITARIO.ReadOnly := false;
    end
    else
    begin
      VALUNITARIO.Text := edit10.Text ;
      VALUNITARIO.SelectAll;
      end;
    end
    else
    begin
if qtabela.RecordCount <> 0 then
    begin
          if unidade.Text = 'M3' then
          begin
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit10.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;

  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.ParamByName('comp').Text := edit1.Text ; // preenche o parametro
    query1.ParamByName('larg').Text := edit2.Text ; // preenche o parametro
    query1.ParamByName('exp').Text := edit3.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;

if tipo.ItemIndex = 3 then  //ML
  begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND COMPRIMENTO =:comp AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    qtabela.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro 'inicio'
    qtabela.ParamByName('produto').Text  := dbedit9.Text; // preenche o parametro 'fim'
    qtabela.ParamByName('comp').Text := edit1.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('larg').Text := edit2.Text  ; // preenche o parametro 'fim'
    qtabela.ParamByName('exp').Text := edit3.Text  ; // preenche o parametro 'fim'
    qtabela.Open;

if qtabela.RecordCount = 0 then
  begin
    if edit10.Text = '' then
    begin
          VALUNITARIO.ReadOnly := false;
    end
    else
    begin
      VALUNITARIO.Text := edit10.Text ;
      VALUNITARIO.SelectAll;
      end;
    end
    else
    begin
if qtabela.RecordCount <> 0 then
    begin
          if unidade.Text = 'M3' then
          begin
          VALUNITARIO.ReadOnly := True;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit10.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.ReadOnly := false;//////////////////////////////////////////////////////////////////////////////////////////////////
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;

  /////////////////consulta estoque
  with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select QUANTIDADE, TOTALM3');
    query1.SQL.Add('from ESTOQUE');
    query1.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto AND LARGURA =:larg AND EXPESSURA =:exp'); // linha para atender as condições
    query1.ParamByName('essencia').Text := dbedit5.Text ; // preenche o parametro
    query1.ParamByName('produto').Text := dbedit9.Text ; // preenche o parametro
    query1.ParamByName('larg').Text := edit2.Text ; // preenche o parametro
    query1.ParamByName('exp').Text := edit3.Text ; // preenche o parametro
    query1.Open;

  if query1.RecordCount <> 0 then
  begin
  EQTDE.Text := query1['QUANTIDADE'];
  EM3.Text := query1['TOTALM3'];
  end
  else
  begin
  EQTDE.Text := '0';
  EM3.Text := '0';
  end;
  end;
  end;

  end;
end;


procedure TfrmVendaProdutos1.quantidade1Enter(Sender: TObject);
begin
if edit4.Text = '' then
begin

end
else
begin
quantidade1.Text := edit4.Text ;
quantidade1.SelectAll;
end;
end;


procedure TfrmVendaProdutos1.TIPOChange(Sender: TObject);
begin
//dbedit10.Text := tipo.Text;
    if tipo.ItemIndex = 0 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('PC');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := true;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled  := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    bitbtn1.Visible := true;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := false;
    mc.Visible := false;
    memo1.Lines.Text := '';
    end
    else
    begin
    if tipo.ItemIndex = 1 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('M3');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := true;
    larg.Enabled  := true;
    exp.Enabled  := true;
    valunitario.Enabled := true;
    valtotal.TabStop := true;
    valtotal.ReadOnly := false;
//    QUANTIDADE1.Text :='0,00';
  //  COMP.Text := '0,00';
//    LARG.Text := '0,000';
  //  EXP.Text := '0,000';
    bitbtn1.Visible :=false;
    m3.Visible := true;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := false;
        mc.Visible := false;
        memo1.Lines.Text := 'Para inserir valor no campo "TOTAL M3", não informe valores nos campos: (Quantidade, Comprimento, Largura, Expessura).'; 
    end
    else
    begin
    if tipo.ItemIndex = 2 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('M2');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := false;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    COMP.Text := '0,00';
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := true;
    ml.Visible := false;
    jg.Visible := false;
        mc.Visible := false;
            memo1.Lines.Text := '';
    end
    else
    begin
    if tipo.ItemIndex = 3 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('ML');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := true;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    COMP.Text := '0,00';
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := true;
    jg.Visible := false;
        mc.Visible := false;
            memo1.Lines.Text := '';
    end
    else
    begin
    if tipo.ItemIndex = 4 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('JG');    
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := false;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    COMP.Text := '0,00';
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := true;
        mc.Visible := false;
            memo1.Lines.Text := '';
    end
    else
    begin
    if tipo.ItemIndex = 5 then
    begin
    essencia.KeyValue := 'DIVERSOS';
    DM.TSaida_Discriminacao['ESSENCIA']:='DIVERSOS';
    dbedit5.Text := '87';
    unidade.ItemIndex := unidade.Items.IndexOf('UN');
    quantidade1.Enabled := true;
    essencia.Enabled  := false;
    essenciatipo.Enabled  := true;
    comp.Enabled  := false;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled  := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := false;
        mc.Visible := true;
            memo1.Lines.Text := '';
    end;
    end;
end;
end;
end;
end;
end;

procedure TfrmVendaProdutos1.TIPOExit(Sender: TObject);
begin
//dbedit10.Text := tipo.Text;

    if tipo.ItemIndex = 0 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('PC');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := true;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled  := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    bitbtn1.Visible := true;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := false;
    mc.Visible := false;
    end
    else
    begin
    if tipo.ItemIndex = 1 then
    begin
        unidade.ItemIndex := unidade.Items.IndexOf('M3');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := true;
    larg.Enabled  := true;
    exp.Enabled  := true;
    valunitario.Enabled := true;
    valtotal.TabStop := true;
    valtotal.ReadOnly := false;
//    QUANTIDADE1.Text :='0,00';
  //  COMP.Text := '0,00';
//    LARG.Text := '0,000';
  //  EXP.Text := '0,000';
    bitbtn1.Visible := false;
    m3.Visible :=true;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := false;
        mc.Visible := false;
    end
    else
    begin
    if tipo.ItemIndex = 2 then
    begin
    unidade.ItemIndex := unidade.Items.IndexOf('M2');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := false;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    COMP.Text := '0,00';
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := true;
    ml.Visible := false;
    jg.Visible := false;
        mc.Visible := false;
    end
    else
    begin
    if tipo.ItemIndex = 3 then
    begin
//        unidade.ItemIndex := unidade.Items.IndexOf('ML');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := true;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    COMP.Text := '0,00';
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := true;
    jg.Visible := false;
        mc.Visible := false;
    end
    else
    begin
    if tipo.ItemIndex = 4 then
    begin
        unidade.ItemIndex := unidade.Items.IndexOf('JG');
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
    essenciatipo.Enabled  := true;
    comp.Enabled  := false;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    COMP.Text := '0,00';
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := true;
        mc.Visible := false;
    end
    else
    begin
    if tipo.ItemIndex = 5 then
    begin
    essencia.KeyValue := 'DIVERSOS';
    DM.TSaida_Discriminacao['ESSENCIA']:='DIVERSOS';
    dbedit5.Text := '87';    
    unidade.ItemIndex := unidade.Items.IndexOf('UN');
    quantidade1.Enabled := true;
    essencia.Enabled  := false;
    essenciatipo.Enabled  := true;
    comp.Enabled  := false;
    larg.Enabled  := false;
    exp.Enabled  := false;
    valunitario.Enabled  := true;
    valtotal.TabStop := false;
    valtotal.ReadOnly := true;
    bitbtn1.Visible := false;
    m3.Visible :=false;
    m2.Visible := false;
    ml.Visible := false;
    jg.Visible := false;
        mc.Visible := true;
    end;
    end;
end;
end;
end;
end;
end;

procedure TfrmVendaProdutos1.ESSENCIAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essencia.DropDown;
end;

procedure TfrmVendaProdutos1.ESSENCIATIPOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essenciatipo.DropDown;
end;

procedure TfrmVendaProdutos1.VALTOTALExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8: Real;
begin
if tipo.ItemIndex = 1 then
begin
	if ESSENCIA.Text ='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
    begin
	if ESSENCIATIPO.Text ='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;

    end;
    end;
    end;

if (ESSENCIA.Text <> '')and(ESSENCIATIPO.Text <> '')then
begin
DM.TSaida_Discriminacao['QUANTIDADE'] := '0';
DM.TSaida_Discriminacao['COMPRIMENTO']:= '0';
DM.TSaida_Discriminacao['LARGURA']:= '0';
DM.TSaida_Discriminacao['EXPESSURA']:= '0';

      vn1:=0;
      vn5:=0;

      vsoma:=0;

      vn1:= VALTOTAL.Value;
      vn5:= VALUNITARIO.Value;

      vsoma := vn1 * vn5;

      VALTOTAL1.Text := FloatToStr(vsoma);
end
end;

procedure TfrmVendaProdutos1.m3Click(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8, total1: Real;
begin
if tipo.ItemIndex = 1 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end
    else
begin
	if VALTOTAL.Text='0,0000' then
   	begin
         Application.MessageBox('Total(M3) deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALTOTAL.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (VALUNITARIO.Text <> '0,00')and(VALTOTAL.Text <> '0,0000') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
edit5.Text := essencia.Text;
edit6.Text := essenciatipo.Text;
edit4.Text := quantidade1.Text ;
edit7.Text := comp.Text;
edit8.Text := larg.Text;
edit9.Text := exp.Text;
edit10.Text := valunitario.Text;
DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
dm.TSaida_Discriminacao['TIPOCODIGO'] := frmvenda.dbedit7.Text ;
dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := frmvenda.Edit5.Text ;
dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
if desconto.Text = '0,00' then DM.TSaida_Discriminacao['DESCONTO']:= '0';

  /////////////////soma para baixa no estoque
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT9.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

    if DM.TESTOQUE.RecordCount = 0 then
  begin
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := '0';
     DM.TESTOQUE['TOTALM3'] := '0';
     DM.TESTOQUE['ESSENCIA'] := ESSENCIA.Text ;
     DM.TESTOQUE['ESSENCIATIPO'] := ESSENCIATIPO.Text ;
     DM.TESTOQUE['CODIGOESSENCIA']:= DBEDIT5.Text;
     DM.TESTOQUE['CODIGOPRODUTO']:= DBEDIT9.Text;
     DM.TESTOQUE['COMPRIMENTO']:= COMP.Text;
     DM.TESTOQUE['LARGURA']:= LARG.Text;
     DM.TESTOQUE['EXPESSURA']:= EXP.Text;
     DM.TESTOQUE['QTDEM2']:= '0';
     DM.TESTOQUE['QTDEML']:= '0';

     DM.TESTOQUE['QUANTIDADE'] := DM.TESTOQUE['QUANTIDADE']-quantidade1.Text;
     DM.TESTOQUE['TOTALM3'] := DM.TESTOQUE['TOTALM3'] - VALTOTAL.Text;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     end
     else
     begin
  if DM.TESTOQUE.RecordCount <> 0 then
  begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := quantidade1.Value + total5;
        total6 := valtotal.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end;
     end;
     end;


        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_Discriminacao.Append;

        quantidade1.Text := edit4.Text;
        essencia.KeyValue  := edit5.text;
        essenciatipo.KeyValue := edit6.text;
        comp.Text := edit7.Text;
        larg.Text := edit8.Text;
        exp.Text := edit9.Text;
        valunitario.Text := edit10.Text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit14.text);
        dbedit10.Text := edit14.Text ;

        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;
        DBEDIT6.Text := frmvenda.FORNECEDOR.Text;
        DBEDIT2.Text := frmvenda.DBEdit7.Text;
        dbedit7.Text := frmvenda.EDIT5.Text;
        DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
        DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;        
        tipo.SetFocus;
        end
        else
        begin
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        close;
        end;
        end;
TIPO.SetFocus ;
        end;
        end;
end;

procedure TfrmVendaProdutos1.m2Click(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8, total1: Real;
begin
if tipo.ItemIndex = 2 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and (quantidade1.Text <> '0,00')and(VALUNITARIO.Text  <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TSaida_Discriminacao['COMPRIMENTO']:= '0,00';
edit4.Text := quantidade1.Text ;
edit5.Text := essencia.Text;
edit6.Text := essenciatipo.Text;
edit7.Text := comp.Text;
edit10.Text := valunitario.Text;
DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
dm.TSaida_Discriminacao['TIPOCODIGO'] := frmvenda.dbedit7.Text ;
dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := frmvenda.Edit5.Text ;
dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
if desconto.Text = '0,00' then DM.TSaida_Discriminacao['DESCONTO']:= '0';

  /////////////////soma para baixa no estoque
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT9.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

    if DM.TESTOQUE.RecordCount = 0 then
  begin
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := '0';
     DM.TESTOQUE['TOTALM3'] := '0';
     DM.TESTOQUE['ESSENCIA'] := ESSENCIA.Text ;
     DM.TESTOQUE['ESSENCIATIPO'] := ESSENCIATIPO.Text ;
     DM.TESTOQUE['CODIGOESSENCIA']:= DBEDIT5.Text;
     DM.TESTOQUE['CODIGOPRODUTO']:= DBEDIT9.Text;
     DM.TESTOQUE['COMPRIMENTO']:= COMP.Text;
     DM.TESTOQUE['LARGURA']:= LARG.Text;
     DM.TESTOQUE['EXPESSURA']:= EXP.Text;
     DM.TESTOQUE['QTDEM2']:= '0';
     DM.TESTOQUE['QTDEML']:= '0';

     DM.TESTOQUE['QUANTIDADE'] := DM.TESTOQUE['QUANTIDADE']-quantidade1.Text;
     DM.TESTOQUE['TOTALM3'] := DM.TESTOQUE['TOTALM3'] - VALTOTAL.Text;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     end
     else
     begin
  if DM.TESTOQUE.RecordCount <> 0 then
  begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := quantidade1.Value + total5;
        total6 := valtotal.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end;
     end;
     end;

        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_Discriminacao.Append;

        quantidade1.Text := edit4.Text;
        essencia.KeyValue  := edit5.text;
        essenciatipo.KeyValue := edit6.text;
        comp.Text := edit7.Text;
        valunitario.Text := edit10.Text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit14.text);
        dbedit10.Text := edit14.Text ;

        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;
        DBEDIT6.Text := frmvenda.FORNECEDOR.Text;
        DBEDIT2.Text := frmvenda.DBEdit7.Text;
        dbedit7.Text := frmvenda.EDIT5.Text;
        DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
        DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;
        tipo.SetFocus;
        end
        else
        begin
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        close;
        end;
        end;
        TIPO.SetFocus ;
        end;
end;
END;

procedure TfrmVendaProdutos1.mlClick(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8, total1: Real;
begin
if tipo.ItemIndex = 3 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and (quantidade1.Text <> '0,00')and (VALUNITARIO.Text <> '0,00') then
begin
//DM.TSaida_Discriminacao['COMPRIMENTO']:= '0,00';
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
edit4.Text := quantidade1.Text ;
edit5.Text := essencia.Text;
edit6.Text := essenciatipo.Text;
edit7.Text := comp.Text;
edit10.Text := valunitario.Text;
DM.TSaida_Discriminacao['VALUNITARIO']:= edit16.Text;
DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
dm.TSaida_Discriminacao['TIPOCODIGO'] := frmvenda.dbedit7.Text ;
dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := frmvenda.Edit5.Text ;
dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
if desconto.Text = '0,00' then DM.TSaida_Discriminacao['DESCONTO']:= '0';

  /////////////////soma para baixa no estoque
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT9.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

    if DM.TESTOQUE.RecordCount = 0 then
  begin
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := '0';
     DM.TESTOQUE['TOTALM3'] := '0';
     DM.TESTOQUE['ESSENCIA'] := ESSENCIA.Text ;
     DM.TESTOQUE['ESSENCIATIPO'] := ESSENCIATIPO.Text ;
     DM.TESTOQUE['CODIGOESSENCIA']:= DBEDIT5.Text;
     DM.TESTOQUE['CODIGOPRODUTO']:= DBEDIT9.Text;
     DM.TESTOQUE['COMPRIMENTO']:= COMP.Text;
     DM.TESTOQUE['LARGURA']:= LARG.Text;
     DM.TESTOQUE['EXPESSURA']:= EXP.Text;
     DM.TESTOQUE['QTDEM2']:= '0';
     DM.TESTOQUE['QTDEML']:= '0';

     DM.TESTOQUE['QUANTIDADE'] := DM.TESTOQUE['QUANTIDADE']-quantidade1.Text;
     DM.TESTOQUE['TOTALM3'] := DM.TESTOQUE['TOTALM3'] - VALTOTAL.Text;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     end
     else
     begin
  if DM.TESTOQUE.RecordCount <> 0 then
  begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := quantidade1.Value + total5;
        total6 := valtotal.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end;
     end;
     end;

        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_Discriminacao.Append;

        quantidade1.Text := edit4.Text;
        essencia.KeyValue  := edit5.text;
        essenciatipo.KeyValue := edit6.text;
        comp.Text := edit7.Text;
        valunitario.Text := edit10.Text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit14.text);
        dbedit10.Text := edit14.Text ;        

        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;
        DBEDIT6.Text := frmvenda.FORNECEDOR.Text;
        DBEDIT2.Text := frmvenda.DBEdit7.Text;
        dbedit7.Text := frmvenda.EDIT5.Text;
        DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
        DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;        
        tipo.SetFocus;
        end
        else
        begin
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        close;
        end;
        end;
        TIPO.SetFocus ;
end;
end;
end;

procedure TfrmVendaProdutos1.jgClick(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8, total1: Real;
begin
if tipo.ItemIndex = 4 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
    begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00') and (VALUNITARIO.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
edit4.Text := quantidade1.Text ;
edit5.Text := essencia.Text;
edit6.Text := essenciatipo.Text;
edit7.Text := comp.Text;
edit10.Text := valunitario.Text;
DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
dm.TSaida_Discriminacao['TIPOCODIGO'] := frmvenda.dbedit7.Text ;
dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := frmvenda.Edit5.Text ;
dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
if desconto.Text = '0,00' then DM.TSaida_Discriminacao['DESCONTO']:= '0';

  /////////////////soma para baixa no estoque
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT9.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

    if DM.TESTOQUE.RecordCount = 0 then
  begin
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := '0';
     DM.TESTOQUE['TOTALM3'] := '0';
     DM.TESTOQUE['ESSENCIA'] := ESSENCIA.Text ;
     DM.TESTOQUE['ESSENCIATIPO'] := ESSENCIATIPO.Text ;
     DM.TESTOQUE['CODIGOESSENCIA']:= DBEDIT5.Text;
     DM.TESTOQUE['CODIGOPRODUTO']:= DBEDIT9.Text;
     DM.TESTOQUE['COMPRIMENTO']:= COMP.Text;
     DM.TESTOQUE['LARGURA']:= LARG.Text;
     DM.TESTOQUE['EXPESSURA']:= EXP.Text;
     DM.TESTOQUE['QTDEM2']:= '0';
     DM.TESTOQUE['QTDEML']:= '0';

     DM.TESTOQUE['QUANTIDADE'] := DM.TESTOQUE['QUANTIDADE']-quantidade1.Text;
     DM.TESTOQUE['TOTALM3'] := DM.TESTOQUE['TOTALM3'] - VALTOTAL.Text;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     end
     else
     begin
  if DM.TESTOQUE.RecordCount <> 0 then
  begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := quantidade1.Value + total5;
        total6 := valtotal.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end;
     end;
     end;

        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_Discriminacao.Append;

        quantidade1.Text := edit4.Text;
        essencia.KeyValue  := edit5.text;
        essenciatipo.KeyValue := edit6.text;
        comp.Text := edit7.Text;
        valunitario.Text := edit10.Text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit14.text);
        dbedit10.Text := edit14.Text ;

        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;
        DBEDIT6.Text := frmvenda.FORNECEDOR.Text;
        DBEDIT2.Text := frmvenda.DBEdit7.Text;
        dbedit7.Text := frmvenda.EDIT5.Text;
        DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
        DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;        
        tipo.SetFocus;
        end
        else
        begin
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        close;
        end;
        end;
tipo.SetFocus;
        end;
end;
end;

procedure TfrmVendaProdutos1.mcClick(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
var total3, total4, total5, total6, total7, total8, total1: Real;
begin
if tipo.ItemIndex = 5 then
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
    end
    else
begin
	if ESSENCIATIPO.Text='' then
   	begin
         Application.MessageBox('Produto deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if quantidade1.Text='0,00' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00')and (VALUNITARIO.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
edit4.Text := quantidade1.Text ;
edit5.Text := essencia.Text;
edit6.Text := essenciatipo.Text;
edit7.Text := comp.Text;
edit10.Text := valunitario.Text;
DM.TSaida_Discriminacao['DATALANCAMENTO']:= frmvenda.data.Text;
DM.TSaida_Discriminacao['FONECONTATO']:= frmvenda.Edit4.Text;
dm.TSaida_Discriminacao['TIPOCODIGO'] := frmvenda.dbedit7.Text ;
dm.TSaida_Discriminacao['TIPOLANCAMENTO'] := frmvenda.Edit5.Text ;
dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '1';
dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Aguardando Fechamento';
if desconto.Text = '0,00' then DM.TSaida_Discriminacao['DESCONTO']:= '0';

  /////////////////soma para baixa no estoque
  DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (DBEDIT5.Text)+ ' and CODIGOPRODUTO = ' + (DBEDIT9.Text) + 'and COMPRIMENTO = ' + (EDIT1.Text)+ 'and LARGURA = ' + (EDIT2.Text)+ 'and EXPESSURA = ' + (EDIT3.Text);
  DM.TESTOQUE.Filtered := True;
  DM.TESTOQUE.Open;

    if DM.TESTOQUE.RecordCount = 0 then
  begin
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := '0';
     DM.TESTOQUE['TOTALM3'] := '0';
     DM.TESTOQUE['ESSENCIA'] := ESSENCIA.Text ;
     DM.TESTOQUE['ESSENCIATIPO'] := ESSENCIATIPO.Text ;
     DM.TESTOQUE['CODIGOESSENCIA']:= DBEDIT5.Text;
     DM.TESTOQUE['CODIGOPRODUTO']:= DBEDIT9.Text;
     DM.TESTOQUE['COMPRIMENTO']:= COMP.Text;
     DM.TESTOQUE['LARGURA']:= LARG.Text;
     DM.TESTOQUE['EXPESSURA']:= EXP.Text;
     DM.TESTOQUE['QTDEM2']:= '0';
     DM.TESTOQUE['QTDEML']:= '0';

     DM.TESTOQUE['QUANTIDADE'] := DM.TESTOQUE['QUANTIDADE']-quantidade1.Text;
     DM.TESTOQUE['TOTALM3'] := DM.TESTOQUE['TOTALM3'] - VALTOTAL.Text;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     end
     else
     begin
  if DM.TESTOQUE.RecordCount <> 0 then
  begin
  total3 := 0;
  total4 := 0;
  total5:=0;
  total6 :=0;

   DM.TESTOQUE.Prior;
   while not DM.TESTOQUE.Eof do
     begin
        total3 := DM.TESTOQUE['QUANTIDADE'] + total3 ;
        total4 := DM.TESTOQUE['TOTALM3'] + total4 ;
        total5 := quantidade1.Value + total5;
        total6 := valtotal.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 - total5;
     DM.TESTOQUE['TOTALM3'] := total4 - total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     end;
     end;
     end;

        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_Discriminacao.Append;
        quantidade1.Text := edit4.Text;
        essencia.KeyValue  := edit5.text;
        essenciatipo.KeyValue := edit6.text;
        valunitario.Text := edit10.Text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit14.text);
        dbedit10.Text := edit14.Text ;        

        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;
        DBEDIT6.Text := frmvenda.FORNECEDOR.Text;
        DBEDIT2.Text := frmvenda.DBEdit7.Text;
        dbedit7.Text := frmvenda.EDIT5.Text;
        DBEDIT11.Text := frmvenda.FORMAPAGAMENTO.Text ;
        DBEDIT12.Text := frmvenda.TIPOPAGAMENTO.Text ;        
        tipo.SetFocus;
        end
        else
        begin
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        close;
        end;
        end;
        tipo.SetFocus ;
        end;
        end;
end;

procedure TfrmVendaProdutos1.Memo1Enter(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeColor := false;
frmprincipal.EvFocusColor1.ChangeFont := false;
end;

procedure TfrmVendaProdutos1.Memo1Exit(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeColor := true;
frmprincipal.EvFocusColor1.ChangeFont := true;
end;

procedure TfrmVendaProdutos1.descontoExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vn7, vn8, vn9, vn10, vsoma, vsoma1, vsoma2, vsoma3, vsoma4: Real;
begin
if desconto.Text = '0,00' then
begin
edit15.Text := '0,00';
end;
////////////////////////////////////////////////////////
if tipo.ItemIndex = 0 then
begin
if desconto.Text <> '0,00' then
  begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DINHEIRO') then
     begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CARTAO DEBITO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CHEQUE') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DEP.CONTA') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A PRAZO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO2'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin

      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end;
      end;
      end;
      end;
      end;
end;

if desconto.Text = '0,00' then
  begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;

      vsoma1:=0;

      vn1:= quantidade1.Value;
      vn2:= comp.Value;
      larg.Value ;
      exp.Value ;
      vn5:= VALUNITARIO.Value;

      vsoma1 := vn5 * vn1;

      VALTOTAL1.Text := FloatToStr(vsoma1);
  end;
end;
///////////////////////////////////////////////////////////////
if tipo.ItemIndex = 1 then
begin
if desconto.Text <> '0,00' then
  begin
     if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DINHEIRO') then
     begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= valtotal.Value;
      vn4:= valtotal1.Value;

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn2/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CARTAO DEBITO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= valtotal.Value;
      vn4:= valtotal1.Value;

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn2/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CHEQUE') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DEP.CONTA') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A PRAZO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO2'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= valtotal.Value;
      vn4:= valtotal1.Value;

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn2/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end;
      end;
      end;
      end;
      end;
end;

if desconto.Text = '0,00' then
  begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= valtotal.Value;
      vn4:= valtotal1.Value;

      vsoma := vn3*vn1;
      VALTOTAL1.Text := FloatToStr(vsoma);
  end;
end;
///////////////////////////////////////////////////////////////
if tipo.ItemIndex = 2 then
begin
if desconto.Text <> '0,00' then
  begin
     if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DINHEIRO') then
     begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= quantidade1.Value;
      vn4:= valtotal1.Value;

      vsoma := vn1*vn3;
      vsoma1 := vsoma*vn2/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CARTAO DEBITO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= quantidade1.Value;
      vn4:= valtotal1.Value;

      vsoma := vn1*vn3;
      vsoma1 := vsoma*vn2/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CHEQUE') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DEP.CONTA') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A PRAZO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO2'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= quantidade1.Value;
      vn4:= valtotal1.Value;

      vsoma := vn1*vn3;
      vsoma1 := vsoma*vn2/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end;
      end;
      end;
      end;
      end;
end;

if desconto.Text = '0,00' then
  begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= valunitario.Value;
      vn2:= desconto.Value;
      vn3:= quantidade1.Value;
      vn4:= valtotal1.Value;

      vsoma := vn1*vn3;
      VALTOTAL1.Text := FloatToStr(vsoma);
  end;
end;
///////////////////////////////////////////////////////////////
if tipo.ItemIndex = 3 then
begin
if desconto.Text <> '0,00' then
  begin
     if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DINHEIRO') then
     begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CARTAO DEBITO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CHEQUE') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DEP.CONTA') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A PRAZO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO2'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end;
      end;
      end;
      end;
      end;
end;

if desconto.Text = '0,00' then
  begin
      if comp.Text = '0,00' then
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma1:=0;
      vn1:= quantidade1.Value;
      vn2:= comp.Value;
      larg.Value ;
      exp.Value ;
      vn5:= VALUNITARIO.Value;
      vsoma1 := vn5 * vn1;
      VALTOTAL1.Text := FloatToStr(vsoma1);
      end
      else
      begin
      if comp.Text <> '0,00' then
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma1:=0;
      vn1:= quantidade1.Value;
      vn2:= comp.Value;
      larg.Value ;
      exp.Value ;
      vn5:= VALUNITARIO.Value;
      vsoma1 := vn5 * vn2 * vn1;
      VALTOTAL1.Text := FloatToStr(vsoma1);
      end
      end
  end;
end;
///////////////////////////////////////////////////////////////
if tipo.ItemIndex = 4 then
begin
if desconto.Text <> '0,00' then
  begin
     if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DINHEIRO') then
     begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CARTAO DEBITO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CHEQUE') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DEP.CONTA') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A PRAZO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO2'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end;
      end;
      end;
      end;
      end;
end;

if desconto.Text = '0,00' then
  begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma1:=0;
      vn1:= quantidade1.Value;
      vn2:= comp.Value;
      larg.Value ;
      exp.Value ;
      vn5:= VALUNITARIO.Value;
      vsoma1 := vn5 * vn1;
      VALTOTAL1.Text := FloatToStr(vsoma1);
  end;
end;
///////////////////////////////////////////////////////////////
if tipo.ItemIndex = 5 then
begin
if desconto.Text <> '0,00' then
  begin
     if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DINHEIRO') then
     begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CARTAO DEBITO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'CHEQUE') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A VISTA') and (frmvenda.TIPOPAGAMENTO.Text = 'DEP.CONTA') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO1'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn2*vn1;
      vsoma1 := vsoma*vn4/100;
//      edit15.Text := FloatToStr(vsoma1);
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end
      else
      begin
  if (frmvenda.FORMAPAGAMENTO.Text = 'A PRAZO') then
  begin
     if desconto.Value > qtabela['DESCONTOPERMITIDO2'] then
   	 begin
      Application.MessageBox('Desconto superior ao permitido, Verífique!', 'Lançamento de produtos', mb_Ok + mb_IconInformation);
      DESCONTO.SetFocus;
      end
      else
      begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;

      vsoma:=0;
      vsoma1:=0;

      vn1:= (quantidade1.Value);
      vn2:= (comp.Value);
      vn3:=(valunitario.Value);
      vn4:=(desconto.Value );

      vsoma := vn3*vn1;
      vsoma1 := vsoma*vn4/100;
      VALTOTAL1.Text := FloatToStr(vsoma-vsoma1);
      end;
      end;
      end;
      end;
      end;
      end;
end;

if desconto.Text = '0,00' then
  begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma1:=0;
      vn1:= quantidade1.Value;
      vn2:= comp.Value;
      larg.Value ;
      exp.Value ;
      vn5:= VALUNITARIO.Value;
      vsoma1 := vn5 * vn1;
      VALTOTAL1.Text := FloatToStr(vsoma1);
  end;
end;
end;

procedure TfrmVendaProdutos1.VALUNITARIOChange(Sender: TObject);
begin
edit13.Text := valunitario.Text;
edit13.Text := StringReplace(edit13.Text, ',', '.', []);
end;

procedure TfrmVendaProdutos1.UNIDADEExit(Sender: TObject);
begin
if UNIDADE.Text = '' then
begin
EDIT14.Text := '';
end
else
begin
EDIT14.Text := UNIDADE.Text;
end;
end;

procedure TfrmVendaProdutos1.ESSENCIAExit(Sender: TObject);
begin
if DM.TSaida_Discriminacao['ESSENCIA']= null then DM.TSaida_Discriminacao['ESSENCIA']:= edit5.text;
end;

procedure TfrmVendaProdutos1.ESSENCIATIPOExit(Sender: TObject);
begin
if DM.TSaida_Discriminacao['ESSENCIATIPO']= null then DM.TSaida_Discriminacao['ESSENCIATIPO']:= edit6.text;
end;

end.

