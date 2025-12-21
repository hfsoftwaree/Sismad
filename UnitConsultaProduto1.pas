unit UnitConsultaProduto1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges, Grids, DBGrids, ToolEdit,
  CurrEdit, TFlatMaskEditUnit, RxLookup, SSBaseXP, SSEdit;

type
  TfrmConsultaProduto1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    quantidade: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Image1: TImage;
    Label5: TLabel;
    pecas: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    produto: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    d: TLabel;
    c: TLabel;
    b: TLabel;
    a: TLabel;
    comp: TEditCurrencyXP;
    larg: TEditCurrencyXP;
    exp: TEditCurrencyXP;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure produtoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure comp2KeyPress(Sender: TObject; var Key: Char);
    procedure compChange(Sender: TObject);
    procedure largChange(Sender: TObject);
    procedure expChange(Sender: TObject);
    procedure compExit(Sender: TObject);
    procedure largExit(Sender: TObject);
    procedure expExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto1: TfrmConsultaProduto1;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}



procedure TfrmConsultaProduto1.BitBtn3Click(Sender: TObject);
var total, total1, total2, total3, total4, total5, total6  : Real;
begin
    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end
      else
      begin
    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
      end
      else
      begin
    If comp.Text = '' then
      Begin
          Application.MessageBox('Comprimento deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          comp.SetFocus;
      end
      else
      begin
    If larg.Text = '' then
      Begin
          Application.MessageBox('Largura deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          larg.SetFocus;
      end
      else
      begin
    If exp.Text = '' then
      Begin
          Application.MessageBox('Expessura deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          exp.SetFocus;
      end
      end
      end
      end;

    if (Produto.Text <> '')and (essencia.Text <> '')and (comp.Text <> '')and (larg.Text <> '')and (exp.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];

        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
        DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text)+ 'and COMPRIMENTO = ' + (edit3.Text)+ 'and LARGURA = ' + (edit4.Text)+ 'and EXPESSURA = ' + (edit5.Text);
        DM.TESTOQUE.Filtered := True;
        DM.TESTOQUE.Open;

        if DM.TESTOQUE.RecordCount = 0 then
        begin
        a.Caption := '0';
        b.Caption := '0,0000';
        c.Caption := '0';
        d.Caption := '0,0000';
        end
        else
        total3 := 0;
        total4 := 0;

        DM.TESTOQUE.First;
          while not DM.TESTOQUE.Eof do
          begin
          total3 := DM.TESTOQUE['TOTALM3'] + total3;
          total4 := DM.TESTOQUE['QUANTIDADE'] + total4;
          DM.TESTOQUE.Next;
          end;
          pecas.Caption := FormatCurr('',total4);
          quantidade.Caption := FormatCurr('#0.0000',total3);
          end;
end;
END;

procedure TfrmConsultaProduto1.BitBtn1Click(Sender: TObject);
begin
quantidade.Caption := '';
pecas.Caption := '';
essencia.KeyValue := '';
produto.KeyValue := '';
Edit1.Clear;
Edit2.Clear;
Close;
end;





procedure TfrmConsultaProduto1.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmConsultaProduto1.produtoClick(Sender: TObject);
begin
//EDIT2.Text := DM.TProduto['GRAUIND'];

end;

procedure TfrmConsultaProduto1.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure TfrmConsultaProduto1.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaProduto1.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;



procedure TfrmConsultaProduto1.FormShow(Sender: TObject);
begin
 DM.TsubProdutos.Open;
 DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
 dm.TSUBPRODUTOS.Last;
 DM.TEssencia.Open;
 DM.TEssencia.IndexFieldNames := 'ESSENCIA';
 dm.TEssencia.Last;
 essencia.SetFocus;
end;

procedure TfrmConsultaProduto1.comp2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key in [','] then
Key := '.';
end;

procedure TfrmConsultaProduto1.compChange(Sender: TObject);
begin
edit3.Text := comp.Text;
edit3.Text := StringReplace(edit3.Text, ',', '.', []);
end;

procedure TfrmConsultaProduto1.largChange(Sender: TObject);
begin
edit4.Text := larg.Text;
edit4.Text := StringReplace(edit4.Text, ',', '.', []);
end;

procedure TfrmConsultaProduto1.expChange(Sender: TObject);
begin
edit5.Text := exp.Text;
edit5.Text := StringReplace(edit5.Text, ',', '.', []);
end;

procedure TfrmConsultaProduto1.compExit(Sender: TObject);
begin
if comp.Text = '0,00' then
begin
edit3.Text := '0.00'
end;
end;

procedure TfrmConsultaProduto1.largExit(Sender: TObject);
begin
if larg.Text = '0,000' then
begin
edit4.Text := '0.000'
end;
end;

procedure TfrmConsultaProduto1.expExit(Sender: TObject);
begin
if exp.Text = '0,000' then
begin
edit5.Text := '0.000'
end;
end;

procedure TfrmConsultaProduto1.FormDestroy(Sender: TObject);
begin
DM.TEssencia.Cancel;
DM.TEssencia.Close;
DM.TSUBPRODUTOS.Cancel;
DM.TSUBPRODUTOS.Close;
DM.TESTOQUE.Filtered := FALSE;
DM.TESTOQUE.Close;
end;

end.
