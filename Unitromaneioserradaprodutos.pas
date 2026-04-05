unit Unitromaneioserradaprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  ENumEd, ToolEdit, CurrEdit, SSBaseXP, SSEdit, DB, IBCustomDataSet,
  IBQuery, EDBDate;

type
  TfrmromaneioSerradaProdutos = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    CODIGO: TEvDBZeroEdit;
    DBComboBox1: TDBComboBox;
    QUANTIDADE: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    ESSENCIA: TDBLookupComboBox;
    DBEDIT1: TEvDBZeroEdit;
    Panel13: TPanel;
    ESSENCIATIPO: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    COMPRIMENTO: TEvDBNumEdit;
    LARGURA: TEvDBNumEdit;
    EXPESSURA: TEvDBNumEdit;
    TOTALM3: TEvDBNumEdit;
    DBEdit9: TDBEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAExit(Sender: TObject);
    procedure ESSENCIATIPOEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure ESSENCIATIPOClick(Sender: TObject);
    procedure EXPESSURAExit(Sender: TObject);
    procedure QUANTIDADEEnter(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmromaneioSerradaProdutos: TfrmromaneioSerradaProdutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, Unitromaneioserrada;

{$R *.dfm}


procedure TfrmromaneioSerradaProdutos.BitBtn3Click(Sender: TObject);
begin
//DM.TROMANEIO_SERRADADISCRIMINACAO.Filtered := False;
//DM.TROMANEIO_SERRADADISCRIMINACAO.Close;
DM.TSUBProdutos.Close;
Close;
end;

procedure TfrmromaneioSerradaProdutos.BitBtn1Click(Sender: TObject);
var vn1, vn2, vsoma : Real;
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
         Application.MessageBox('Essência Tipo deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIATIPO.SetFocus;
    end
    else
begin
	if DBComboBox1.Text='' then
   	begin
         Application.MessageBox('Unidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         DBComboBox1.SetFocus;
    end
    else
begin
	if QUANTIDADE.Text='0,0000' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         QUANTIDADE.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text = '0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (DBComboBox1.Text <> '') and (QUANTIDADE.Text <> '0,0000') and (VALUNITARIO.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   frmromaneioserrada.nota1.Text := frmromaneioserrada.nota.Text;
   frmromaneioserrada.data1.Text := frmromaneioserrada.data.Text;
   frmromaneioserrada.editfax.Text := frmromaneioserrada.edit1.Text;   
    DM.TROMANEIOSERRADA.Post;
   frmromaneioserrada.g.Caption := 'Produtos > ' + intTostr(DM.TROMANEIOSERRADA.RecordCount);    
    If Application.MessageBox('Insere Outro Produto para este Cliente?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TROMANEIOSERRADA.Append;
        DBEDIT1.SetFocus;
        end
        else
        begin
        DM.TROMANEIOSERRADA.Filtered := False;
        DM.TROMANEIOSERRADA.Close;
        Close;
        end
end
end
else
//DBEDIT1.SetFocus
end;

procedure TfrmromaneioSerradaProdutos.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= (TOTALM3.Value);
      vn2:= (VALUNITARIO.Value);
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);
      BITBTN1.Click;      
//      StrToFloat
end;

procedure TfrmromaneioSerradaProdutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmromaneioSerradaProdutos.FormClose(Sender: TObject;
var Action: TCloseAction);
var total, total1 : Real;
begin
   DM.TROMANEIOSERRADA.Filtered := False;
   DM.TROMANEIOSERRADA.Close;
   DM.TROMANEIOSERRADA.Filter := 'NF = ' + QuotedStr(frmromaneioserrada.nota.Text)+ ' and CODEMPRESA = ' + QuotedStr(frmromaneioserrada.edit1.Text);
   DM.TROMANEIOSERRADA.Filtered := True;
   DM.TROMANEIOSERRADA.Open;

begin
   if DM.TROMANEIOSERRADA.RecordCount <> 0 then
   begin
   frmromaneioserrada.BitBtn9.Enabled := True;
   frmromaneioserrada.BitBtn10.Enabled := True;
   frmromaneioserrada.BitBtn11.Enabled := True;
   frmromaneioserrada.BitBtn7.Enabled := True;   

   total := 0;
   total1 := 0;
   DM.TROMANEIOSERRADA.First;
   while not DM.TROMANEIOSERRADA.Eof do
     begin
        total := DM.TROMANEIOSERRADA['VLTOTAL'] + total ;
        total1 := DM.TROMANEIOSERRADA['TOTALM3'] + total1 ;
        DM.TROMANEIOSERRADA.Next;
     end;
    frmromaneioserrada.valtotal.Caption  := FormatCurr('#0.00',total);
    frmromaneioserrada.m3.Caption  := FormatCurr('#0.0000',total1);
    frmromaneioserrada.bitbtn5.Enabled := True;
    frmromaneioserrada.bitbtn3.Enabled := True;
    frmromaneioserrada.bitbtn4.Enabled := True;
    frmromaneioserrada.BitBtn3.SetFocus;
   end;
end;
end;

procedure TfrmromaneioSerradaProdutos.ESSENCIAClick(Sender: TObject);
begin
        DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmromaneioSerradaProdutos.ESSENCIAExit(Sender: TObject);
begin
ESSENCIATIPO.DropDown;
end;

procedure TfrmromaneioSerradaProdutos.ESSENCIATIPOEnter(Sender: TObject);
begin
ESSENCIATIPO.DropDown;
end;

procedure TfrmromaneioSerradaProdutos.FormShow(Sender: TObject);
begin
with DM.QESSENCIA do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end;

DM.TSUBPRODUTOS.Open;
DM.TsubProdutos.IndexName := ('SUBPRODUTO');
end;

procedure TfrmromaneioSerradaProdutos.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmromaneioSerradaProdutos.ESSENCIATIPOClick(Sender: TObject);
begin
        DBEDIT9.Text := DM.TsubProdutos['GRAUIND'];
end;

procedure TfrmromaneioSerradaProdutos.EXPESSURAExit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma: Real;
begin
if DBCOMBOBOX1.Text = 'M/2' then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= StrToFloat(QUANTIDADE.Text);
      vn2:= StrToFloat(COMPRIMENTO.Text);
      vn3:= StrToFloat(LARGURA.Text);
      vsoma := vn1 * vn2 * vn3;
      TOTALM3.Text := FloatToStr(vsoma);
      end
      else
begin
if DBCOMBOBOX1.Text = 'M/3' then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= StrToFloat(QUANTIDADE.Text);
      vn2:= StrToFloat(COMPRIMENTO.Text);
      vn3:= StrToFloat(LARGURA.Text);
      vn4:= StrToFloat(EXPESSURA.Text);
      vsoma := vn1 * vn2 * vn3 * vn4;
      TOTALM3.Text := FloatToStr(vsoma);
      end;
end;
end;

procedure TfrmromaneioSerradaProdutos.QUANTIDADEEnter(Sender: TObject);
begin
QUANTIDADE.Text := '1';
end;

procedure TfrmromaneioSerradaProdutos.DBComboBox1Change(Sender: TObject);
begin
if DBCOMBOBOX1.Text = 'M/2' then
begin
      TOTALM3.Decimals := 2;
      Panel18.Caption := 'Total M/2';
      end
      else
begin
if DBCOMBOBOX1.Text = 'M/3' then
begin
      TOTALM3.Decimals := 4;
      Panel18.Caption := 'Total M/3';
      end;
      end;
end;



procedure TfrmromaneioSerradaProdutos.Button1Click(Sender: TObject);
begin
dm.QSUBPRODUTOS.Open; 
end;

end.
