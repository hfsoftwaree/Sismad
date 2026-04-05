unit UnitRfechamentovenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  TfrmRFechamentovenda = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DataInicial1: TEvDateEdit;
    DataFinal1: TEvDateEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    DataInicial: TEdit;
    DataFinal: TEdit;
    tipo: TRadioGroup;
    Panel3: TPanel;
    Memo1: TMemo;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure tipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRFechamentovenda: TfrmRFechamentovenda;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepfechamentovenda,
  UnitRepfechamentovenda1;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmRFechamentovenda.BitBtn3Click(Sender: TObject);
begin
DataInicial1.Text := '';
DataFinal1.Text := '';
Close;
end;

procedure TfrmRFechamentovenda.BitBtn2Click(Sender: TObject);
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
Application.CreateForm(TRepfechamentosaida1, Repfechamentosaida1);
if DataInicial.Text <> DataFinal.Text then
begin
with repfechamentosaida1.query5 do
  	begin
    repfechamentosaida1.Query5.Close;
    repfechamentosaida1.Query5.SQL.Clear ;
    repfechamentosaida1.query5.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, DATA');
    repfechamentosaida1.query5.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida1.query5.SQL.Add('where DATA between :inicio AND :fim AND FECHAMENTOTIPO =:codigo'); // linha para atender as condições
    repfechamentosaida1.query5.SQL.Add('GROUP BY DATA');
    repfechamentosaida1.query5.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida1.query5.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida1.query5.ParamByName('codigo').Text := '2' ; // preenche o parametro 'fim'
    repfechamentosaida1.query5.Open;
    repfechamentosaida1.Query5.Last;
    repfechamentosaida1.TOTAL.Caption := 'TOTAL (' + IntToStr(repfechamentosaida1.query5.RecordCount)+ ')';
    end;

with repfechamentosaida1.query1 do
  	begin
    repfechamentosaida1.Query1.Close;
    repfechamentosaida1.Query1.SQL.Clear ;
    repfechamentosaida1.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA, TIPOPAGAMENTO');
    repfechamentosaida1.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida1.query1.SQL.Add('where DATA between :inicio AND :fim AND FECHAMENTOTIPO =:codigo '); // linha para atender as condições
    repfechamentosaida1.query1.SQL.Add('GROUP BY TIPOPAGAMENTO');
    repfechamentosaida1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida1.query1.ParamByName('codigo').Text  := '2'; // preenche o parametro 'fim'
    repfechamentosaida1.query1.Open;
    repfechamentosaida1.Query1.Last;
    repfechamentosaida1.TOTAL1.Caption := 'TOTAL (' + IntToStr(repfechamentosaida1.query1.RecordCount)+ ')';
    end;

with repfechamentosaida1.query2 do
  	begin
    repfechamentosaida1.Query2.Close;
    repfechamentosaida1.Query2.SQL.Clear ;
    repfechamentosaida1.query2.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA, NOMEVENDEDOR');
    repfechamentosaida1.query2.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida1.query2.SQL.Add('where DATA between :inicio AND :fim AND FECHAMENTOTIPO =:codigo '); // linha para atender as condições
    repfechamentosaida1.query2.SQL.Add('GROUP BY NOMEVENDEDOR');
    repfechamentosaida1.query2.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida1.query2.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida1.query2.ParamByName('codigo').Text  := '2'; // preenche o parametro 'fim'
    repfechamentosaida1.query2.Open;
    repfechamentosaida1.Query2.Last;
    repfechamentosaida1.TOTAL2.Caption := 'TOTAL (' + IntToStr(repfechamentosaida1.query2.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Repfechamentosaida1.Query5.RecordCount = 0 then
begin
Repfechamentosaida1.Query5.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
Repfechamentosaida1.PI.Caption := DataInicial1.text;
Repfechamentosaida1.PF.Caption := DataFinal1.text;
Repfechamentosaida1.QuickRep1.Preview;
Repfechamentosaida1.free;
end;
end
else
begin
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Se data igual then
Application.CreateForm(TRepfechamentosaida, Repfechamentosaida);
if DataInicial.Text = DataFinal.Text then
begin
  Repfechamentosaida.TENTRADA.Filtered:=False;
  Repfechamentosaida.TENTRADA.Close;
  Repfechamentosaida.TENTRADA.Filter := 'DATA >= ' + QuotedStr(DataInicial.Text) + ' and DATA <= ' + QuotedStr(DataFinal.Text) + ' and FECHAMENTOTIPO = ' + QuotedStr('2');
  Repfechamentosaida.TENTRADA.Filtered:=True;
  Repfechamentosaida.TENTRADA.Open;
  Repfechamentosaida.TENTRADA.Refresh;
  repfechamentosaida.TENTRADA.Last;
  repfechamentosaida.TOTAL2.Caption := 'TOTAL (' + IntToStr(repfechamentosaida.TENTRADA.RecordCount)+ ')';

if DataInicial.Text > '01/20/2015' then
begin
with repfechamentosaida.query1 do
begin
repfechamentosaida.Query1.Close;
repfechamentosaida.Query1.SQL.Clear ;
//repfechamentosaida.query1.SQL.Add('with CTE_A as (select TIPOPAGAMENTO, sum(VAL_TOT_NOTA) as VAL_TOT_NOTA'); esta linha vai somente somar as entradas mas vai faltar subtrais o respectivo valor na mesma linha para isto esta utilizando a linha abaixo
repfechamentosaida.query1.SQL.Add('with CTE_A as (select TIPOPAGAMENTO, sum(VAL_TOT_NOTA - VALORENTRADA) as VAL_TOT_NOTA');
repfechamentosaida.query1.SQL.Add('from SAIDA_FECHAMENTO');
repfechamentosaida.query1.SQL.Add('where DATA between :inicio AND :fim AND FECHAMENTOTIPO =:codigo ');
repfechamentosaida.query1.SQL.Add('GROUP BY TIPOPAGAMENTO),');

repfechamentosaida.query1.SQL.Add('CTE_B as (select TIPOPAGAMENTO1, sum(VALORENTRADA) as VALORENTRADA');
repfechamentosaida.query1.SQL.Add('from SAIDA_FECHAMENTO');
repfechamentosaida.query1.SQL.Add('where DATA between :inicio AND :fim AND FECHAMENTOTIPO =:codigo ');
repfechamentosaida.query1.SQL.Add('GROUP BY TIPOPAGAMENTO1 HAVING AVG(VALORENTRADA)>0)');     //tirar a virgula

repfechamentosaida.query1.SQL.Add('select coalesce(a.TIPOPAGAMENTO, b.TIPOPAGAMENTO1) AS TIPOPAGAMENTO, coalesce(a.VAL_TOT_NOTA, 0) + coalesce(b.VALORENTRADA, 0) as VAL_TOT_NOTA');
repfechamentosaida.query1.SQL.Add('from CTE_A as a full join CTE_B as b on b.TIPOPAGAMENTO1 = a.TIPOPAGAMENTO');
repfechamentosaida.query1.SQL.Add('ORDER BY 1');

repfechamentosaida.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ;
repfechamentosaida.query1.ParamByName('fim').AsDateTime := datafinal1.DateValue ;
repfechamentosaida.query1.ParamByName('codigo').Text := '2';
repfechamentosaida.query1.Open;
repfechamentosaida.Query1.Last;
repfechamentosaida.TOTAL1.Caption := 'TOTAL (' + IntToStr(repfechamentosaida.query1.RecordCount)+ ')';
end;

  DM.QManutencao.Open;
  if Repfechamentosaida.TENTRADA.RecordCount = 0 then
begin
Repfechamentosaida.TENTRADA.Filtered:=False;
Repfechamentosaida.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'NF';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
Repfechamentosaida.QuickRep1.Preview;
repfechamentosaida.free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'VAL_TOT_NOTA';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
Repfechamentosaida.QuickRep1.Preview;
repfechamentosaida.free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'VAL_TOT_PRODUTOS';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
Repfechamentosaida.QuickRep1.Preview;
repfechamentosaida.free;
end;
end;
end;
end;
end;
end;
//end;

if DataInicial.Text <= '01/20/2015' then
begin
with repfechamentosaida.query1 do
  	begin
    repfechamentosaida.Query1.Close;
    repfechamentosaida.Query1.SQL.Clear ;
    repfechamentosaida.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA, TIPOPAGAMENTO');
    repfechamentosaida.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida.query1.SQL.Add('where DATA between :inicio AND :fim AND FECHAMENTOTIPO =:codigo '); // linha para atender as condições
    repfechamentosaida.query1.SQL.Add('GROUP BY TIPOPAGAMENTO');
    repfechamentosaida.query1.SQL.Add('ORDER BY TIPOPAGAMENTO');
    repfechamentosaida.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida.query1.ParamByName('codigo').Text := '2'; // preenche o parametro 'codigo'
    repfechamentosaida.query1.Open;
    repfechamentosaida.Query1.Last;
    repfechamentosaida.TOTAL1.Caption := 'TOTAL (' + IntToStr(repfechamentosaida.query1.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Repfechamentosaida.TENTRADA.RecordCount = 0 then
begin
Repfechamentosaida.TENTRADA.Filtered:=False;
Repfechamentosaida.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'NF';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
Repfechamentosaida.QuickRep1.Preview;
repfechamentosaida.free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'VAL_TOT_NOTA';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
Repfechamentosaida.QuickRep1.Preview;
repfechamentosaida.free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'VAL_TOT_PRODUTOS';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
Repfechamentosaida.QuickRep1.Preview;
repfechamentosaida.free;
end;
end;
end;
end;
end;
end;
end;
end;

procedure TfrmRFechamentovenda.BitBtn1Click(Sender: TObject);
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
with repfechamentosaida1.query5 do
  	begin
    repfechamentosaida1.Query5.Close;
    repfechamentosaida1.Query5.SQL.Clear ;
    repfechamentosaida1.query5.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, DATA');
    repfechamentosaida1.query5.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida1.query5.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repfechamentosaida1.query5.SQL.Add('GROUP BY DATA');
    repfechamentosaida1.query5.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida1.query5.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida1.query5.Open;
    repfechamentosaida1.Query5.Last;
    repfechamentosaida1.TOTAL.Caption := 'TOTAL (' + IntToStr(repfechamentosaida1.query5.RecordCount)+ ')';
    end;

with repfechamentosaida1.query1 do
  	begin
    repfechamentosaida1.Query1.Close;
    repfechamentosaida1.Query1.SQL.Clear ;
    repfechamentosaida1.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA, TIPOPAGAMENTO');
    repfechamentosaida1.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida1.query1.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repfechamentosaida1.query1.SQL.Add('GROUP BY TIPOPAGAMENTO');
    repfechamentosaida1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida1.query1.Open;
    repfechamentosaida1.Query1.Last;
    repfechamentosaida1.TOTAL1.Caption := 'TOTAL (' + IntToStr(repfechamentosaida1.query1.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Repfechamentosaida1.Query5.RecordCount = 0 then
begin
Repfechamentosaida1.Query5.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
Repfechamentosaida1.PI.Caption := DataInicial1.text;
Repfechamentosaida1.PF.Caption := DataFinal1.text;
//Application.CreateForm(TRepfechamentosaida1, Repfechamentosaida1);
Repfechamentosaida1.QuickRep1.Print;
//repfechamentosaida1.free;

end
end;


if DataInicial.Text = DataFinal.Text then
begin
  Repfechamentosaida.TENTRADA.Filtered:=False;
  Repfechamentosaida.TENTRADA.Close;
  Repfechamentosaida.TENTRADA.Filter := 'DATA >= ' + QuotedStr(DataInicial.Text) + ' and DATA <= ' + QuotedStr(DataFinal.Text);
  Repfechamentosaida.TENTRADA.Filtered:=True;
  Repfechamentosaida.TENTRADA.Open;
  Repfechamentosaida.TENTRADA.Refresh;
  repfechamentosaida.TENTRADA.Last;
  repfechamentosaida.TOTAL2.Caption := 'TOTAL (' + IntToStr(repfechamentosaida.TENTRADA.RecordCount)+ ')';

with repfechamentosaida.query1 do
  	begin
    repfechamentosaida.Query1.Close;
    repfechamentosaida.Query1.SQL.Clear ;
    repfechamentosaida.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA, TIPOPAGAMENTO');
    repfechamentosaida.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repfechamentosaida.query1.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repfechamentosaida.query1.SQL.Add('GROUP BY TIPOPAGAMENTO');
    repfechamentosaida.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repfechamentosaida.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repfechamentosaida.query1.Open;
    repfechamentosaida.Query1.Last;
    repfechamentosaida.TOTAL1.Caption := 'TOTAL (' + IntToStr(repfechamentosaida.query1.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Repfechamentosaida.TENTRADA.RecordCount = 0 then
begin
Repfechamentosaida.TENTRADA.Filtered:=False;
Repfechamentosaida.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'NF';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
//Application.CreateForm(TRepfechamentosaida, Repfechamentosaida);
Repfechamentosaida.QuickRep1.Print;
//repfechamentosaida.free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'VAL_TOT_NOTA';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
//Application.CreateForm(TRepfechamentosaida, Repfechamentosaida);
Repfechamentosaida.QuickRep1.Print;
//repfechamentosaida.free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
Repfechamentosaida.TENTRADA.IndexFieldNames := 'VAL_TOT_PRODUTOS';
Repfechamentosaida.PI.Caption := DataInicial1.text;
Repfechamentosaida.PF.Caption := DataFinal1.text;
//Application.CreateForm(TRepfechamentosaida, Repfechamentosaida);
Repfechamentosaida.QuickRep1.Print;
//repfechamentosaida.free;
end;
end;
end;
end;
end;
end;
end;


procedure TfrmRFechamentovenda.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
memo1.Text  := 'Para o tipo de relatório selecionado, será gerado o relatório de todas as vendas.';
end;

procedure TfrmRFechamentovenda.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmRFechamentovenda.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure TfrmRFechamentovenda.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure TfrmRFechamentovenda.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;


procedure TfrmRFechamentovenda.tipoClick(Sender: TObject);
begin
case (Tipo.ItemIndex) of
      0: Begin
      memo1.Text  := 'Para o tipo de relatório selecionado, será gerado o relatório de todas as vendas.';
      end
      else
      begin

case (Tipo.ItemIndex) of
      1: Begin
      memo1.Text  := 'Para o tipo de relatório selecionado, será gerado o relatório somente das vendas de Madeira.';
      end
      else
      begin

case (Tipo.ItemIndex) of
      2: Begin
      memo1.Text  := 'Para o tipo de relatório selecionado, será gerado o relatório de vendas de todos os produtos exceto Madeiras.';
      end;
end;
end;
end;
end;
end;
end;


end.

