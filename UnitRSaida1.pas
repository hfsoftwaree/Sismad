unit UnitRSaida1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmRSaida1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    FORNECEDOR: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    nota1: TSpinEditXP;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit10: TEdit;
    Edit8: TEdit;
    tipo: TRadioGroup;
    ComboBox2: TComboBox;
    DataInicial: TEdit;
    DataFinal: TEdit;
    GroupBox5: TGroupBox;
    DataInicial1: TEvDateEdit;
    GroupBox6: TGroupBox;
    DataFinal1: TEvDateEdit;
    tipovendas: TRadioGroup;
    ComboBox1: TComboBox;
    check1: TCheckBox;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure nota1Exit(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure nota1Click(Sender: TObject);
    procedure nota1Enter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRSaida1: TfrmRSaida1;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepSaida1,
  UnitPesquisa3, Unitrepsaida2, unitrepromaneio, unitrepsaida3;


{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;


procedure TfrmRSaida1.BitBtn5Click(Sender: TObject);
begin
case (Tipo.ItemIndex) of
      1: Begin
if Edit1.Text = '' then
  begin
  Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
  Bitbtn4.SetFocus;
  end;

if (Edit1.Text <> '')and (nota1.Text = '0') then
begin
  RepSaida2.TENTRADA.Filtered:=False;
  RepSaida2.TENTRADA.Close;
  RepSaida2.TENTRADA.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text);
  RepSaida2.TENTRADA.Filtered:=True;
  RepSaida2.TENTRADA.Open;
  repSAIDA2.TENTRADA.Last;
  repSAIDA2.TOTAL.Caption := 'TOTAL (' + IntToStr(repSAIDA2.TENTRADA.RecordCount)+ ')';

  DM.QManutencao.Open;
  if RepSaida2.TENTRADA.RecordCount = 0 then
    begin
    RepSaida2.TENTRADA.Filtered:=False;
    RepSaida2.TENTRADA.Close;
    Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    bitbtn4.SetFocus;
    end
    else
    begin
      if combobox2.ItemIndex = 0 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'DATA';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.print;
      end
      else
      begin
      if combobox2.ItemIndex = 1 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'NF';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.print;
      end
      else
      begin
      if combobox2.ItemIndex = 2 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'NOMEVENDEDOR';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.print;
      end
      else
      begin
      if combobox2.ItemIndex = 3 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'FORMAPAGAMENTO';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.print;
      end
      else
      begin
      if combobox2.ItemIndex = 4 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'TIPOPAGAMENTO';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.print;
      end
      else
      begin
      if combobox2.ItemIndex = 5 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'TOTALM3';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.print;
      end;
      end;
      end;
      end;
      end;
      end;
end;
end
else
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  repSAIDA1.TENTRADA.Last;
  repSAIDA1.TOTAL.Caption := 'TOTAL (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

  DM.QManutencao.Open;
  if RepSaida1.TENTRADA.RecordCount = 0 then
begin
RepSaida1.TENTRADA.Filtered:=False;
RepSaida1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.caption := Edit5.Text else RepSaida1.CNPJ1.caption  := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.print;
  //  repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.print;
   // repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.print;
   // repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.print;
   // repsaida1.Free;
end;
end;
end;
end;
end;
end;
end;
end;
end;


case (Tipo.ItemIndex) of
      0: Begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
repromaneio.TENTRADA.Filtered:=False;
repromaneio.TENTRADA.Close;
repromaneio.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
repromaneio.TENTRADA.Filtered:=True;
repromaneio.TENTRADA.Open;
repromaneio.TENTRADA.Last;
repromaneio.TOTAL.Caption := 'TOTAL (' + IntToStr(repromaneio.TENTRADA.RecordCount)+ ')';

with repromaneio.query1 do
  	begin
    repromaneio.Query1.Close;
    repromaneio.Query1.SQL.Clear ;
    repromaneio.query1.SQL.Add('select SUM(QUANTIDADE) AS QUANTIDADE, SUM(TOTALM3) AS TOTALM3, ESSENCIATIPO');
    repromaneio.query1.SQL.Add('from SAIDA');
    repromaneio.query1.SQL.Add('where CODIGOFORNECEDOR =:busca AND NFNUMERO =:nota'); // linha para atender as condições
    repromaneio.query1.SQL.Add('GROUP BY ESSENCIATIPO');
    repromaneio.query1.ParamByName('busca').AsInteger  := StrToInt(edit1.Text); // preenche o parametro
    repromaneio.query1.ParamByName('nota').AsInteger  := StrToInt(nota1.Text); // preenche o parametro
    repromaneio.query1.Open;
    repromaneio.Query1.Last;
    repromaneio.TOTAL1.Caption := 'TOTAL (' + IntToStr(repromaneio.query1.RecordCount)+ ')';
    end;


DM.QManutencao.Open;
if repromaneio.TENTRADA.RecordCount = 0 then
begin
repromaneio.TENTRADA.Filtered:=False;
repromaneio.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIA';
//    Application.CreateForm(TRepsaida1, Repsaida1);
repromaneio.QuickRep1.print;
  //  repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
   // Application.CreateForm(TRepsaida1, Repsaida1);
repromaneio.QuickRep1.print;
   // repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
   // Application.CreateForm(TRepsaida1, Repsaida1);
repromaneio.QuickRep1.print;
   // repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := '';
   // Application.CreateForm(TRepsaida1, Repsaida1);
repromaneio.QuickRep1.print;
   // repsaida1.Free;
end;
end;
end;
end;
end;
end;
end;
end;
end;

procedure TfrmRSaida1.FormShow(Sender: TObject);
begin
//BitBtn4.SetFocus;
Self.Tag := 1;
DataInicial.Text := ConverteData(DataInicial1.Text);
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure TfrmRSaida1.BitBtn4Click(Sender: TObject);
begin
DM.QCredor.Open;
Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.ShowModal;
frmPesquisa3.free;
end;

procedure TfrmRSaida1.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRSaida1.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRSaida1.BitBtn6Click(Sender: TObject);
begin
case (Tipovendas.ItemIndex) of
      0: Begin

case (Tipo.ItemIndex) of //Venda
      1: Begin
if Edit1.Text = '' then
  begin
  Application.MessageBox('Fornecedor deve ser informado1!', 'Informação', mb_Ok + mb_IconInformation);
  Bitbtn4.SetFocus;
  end;

if (Edit1.Text <> '')and (nota1.Text = '0') and (datainicial1.Text <> '00/00/0000') and (datafinal1.Text <> '00/00/0000') then
begin
  nota1.Value  := 0;
  Application.CreateForm(TRepsaida2, repsaida2);
  RepSaida2.TENTRADA.Filtered:=False;
  RepSaida2.TENTRADA.Close;
  RepSaida2.TENTRADA.Filter :=  'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text)+ 'and DATA >= ' + QuotedStr(DataInicial.Text)+ ' and DATA <= ' + QuotedStr(DataFinal.Text)+ ' and FECHAMENTOTIPO = '+ '2' ;
  RepSaida2.TENTRADA.Filtered:=True;
  RepSaida2.TENTRADA.Open;
  repSAIDA2.TENTRADA.Last;
  repSAIDA2.TOTAL.Caption := 'ITENS (' + IntToStr(repSAIDA2.TENTRADA.RecordCount)+ ')';

if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
  if RepSaida2.TENTRADA.RecordCount = 0 then
    begin
    RepSaida2.TENTRADA.Filtered:=False;
    RepSaida2.TENTRADA.Close;
    Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    bitbtn4.SetFocus;
    end
    else
    begin
    repsaida2.NRELATORIO.Caption := 'VENDAS FINALIZADAS';
      if combobox2.ItemIndex = 0 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'DATA';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 1 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'NF';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 2 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'NOMEVENDEDOR';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 3 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'FORMAPAGAMENTO';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 4 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'TIPOPAGAMENTO';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 5 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'TOTALM3';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end;
      end;
      end;
      end;
      end;
      end;
end;
end
else
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado2!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
  Application.CreateForm(TRepsaida1, repsaida1);
  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  repSAIDA1.TENTRADA.Last;
  repSAIDA1.TOTAL.Caption := 'ITENS (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE.Caption := 'VALIDADE:' else repsaida1.VALIDADE.Caption  := '';
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE1.Caption := '30 DIAS' else repsaida1.VALIDADE1.Caption  := '';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel11.Caption := '' else repsaida1.QRLabel11.Caption := 'Não nos responsabilizamos por mau uso ou estocagem incorreta dos produtos discriminados acima.';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel12.Caption := '' else repsaida1.QRLabel12.Caption := 'Recebi  _______/_______/_______';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel20.Caption := '' else repsaida1.QRLabel20.Caption := 'Declaro ter recebido e conferido a mercadoria acima discriminada em perfeito estado de conservação e';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel21.Caption := '' else repsaida1.QRLabel21.Caption := 'sem defeito.';
//  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRShape8.Enabled := true else repsaida1.QRshape8.Enabled  := false;

  if RepSaida1.TENTRADA.RecordCount = 0 then
begin
RepSaida1.TENTRADA.Filtered:=False;
RepSaida1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.caption := Edit5.Text else RepSaida1.CNPJ1.caption  := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;

dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
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

case (Tipovendas.ItemIndex) of
      1: Begin

case (Tipo.ItemIndex) of
      1: Begin
if Edit1.Text = '' then
  begin
  Application.MessageBox('Fornecedor deve ser informado1!', 'Informação', mb_Ok + mb_IconInformation);
  Bitbtn4.SetFocus;
  end;

if (Edit1.Text <> '')and (nota1.Text = '0') and (datainicial1.Text <> '00/00/0000') and (datafinal1.Text <> '00/00/0000') then
begin
  nota1.Value := 0;
  Application.CreateForm(TRepsaida2, repsaida2);
  RepSaida2.TENTRADA.Filtered:=False;
  RepSaida2.TENTRADA.Close;
  if RepSaida2.TENTRADA['DATA'] = null then RepSaida2.TENTRADA.Filter :=  'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text)+ ' and FECHAMENTOTIPO = '+ '1' else  RepSaida2.TENTRADA.Filter :=  'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text)+ 'and DATA >= ' + QuotedStr(DataInicial.Text)+ ' and DATA <= ' + QuotedStr(DataFinal.Text)+ ' and FECHAMENTOTIPO = '+ '1' ;
  RepSaida2.TENTRADA.Filtered:=True;
  RepSaida2.TENTRADA.Open;
  repSAIDA2.TENTRADA.Last;
  repSAIDA2.TOTAL.Caption := 'ITENS (' + IntToStr(repSAIDA2.TENTRADA.RecordCount)+ ')';

if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
  if RepSaida2.TENTRADA.RecordCount = 0 then
    begin
    RepSaida2.TENTRADA.Filtered:=False;
    RepSaida2.TENTRADA.Close;
    Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    bitbtn4.SetFocus;
    end
    else
    begin
    repsaida2.NRELATORIO.Caption := 'VENDAS AGUARDANDO FECHAMENTO';
      if combobox2.ItemIndex = 0 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'DATA';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 1 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'NF';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 2 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'NOMEVENDEDOR';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 3 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'FORMAPAGAMENTO';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 4 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'TIPOPAGAMENTO';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end
      else
      begin
      if combobox2.ItemIndex = 5 then
      begin
      RepSaida2.TENTRADA.IndexFieldNames := 'TOTALM3';
      Repsaida2.PI.Caption := FORNECEDOR.Text;
      RepSaida2.QuickRep1.Preview;
      repsaida2.free;
      end;
      end;
      end;
      end;
      end;
      end;
end;
end
else
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado2!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
  Application.CreateForm(TRepsaida1, repsaida1);
  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  repSAIDA1.TENTRADA.Last;
  repSAIDA1.TOTAL.Caption := 'ITENS (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE.Caption := 'VALIDADE:' else repsaida1.VALIDADE.Caption  := '';
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE1.Caption := '30 DIAS' else repsaida1.VALIDADE1.Caption  := '';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel11.Caption := '' else repsaida1.QRLabel11.Caption := 'Não nos responsabilizamos por mau uso ou estocagem incorreta dos produtos discriminados acima.';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel12.Caption := '' else repsaida1.QRLabel12.Caption := 'Recebi  _______/_______/_______';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel20.Caption := '' else repsaida1.QRLabel20.Caption := 'Declaro ter recebido e conferido a mercadoria acima discriminada em perfeito estado de conservação e';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel21.Caption := '' else repsaida1.QRLabel21.Caption := 'sem defeito.';
//  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRShape8.Enabled := true else repsaida1.QRshape8.Enabled  := false;
    
  if RepSaida1.TENTRADA.RecordCount = 0 then
begin
RepSaida1.TENTRADA.Filtered:=False;
RepSaida1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.caption := Edit5.Text else RepSaida1.CNPJ1.caption  := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
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

case (Tipovendas.ItemIndex) of
      2: Begin

case (Tipo.ItemIndex) of
      1: Begin
if Edit1.Text = '' then
  begin
  Application.MessageBox('Fornecedor deve ser informado1!', 'Informação', mb_Ok + mb_IconInformation);
  Bitbtn4.SetFocus;
  end;

if (Edit1.Text <> '')and (nota1.Text = '0') and (datainicial1.Text <> '00/00/0000') and (datafinal1.Text <> '00/00/0000') then
begin
  Application.CreateForm(TRepsaida3, repsaida3);
  RepSaida3.TENTRADA.Filtered:=False;
  RepSaida3.TENTRADA.Close;
  RepSaida3.TENTRADA.Filter :=  'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text)+ 'and DATA >= ' + QuotedStr(DataInicial.Text)+ ' and DATA <= ' + QuotedStr(DataFinal.Text)+ ' and FECHAMENTOTIPO = '+ '2' ;
  RepSaida3.TENTRADA.Filtered:=True;
  RepSaida3.TENTRADA.Open;
  repSAIDA3.TENTRADA.Last;
  repSAIDA3.TOTAL.Caption := 'TOTAL FINALIZADAS (' + IntToStr(repSAIDA3.TENTRADA.RecordCount)+ ')';

  RepSaida3.query5.Filtered:=False;
  RepSaida3.query5.Close;
  if RepSaida3.query5['DATA'] = null then RepSaida3.query5.Filter :=  'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text)+ ' and FECHAMENTOTIPO = '+ '1' else  RepSaida3.query5.Filter :=  'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text)+ 'and DATA >= ' + QuotedStr(DataInicial.Text)+ ' and DATA <= ' + QuotedStr(DataFinal.Text)+ ' and FECHAMENTOTIPO = '+ '1' ;
  RepSaida3.query5.Filtered:=True;
  RepSaida3.query5.Open;
  repSAIDA3.query5.Last;
  repSAIDA3.TOTAL1.Caption := 'TOTAL AGUARDANDO FECHAMENTO (' + IntToStr(repSAIDA3.query5.RecordCount)+ ')';


if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
  if (RepSaida3.TENTRADA.RecordCount = 0)and (RepSaida3.query5.RecordCount = 0) then
    begin
    RepSaida3.TENTRADA.Filtered:=False;
    RepSaida3.TENTRADA.Close;
    Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    bitbtn4.SetFocus;
    end
    else
    begin
      if combobox2.ItemIndex = 0 then
      begin
      RepSaida3.TENTRADA.IndexFieldNames := 'DATA';
      Repsaida3.PI.Caption := FORNECEDOR.Text;
      RepSaida3.QuickRep1.Preview;
      repsaida3.free;
      end
      else
      begin
      if combobox2.ItemIndex = 1 then
      begin
      RepSaida3.TENTRADA.IndexFieldNames := 'NF';
      Repsaida3.PI.Caption := FORNECEDOR.Text;
      RepSaida3.QuickRep1.Preview;
      repsaida3.free;
      end
      else
      begin
      if combobox2.ItemIndex = 2 then
      begin
      RepSaida3.TENTRADA.IndexFieldNames := 'NOMEVENDEDOR';
      Repsaida3.PI.Caption := FORNECEDOR.Text;
      RepSaida3.QuickRep1.Preview;
      repsaida3.free;
      end
      else
      begin
      if combobox2.ItemIndex = 3 then
      begin
      RepSaida3.TENTRADA.IndexFieldNames := 'FORMAPAGAMENTO';
      Repsaida3.PI.Caption := FORNECEDOR.Text;
      RepSaida3.QuickRep1.Preview;
      repsaida3.free;
      end
      else
      begin
      if combobox2.ItemIndex = 4 then
      begin
      RepSaida3.TENTRADA.IndexFieldNames := 'TIPOPAGAMENTO';
      Repsaida3.PI.Caption := FORNECEDOR.Text;
      RepSaida3.QuickRep1.Preview;
      repsaida3.free;
      end
      else
      begin
      if combobox2.ItemIndex = 5 then
      begin
      RepSaida3.TENTRADA.IndexFieldNames := 'TOTALM3';
      Repsaida3.PI.Caption := FORNECEDOR.Text;
      RepSaida3.QuickRep1.Preview;
      repsaida3.free;
      end;
      end;
      end;
      end;
      end;
      end;
end;
end
else
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado2!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
    Application.CreateForm(TRepsaida1, Repsaida1);
  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  repSAIDA1.TENTRADA.Last;
  repSAIDA1.TOTAL.Caption := 'TOTAL (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE.Caption := 'VALIDADE:' else repsaida1.VALIDADE.Caption  := '';
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE1.Caption := '30 DIAS' else repsaida1.VALIDADE1.Caption  := '';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel11.Caption := '' else repsaida1.QRLabel11.Caption := 'Não nos responsabilizamos por mau uso ou estocagem incorreta da referida madeira.';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel12.Caption := '' else repsaida1.QRLabel12.Caption := 'Recebi  _______/_______/_______';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel20.Caption := '' else repsaida1.QRLabel20.Caption := 'Declaro ter recebido e conferido a mercadoria acima discriminada em perfeito estado de';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel21.Caption := '' else repsaida1.QRLabel21.Caption := 'conservação e sem defeito.';

//  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRShape8.Enabled := true else repsaida1.QRshape8.Enabled  := false;
    
  if RepSaida1.TENTRADA.RecordCount = 0 then
begin
RepSaida1.TENTRADA.Filtered:=False;
RepSaida1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.caption := Edit5.Text else RepSaida1.CNPJ1.caption  := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
RepSaida1.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota1.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;
  if repsaida1.TFECHAMENTO['VALORENTRADA'] = '0,00' then repsaida1.QRSubDetail2.Height := 130 else repsaida1.QRSubDetail2.Height := 150;  

RepSaida1.NF.Caption := nota1.text;
RepSaida1.FORNECEDOR.Caption := FORNECEDOR.text;
RepSaida1.ENDERECO.Caption := EDIT2.text;
RepSaida1.CIDADE.Caption := EDIT3.text  + '-' + EDIT8.Text;;
RepSaida1.BAIRRO.Caption := EDIT6.text;
RepSaida1.FONE.Caption := EDIT7.text;
if Edit5.Text <> '00000000000000' then RepSaida1.CNPJ1.Caption := Edit5.Text else RepSaida1.CNPJ1.Caption := Edit10.Text;
RepSaida1.OBS.Lines := MEMO1.Lines;
dbmemo1.Lines.Add(repsaida1.TFECHAMENTO.FieldByName('OBS').AsString);
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
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


case (Tipo.ItemIndex) of
      0: Begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado3!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
Application.MessageBox('Nota Fiscal deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
nota1.SetFocus;
end;
end;

if (Edit1.Text <> '') and (nota1.Text <> '0') then
begin
Application.CreateForm(TRepromaneio, Repromaneio);
repromaneio.TENTRADA.Filtered:=False;
repromaneio.TENTRADA.Close;
repromaneio.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
repromaneio.TENTRADA.Filtered:=True;
repromaneio.TENTRADA.Open;
repromaneio.TENTRADA.Last;
repromaneio.TOTAL.Caption := 'TOTAL (' + IntToStr(repromaneio.TENTRADA.RecordCount)+ ')';

with repromaneio.query1 do
  	begin
    repromaneio.Query1.Close;
    repromaneio.Query1.SQL.Clear ;
    repromaneio.query1.SQL.Add('select SUM(QUANTIDADE) AS QUANTIDADE, SUM(TOTALM3) AS TOTALM3, ESSENCIATIPO');
    repromaneio.query1.SQL.Add('from SAIDA');
    repromaneio.query1.SQL.Add('where CODIGOFORNECEDOR =:busca AND NFNUMERO =:nota'); // linha para atender as condições
    repromaneio.query1.SQL.Add('GROUP BY ESSENCIATIPO');
    repromaneio.query1.ParamByName('busca').AsInteger  := StrToInt(edit1.Text); // preenche o parametro
    repromaneio.query1.ParamByName('nota').AsInteger  := StrToInt(nota1.Text); // preenche o parametro
    repromaneio.query1.Open;
    repromaneio.Query1.Last;
    repromaneio.TOTAL1.Caption := 'TOTAL (' + IntToStr(repromaneio.query1.RecordCount)+ ')';
    end;

if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close; 
if repromaneio.TENTRADA.RecordCount = 0 then
begin
repromaneio.TENTRADA.Filtered:=False;
repromaneio.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIA';
repromaneio.QuickRep1.Preview;
repromaneio.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
repromaneio.QuickRep1.Preview;
repromaneio.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
repromaneio.QuickRep1.Preview;
repromaneio.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
repromaneio.NF.Caption := nota1.text;
repromaneio.FORNECEDOR.Caption := FORNECEDOR.text;
repromaneio.OBS.Lines := MEMO1.Lines;
repromaneio.TENTRADA.IndexFieldNames := '';
repromaneio.QuickRep1.Preview;
repromaneio.Free;
end;
end;
end;
end;
end;
end;
end;
end;
end;


procedure TfrmRSaida1.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
nota1.Text := '0';
Close;
end;

procedure TfrmRSaida1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmRSaida1.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  if memo1.Lines.Text = '' then
  begin
  Key:=#8;
  bitbtn6.SetFocus;
  end
  else
  end
else
end;

procedure TfrmRSaida1.nota1Exit(Sender: TObject);
begin
if nota1.Text = '' then
begin
nota1.Text := '0';
combobox2.Visible := true;
combobox1.Visible := false;
combobox2.SetFocus;
end
else
begin
if nota1.Text = '0' then
begin
combobox2.Visible := true;
combobox1.Visible := false;
combobox2.SetFocus;
datainicial1.Enabled := true;
datafinal1.Enabled := true;
end
else
begin
if nota1.Text <> '0' then
begin
combobox2.Visible := false;
combobox1.Visible := true;
combobox1.SetFocus;
datainicial1.Enabled := false;
datafinal1.Enabled := false;
end;
end;
end;
end;

procedure TfrmRSaida1.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmRSaida1.DataInicial1Enter(Sender: TObject);
begin
//Datainicial1.Text := DateToStr(now);
end;

procedure TfrmRSaida1.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure TfrmRSaida1.DataFinal1Enter(Sender: TObject);
begin
//Datafinal1.Text := DateToStr(now);
end;

procedure TfrmRSaida1.nota1Click(Sender: TObject);
begin
if nota1.Text = '0' then nota1.SelectAll;
end;

procedure TfrmRSaida1.nota1Enter(Sender: TObject);
begin
if nota1.Text = '0' then nota1.SelectAll;
end;

end.
