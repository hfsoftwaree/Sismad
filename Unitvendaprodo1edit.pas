unit Unitvendaprodo1edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, EDBTime, Grids, DBGrids, xCalcltr, ENumEd, ToolEdit, CurrEdit,
  DB, IBCustomDataSet, IBQuery;

type
  TfrmVendaProdutos1edita = class(TForm)
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
    Edit6: TEdit;
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
    edit12: TCurrencyEdit;
    edit13: TCurrencyEdit;
    edit14: TCurrencyEdit;
    edit15: TCurrencyEdit;
    Panel9: TPanel;
    desconto: TEvDBNumEdit;
    DBEdit2: TDBEdit;
    Panel17: TPanel;
    TOTPRODUTO: TEvDBNumEdit;
    Panel15: TPanel;
    UNIDADE: TDBComboBox;
    Edit16: TEdit;
    qtabela: TIBQuery;
    DataSource1: TDataSource;
    Memo1: TMemo;
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
    procedure quantidade1Exit(Sender: TObject);
    procedure descontoExit(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaProdutos1edita: TfrmVendaProdutos1edita;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitEntradaSerrada,
  UnitVenda, Unitvendafechamento, UnitPrincipal;

{$R *.dfm}

procedure TfrmVendaProdutos1edita.BitBtn3Click(Sender: TObject);
begin
DM.TESTOQUE.cancel;
DM.TSaida_Discriminacao.cancel;
Close;
end;

procedure TfrmVendaProdutos1edita.BitBtn1Click(Sender: TObject);
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
    end;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (quantidade1.Text <> '0,00') and (COMP.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
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
     bitbtn3.Click;
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
        total5 := edit14.Value + total5;
        total6 := edit15.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     bitbtn3.Click;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     bitbtn3.Click;
     end;
     end;
     end;
     end;
dm.TSaida_Discriminacao.Cancel;
tipo.SetFocus;
end;
end;

procedure TfrmVendaProdutos1edita.EXPExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vn6, vsoma, vsoma1 : Real;
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
end
else
begin
//      vn1:=0;
  //    vn2:=0;
//      vn3:=0;
  //    vn4:=0;
    //  vsoma:=0;
//      vn1:= QUANTIDADE1.Value;
  //    vn2:= COMP.Value;
    //  vn3:= LARG.Value;
//      vn4:= EXP.Value;
  //    vsoma := vn1 * vn2 * vn3 * vn4;
    //  VALTOTAL.Text := FloatToStr(vsoma);

if (comp.Text <> '0,00') and (larg.Text <> '0,000') and (exp.Text <> '0,000') then
begin
valtotal.TabStop := False;
valtotal.ReadOnly := true;
end
else
begin
valtotal.TabStop := true;
valtotal.ReadOnly := false;
end
end;
end;
end;

procedure TfrmVendaProdutos1edita.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmVendaProdutos1edita.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmVendaProdutos1edita.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmVendaProdutos1edita.FormShow(Sender: TObject);
begin
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
edit13.Text := valtotal.Text ;
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
edit13.Text := valtotal.Text ;
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
edit13.Text := valtotal.Text ;
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

procedure TfrmVendaProdutos1edita.ESSENCIATIPOClick(Sender: TObject);
begin
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


procedure TfrmVendaProdutos1edita.DBEdit2Exit(Sender: TObject);
begin
      bitbtn1.Click;

end;



procedure TfrmVendaProdutos1edita.ESSENCIATIPOEnter(Sender: TObject);
begin
ESSENCIATIPO.DropDown;
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


procedure TfrmVendaProdutos1edita.COMPExit(Sender: TObject);
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

procedure TfrmVendaProdutos1edita.LARGExit(Sender: TObject);
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


procedure TfrmVendaProdutos1edita.VALTOTAL1Exit(Sender: TObject);
begin
//bitbtn1.Click ;
end;

procedure TfrmVendaProdutos1edita.VALUNITARIOExit(Sender: TObject);
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
      vsoma1 := vn5 * vn2 * vn1 ;

      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);
      TOTPRODUTO.Text := FloatToStr(vsoma1);
      end;
end
else
begin

if tipo.ItemIndex = 1 then
begin
  if (quantidade1.Text <> '0,00') and (comp.Text <> '0,00') and (larg.Text <> '0,000') and (exp.Text  <> '0,000') then
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
      exit;
      end;

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
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and (quantidade1.Text <> '0,00') then
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

      vsoma := vn1 * vn3 * vn4;
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

procedure TfrmVendaProdutos1edita.COMPChange(Sender: TObject);
begin
edit1.Text := comp.Text;
edit1.Text := StringReplace(edit1.Text, ',', '.', []);
end;

procedure TfrmVendaProdutos1edita.LARGChange(Sender: TObject);
begin
edit2.Text := larg.Text;
edit2.Text := StringReplace(edit2.Text, ',', '.', []);
end;

procedure TfrmVendaProdutos1edita.EXPChange(Sender: TObject);
begin
edit3.Text := exp.Text;
edit3.Text := StringReplace(edit3.Text, ',', '.', []);
end;




procedure TfrmVendaProdutos1edita.BitBtn2Click(Sender: TObject);
begin
Calculator.Execute;
end;

procedure TfrmVendaProdutos1edita.FormDestroy(Sender: TObject);
var total, total1, total2, total3 : Real;
begin
DM.QEssencia.Close;
DM.QSUBPRODUTOS.close;

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

//    DM.TSTATUS1.Edit;
  //  DM.TSTATUS1['CODIGOSTATUS'] := '3';
    //DM.TSTATUS1['STATUS'] := 'Venda Alterada';
//    dm.TSTATUS1.Post;
  //  frmvenda.status1.Caption :=DM.TSTATUS1['STATUS'];
DM.TESDISCRIMINACAO.Filtered := False;
DM.TESDISCRIMINACAO.close;


end;



procedure TfrmVendaProdutos1edita.COMPEnter(Sender: TObject);
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

procedure TfrmVendaProdutos1edita.LARGEnter(Sender: TObject);
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

procedure TfrmVendaProdutos1edita.EXPEnter(Sender: TObject);
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

procedure TfrmVendaProdutos1edita.VALUNITARIOEnter(Sender: TObject);
var vn5, vn6, vsoma1: REal;
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
                    VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
                              VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;
end;

//////////////////////////////////////////////////////////////////////////
if tipo.ItemIndex = 1 then //M3
  begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto'); // linha para atender as condições
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
                    VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
                              VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;
end;

///////////////////////////////////////////////////////////////////////////
if tipo.ItemIndex = 2 then //M2
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
                    VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
                              VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;
end;

//////////////////////////////////////////////////////////////////////////
if tipo.ItemIndex = 3 then //ML
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
                    VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
                              VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;
end;

//////////////////////////////////////////////////////////////////////////
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
                    VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
                              VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;
end;

//////////////////////////////////////////////////////////////////////////
if tipo.ItemIndex = 5 then //OUTROS
  begin
//consulta valor do produto na tabela Padrao de venda
with qtabela do
  	begin
    qtabela.Close;
    qtabela.SQL.Clear ;
    qtabela.SQL.Add('select * from PADRAOVENDA');
    qtabela.SQL.Add('where CODIGOESSENCIA =:essencia AND CODIGOPRODUTO =:produto'); // linha para atender as condições
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
                    VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAM32'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end
          else
          begin
          if unidade.Text <> 'M3' then
          begin
          edit6.Text := qtabela['VALORVENDAUN2'];
                              VALUNITARIO.ReadOnly := true;
          VALUNITARIO.Text := qtabela['VALORVENDAUN2'];
          VALUNITARIO.SelectAll;
          if qtabela['PROMOCAO']=1 then memo1.Lines.Text := 'Produto em Promoção!' else memo1.Lines.Text := '';
          end;
          end;
        end;
    end;
end;
end;

//////////////////////////////////////////////////////////////////////////
end;

procedure TfrmVendaProdutos1edita.quantidade1Enter(Sender: TObject);
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


procedure TfrmVendaProdutos1edita.TIPOChange(Sender: TObject);
begin
//dbedit2.Text := tipo.Text;
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
    //LARG.Text := '0,000';
//    EXP.Text := '0,000';
    bitbtn1.Visible :=false;
    m3.Visible := true;
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
        unidade.ItemIndex := unidade.Items.IndexOf('ML');
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
    unidade.ItemIndex := unidade.Items.IndexOf('UN');    
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
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

procedure TfrmVendaProdutos1edita.TIPOExit(Sender: TObject);
begin
//dbedit2.Text := tipo.Text;
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
    quantidade1.Enabled := TRUE;
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
        unidade.ItemIndex := unidade.Items.IndexOf('ML');
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
    unidade.ItemIndex := unidade.Items.IndexOf('UN');    
    quantidade1.Enabled := true;
    essencia.Enabled  := true;
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

procedure TfrmVendaProdutos1edita.ESSENCIAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essencia.DropDown;
end;

procedure TfrmVendaProdutos1edita.ESSENCIATIPOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essenciatipo.DropDown;
end;

procedure TfrmVendaProdutos1edita.VALTOTALExit(Sender: TObject);
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

procedure TfrmVendaProdutos1edita.m3Click(Sender: TObject);
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
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')  then
begin
If Application.MessageBox('Confirma Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
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
     bitbtn3.Click;
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
        total5 := edit14.Value + total5;
        total6 := edit15.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     bitbtn3.Click;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     bitbtn3.Click;
     end;
     end;
     end;
     end;
     end;
dm.TSaida_Discriminacao.Cancel;
tipo.SetFocus;
end;
end;

procedure TfrmVendaProdutos1edita.m2Click(Sender: TObject);
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
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and (quantidade1.Text <> '0,00')then
begin
DM.TSaida_Discriminacao['COMPRIMENTO']:= '0,00';
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
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
     bitbtn3.Click;
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
        total5 := edit14.Value + total5;
        total6 := edit15.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     bitbtn3.Click;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     bitbtn3.Click;
     end;
     end;
     end;
     end;
     dm.TSaida_Discriminacao.Cancel;
tipo.SetFocus;
end;
end;

procedure TfrmVendaProdutos1edita.mlClick(Sender: TObject);
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
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and (quantidade1.Text <> '0,00') then
begin
DM.TSaida_Discriminacao['COMPRIMENTO']:= '0,00';
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
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
     bitbtn3.Click;
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
        total5 := edit14.Value + total5;
        total6 := edit15.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     bitbtn3.Click;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     bitbtn3.Click;
     end;
     end;
     end;
     end;
dm.TSaida_Discriminacao.Cancel;
tipo.SetFocus;
end;
end;


procedure TfrmVendaProdutos1edita.jgClick(Sender: TObject);
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
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00')then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
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
     bitbtn3.Click;
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
        total5 := edit14.Value + total5;
        total6 := edit15.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     bitbtn3.Click;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     bitbtn3.Click;
     end;
     end;
     end;
     end;
     dm.TSaida_Discriminacao.Cancel;
tipo.SetFocus;
end;
end;

procedure TfrmVendaProdutos1edita.mcClick(Sender: TObject);
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
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '')and(quantidade1.Text <> '0,00')then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
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
     bitbtn3.Click;
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
        total5 := edit14.Value + total5;
        total6 := edit15.Value + total6;

        DM.TESTOQUE.Next;
     end;
     DM.TESTOQUE.Edit;
     DM.TESTOQUE['QUANTIDADE'] := total3 + total5;
     DM.TESTOQUE['TOTALM3'] := total4 + total6;
     DM.TESTOQUE.Post;
     DM.TSaida_Discriminacao.Post;
     bitbtn3.Click;
   end
   else
   begin
  if DM.TESTOQUE['QUANTIDADE'] = quantidade1.Text then
  begin
     DM.TSaida_Discriminacao.Post;
     DM.TESTOQUE.Delete;
     DM.TESTOQUE.Filtered := FALSE;
     DM.TESTOQUE.Close;
     bitbtn3.Click;
     end;
     end;
     end;
     end;
dm.TSaida_Discriminacao.Cancel;
tipo.SetFocus;
end;
end;



procedure TfrmVendaProdutos1edita.quantidade1Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma, vsoma1:Real;
begin
vn1:=0;
vn2:=0;
vn3:= 0;
vsoma:=0;
vn1 :=quantidade1.Value;
vn2:= valtotal.Value;
vn3:=edit12.Value ;
vn4:=edit13.Value;
vsoma := vn3-vn1;
edit14.Value  := (vsoma);
end;

procedure TfrmVendaProdutos1edita.descontoExit(Sender: TObject);
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

      vsoma := vn3*vn2*vn1;
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

      vsoma := vn3*vn2*vn1;
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

      vsoma := vn3*vn2*vn1;
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

      vsoma1 := vn5 * vn2 * vn1;

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

procedure TfrmVendaProdutos1edita.Memo1Enter(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeColor := false;
frmprincipal.EvFocusColor1.ChangeFont := false;
end;

procedure TfrmVendaProdutos1edita.Memo1Exit(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeColor := true;
frmprincipal.EvFocusColor1.ChangeFont := true;
end;

end.

