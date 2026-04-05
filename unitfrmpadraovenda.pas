unit unitfrmpadraovenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, EDBTime, Grids, DBGrids, ToolEdit, CurrEdit, xCalcltr, ComCtrls,
  DB, IBCustomDataSet, IBQuery, IBTable, CJVLed, Gauges;

type
  Tfrmpadraovenda = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Calculator: TCalculator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    Edit9: TEdit;
    Panel7: TPanel;
    EXP: TEvDBNumEdit;
    ESSENCIA: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    ESSENCIATIPO: TDBLookupComboBox;
    Panel13: TPanel;
    Edit10: TEdit;
    DBEdit9: TDBEdit;
    Panel4: TPanel;
    Edit5: TEdit;
    Panel5: TPanel;
    Edit4: TEdit;
    COMP: TEvDBNumEdit;
    LARG: TEvDBNumEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    TPVENDA: TIBTable;
    QESSENCIA: TIBQuery;
    QSUBPRODUTOS: TIBQuery;
    Panel2: TPanel;
    UNIDADE: TDBComboBox;
    Edit8: TEdit;
    TPVENDACODDISCRIMINACAO: TIntegerField;
    TPVENDACODIGOFORNECEDOR: TFloatField;
    TPVENDAUNIDADE: TIBStringField;
    TPVENDAQUANTIDADE: TFloatField;
    TPVENDAVALUNITARIO: TFloatField;
    TPVENDAVALTOTAL: TFloatField;
    TPVENDAALIQICMS: TFloatField;
    TPVENDACODIGOPRODUTO: TFloatField;
    TPVENDASITUACAO_TRIBUTARIA: TIBStringField;
    TPVENDATOTALPRODUTO: TFloatField;
    TPVENDADATALANCAMENTO: TDateTimeField;
    TPVENDANFNUMERO: TFloatField;
    TPVENDACODIGOESSENCIA: TFloatField;
    TPVENDATRANSFORMADO: TFloatField;
    TPVENDATORALOTEESSENCIA: TIBStringField;
    TPVENDASITUACAO: TFloatField;
    TPVENDASITDATA: TDateTimeField;
    TPVENDASITHORA: TDateTimeField;
    TPVENDAFORNECEDOR: TIBStringField;
    TPVENDACPF: TFloatField;
    TPVENDAINSCRICAO: TIBStringField;
    TPVENDAOBS: TIBStringField;
    TPVENDACOMPRIMENTO: TFloatField;
    TPVENDALARGURA: TFloatField;
    TPVENDAEXPESSURA: TFloatField;
    TPVENDATOTALM3: TFloatField;
    TPVENDAPLAQUETA: TFloatField;
    TPVENDAOBSCODIGO: TFloatField;
    TPVENDAVALORVENDAM3: TFloatField;
    TPVENDALUCRO: TFloatField;
    TPVENDAVALORVENDA: TFloatField;
    TPVENDAQTDEM2: TFloatField;
    TPVENDAQTDEML: TFloatField;
    TPVENDAVALORVENDAUN: TFloatField;
    TPVENDADESCONTOPERMITIDO: TFloatField;
    BitBtn7: TBitBtn;
    GroupBox1: TGroupBox;
    Edit15: TEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel19: TPanel;
    DATACADASTRAMENTO: TEvDBDateEdit;
    GroupBox8: TGroupBox;
    Panel36: TPanel;
    Edit7: TEdit;
    VALVENDAM3: TEvDBNumEdit;
    VALVENDA: TEvDBNumEdit;
    Panel37: TPanel;
    Edit12: TEdit;
    Panel38: TPanel;
    Edit11: TEdit;
    GroupBox9: TGroupBox;
    Panel39: TPanel;
    Edit45: TEdit;
    Panel40: TPanel;
    Edit46: TEdit;
    Panel41: TPanel;
    Edit47: TEdit;
    GroupBox3: TGroupBox;
    Panel10: TPanel;
    Edit16: TEdit;
    Panel12: TPanel;
    Edit17: TEdit;
    Panel14: TPanel;
    Edit18: TEdit;
    TPVENDAVALORVENDAM31: TFloatField;
    TPVENDAVALORVENDAM32: TFloatField;
    TPVENDAVALORVENDAM33: TFloatField;
    TPVENDAVALORVENDAM34: TFloatField;
    TPVENDAVALORVENDAM35: TFloatField;
    TPVENDAVALORVENDAUN1: TFloatField;
    TPVENDAVALORVENDAUN2: TFloatField;
    TPVENDAVALORVENDAUN3: TFloatField;
    TPVENDAVALORVENDAUN4: TFloatField;
    TPVENDAVALORVENDAUN5: TFloatField;
    TPVENDADESCONTOPERMITIDO1: TFloatField;
    TPVENDADESCONTOPERMITIDO2: TFloatField;
    TPVENDADESCONTOPERMITIDO3: TFloatField;
    TPVENDADESCONTOPERMITIDO4: TFloatField;
    TPVENDADESCONTOPERMITIDO5: TFloatField;
    TPVENDAVALORVENDAM36: TFloatField;
    TPVENDAVALORVENDAM37: TFloatField;
    TPVENDAVALORVENDAUN6: TFloatField;
    TPVENDAVALORVENDAUN7: TFloatField;
    TPVENDADESCONTOPERMITIDO6: TFloatField;
    TPVENDADESCONTOPERMITIDO7: TFloatField;
    VALUNITARIO1: TEvDBNumEdit;
    VALVENDAM31: TEvDBNumEdit;
    VALVENDA1: TEvDBNumEdit;
    VALUNITARIO2: TEvDBNumEdit;
    VALVENDAM32: TEvDBNumEdit;
    VALVENDA2: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    TPVENDAPROMOCAO: TIBStringField;
    promocao: TDBCheckBox;
    Panel6: TPanel;
    led: TCJVLed;
    CheckBox1: TCheckBox;
    Gauge1: TGauge;
    CheckBox2: TCheckBox;
    Label2: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    DataSource4: TDataSource;
    DESCGERAL: TEvDBNumEdit;
    DESCGERAL1: TEvDBNumEdit;
    PADRAOVENDA_GERAL: TIBTable;
    PADRAOVENDA_GERALDESCGERAL: TFloatField;
    PADRAOVENDA_GERALDESCGERAL1: TFloatField;
    Panel15: TPanel;
    DESCGERAL2: TEvDBNumEdit;
    PADRAOVENDA_GERALDESCGERAL2: TFloatField;
    TPVENDAESSENCIA: TIBStringField;
    TPVENDAESSENCIATIPO: TIBStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EXPExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIATIPOEnter(Sender: TObject);
    procedure COMPExit(Sender: TObject);
    procedure LARGExit(Sender: TObject);
    procedure COMPChange(Sender: TObject);
    procedure LARGChange(Sender: TObject);
    procedure EXPChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure COMPEnter(Sender: TObject);
    procedure LARGEnter(Sender: TObject);
    procedure EXPEnter(Sender: TObject);
    procedure VALUNITARIOEnter(Sender: TObject);
    procedure VALVENDAM3Enter(Sender: TObject);
    procedure VALVENDAEnter(Sender: TObject);
    procedure ESSENCIATIPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ESSENCIAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UNIDADEExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ESSENCIATIPOClick(Sender: TObject);
    procedure VALVENDAM3Exit(Sender: TObject);
    procedure VALVENDAExit(Sender: TObject);
    procedure Edit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel19Click(Sender: TObject);
    procedure Panel19DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure VALUNITARIO1Enter(Sender: TObject);
    procedure VALVENDAM31Enter(Sender: TObject);
    procedure VALVENDA1Enter(Sender: TObject);
    procedure VALUNITARIO2Enter(Sender: TObject);
    procedure VALVENDAM32Enter(Sender: TObject);
    procedure VALVENDA2Enter(Sender: TObject);
    procedure EvDBNumEdit1Enter(Sender: TObject);
    procedure promocaoClick(Sender: TObject);
    procedure ESSENCIAExit(Sender: TObject);
    procedure ESSENCIATIPOExit(Sender: TObject);
    procedure UNIDADEEnter(Sender: TObject);
    procedure VALVENDAM31Exit(Sender: TObject);
    procedure Panel8DblClick(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel9DblClick(Sender: TObject);
    procedure DESCGERALExit(Sender: TObject);
    procedure DESCGERAL1Exit(Sender: TObject);
    procedure VALUNITARIO2Exit(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure VALUNITARIO1Exit(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure Panel15DblClick(Sender: TObject);
    procedure DESCGERAL2Exit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpadraovenda: Tfrmpadraovenda;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitEntradaSerrada,
  UnitPesquisaEntrada, unitentradaserradagauge, UnitPrincipal;

Type
  TChars = set of Char;
{$R *.dfm}
function FilterChars(const S: string; const ValidChars: TChars): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  if S[I] in ValidChars then
  Result := Result + S[I];
end;

procedure Tfrmpadraovenda.BitBtn3Click(Sender: TObject);
begin
PADRAOVENDA_GERAL.Close;
TPVENDA.Cancel;
Close;
end;

procedure Tfrmpadraovenda.BitBtn1Click(Sender: TObject);
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
//    else
  //  begin
//	if VALUNITARIO.Text='0,00' then
  // 	begin
    //     Application.MessageBox('Valor padrão de venda de (M3) deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
//      //   VALUNITARIO.SetFocus;
  //  end
    //else
//    begin
	//if VALUNITARIO1.Text='0,00' then
   	//begin
//         Application.MessageBox('Valor padrão de venda de (M3) deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
  //       VALUNITARIO1.SetFocus;
//    end
  //  else
    //begin
//	if VALUNITARIO2.Text='0,00' then
  // 	begin
    //     Application.MessageBox('Valor padrão de venda de (M3) deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
      //   VALUNITARIO2.SetFocus;
//    end
  //  end;
    //end;
//    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') then
//and (VALUNITARIO.Text <> '0,00') and (VALUNITARIO1.Text <> '0,00') and (VALUNITARIO2.Text <> '0,00')
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
TPVENDA.Edit ;
edit9.Text := essencia.Text;
edit10.Text := essenciatipo.Text;
edit4.Text := comp.Text;
edit5.Text := larg.Text;
edit6.Text := exp.Text;
edit7.Text := valunitario.Text;
edit11.Text := VALVENDAM3.Text;
edit12.Text := VALVENDA.Text;
edit45.Text := valunitario1.Text;
edit47.Text := VALVENDAM31.Text;
edit46.Text := VALVENDA1.Text;
edit16.Text := valunitario2.Text;
edit18.Text := VALVENDAM32.Text;
edit17.Text := VALVENDA2.Text;
if COMP.Text = '0,00' then TPVENDA['COMPRIMENTO'] := '0';
if LARG.Text = '0,000' then TPVENDA['LARGURA'] := '0';
 if EXP.Text = '0,000' then TPVENDA['EXPESSURA'] := '0';
 if VALVENDA.Text = '0,00' then TPVENDA['DESCONTOPERMITIDO'] := '0';
if VALVENDA1.Text = '0,00' then TPVENDA['DESCONTOPERMITIDO1'] := '0';
if VALVENDA2.Text = '0,00' then TPVENDA['DESCONTOPERMITIDO2'] := '0';
 if VALVENDAM3.Text = '0,00' then TPVENDA['VALORVENDAUN'] := '0';
if VALVENDAM31.Text = '0,00' then TPVENDA['VALORVENDAUN1'] := '0';
if VALVENDAM32.Text = '0,00' then TPVENDA['VALORVENDAUN2'] := '0';
if VALUNITARIO2.Text = '0,00' then TPVENDA['VALORVENDAM32'] := '0';
if VALUNITARIO.Text = '0,00' then TPVENDA['VALORVENDAM3'] := '0';
if VALUNITARIO1.Text = '0,00' then TPVENDA['VALORVENDAM31'] := '0';

TPVENDA.Post;

        If Application.MessageBox('Insere Outro Item?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        TPVENDA.Append;
        datacadastramento.Text := DateToStr(Now);
        essencia.KeyValue  := edit9.text;
        essenciatipo.KeyValue := edit10.text;
        unidade.ItemIndex := unidade.Items.IndexOf(edit8.text);
        comp.Text := edit4.Text;
        larg.Text := edit5.Text;
        exp.Text := edit6.Text;
        valunitario.Text := edit7.Text ;
        VALVENDAM3.Text := edit11.Text ;
        VALVENDA.Text := edit12.Text ;
        valunitario1.Text := edit45.Text ;
        VALVENDAM31.Text := edit47.Text ;
        VALVENDA1.Text := edit46.Text ;
        valunitario2.Text := edit16.Text ;
        VALVENDAM32.Text := edit18.Text ;
        VALVENDA2.Text := edit17.Text ;
        dbedit1.Text := edit9.Text ;
        dbedit2.Text := edit10.Text ;
        dbedit3.Text := edit8.Text ;
        ESSENCIA.SetFocus;
        end
        else
        begin
        TPVENDA.Refresh;
edit8.Clear;
edit9.Clear;
edit10.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
edit11.Clear;
edit12.Clear;
edit45.Clear;
edit47.Clear;
edit46.Clear;
edit16.Clear;
edit18.Clear;
edit17.Clear;
        ESSENCIA.SetFocus;
        end;
end
else
ESSENCIA.SetFocus;
end
end;

procedure Tfrmpadraovenda.EXPExit(Sender: TObject);
begin
if exp.Text = '' then
begin
exit
end
else
begin
if exp.Text > '0,500' then
begin
Application.MessageBox('Expessura informada invalida, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
exp.SetFocus;
end;
end;
END;

procedure Tfrmpadraovenda.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;


procedure Tfrmpadraovenda.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := QEssencia['CODIGO'];
end;

procedure Tfrmpadraovenda.ESSENCIAEnter(Sender: TObject);
begin
//ESSENCIA.DropDown;
end;

procedure Tfrmpadraovenda.FormShow(Sender: TObject);
begin
UNIDADE.ItemIndex := 8;
edit8.Text := unidade.Text ;
ESSENCIA.SetFocus;
PADRAOVENDA_GERAL.OPEN;
PADRAOVENDA_GERAL.edit;

TPVENDA.Open;
TPVENDA.Edit ;
with QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
               QEssencia.Last;
    end;

with QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO');
               SQL.Add('Where INATIVO_CODIGO =:codigo');
               SQL.Add('Order by NOMEGRAU');
               ParamByName('codigo').Text :='2';
               Open;
               QSUBPRODUTOS.Last;
    end;
end;

procedure Tfrmpadraovenda.ESSENCIATIPOEnter(Sender: TObject);
begin
//ESSENCIATIPO.DropDown;
end;

procedure Tfrmpadraovenda.COMPExit(Sender: TObject);
begin
if COMP.Text = '' then
begin
exit
end
else
begin
if COMP.Text > '9,99' then
begin
Application.MessageBox('Comprimento informado invalido, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
comp.SetFocus;
end
end
end;

procedure Tfrmpadraovenda.LARGExit(Sender: TObject);
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


procedure Tfrmpadraovenda.COMPChange(Sender: TObject);
begin
edit1.Text := comp.Text;
edit1.Text := StringReplace(edit1.Text, ',', '.', []);
end;

procedure Tfrmpadraovenda.LARGChange(Sender: TObject);
begin
edit2.Text := larg.Text;
edit2.Text := StringReplace(edit2.Text, ',', '.', []);
end;

procedure Tfrmpadraovenda.EXPChange(Sender: TObject);
begin
edit3.Text := exp.Text;
edit3.Text := StringReplace(edit3.Text, ',', '.', []);
end;

procedure Tfrmpadraovenda.BitBtn2Click(Sender: TObject);
begin
TPVENDA.Cancel;
TPVENDA.Refresh; 
end;

procedure Tfrmpadraovenda.FormDestroy(Sender: TObject);
begin
TPVENDA.Close ;
QESSENCIA.Close ;
QSUBPRODUTOS.Close; 
end;

procedure Tfrmpadraovenda.COMPEnter(Sender: TObject);
begin
if edit4.Text = '' then
begin

end
else
begin
comp.Text := edit4.Text ;
comp.SelectAll;
end;
end;

procedure Tfrmpadraovenda.LARGEnter(Sender: TObject);
begin
if edit5.Text = '' then
begin

end
else
begin
larg.Text := edit5.Text ;
larg.SelectAll;
end;
end;

procedure Tfrmpadraovenda.EXPEnter(Sender: TObject);
begin
if edit6.Text = '' then
begin

end
else
begin
exp.Text := edit6.Text ;
exp.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALUNITARIOEnter(Sender: TObject);
begin
if edit7.Text = '' then
begin

end
else
begin
valunitario.Text := edit7.Text ;
valunitario.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALVENDAM3Enter(Sender: TObject);
begin
if edit11.Text = '' then
begin
end
else
begin
VALVENDAM3.Text := edit11.Text ;
VALVENDAM3.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALVENDAEnter(Sender: TObject);
begin
if edit12.Text = '' then
begin

end
else
begin
VALVENDA.Text := edit12.Text ;
VALVENDA.SelectAll;
end;
end;


procedure Tfrmpadraovenda.ESSENCIATIPOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essenciatipo.DropDown;
end;

procedure Tfrmpadraovenda.ESSENCIAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essencia.DropDown;
end;

procedure Tfrmpadraovenda.UNIDADEExit(Sender: TObject);
begin
if UNIDADE.Text = '' then
begin
EDIT8.Text := '';
end
else
begin
EDIT8.Text := UNIDADE.Text;
end;
end;

procedure Tfrmpadraovenda.BitBtn4Click(Sender: TObject);
begin
TPVENDA.Append;
datacadastramento.Text := DateToStr(Now);
ESSENCIA.SetFocus;
end;

procedure Tfrmpadraovenda.BitBtn7Click(Sender: TObject);
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if TPVENDA.RecordCount = 0 then
begin
Application.MessageBox('Não hà itens a ser Excluído!', 'Informação', mb_Ok + mb_IconInformation);
end;
end;

if TPVENDA.RecordCount <> 0 then
begin
if checkbox1.Checked = true then
begin
  If Application.MessageBox('Confirma Exclusão deste item?', 'Confirmação',
  mb_YesNo + mb_ICONQUESTION) = idYes then
  begin
  TPVENDA.Delete;
  end;
end;

if (checkbox1.Checked = false) and (checkbox2.Checked = false) then
begin
  TPVENDA.Delete;
end;

if checkbox1.Checked = false then
begin
if checkbox2.Checked = true then
begin
     If Application.MessageBox('Ao prosseguir, todos os lançamentos serão excluídos. Confirma?', 'Confirmação',
     mb_YesNo + mb_ICONQUESTION) = idYes then
     begin
     TPVENDA.Last;
     TPVENDA.First;
     gauge1.Visible := true;
     gauge1.MaxValue := 0;
     Gauge1.MaxValue:= TPVENDA.RecordCount;
     while not TPVENDA.Eof do
     begin
        Gauge1.Progress:=Gauge1.Progress + 1;
        TPVENDA.Delete;
     end;
     gauge1.Visible := false;
     gauge1.MaxValue := 0;
     end;
end;
end;
end;
end;

procedure Tfrmpadraovenda.Edit15Change(Sender: TObject);
begin
if edit15.Text = '' then
begin
TPVENDA.First;
end
else
if (edit15.Text>='A') and (edit15.Text<='Z') then
begin
TPVENDA.Locate('ESSENCIATIPO',Edit15.text,[lopartialkey,locaseinsensitive]);
end
else
begin
if (edit15.Text>='0') and (edit15.Text<='9') then
begin
TPVENDA.Locate('ESSENCIATIPO',Edit15.text,[lopartialkey,locaseinsensitive]);
end;
end;
end;

procedure Tfrmpadraovenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
begin
KEY := 0;
end;

if key = VK_BACK then
begin
edit15.SetFocus;
end;

if key = VK_DELETE then
begin
bitbtn7.Click;
end;
end;

procedure Tfrmpadraovenda.ESSENCIATIPOClick(Sender: TObject);
begin
DBEDIT9.Text := QSUBPRODUTOS['GRAUIND'];
COMP.Text := QSUBPRODUTOS['COMP'];
LARG.Text := QSUBPRODUTOS['LARG'];
EXP.Text := QSUBPRODUTOS['EXP'];
edit4.Text := QSUBPRODUTOS['COMP'];
edit5.Text := QSUBPRODUTOS['LARG'];
edit6.Text := QSUBPRODUTOS['EXP'];
end;

procedure Tfrmpadraovenda.VALVENDAM3Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma, vsoma1 : Real;
begin
if VALVENDAM3.Text = '' then
begin
exit;
end
else
begin
edit11.Text := VALVENDAM3.Text;
end;
//vn1:=0;
//vn2:=0;
//vsoma:=0;
//vn1:= valvendam3.Value ;
//vn2:= valvendam32.Value ;
//vsoma:= vn1/vn2*100-100;
//valvenda.Text := FloatToStr(vsoma);
end;

procedure Tfrmpadraovenda.VALVENDAExit(Sender: TObject);
begin
if VALVENDA.Text = '' then
begin
exit;
end
else
begin
edit12.Text := VALVENDA.Text;
end;
end;

procedure Tfrmpadraovenda.Edit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_DOWN then
dbgrid1.SetFocus;
end;

procedure Tfrmpadraovenda.Panel19Click(Sender: TObject);
begin
datacadastramento.Enabled := false;
bitbtn1.SetFocus ;
end;

procedure Tfrmpadraovenda.Panel19DblClick(Sender: TObject);
begin
datacadastramento.Enabled := true;
datacadastramento.SetFocus ;
end;

procedure Tfrmpadraovenda.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
  TPVENDA.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];
end;

procedure Tfrmpadraovenda.VALUNITARIO1Enter(Sender: TObject);
begin
if edit45.Text = '' then
begin

end
else
begin
valunitario1.Text := edit45.Text ;
valunitario1.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALVENDAM31Enter(Sender: TObject);
begin
if edit47.Text = '' then
begin

end
else
begin
VALVENDAM31.Text := edit47.text ;
VALVENDAM31.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALVENDA1Enter(Sender: TObject);
begin
if edit46.Text = '' then
begin

end
else
begin
VALVENDA1.Text := edit46.Text ;
VALVENDA1.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALUNITARIO2Enter(Sender: TObject);
begin
if edit16.Text = '' then
begin

end
else
begin
valunitario2.Text := edit16.Text ;
valunitario2.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALVENDAM32Enter(Sender: TObject);
begin
if edit18.Text = '' then
begin

end
else
begin
VALVENDAM32.Text := edit18.Text ;
VALVENDAM32.SelectAll;
end;
end;

procedure Tfrmpadraovenda.VALVENDA2Enter(Sender: TObject);
begin
if edit17.Text = '' then
begin

end
else
begin
VALVENDA2.Text := edit17.Text ;
VALVENDA2.SelectAll;
end;
end;

procedure Tfrmpadraovenda.EvDBNumEdit1Enter(Sender: TObject);
begin
if edit7.Text = '' then
begin

end
else
begin
valunitario.Text := edit7.Text ;
valunitario.SelectAll;
end;
end;

procedure Tfrmpadraovenda.promocaoClick(Sender: TObject);
begin
if promocao.Checked = true then led.IsOn := true else led.IsOn := false;
end;

procedure Tfrmpadraovenda.ESSENCIAExit(Sender: TObject);
begin
if dbedit5.Text = '' then
begin
qessencia.Locate('CODIGO',essencia.KeyValue,[lopartialkey,locaseinsensitive]);
dbedit5.Text := qessencia['CODIGO'];
end
else
begin
exit;
end;
end;

procedure Tfrmpadraovenda.ESSENCIATIPOExit(Sender: TObject);
begin
if dbedit9.Text = '' then
begin
qsubprodutos.Locate('GRAUIND',essenciatipo.KeyValue,[lopartialkey,locaseinsensitive]);
dbedit9.Text := qsubprodutos['GRAUIND'];
end
else
begin
exit;
end;
end;

procedure Tfrmpadraovenda.UNIDADEEnter(Sender: TObject);
begin
if larg.Text <> '0,000' then
begin
larg.Enabled := false;
end
else
begin
larg.Enabled := true;
end;

if exp.Text <> '0,000' then
begin
exp.Enabled := false;
end
else
begin
exp.Enabled := true;
end;
end;

procedure Tfrmpadraovenda.VALVENDAM31Exit(Sender: TObject);
var vn1, vn2, vsoma:Real;
begin
//vn1:=0;
//vn2:=0;
//vsoma:=0;
//vn1:= valvendam31.Value ;
//vn2:= valvendam32.Value ;

//vsoma:= vn1 / vn2 * 100 - 100;
//valvenda1.Text := FloatToStr(vsoma);
end;

procedure Tfrmpadraovenda.Panel8DblClick(Sender: TObject);
begin
DESCGERAL.Enabled := TRUE;
descgeral.SetFocus ;
descgeral.SelectAll;
//PADRAOVENDA_GERAL.Edit;
end;

procedure Tfrmpadraovenda.Panel8Click(Sender: TObject);
begin
DESCGERAL.Enabled := FALSE;
end;

procedure Tfrmpadraovenda.Panel9Click(Sender: TObject);
begin
DESCGERAL1.Enabled := FALSE;
end;

procedure Tfrmpadraovenda.Panel9DblClick(Sender: TObject);
begin
DESCGERAL1.Enabled := TRUE;
descgeral1.SetFocus ;
descgeral1.SelectAll;
PADRAOVENDA_GERAL.Edit;
end;

procedure Tfrmpadraovenda.DESCGERALExit(Sender: TObject);
begin
PADRAOVENDA_GERAL.Post;
DESCGERAL.Enabled := FALSE;
end;

procedure Tfrmpadraovenda.DESCGERAL1Exit(Sender: TObject);
begin
PADRAOVENDA_GERAL.POST;
DESCGERAL1.Enabled := FALSE;
end;

procedure Tfrmpadraovenda.VALUNITARIO2Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma:Real;
begin
if (edit4.Text <> '0,00') then
begin
vn1:=0;
vn2:=0;
vn3:=0;
vsoma:=0;
vn1:= comp.Value;
vn4:= valunitario2.value;
vsoma:= vn1*vn2*vn3*vn4;
valvendam32.Text := FloatToStr(vsoma);
end;
end;

procedure Tfrmpadraovenda.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vsoma, vsoma1 :Real;
begin

vn1:=0;
vn2:=0;
vn3:=0;
vn4:=0;
vn5:=0;

vsoma:=0;

vn1:= comp.Value;
vn2:= larg.Value;
vn3:= exp.Value;
vn4:= valunitario.value;
vn5:= valunitario2.value;

vsoma1:= vn4/vn5*100-100;
valvenda.Text := FloatToStr(vsoma1);
valvenda.Text := FilterChars(valvenda.Text,['.'..',', ' ']);
end;

procedure Tfrmpadraovenda.VALUNITARIO1Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vsoma, vsoma1 :Real;
begin
if (comp.Text <> '0,00')and(exp.Text <> '0,000')and(larg.Text <> '0,000') then
begin
vn1:=0;
vn2:=0;
vn3:=0;
vsoma:=0;
vn1:= comp.Value;
vn2:= larg.Value;
vn3:= exp.Value;
vn4:= valunitario1.value;
vn5:= valunitario2.value;
vsoma:= vn1*vn2*vn3*vn4;
vsoma1:= vn4/vn5*100-100;
valvendam31.Text := FloatToStr(vsoma);
valvenda1.Text := FloatToStr(vsoma1);
valvenda1.Text := FilterChars(valvenda1.Text,['.'..',', ' ']);
end
else
begin
vn1:=0;
vn2:=0;
vn3:=0;
vsoma:=0;
vn1:= comp.Value;
vn2:= larg.Value;
vn3:= exp.Value;
vn4:= valunitario1.value;
vn5:= valunitario2.value;
//vsoma:= vn1*vn2*vn3*vn4;
vsoma1:= vn4/vn5*100-100;
//valvendam3.Text := FloatToStr(vsoma);
valvenda1.Text := FloatToStr(vsoma1);
valvenda1.Text := FilterChars(valvenda1.Text,['.'..',', ' ']);
end;
end;

procedure Tfrmpadraovenda.Panel15Click(Sender: TObject);
begin
DESCGERAL2.Enabled := FALSE;
end;

procedure Tfrmpadraovenda.Panel15DblClick(Sender: TObject);
begin
DESCGERAL2.Enabled := TRUE;
descgeral2.SetFocus ;
descgeral2.SelectAll;
PADRAOVENDA_GERAL.Edit;
end;

procedure Tfrmpadraovenda.DESCGERAL2Exit(Sender: TObject);
begin
PADRAOVENDA_GERAL.POST;
DESCGERAL2.Enabled := FALSE;
end;

end.
