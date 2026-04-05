unit UnitConsultaESerrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges, EDateEd, Grids, DBGrids, DbPrgrss;

type
  TfrmConsultaESerrada = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Tipo: TRadioGroup;
    Edit1: TEdit;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    produto: TDBLookupComboBox;
    Label2: TLabel;
    pecas: TLabel;
    Gauge2: TGauge;
    procedure TipoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaESerrada: TfrmConsultaESerrada;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}
procedure TfrmConsultaESerrada.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
     produto.KeyValue := ' ';
     essencia.KeyValue := ' ';
     ESTOQUE.Caption := '';
     PECAS.Caption := '';
        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TSUBPRODUTOS.Last;
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            DM.TEssencia.Last;
            Produto.Enabled := True;
            Essencia.Enabled := True;
        end;
     1: Begin
     produto.KeyValue := ' ';
essencia.KeyValue := ' ';
ESTOQUE.Caption := '';
PECAS.Caption := '';
        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
            DM.TEssencia.close;
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TSUBPRODUTOS.Last;
//            DM.TEssencia.close;
  //          DM.TEssencia.Open;
    //        DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            Produto.Enabled := True;
            Essencia.Enabled := False;
        end;
     2: Begin
     produto.KeyValue := ' ';
essencia.KeyValue := ' ';
ESTOQUE.Caption := '';
PECAS.Caption := '';
        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
            DM.TsubProdutos.Close;
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            DM.TEssencia.Last;
            Produto.Enabled := False;
            Essencia.Enabled := true;
        end;
     3: Begin
produto.KeyValue := ' ';
essencia.KeyValue := ' ';
ESTOQUE.Caption := '';
PECAS.Caption := '';
        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            DM.TSUBPRODUTOS.Last;
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            DM.TEssencia.Last;
            Produto.Enabled := false;
            Essencia.Enabled := false;
        end;
   end
end;

procedure TfrmConsultaESerrada.BitBtn3Click(Sender: TObject);
var total, total1, total2, total3, total4, total5, total6  : Real;
var vn1, vn2, vn3, vn4, vsoma: real;
begin
   if Tipo.ItemIndex = -1 then
      Begin
          Application.MessageBox('Tipo de Consulta deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
      end;

if (Tipo.ItemIndex <> -1) then
begin
   case (Tipo.ItemIndex) of
      0: Begin
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
      end;

    if (Produto.Text <> '')and (essencia.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];

        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
        DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        DM.TESTOQUE.Filtered := True;
        DM.TESTOQUE.Open;
        DM.QESTOQUE.Open;

        if DM.QESTOQUE.RecordCount = 0 then
        begin
        DM.TESTOQUE.Filtered := False;
        DM.QESTOQUE.Close;
        Application.MessageBox('Movimento de estoque zerado para os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        end
        else
        begin
        if DM.QESTOQUE.RecordCount <> 0 then
        begin
        total3 := 0;
        total6 := 0;

        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESTOQUE.RecordCount;
        DM.TESTOQUE.Last;
        DM.TESTOQUE.First;
        if not DM.TESTOQUE.Eof then
        repeat
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESTOQUE['TOTALM3'] + total3;
        total6 := DM.TESTOQUE['QUANTIDADE'] + total6;
        DM.TESTOQUE.Next;
        until DM.TESTOQUE.Eof;
        end;
        estoque.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := FormatCurr('',total6);
        gauge2.Visible := false;
        end;
        end;
        end;


      1: Begin
    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
            EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
    begin

        DM.TESTOQUE.Filtered := False;

        DM.TESTOQUE.Close;
        DM.TESTOQUE.Filter := 'CODIGOPRODUTO = ' + (Edit2.Text);
        DM.TESTOQUE.Filtered := True;
        DM.TESTOQUE.Open;
        DM.QESTOQUE.Open;

        if DM.QESTOQUE.RecordCount = 0 then
        begin
        DM.TESTOQUE.Filtered := False;
        DM.QESTOQUE.Close;
        Application.MessageBox('Movimento de estoque zerado para os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        end
        else
        begin
        if DM.QESTOQUE.RecordCount <> 0 then
        begin
        total3 := 0;
        total6 := 0;

        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESTOQUE.RecordCount;
        DM.TESTOQUE.Last;
        DM.TESTOQUE.First;
        if not DM.TESTOQUE.Eof  then
        repeat
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESTOQUE['TOTALM3'] + total3;
        total6 := DM.TESTOQUE['QUANTIDADE'] + total6;
        DM.TESTOQUE.Next;
        until DM.TESTOQUE.Eof;
        end;
        estoque.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := FormatCurr('',total6);
        gauge2.Visible := false;
        end;
        end;
        end;

     2: Begin
    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
      end;

    if (essencia.Text <> '') then
    begin
        Edit1.Text := DM.TEssencia['CODIGO'];

        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
        DM.TESTOQUE.Filter := 'CODIGOESSENCIA = ' + (Edit1.Text);
        DM.TESTOQUE.Filtered := True;
        DM.TESTOQUE.Open;
        DM.QESTOQUE.Open;

        if DM.QESTOQUE.RecordCount = 0 then
        begin
        DM.TESTOQUE.Filtered := False;
        DM.QESTOQUE.Close;
        Application.MessageBox('Movimento de estoque zerado para os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        end
        else
        begin
        if DM.QESTOQUE.RecordCount <> 0 then
        begin

        total3 := 0;
        total6 := 0;

        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESTOQUE.RecordCount;
        DM.TESTOQUE.Last;
        DM.TESTOQUE.First;
        if not DM.TESTOQUE.Eof  then
        repeat
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESTOQUE['TOTALM3'] + total3;
        total6 := DM.TESTOQUE['QUANTIDADE'] + total6;
        DM.TESTOQUE.Next;
        until DM.TESTOQUE.Eof;
        end;
        estoque.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := FormatCurr('',total6);
        gauge2.Visible := false;
        end;
        end;
        end;


      3: Begin
        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
        DM.QESTOQUE.Open;
        if DM.QESTOQUE.RecordCount = 0 then
        begin
        DM.TESTOQUE.Filtered := False;
        DM.QESTOQUE.Close;
        Application.MessageBox('Movimento de estoque zerado para os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        end
        else
        begin
        if DM.QESTOQUE.RecordCount <> 0 then
        begin
        DM.TESTOQUE.Filtered := False;
        DM.TESTOQUE.Close;
        DM.TESTOQUE.Open;

        total3 := 0;
        total6 := 0;

        gauge2.Visible := true;
        gauge2.MaxValue := 0;
        Gauge2.MaxValue:= DM.TESTOQUE.RecordCount;
        DM.TESTOQUE.Last;
        DM.TESTOQUE.First;
        if not DM.TESTOQUE.Eof  then
        repeat
        Gauge2.Progress:=Gauge2.Progress + 1;
        total3 := DM.TESTOQUE['TOTALM3'] + total3;
        total6 := DM.TESTOQUE['QUANTIDADE'] + total6;
        DM.TESTOQUE.Next;
        until DM.TESTOQUE.Eof;
        end;
        estoque.Caption := FormatCurr('#0.0000',total3);
        pecas.Caption := FormatCurr('',total6);
        gauge2.Visible := false;
        end;
        end;
        end;

end;
end;

procedure TfrmConsultaESerrada.BitBtn1Click(Sender: TObject);
begin
Tipo.ItemIndex := -1;
ESTOQUE.Caption := '';
PECAS.Caption := '';
produto.Enabled := false;
essencia.KeyValue := '';
produto.KeyValue := '';
Edit1.Clear;
Edit2.Clear;
Close;
end;





procedure TfrmConsultaESerrada.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmConsultaESerrada.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure TfrmConsultaESerrada.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmConsultaESerrada.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;





procedure TfrmConsultaESerrada.FormDestroy(Sender: TObject);
begin
DM.QEssencia.Close;
DM.TEssencia.Cancel;
DM.TEssencia.Close;
DM.TsubPRODUTOs.Close;
DM.TESTOQUE.Filtered := FALSE;
DM.TESTOQUE.Close;
end;

end.
