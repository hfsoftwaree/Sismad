unit Unitvendaprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  ENumEd, ToolEdit, CurrEdit, SSBaseXP, SSEdit, DB, IBCustomDataSet,
  IBQuery, EDBDate, Grids, DBGrids;

type
  TfrmVendaProdutos = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    CODIGO: TEvDBZeroEdit;
    VALUNITARIO: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel13: TPanel;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    COMPRIMENTO: TEvDBNumEdit;
    LARGURA: TEvDBNumEdit;
    EXPESSURA: TEvDBNumEdit;
    TOTALM3: TEvDBNumEdit;
    essencia: TDBEdit;
    ESSENCIATIPO: TDBEdit;
    EDITDATA: TEvDBDateEdit;
    quantidade: TDBEdit;
    PLAQUETA: TEvDBZeroEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PLAQUETAExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaProdutos: TfrmVendaProdutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitVenda,
  Unitvendafechamento;

{$R *.dfm}


procedure TfrmVendaProdutos.BitBtn3Click(Sender: TObject);
begin
        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
Close;
//frmvenda.bitbtn3.SetFocus;
end;

procedure TfrmVendaProdutos.BitBtn1Click(Sender: TObject);
var vn1, vn2, vsoma : Real;
begin
	if PLAQUETA.Text='' then
   	begin
         Application.MessageBox('Plaqueta deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         PLAQUETA.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text = '0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;

if (PLAQUETA.Text <> '')   and (VALUNITARIO.Text <> '0,00') then
begin
DM.TESDISCRIMINACAO.Locate('PLAQUETA',PLAQUETA.text,[]);
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (TOTALM3.Value);
      vn2:= (VALUNITARIO.Value);
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);

    quantidade.Text := '1';
    DM.TESDISCRIMINACAO.Edit;
    DM.TESDISCRIMINACAO['SITUACAO'] := '1';
    DM.TESDISCRIMINACAO.Post;
 
    DM.TSaida_discriminacao.Post;
    If Application.MessageBox('Insere Outro Produto para este Vendedor?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TSaida_discriminacao.Append;
        EDITDATA.Text := frmvenda.data.Text;
        DBEDIT3.Text := frmvenda.DBEDit6.Text;
        DBEDIT4.Text := frmvenda.nota.Text;

        end
        else
        begin
        DM.TSaida_Discriminacao.Filtered := False;
        DM.TSaida_Discriminacao.Close;
        DM.QEssencia.Close;
        DM.QSUBPRODUTOS.close;
        Close;
        end
end
end
else
//DBEDIT1.SetFocus
end;

procedure TfrmVendaProdutos.VALUNITARIOExit(Sender: TObject);
begin
if plaqueta.Text = '000000' then
begin
exit;
end
else
begin
      bitbtn1.Click;
end;
end;

procedure TfrmVendaProdutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmVendaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, total1, total2 : Real;
begin
PLAQUETA.Enabled := true;
DM.TESDISCRIMINACAO.close;
   DM.TSaida_Discriminacao.Filtered := False;
   DM.TSaida_Discriminacao.Close;
   DM.TSaida_Discriminacao.Filter := 'NFNUMERO = ' + (frmvenda.nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(frmvenda.DBEDIT6.Text);
   DM.TSaida_Discriminacao.Filtered := True;
   DM.TSaida_Discriminacao.Open;

begin
   if DM.TSaida_Discriminacao.RecordCount <> 0 then
   begin
   frmvenda.DBGrid3.Visible := False;
   frmvenda.DBGrid2.Visible := True;
   frmvenda.BitBtn10.Enabled := True;
   frmvenda.BitBtn11.Enabled := True;
   frmvenda.BitBtn1.Enabled := True;
   frmvenda.BitBtn5.Enabled := True;

   total := 0;
   total1 := 0;
   total2 := 0;
   DM.TSaida_discriminacao.First;
   while not DM.TSaida_discriminacao.Eof do
     begin
        total := DM.TSaida_discriminacao['QUANTIDADE'] + total ;
        total1 := DM.TSaida_discriminacao['TOTALM3'] + total1 ;
        total2 := DM.TSaida_Discriminacao['VALTOTAL'] + total2 ;
        DM.TSaida_discriminacao.Next;
     end;
    frmvenda.totprod.caption := FormatCurr('#0',total);
    frmvenda.totm3.caption := FormatCurr('#0.0000',total1);
    frmvenda.totvenda.caption := FormatCurr('#0.00',total2);
    frmvenda.g.Caption := 'Produtos > ' + (frmvenda.totprod.caption);
    frmvendafechamento.show;
   end;
end;
end;

procedure TfrmVendaProdutos.FormShow(Sender: TObject);
begin
EDITDATA.Text := frmvenda.data.Text;
DM.QEssencia.Open;
DM.QSUBPRODUTOS.Open;
with DM.QESERRADA do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ENTRADA Order by PLAQUETA');
               Open;
    end;
end;



procedure TfrmVendaProdutos.PLAQUETAExit(Sender: TObject);
var vn1, vn2, vn3, vsoma: Real;
begin
if PLAQUETA.Text = '000000' then
begin
exit;
end
else
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'PLAQUETA=' + (PLAQUETA.text) + 'and SITUACAO =' + '0';
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;
begin
if DM.TESDISCRIMINACAO.RecordCount <> 0 then
begin
DBEDIT5.Text := DM.TESDISCRIMINACAO['CODIGOESSENCIA'];
ESSENCIA.Text := DM.TESDISCRIMINACAO['ESSENCIA'];
DBEDIT9.Text := DM.TESDISCRIMINACAO['CODIGOPRODUTO'];
ESSENCIATIPO.Text := DM.TESDISCRIMINACAO['ESSENCIATIPO'];
COMPRIMENTO.Text := DM.TESDISCRIMINACAO['COMPRIMENTO'];
LARGURA.Text := DM.TESDISCRIMINACAO['LARGURA'];
EXPESSURA.Text := DM.TESDISCRIMINACAO['EXPESSURA'];
DBEDIT5.Text := DM.TESDISCRIMINACAO['CODIGOESSENCIA'];
DBEDIT9.Text := DM.TESDISCRIMINACAO['CODIGOPRODUTO'];
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= (COMPRIMENTO.Value);
      vn2:= (LARGURA.Value);
      vn3:= (EXPESSURA.Value);
      vsoma := vn1 * vn2 * vn3;
      TOTALM3.Text := FloatToStr(vsoma);
end
else
begin
PLAQUETA.text := '000000';
Application.MessageBox('Plaqueta informada digitada incorretamente ou já baixada, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
end;
end;
end;
end;


end.
