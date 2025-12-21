unit unitrestoquepatio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges, EDateEd, Grids, DBGrids;

type
  TfrmREstoquePatio = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Gauge2: TGauge;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DataInicial: TEdit;
    DataFinal: TEdit;
    Tipo: TRadioGroup;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    produto: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    c: TComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure TipoClick(Sender: TObject);
    procedure EssenciaEnter(Sender: TObject);
    procedure produtoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EssenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure produtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREstoquePatio: TfrmREstoquePatio;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, unitrepestoquepatio;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmREstoquePatio.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
produto.KeyValue := ' ';
essencia.KeyValue := ' ';
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            dm.TSUBPRODUTOS.Last;
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            dm.TEssencia.Last;
            Produto.Enabled := True;
            Essencia.Enabled := True;
        end;
     1: Begin
          produto.KeyValue := ' ';
essencia.KeyValue := ' ';
            DM.TsubProdutos.Close;
            DM.TsubProdutos.Open;
            DM.TsubProdutos.IndexFieldNames := 'NOMEGRAU';
            dm.TSUBPRODUTOS.Last;
            DM.TEssencia.close;
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            dm.TEssencia.Last;
            Produto.Enabled := True;
            Essencia.Enabled := False;
        end;
     2: Begin
          produto.KeyValue := ' ';
essencia.KeyValue := ' ';
            DM.TsubProdutos.Close;
            DM.TEssencia.close;
            Produto.Enabled := False;
            Essencia.Enabled := False;
        end;
   end
end;


procedure TfrmREstoquePatio.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure TfrmREstoquePatio.produtoClick(Sender: TObject);
begin
EDIT2.Text := DM.TProduto['GRAUIND'];
end;

procedure TfrmREstoquePatio.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure TfrmREstoquePatio.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure TfrmREstoquePatio.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;

procedure TfrmREstoquePatio.BitBtn3Click(Sender: TObject);
begin
produto.Enabled := false;
produto.ListFieldIndex := 0;
essencia.ListFieldIndex := 0;
Edit1.Clear;
Edit2.Clear;
Close;

end;

procedure TfrmREstoquePatio.BitBtn2Click(Sender: TObject);
var total, total1, total2, total3  : Real;
begin
   case (Tipo.ItemIndex) of
      0: Begin

    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
      end
      else
      begin
    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end
      end;

    if (Produto.Text <> '')and (essencia.Text <> '') then
    begin
    Application.CreateForm(TRepestoquepatio, Repestoquepatio);
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];
        repestoquepatio.TENTRADA.Filtered := False;
        repestoquepatio.TENTRADA.Close;
        repestoquepatio.TENTRADA.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        repestoquepatio.TENTRADA.Filtered := True;
        repestoquepatio.TENTRADA.Open;
        repestoquepatio.TENTRADA.Last;
        repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIA';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'QUANTIDADE';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'TOTALM3';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end;
        end;
        end;
        end;
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
    begin
    Application.CreateForm(TRepestoquepatio, Repestoquepatio);
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        repestoquepatio.TENTRADA.Filtered := False;
        repestoquepatio.TENTRADA.Close;
        repestoquepatio.TENTRADA.Filter := 'CODIGOPRODUTO = ' + (Edit2.Text);
        repestoquepatio.TENTRADA.Filtered := True;
        repestoquepatio.TENTRADA.Open;
        repestoquepatio.TENTRADA.Last;
        repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIA';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'QUANTIDADE';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'TOTALM3';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end;
        end;
        end;
        end;
        end;
        end;
        end;

     2: Begin
     Application.CreateForm(TRepestoquepatio, Repestoquepatio);
edit1.Text := '';
     edit2.Text := '';
     repestoquepatio.tentrada.filtered := false;
     repestoquepatio.TENTRADA.Close;
     repestoquepatio.tentrada.open;
     repestoquepatio.TENTRADA.Last;
     repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if repestoquepatio.TENTRADA.RecordCount <> 0 then
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIA';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'QUANTIDADE';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'TOTALM3';
repestoquepatio.QuickRep1.Preview;
repestoquepatio.free;
        end;
        end;
        end;
        end;
        end;
        end;
        end;
end;
end;

procedure TfrmREstoquePatio.BitBtn1Click(Sender: TObject);
var total, total1, total2, total3  : Real;
begin
   case (Tipo.ItemIndex) of
      0: Begin

    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
          essencia.SetFocus;
      end
      else
      begin
    If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
          produto.SetFocus;
      end
      end;

    if (Produto.Text <> '')and (essencia.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];
        repestoquepatio.TENTRADA.Filtered := False;
        repestoquepatio.TENTRADA.Close;
        repestoquepatio.TENTRADA.Filter := 'CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        repestoquepatio.TENTRADA.Filtered := True;
        repestoquepatio.TENTRADA.Open;
        repestoquepatio.TENTRADA.Last;
        repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIA';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'QUANTIDADE';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'TOTALM3';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end;
        end;
        end;
        end;
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
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        repestoquepatio.TENTRADA.Filtered := False;
        repestoquepatio.TENTRADA.Close;
        repestoquepatio.TENTRADA.Filter := 'CODIGOPRODUTO = ' + (Edit2.Text);
        repestoquepatio.TENTRADA.Filtered := True;
        repestoquepatio.TENTRADA.Open;
                repestoquepatio.TENTRADA.Last;
        repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIA';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'QUANTIDADE';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'TOTALM3';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end;
        end;
        end;
        end;
        end;
        end;
        end;

     2: Begin
repestoquepatio.tentrada.open;
        repestoquepatio.TENTRADA.Last;
        repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';
        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIA';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'QUANTIDADE';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repestoquepatio.TENTRADA.RecordCount;
repestoquepatio.TENTRADA.Last;
repestoquepatio.TENTRADA.First;
if not repestoquepatio.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repestoquepatio.TENTRADA.next
until repestoquepatio.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repestoquepatio.TENTRADA.IndexFieldNames := 'TOTALM3';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repestoquepatio.QuickRep1.Print;
//repestoquepatio.free;
        end;
        end;
        end;
        end;
        end;
        end;
        end;

end;

procedure TfrmREstoquePatio.EssenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_SPACE then
essencia.DropDown;
end;

procedure TfrmREstoquePatio.produtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_SPACE then
produto.DropDown;
end;

procedure TfrmREstoquePatio.BitBtn6Click(Sender: TObject);
begin
DM.TEssencia.Close;
DM.TsubPRODUTOs.Close;

produto.Enabled := false;
produto.ListFieldIndex := 0;
essencia.ListFieldIndex := 0;
Edit1.Clear;
Edit2.Clear;
Close;
end;

procedure TfrmREstoquePatio.FormDestroy(Sender: TObject);
begin
DM.TEssencia.Close;
DM.TsubPRODUTOs.Close;

end;

end.
