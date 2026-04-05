unit UnitSaidaSerradaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, EDBTime;

type
  TfrmEntradaSerradaProdutos = class(TForm)
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
    SITUACAO: TDBEdit;
    EDITDATA: TEvDBDateEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    ESSENCIATIPO: TDBLookupComboBox;
    Panel13: TPanel;
    DBEdit9: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel9: TPanel;
    DBEdit2: TDBEdit;
    COMP: TEvDBNumEdit;
    LARG: TEvDBNumEdit;
    Panel6: TPanel;
    Panel10: TPanel;
    VALUNITARIO: TEvDBNumEdit;
    VALTOTAL1: TEvDBNumEdit;
    DBEdit10: TDBEdit;
    quantidade1: TEvDBNumEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EXPExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIATIPOClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ESSENCIATIPOEnter(Sender: TObject);
    procedure COMPExit(Sender: TObject);
    procedure LARGExit(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaSerradaProdutos: TfrmEntradaSerradaProdutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, UnitEntradaSerrada;

{$R *.dfm}

procedure TfrmEntradaSerradaProdutos.BitBtn3Click(Sender: TObject);
begin
Close;
//frmentradaserrada.BitBtn3.SetFocus;
end;

procedure TfrmEntradaSerradaProdutos.BitBtn1Click(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vsoma, vsoma1: Real;
begin
	if quantidade1.Text='0' then
   	begin
         Application.MessageBox('Quantidade deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         quantidade1.SetFocus;
    end
    else
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
	if COMP.Text='0,00' then
   	begin
         Application.MessageBox('Comprimento deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         COMP.SetFocus;
    end
    else
begin
	if LARG.Text='0,00' then
   	begin
         Application.MessageBox('Largura deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         LARG.SetFocus;
    end
    else
begin
	if EXP.Text='0,00' then
   	begin
         Application.MessageBox('Expessura deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         EXP.SetFocus;
    end
    else
begin
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         valunitario.SetFocus;
    end
    end;
    end;
    end;
    end;
    end;
    end;

if (quantidade1.Text <> '0') and(ESSENCIA.Text <> '') and (ESSENCIATIPO.Text <> '') and (COMP.Text <> '0,00') and(LARG.Text <> '0,00') and(EXP.Text <> '0,00')and (VALUNITARIO.Text <> '0,00') then
begin
if dbedit2.Text = '' then
begin
dbedit10.Text := '0';
end
else
begin
if dbedit2.Text <> '' then
begin
dbedit10.Text := '1';
end;
end;

If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    try
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
      vsoma1 := vsoma * vn5;
      VALTOTAL.Text := FloatToStr(vsoma);
      VALTOTAL1.Text := FloatToStr(vsoma1);

        SITUACAO.Text := '0';
        DBEDIT7.Text := '0';
        //quantidade.Text := '1';

        DM.TESDISCRIMINACAO.Post;
        If Application.MessageBox('Insere Outro Produto para esta Nota Fiscal?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DM.TESDISCRIMINACAO.Append;
        EDITDATA.Text := frmEntradaSerrada.data.Text;
        DBEDIT3.Text := frmEntradaSerrada.DBEDit6.Text;
        DBEDIT4.Text := frmEntradaSerrada.nota.Text;
        DBEDIT6.Text := frmEntradaSerrada.FORNECEDOR.Text;
        DBEDIT1.SetFocus;
        end
        else
        begin
        close;
        end;
  except
    Application.MessageBox('Plaqueta já Cadastrada, Verifique!', 'Lançamento', mb_Ok + mb_IconExclamation);
    DBEdit1.SetFocus ;
    end;
    end;
    end;
end;

procedure TfrmEntradaSerradaProdutos.EXPExit(Sender: TObject);
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
end
end;

procedure TfrmEntradaSerradaProdutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure TfrmEntradaSerradaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, total1,total2 : Real;
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'NFNUMERO = ' + (frmEntradaSerrada.nota.Text)+ ' and CODIGOFORNECEDOR = ' + QuotedStr(frmEntradaSerrada.DBEDIT6.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

begin
   if DM.TESDISCRIMINACAO.RecordCount <> 0 then
   begin
   frmEntradaSerrada.DBGrid3.Visible := False;
   frmEntradaSerrada.DBGrid2.Visible := True;
   frmEntradaSerrada.BitBtn10.Enabled := True;
   frmEntradaSerrada.BitBtn11.Enabled := True;
   frmentradaserrada.unitario.Visible := true;

   total1 := 0;
   total := 0;
   total2 := 0;
   DM.TESDISCRIMINACAO.First;
   while not DM.TESDISCRIMINACAO.Eof do
     begin
        total1 := DM.TESDISCRIMINACAO['TOTALM3'] + total1 ;
        total := DM.TESDISCRIMINACAO['QUANTIDADE'] + total ;
        total2 := DM.TESDISCRIMINACAO['VALTOTAL'] + total2 ;
        DM.TESDISCRIMINACAO.Next;
     end;
    frmEntradaSerrada.quantidade.caption := FormatCurr('#0.0000',total1);
    frmEntradaSerrada.pecas.caption := FormatCurr('#0',total);
    frmEntradaSerrada.TOTNOTA.Value := total2;
   frmEntradaSerrada.g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);
   end;
end;
end;

procedure TfrmEntradaSerradaProdutos.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmEntradaSerradaProdutos.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmEntradaSerradaProdutos.FormShow(Sender: TObject);
begin
editdata.Text := frmentradaserrada.data.Text;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end;

with DM.QSUBPRODUTOS do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from SUBPRODUTO Order by NOMEGRAU');
               Open;
    end;


end;

procedure TfrmEntradaSerradaProdutos.ESSENCIATIPOClick(Sender: TObject);
begin
DBEDIT9.Text := DM.QSUBPRODUTOS['GRAUIND'];
end;


procedure TfrmEntradaSerradaProdutos.DBEdit2Exit(Sender: TObject);
begin
      bitbtn1.Click;

end;



procedure TfrmEntradaSerradaProdutos.ESSENCIATIPOEnter(Sender: TObject);
begin
ESSENCIATIPO.DropDown;
end;


procedure TfrmEntradaSerradaProdutos.COMPExit(Sender: TObject);
begin
if COMP.Text = '' then
begin
exit
end
else
begin
if COMP.Text > '8,50' then
begin
Application.MessageBox('Comprimento informado invalido, Verifique!', 'Lançamento', mb_Ok + mb_IconInformation);
comp.SetFocus;
end
end
end;

procedure TfrmEntradaSerradaProdutos.LARGExit(Sender: TObject);
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


end.
