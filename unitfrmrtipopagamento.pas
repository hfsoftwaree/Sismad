unit unitfrmrtipopagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit, DBCtrls,
  DB, IBCustomDataSet, IBQuery;

type
  Tfrmrtipopagamento = class(TForm)
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
    GroupBox3: TGroupBox;
    tipopagamento: TComboBox;
    tp: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure tipoClick(Sender: TObject);
    procedure tipopagamentoChange(Sender: TObject);
    procedure tipopagamentoEnter(Sender: TObject);
    procedure DataFinal1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrtipopagamento: Tfrmrtipopagamento;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepfechamentovenda,
  UnitRepfechamentovenda1, unitreptipopagametno, unitreptipopagamento1,
  unitreptipopagamento2;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure Tfrmrtipopagamento.BitBtn3Click(Sender: TObject);
begin
DataInicial1.Text := '';
DataFinal1.Text := '';
Close;
end;

procedure Tfrmrtipopagamento.BitBtn2Click(Sender: TObject);
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Se data igual then
case (Tipo.ItemIndex) of
      0: Begin
Application.CreateForm(TReptipopagamento, Reptipopagamento);
if DataInicial.Text = DataFinal.Text then
begin
with reptipopagamento.query1 do
  	begin
    reptipopagamento.Query1.Close;
    reptipopagamento.Query1.SQL.Clear ;
    reptipopagamento.query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento.query1.Open;
    reptipopagamento.Query1.Last;
    reptipopagamento.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento.query1.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Reptipopagamento.Query1.RecordCount = 0 then
begin
reptipopagamento.query1.close;
dm.qmanutencao.close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
with reptipopagamento.query1 do
  	begin
    reptipopagamento.Query1.Close;
    reptipopagamento.Query1.SQL.Clear ;
    reptipopagamento.query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento.query1.SQL.Add('Order by NOMECLIENTE');
    reptipopagamento.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento.query1.Open;
    reptipopagamento.Query1.Last;
    reptipopagamento.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento.query1.RecordCount)+ ')';
    end;

Reptipopagamento.TP.Caption := tipopagamento.Text;
Reptipopagamento.PI.Caption := DataInicial1.text;
Reptipopagamento.QuickRep1.Preview;
Reptipopagamento.free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
with reptipopagamento.query1 do
  	begin
    reptipopagamento.Query1.Close;
    reptipopagamento.Query1.SQL.Clear ;
    reptipopagamento.query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento.query1.SQL.Add('Order by NOMECLIENTE');
    reptipopagamento.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento.query1.Open;
    reptipopagamento.Query1.Last;
    reptipopagamento.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento.query1.RecordCount)+ ')';
    end;

Reptipopagamento.TP.Caption := tipopagamento.Text;
Reptipopagamento.PI.Caption := DataInicial1.text;
Reptipopagamento.QuickRep1.Preview;
Reptipopagamento.free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
with reptipopagamento.query1 do
  	begin
    reptipopagamento.Query1.Close;
    reptipopagamento.Query1.SQL.Clear ;
    reptipopagamento.query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento.query1.SQL.Add('Order by NF');
    reptipopagamento.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento.query1.Open;
    reptipopagamento.Query1.Last;
    reptipopagamento.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento.query1.RecordCount)+ ')';
    end;

Reptipopagamento.TP.Caption := tipopagamento.Text;
Reptipopagamento.PI.Caption := DataInicial1.text;
Reptipopagamento.QuickRep1.Preview;
Reptipopagamento.free;
end;
end;
end;
end;
end;
end;
end;
end;

//Se data <> and tipo = 0 then
case (Tipo.ItemIndex) of
      0: Begin
Application.CreateForm(TReptipopagamento1, Reptipopagamento1);
if DataInicial.Text <> DataFinal.Text then
begin
with reptipopagamento1.query1 do
  	begin
    reptipopagamento1.Query1.Close;
    reptipopagamento1.Query1.SQL.Clear ;
    reptipopagamento1.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento1.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento1.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento1.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento1.query1.Open;
    reptipopagamento1.Query1.Last;
//    reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Reptipopagamento1.Query1.RecordCount = 0 then
begin
reptipopagamento1.query1.close;
dm.qmanutencao.close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
with reptipopagamento1.query1 do
  	begin
    reptipopagamento1.Query1.Close;
    reptipopagamento1.Query1.SQL.Clear ;
    reptipopagamento1.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento1.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento1.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento1.query1.SQL.Add('Order by DATA');
    reptipopagamento1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento1.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento1.query1.Open;
    reptipopagamento1.Query1.Last;
  //  reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

Reptipopagamento1.TP.Caption := tipopagamento.Text;
Reptipopagamento1.PI.Caption := DataInicial1.text;
Reptipopagamento1.PF.Caption := DataFinal1.text;
Reptipopagamento1.QuickRep1.Preview;
Reptipopagamento1.free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
with reptipopagamento1.query1 do
  	begin
    reptipopagamento1.Query1.Close;
    reptipopagamento1.Query1.SQL.Clear ;
    reptipopagamento1.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento1.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento1.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento1.query1.SQL.Add('Order by NOMECLIENTE');
    reptipopagamento1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento1.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento1.query1.Open;
    reptipopagamento1.Query1.Last;
  //  reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

Reptipopagamento1.TP.Caption := tipopagamento.Text;
Reptipopagamento1.PI.Caption := DataInicial1.text;
Reptipopagamento1.PF.Caption := DataFinal1.text;
Reptipopagamento1.QuickRep1.Preview;
Reptipopagamento1.free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
with reptipopagamento1.query1 do
  	begin
    reptipopagamento1.Query1.Close;
    reptipopagamento1.Query1.SQL.Clear ;
    reptipopagamento1.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento1.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento1.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento1.query1.SQL.Add('Order by NF');
    reptipopagamento1.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento1.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento1.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento1.query1.Open;
    reptipopagamento1.Query1.Last;
//    reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

Reptipopagamento1.TP.Caption := tipopagamento.Text;
Reptipopagamento1.PI.Caption := DataInicial1.text;
Reptipopagamento1.PF.Caption := DataFinal1.text;
Reptipopagamento1.QuickRep1.Preview;
Reptipopagamento1.free;
end;
end;
end;
end;
end;
end
else
begin

//Se data <> and tipo = 1 then
case (Tipo.ItemIndex) of
      1: Begin

Application.CreateForm(TReptipopagamento2, Reptipopagamento2);
if DataInicial.Text <> DataFinal.Text then
begin
with reptipopagamento2.query1 do
  	begin
    reptipopagamento2.Query1.Close;
    reptipopagamento2.Query1.SQL.Clear ;
    reptipopagamento2.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento2.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento2.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento2.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento2.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento2.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento2.query1.Open;
    reptipopagamento2.Query1.Last;
//    reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

  DM.QManutencao.Open;
  if Reptipopagamento2.Query1.RecordCount = 0 then
begin
reptipopagamento2.query1.close;
dm.qmanutencao.close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
with reptipopagamento2.query1 do
  	begin
    reptipopagamento2.Query1.Close;
    reptipopagamento2.Query1.SQL.Clear ;
    reptipopagamento2.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento2.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento2.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento2.query1.SQL.Add('Order by DATA');
    reptipopagamento2.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento2.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento2.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento2.query1.Open;
    reptipopagamento2.Query1.Last;
  //  reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

Reptipopagamento2.TP.Caption := tipopagamento.Text;
Reptipopagamento2.PI.Caption := DataInicial1.text;
Reptipopagamento2.PF.Caption := DataFinal1.text;
Reptipopagamento2.QuickRep1.Preview;
Reptipopagamento2.free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
with reptipopagamento2.query1 do
  	begin
    reptipopagamento2.Query1.Close;
    reptipopagamento2.Query1.SQL.Clear ;
    reptipopagamento2.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento2.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento2.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento2.query1.SQL.Add('Order by NOMECLIENTE');
    reptipopagamento2.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento2.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento2.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento2.query1.Open;
    reptipopagamento2.Query1.Last;
  //  reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

Reptipopagamento2.TP.Caption := tipopagamento.Text;
Reptipopagamento2.PI.Caption := DataInicial1.text;
Reptipopagamento2.PF.Caption := DataFinal1.text;
Reptipopagamento2.QuickRep1.Preview;
Reptipopagamento2.free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
with reptipopagamento2.query1 do
  	begin
    reptipopagamento2.Query1.Close;
    reptipopagamento2.Query1.SQL.Clear ;
    reptipopagamento2.query1.SQL.Add('select DATA, NF, CODIGOCLIENTE, NOMECLIENTE, VAL_TOT_PRODUTOS, DESCONTO, VAL_TOT_NOTA, VALORENTRADA');
    reptipopagamento2.query1.SQL.Add('from SAIDA_FECHAMENTO');
    reptipopagamento2.query1.SQL.Add('where DATA between :inicio AND :fim AND TIPOPAGAMENTO_CODIGO =:codigo '); // linha para atender as condições
    reptipopagamento2.query1.SQL.Add('Order by NF');
    reptipopagamento2.query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    reptipopagamento2.query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    reptipopagamento2.query1.ParamByName('codigo').Text  := tp.Text ; // preenche o parametro 'fim'
    reptipopagamento2.query1.Open;
    reptipopagamento2.Query1.Last;
//    reptipopagamento1.TOTAL2.Caption := 'TOTAL (' + IntToStr(reptipopagamento1.query1.RecordCount)+ ')';
    end;

Reptipopagamento2.TP.Caption := tipopagamento.Text;
Reptipopagamento2.PI.Caption := DataInicial1.text;
Reptipopagamento2.PF.Caption := DataFinal1.text;
Reptipopagamento2.QuickRep1.Preview;
Reptipopagamento2.free;
end;
end;
end;
end;
end;
end;
end;
end;
end;
END;

procedure Tfrmrtipopagamento.BitBtn1Click(Sender: TObject);
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


procedure Tfrmrtipopagamento.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
end;

procedure Tfrmrtipopagamento.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure Tfrmrtipopagamento.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure Tfrmrtipopagamento.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure Tfrmrtipopagamento.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;


procedure Tfrmrtipopagamento.tipoClick(Sender: TObject);
begin
case (Tipo.ItemIndex) of
      0: Begin
      combobox1.ItemIndex := 0;
      end
      else
      begin

case (Tipo.ItemIndex) of
      1: Begin
      combobox1.ItemIndex := 1;

end;
end;
end;
end;
end;


procedure Tfrmrtipopagamento.tipopagamentoChange(Sender: TObject);
begin
if tipopagamento.ItemIndex = 0 then
begin
TP.Text := '0';
end
else
begin
if tipopagamento.ItemIndex = 1 then
begin
TP.Text := '1';
end
else
begin
if tipopagamento.ItemIndex = 2 then
begin
TP.Text := '2';
end
else
begin
if tipopagamento.ItemIndex = 3 then
begin
TP.Text := '3';
end
else
begin
if tipopagamento.ItemIndex = 4 then
begin
TP.Text := '4';
end
else
begin
if tipopagamento.ItemIndex = 5 then
begin
TP.Text := '5';
end
else
begin
if tipopagamento.ItemIndex = 6 then
begin
TP.Text := '6';
end
else
begin
if tipopagamento.ItemIndex = 7 then
begin
TP.Text := '7';
end
else
begin
if tipopagamento.ItemIndex = 8 then
begin
TP.Text := '8';
end
else
begin
if tipopagamento.ItemIndex = 9 then
begin
TP.Text := '9';
end
else
begin
if tipopagamento.ItemIndex = 10 then
begin
TP.Text := '10';
end
else
begin
if tipopagamento.ItemIndex = 11 then
begin
TP.Text := '11';
end
else
begin
if tipopagamento.ItemIndex = 12 then
begin
TP.Text := '12';
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
end;
end;
end;
end;

procedure Tfrmrtipopagamento.tipopagamentoEnter(Sender: TObject);
begin
if tipopagamento.ItemIndex = 0 then
begin
TP.Text := '0';
end
else
begin
if tipopagamento.ItemIndex = 1 then
begin
TP.Text := '1';
end
else
begin
if tipopagamento.ItemIndex = 2 then
begin
TP.Text := '2';
end
else
begin
if tipopagamento.ItemIndex = 3 then
begin
TP.Text := '3';
end
else
begin
if tipopagamento.ItemIndex = 4 then
begin
TP.Text := '4';
end
else
begin
if tipopagamento.ItemIndex = 5 then
begin
TP.Text := '5';
end
else
begin
if tipopagamento.ItemIndex = 6 then
begin
TP.Text := '6';
end
else
begin
if tipopagamento.ItemIndex = 7 then
begin
TP.Text := '7';
end
else
begin
if tipopagamento.ItemIndex = 8 then
begin
TP.Text := '8';
end
else
begin
if tipopagamento.ItemIndex = 9 then
begin
TP.Text := '9';
end
else
begin
if tipopagamento.ItemIndex = 10 then
begin
TP.Text := '10';
end
else
begin
if tipopagamento.ItemIndex = 11 then
begin
TP.Text := '11';
end
else
begin
if tipopagamento.ItemIndex = 12 then
begin
TP.Text := '12';
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
end;
end;
end;
end;

procedure Tfrmrtipopagamento.DataFinal1Exit(Sender: TObject);
begin
if DataInicial.Text <> DataFinal.Text then
begin
tipo.Enabled := true;
tipo.ItemIndex := 0;
combobox1.ItemIndex := 0;
end
else
begin
if DataInicial.Text = DataFinal.Text then
begin
tipo.ItemIndex := 0;
tipo.Enabled := false;
combobox1.ItemIndex := 1;
end;
end;
end;

end.

