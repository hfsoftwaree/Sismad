unit unitrsaidaprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg, Gauges, EDateEd, Grids, DBGrids;

type
  Tfrmrsaidaprodutos = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    Tipo: TRadioGroup;
    Image1: TImage;
    GroupBox2: TGroupBox;
    produto: TDBLookupComboBox;
    Gauge2: TGauge;
    GroupBox4: TGroupBox;
    c: TComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    DataInicial1: TEvDateEdit;
    GroupBox5: TGroupBox;
    DataFinal1: TEvDateEdit;
    DataInicial: TEdit;
    DataFinal: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
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
    procedure DataInicial1Change(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TipoEnter(Sender: TObject);
    procedure DataFinal1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrsaidaprodutos: Tfrmrsaidaprodutos;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, unitrepestoquepatio,
  unitrepsaidaprodutos, unitrepsaidaprodutos1, UnitRepfechamentovenda1;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure Tfrmrsaidaprodutos.TipoClick(Sender: TObject);
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


procedure Tfrmrsaidaprodutos.EssenciaEnter(Sender: TObject);
begin
ESSENCIA.DropDown;
end;

procedure Tfrmrsaidaprodutos.produtoClick(Sender: TObject);
begin
EDIT2.Text := DM.TProduto['GRAUIND'];
end;

procedure Tfrmrsaidaprodutos.DBLookupComboBox1Enter(Sender: TObject);
begin
Produto.DropDown;
end;

procedure Tfrmrsaidaprodutos.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO'];
end;


procedure Tfrmrsaidaprodutos.Panel2Click(Sender: TObject);
begin
self.Visible := false;
end;

procedure Tfrmrsaidaprodutos.BitBtn3Click(Sender: TObject);
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

procedure Tfrmrsaidaprodutos.BitBtn2Click(Sender: TObject);
var total, total1, total2, total3  : Real;
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
if DataInicial.Text = DataFinal.Text then
begin
   case (Tipo.ItemIndex) of
      0: Begin

    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
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
    Application.CreateForm(TRepsaidaprodutos, Repsaidaprodutos);
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];
        repsaidaprodutos.TENTRADA.Filtered := False;
        repsaidaprodutos.TENTRADA.Close;
        repsaidaprodutos.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text)+ 'and CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        repsaidaprodutos.TENTRADA.Filtered := True;
        repsaidaprodutos.TENTRADA.Open;
        repsaidaprodutos.TENTRADA.Last;
        repsaidaprodutos.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos.TENTRADA.RecordCount)+ ')';

        if repsaidaprodutos.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        datainicial1.SetFocus;
produto.KeyValue := ' ';
essencia.KeyValue := ' ';
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'CODIGOFORNECEDOR';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
//repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIA';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 4 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 5 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'QUANTIDADE';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 6 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'TOTALM3';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end;
        end;
        end;
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
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
    begin
        Application.CreateForm(TRepsaidaprodutos, Repsaidaprodutos);
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];

        repsaidaprodutos.TENTRADA.Filtered := False;
        repsaidaprodutos.TENTRADA.Close;
        repsaidaprodutos.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        repsaidaprodutos.TENTRADA.Filtered := True;
        repsaidaprodutos.TENTRADA.Open;
        repsaidaprodutos.TENTRADA.Last;
        repsaidaprodutos.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos.TENTRADA.RecordCount)+ ')';

//        repestoquepatio.TENTRADA.Filtered := False;
  //      repestoquepatio.TENTRADA.Close;
    //    repestoquepatio.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
      //  repestoquepatio.TENTRADA.Filtered := True;
//        repestoquepatio.TENTRADA.Open;
  //      repestoquepatio.TENTRADA.Last;
    //    repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repsaidaprodutos.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        datainicial1.SetFocus;
produto.KeyValue := ' ';
essencia.KeyValue := ' ';
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'CODIGOFORNECEDOR';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
//repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIA';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 4 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 5 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'QUANTIDADE';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end
        else
        begin
        if c.ItemIndex = 6 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'TOTALM3';
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Preview;
repsaidaprodutos.free;
        end;
        END;
        END;
        end;
        END;
        end;
        end;
        end;
        end;
        end;

end;
END;
end;
end;

procedure Tfrmrsaidaprodutos.BitBtn1Click(Sender: TObject);
var total, total1, total2, total3  : Real;
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
if DataInicial.Text = DataFinal.Text then
begin
   case (Tipo.ItemIndex) of
      0: Begin

    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
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
        repsaidaprodutos.TENTRADA.Filtered := False;
        repsaidaprodutos.TENTRADA.Close;
        repsaidaprodutos.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text)+ 'and CODIGOESSENCIA = ' + (edit1.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        repsaidaprodutos.TENTRADA.Filtered := True;
        repsaidaprodutos.TENTRADA.Open;
        repsaidaprodutos.TENTRADA.Last;
        repsaidaprodutos.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos.TENTRADA.RecordCount)+ ')';

        if repsaidaprodutos.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        datainicial1.SetFocus;
produto.KeyValue := ' ';
essencia.KeyValue := ' ';
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'CODIGOFORNECEDOR';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
//repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIA';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 4 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 5 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'QUANTIDADE';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 6 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'TOTALM3';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end;
        end;
        end;
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
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
    begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        repestoquepatio.TENTRADA.Filtered := False;
        repestoquepatio.TENTRADA.Close;
        repestoquepatio.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text)+ 'and CODIGOPRODUTO = ' + (Edit2.Text);
        repestoquepatio.TENTRADA.Filtered := True;
        repestoquepatio.TENTRADA.Open;
        repestoquepatio.TENTRADA.Last;
        repestoquepatio.TOTAL.Caption := 'TOTAL (' + IntToStr(repestoquepatio.TENTRADA.RecordCount)+ ')';

        if repestoquepatio.TENTRADA.RecordCount = 0 then
        begin
        Application.MessageBox('Não há relatório a ser vizualizado com os critérios informados, Verifique!', 'relatório', mb_Ok + mb_IconInformation);
        datainicial1.SetFocus;
produto.KeyValue := ' ';
essencia.KeyValue := ' ';
        end
        else
        begin
        if c.ItemIndex = 0 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'CODIGOFORNECEDOR';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 1 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
//repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 2 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIA';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 3 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'NFNUMERO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 4 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 5 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'QUANTIDADE';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end
        else
        begin
        if c.ItemIndex = 6 then
        begin
label7.Visible := true;
gauge2.Visible := true;
gauge2.MaxValue := 0;
Gauge2.MaxValue:= repsaidaprodutos.TENTRADA.RecordCount;
repsaidaprodutos.TENTRADA.Last;
repsaidaprodutos.TENTRADA.First;
if not repsaidaprodutos.TENTRADA.Eof then
repeat
Gauge2.Progress:=Gauge2.Progress + 1;
repsaidaprodutos.TENTRADA.next
until repsaidaprodutos.TENTRADA.Eof;
gauge2.Visible := false;
label7.Visible := false;
repsaidaprodutos.TENTRADA.IndexFieldNames := 'TOTALM3';
//Application.CreateForm(TRepestoquepatio, Repestoquepatio);
repsaidaprodutos.PI.Caption := datainicial1.Text;
repsaidaprodutos.PF.Caption := datafinal1.Text;
repsaidaprodutos.QuickRep1.Print;
//repestoquepatio.free;
        end;
        END;
        END;
        end;
        END;
        end;
        end;
        end;
        end;
        end;

end;
END;
end;
end;

procedure Tfrmrsaidaprodutos.EssenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_SPACE then
essencia.DropDown;
end;

procedure Tfrmrsaidaprodutos.produtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_SPACE then
produto.DropDown;
end;

procedure Tfrmrsaidaprodutos.BitBtn6Click(Sender: TObject);
begin
produto.Enabled := false;
produto.ListFieldIndex := 0;
essencia.ListFieldIndex := 0;
Edit1.Clear;
Edit2.Clear;
Close;
end;

procedure Tfrmrsaidaprodutos.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure Tfrmrsaidaprodutos.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure Tfrmrsaidaprodutos.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure Tfrmrsaidaprodutos.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;

procedure Tfrmrsaidaprodutos.FormShow(Sender: TObject);
begin
datainicial1.SetFocus;
Datainicial1.Text := DateToStr(now);
Datafinal1.Text := DateToStr(now);
end;

procedure Tfrmrsaidaprodutos.TipoEnter(Sender: TObject);
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

procedure Tfrmrsaidaprodutos.DataFinal1Exit(Sender: TObject);
begin
if datainicial.Text = datafinal.Text then
begin
c.Enabled := false;
bitbtn2.Visible := true;
bitbtn4.Visible := false;
bitbtn1.Visible := true;
bitbtn5.Visible := false;
bitbtn3.Visible := true;
bitbtn6.Visible := false;
end
else
begin
if datainicial.Text <> datafinal.Text then
begin
c.Enabled := true;
bitbtn2.Visible := false;
bitbtn4.Visible := true;
bitbtn1.Visible := false;
bitbtn5.Visible := true;
bitbtn3.Visible := false;
bitbtn6.Visible := true;
end;
end;
end;


procedure Tfrmrsaidaprodutos.BitBtn4Click(Sender: TObject);
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
if DataInicial.Text <> DataFinal.Text then
begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];

case (Tipo.ItemIndex) of
      0: Begin
    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
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
    Application.CreateForm(Trepsaidaprodutos1, repsaidaprodutos1);
with repsaidaprodutos1.query1 do
  	begin
    repsaidaprodutos1.query1.Close;
    repsaidaprodutos1.query1.SQL.Clear ;
    repsaidaprodutos1.query1.SQL.Add('select SUM(VALTOTAL) AS VALTOTAL,SUM(TOTALM3)AS TOTALM3,SUM(QUANTIDADE)AS QUANTIDADE, DATALANCAMENTO');
    repsaidaprodutos1.query1.SQL.Add('from SAIDA');
    repsaidaprodutos1.query1.SQL.Add('where DATALANCAMENTO between :inicio AND :fim and CODIGOESSENCIA = :Descricao and CODIGOPRODUTO = :Descricao1');
    repsaidaprodutos1.query1.SQL.Add('GROUP BY DATALANCAMENTO, CODIGOESSENCIA, CODIGOPRODUTO');
    repsaidaprodutos1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('Descricao').AsString    := Edit1.Text ;
    repsaidaprodutos1.query1.ParamByName('Descricao1').AsString    := Edit2.Text ;
    repsaidaprodutos1.query1.Open;
    repsaidaprodutos1.query1.Last;
    repsaidaprodutos1.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos1.query1.RecordCount)+ ')';
    repsaidaprodutos1.ESSENCIA.Caption := essencia.text;
    repsaidaprodutos1.PRODUTO.Caption := produto.text;
    end;

  DM.QManutencao.Open;
  if repsaidaprodutos1.Query1.RecordCount = 0 then
begin
repsaidaprodutos1.Query1.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
repsaidaprodutos1.PI.Caption := DataInicial1.text;
repsaidaprodutos1.PF.Caption := DataFinal1.text;
RepSaidaprodutos1.QuickRep1.Preview;
repsaidaprodutos1.Free;
end;
end;
end;
end;

case (Tipo.ItemIndex) of
      1: Begin
          If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
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
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
    begin
    Application.CreateForm(Trepsaidaprodutos1, repsaidaprodutos1);

with repsaidaprodutos1.query1 do
  	begin
    repsaidaprodutos1.query1.Close;
    repsaidaprodutos1.query1.SQL.Clear ;
    repsaidaprodutos1.query1.SQL.Add('select SUM(VALTOTAL) AS VALTOTAL,SUM(TOTALM3)AS TOTALM3,SUM(QUANTIDADE)AS QUANTIDADE, DATALANCAMENTO');
    repsaidaprodutos1.query1.SQL.Add('from SAIDA');
    repsaidaprodutos1.query1.SQL.Add('where DATALANCAMENTO between :inicio AND :fim and CODIGOPRODUTO = :Descricao1');
    repsaidaprodutos1.query1.SQL.Add('GROUP BY DATALANCAMENTO, CODIGOPRODUTO');
    repsaidaprodutos1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('Descricao1').AsString    := Edit2.Text ;
    repsaidaprodutos1.query1.Open;
    repsaidaprodutos1.query1.Last;
    repsaidaprodutos1.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos1.query1.RecordCount)+ ')';
    repsaidaprodutos1.ESSENCIA.Caption := essencia.text;
    repsaidaprodutos1.PRODUTO.Caption := produto.text;
    end;

  DM.QManutencao.Open;
  if repsaidaprodutos1.Query1.RecordCount = 0 then
begin
repsaidaprodutos1.Query1.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
repsaidaprodutos1.PI.Caption := DataInicial1.text;
repsaidaprodutos1.PF.Caption := DataFinal1.text;
RepSaidaprodutos1.QuickRep1.Preview;
repsaidaprodutos1.Free;
end;
end;
end;
end;
end;
end;
end;

procedure Tfrmrsaidaprodutos.BitBtn5Click(Sender: TObject);
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
if DataInicial.Text <> DataFinal.Text then
begin
        EDIT2.Text := DM.TSUBPRODUTOS['GRAUIND'];
        Edit1.Text := DM.TEssencia['CODIGO'];

case (Tipo.ItemIndex) of
      0: Begin
    If essencia.Text = '' then
      Begin
          Application.MessageBox('Essência deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
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
with repsaidaprodutos1.query1 do
  	begin
    repsaidaprodutos1.query1.Close;
    repsaidaprodutos1.query1.SQL.Clear ;
    repsaidaprodutos1.query1.SQL.Add('select SUM(VALTOTAL) AS VALTOTAL,SUM(TOTALM3)AS TOTALM3,SUM(QUANTIDADE)AS QUANTIDADE, DATALANCAMENTO');
    repsaidaprodutos1.query1.SQL.Add('from SAIDA');
    repsaidaprodutos1.query1.SQL.Add('where DATALANCAMENTO between :inicio AND :fim and CODIGOESSENCIA = :Descricao and CODIGOPRODUTO = :Descricao1');
    repsaidaprodutos1.query1.SQL.Add('GROUP BY DATALANCAMENTO, CODIGOESSENCIA, CODIGOPRODUTO');
    repsaidaprodutos1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('Descricao').AsString    := Edit1.Text ;
    repsaidaprodutos1.query1.ParamByName('Descricao1').AsString    := Edit2.Text ;
    repsaidaprodutos1.query1.Open;
    repsaidaprodutos1.query1.Last;
    repsaidaprodutos1.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos1.query1.RecordCount)+ ')';
    repsaidaprodutos1.ESSENCIA.Caption := essencia.text;
    repsaidaprodutos1.PRODUTO.Caption := produto.text;
    end;

  DM.QManutencao.Open;
  if repsaidaprodutos1.Query1.RecordCount = 0 then
begin
repsaidaprodutos1.Query1.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
repsaidaprodutos1.PI.Caption := DataInicial1.text;
repsaidaprodutos1.PF.Caption := DataFinal1.text;
repsaidaprodutos1.QuickRep1.Print;
end;
end;
end;
end;

case (Tipo.ItemIndex) of
      1: Begin
          If Produto.Text = '' then
      Begin
          Application.MessageBox('Tipo de Produto deve ser informado!', 'Consulta', mb_Ok + mb_IconInformation);
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
          produto.SetFocus;
      end;

    if (Produto.Text <> '') then
    begin

with repsaidaprodutos1.query1 do
  	begin
    repsaidaprodutos1.query1.Close;
    repsaidaprodutos1.query1.SQL.Clear ;
    repsaidaprodutos1.query1.SQL.Add('select SUM(VALTOTAL) AS VALTOTAL,SUM(TOTALM3)AS TOTALM3,SUM(QUANTIDADE)AS QUANTIDADE, DATALANCAMENTO');
    repsaidaprodutos1.query1.SQL.Add('from SAIDA');
    repsaidaprodutos1.query1.SQL.Add('where DATALANCAMENTO between :inicio AND :fim and CODIGOPRODUTO = :Descricao1');
    repsaidaprodutos1.query1.SQL.Add('GROUP BY DATALANCAMENTO, CODIGOPRODUTO');
    repsaidaprodutos1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ;
    repsaidaprodutos1.query1.ParamByName('Descricao1').AsString    := Edit2.Text ;
    repsaidaprodutos1.query1.Open;
    repsaidaprodutos1.query1.Last;
    repsaidaprodutos1.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaidaprodutos1.query1.RecordCount)+ ')';
    repsaidaprodutos1.ESSENCIA.Caption := essencia.text;
    repsaidaprodutos1.PRODUTO.Caption := produto.text;
    end;

  DM.QManutencao.Open;
  if repsaidaprodutos1.Query1.RecordCount = 0 then
begin
repsaidaprodutos1.Query1.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
repsaidaprodutos1.PI.Caption := DataInicial1.text;
repsaidaprodutos1.PF.Caption := DataFinal1.text;
repsaidaprodutos1.QuickRep1.Print;
end;
end;
end;
end;
end;
end;
end;

procedure Tfrmrsaidaprodutos.FormDestroy(Sender: TObject);
begin
DM.TEssencia.Close;
DM.TsubPRODUTOs.Close;
end;

end.
