unit Unitromaneiotorosprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EDBNum, DBCtrls, EDBZero, Mask,
  EDBDate, SSBaseXP, SSEdit;

type
  TfrmRomaneiotorosprodutos = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBComboBox1: TDBComboBox;
    QUANTIDADE: TEvDBNumEdit;
    VALUNITARIO: TEvDBNumEdit;
    VALTOTAL: TEvDBNumEdit;
    ESSENCIA: TDBLookupComboBox;
    DBEDIT1: TEvDBZeroEdit;
    DBEdit5: TDBEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    COMPRIMENTO: TEvDBNumEdit;
    DIAMETRO: TEvDBNumEdit;
    Panel16: TPanel;
    INDICE: TEditCurrencyXP;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VALUNITARIOExit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure ESSENCIAClick(Sender: TObject);
    procedure ESSENCIAEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure INDICEExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRomaneiotorosprodutos: TfrmRomaneiotorosprodutos;

implementation

uses UnitDM, UnitEntradaToros, UnitSaidaMadeiras, Unitromaneiotoro;

{$R *.dfm}

procedure TfrmRomaneiotorosprodutos.BitBtn3Click(Sender: TObject);
begin
dm.QEssencia.Close;
Close;
end;

procedure TfrmRomaneiotorosprodutos.BitBtn1Click(Sender: TObject);
begin
	if ESSENCIA.Text='' then
   	begin
         Application.MessageBox('Essência deve ser informada!', 'Lançamento', mb_Ok + mb_IconInformation);
         ESSENCIA.SetFocus;
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
	if COMPRIMENTO.Text='0,00' then
   	begin
         Application.MessageBox('Comprimento deve ser informao!', 'Lançamento', mb_Ok + mb_IconInformation);
         COMPRIMENTO.SetFocus;
    end
    else
begin
	if DIAMETRO.Text='0,00' then
   	begin
         Application.MessageBox('Diametro[x] deve ser informao!', 'Lançamento', mb_Ok + mb_IconInformation);
         DIAMETRO.SetFocus;
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
	if VALUNITARIO.Text='0,00' then
   	begin
         Application.MessageBox('Valor Unitário deve ser informado!', 'Lançamento', mb_Ok + mb_IconInformation);
         VALUNITARIO.SetFocus;
    end;
    end;
    end;
    end;
    end;
    end;

if (ESSENCIA.Text <> '') and (DBComboBox1.Text <> '') and (QUANTIDADE.Text <> '0,0000') and (VALUNITARIO.Text <> '0,00') and (COMPRIMENTO.Text <> '0,00')and (DIAMETRO.Text <> '0,00') then
begin
If Application.MessageBox('Confirma Lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
   frmromaneioTORO.nota1.Text := frmromaneioTORO.nota.Text;
   frmromaneioTORO.data1.Text := frmromaneioTORO.data.Text;
   frmromaneioTORO.editfax.Text := frmromaneioTORO.edit1.Text;


    If Application.MessageBox('Insere Outro Produto para este Cliente?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        DBEDIT1.SetFocus;
        end
        else
        begin
        Close;
        end
end
end
else
//DBEDIT1.SetFocus
end;

procedure TfrmRomaneiotorosprodutos.VALUNITARIOExit(Sender: TObject);
var vn1, vn2, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= QUANTIDADE.Value;
      vn2:= VALUNITARIO.Value;
      vsoma := vn1 * vn2;
      VALTOTAL.Text := FloatToStr(vsoma);
      BITBTN1.Click;
end;

procedure TfrmRomaneiotorosprodutos.EvDBNumEdit3Exit(Sender: TObject);
begin
BITBTN1.Click;
end;


procedure TfrmRomaneiotorosprodutos.ESSENCIAClick(Sender: TObject);
begin
DBEDIT5.Text := DM.QEssencia['CODIGO'];
end;

procedure TfrmRomaneiotorosprodutos.ESSENCIAEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmRomaneiotorosprodutos.FormShow(Sender: TObject);
begin
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end
end;

procedure TfrmRomaneiotorosprodutos.INDICEExit(Sender: TObject);
var vn1, vn2, vn3, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= COMPRIMENTO.Value;
      vn2:= DIAMETRO.Value;
      vn3:= INDICE.Value;
      vsoma := vn1 * vn2 * vn2 * vn3;
      QUANTIDADE.Text := FloatToStr(vsoma/10);
end;

end.
