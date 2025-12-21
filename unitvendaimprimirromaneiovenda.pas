unit unitvendaimprimirromaneiovenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  Tfrmvendaimprimirromaneiovenda = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    ComboBox2: TComboBox;
    check1: TCheckBox;
    DBMemo1: TDBMemo;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvendaimprimirromaneiovenda: Tfrmvendaimprimirromaneiovenda;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepSaida1,
  UnitPesquisa3, Unitrepsaida2, unitrepromaneio, UnitVenda;


{$R *.dfm}

procedure Tfrmvendaimprimirromaneiovenda.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.ShowModal;
end;

procedure Tfrmvendaimprimirromaneiovenda.BitBtn6Click(Sender: TObject);
begin
if self.tag = 1 then //comando imprimir venda
begin
Application.CreateForm(TRepsaida1, Repsaida1);
if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
DM.QCredor.Open;
DM.QCredor.Locate('CODIGOCREDOR',frmvenda.DBEDIT6.text,[lopartialkey,locaseinsensitive]);

  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NFNUMERO = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  repSAIDA1.TENTRADA.Last;
  repSAIDA1.TOTAL.Caption := 'ITENS (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE.Caption := 'VALIDADE:' else repsaida1.VALIDADE.Caption  := '';
  if repSAIDA1.TENTRADA['TIPOCODIGO'] = 0 then repsaida1.VALIDADE1.Caption := '30 DIAS' else repsaida1.VALIDADE1.Caption  := '';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel11.Caption := '' else repsaida1.QRLabel11.Caption := 'Não nos responsabilizamos por mau uso ou estocagem incorreta da referida madeira.';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel12.Caption := '' else repsaida1.QRLabel12.Caption := 'Recebi  _______/_______/_______';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel20.Caption := '' else repsaida1.QRLabel20.Caption := 'Declaro ter recebido e conferido a mercadoria acima discriminada em perfeito estado de';
  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel21.Caption := '' else repsaida1.QRLabel21.Caption := 'conservação e sem defeito.';
//  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRShape8.Enabled := true else repsaida1.QRshape8.Enabled  := true;
//  if repsaida1.TENTRADA['TIPOLANCAMENTO'] = 'ORCAMENTO' then repsaida1.QRLabel43.Caption := '' else repsaida1.QRLabel21.Caption := 'Vendedor';

if combobox2.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;

if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.OBS1.Lines := DBMEMO1.Lines;

  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox2.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox2.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'QUANTIDADE';
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end
else
begin
if combobox2.ItemIndex = 3 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
RepSaida1.OBS1.Lines := DBMEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'TOTALM3';
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Preview;
    repsaida1.Free;
end;
end;
end;
end;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if self.tag = 2 then //comando para imprimir romaneio
begin
if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
DM.QCredor.Open;
  Application.CreateForm(TRepromaneio, Repromaneio);
  Repromaneio.TENTRADA.Filtered:=False;
  Repromaneio.TENTRADA.Close;
  Repromaneio.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NFNUMERO = ' + QuotedStr(frmvenda.nota.Text);
  Repromaneio.TENTRADA.Filtered:=True;
  Repromaneio.TENTRADA.Open;
  Repromaneio.TENTRADA.Last;
  Repromaneio.TOTAL.Caption := 'ITENS (' + IntToStr(repromaneio.TENTRADA.RecordCount)+ ')';

with repromaneio.query1 do
  	begin
    repromaneio.Query1.Close;
    repromaneio.Query1.SQL.Clear ;
    repromaneio.query1.SQL.Add('select SUM(QUANTIDADE) AS QUANTIDADE, SUM(TOTALM3) AS TOTALM3, ESSENCIATIPO');
    repromaneio.query1.SQL.Add('from SAIDA');
    repromaneio.query1.SQL.Add('where CODIGOFORNECEDOR =:busca AND NFNUMERO =:nota'); // linha para atender as condições
    repromaneio.query1.SQL.Add('GROUP BY ESSENCIATIPO');
    repromaneio.query1.ParamByName('busca').AsInteger  := StrToInt(frmvenda.dbEdit6.Text); // preenche o parametro
    repromaneio.query1.ParamByName('nota').AsInteger  := StrToInt(frmvenda.nota.Text); // preenche o parametro
    repromaneio.query1.Open;
    repromaneio.Query1.Last;
    repromaneio.TOTAL1.Caption := 'TOTAL (' + IntToStr(repromaneio.query1.RecordCount)+ ')';
    end;

if combobox1.ItemIndex = 0 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIA';
Repromaneio.OBS.Lines := MEMO1.Lines;
    Repromaneio.QuickRep1.Preview;
    repromaneio.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
Repromaneio.OBS.Lines := MEMO1.Lines;
    Repromaneio.QuickRep1.Preview;
   repromaneio.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
Repromaneio.OBS.Lines := MEMO1.Lines;
    Repromaneio.QuickRep1.Preview;
    repromaneio.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'TOTALM3';
Repromaneio.OBS.Lines := MEMO1.Lines;
    repromaneio.QuickRep1.Preview;
    repromaneio.Free;
end;
end;
end;
end;
end;
end;

procedure Tfrmvendaimprimirromaneiovenda.BitBtn7Click(Sender: TObject);
begin
self.Tag := 0;
self.Close;
end;

procedure Tfrmvendaimprimirromaneiovenda.Memo1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmvendaimprimirromaneiovenda.FormDestroy(Sender: TObject);
begin
DM.QCredor.Close;
DM.QManutencao.Close;
end;

procedure Tfrmvendaimprimirromaneiovenda.BitBtn5Click(Sender: TObject);
begin
if self.tag = 1 then //comando imprimir venda
begin
if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
DM.QCredor.Open;

  RepSaida1.TENTRADA.Filtered:=False;
  RepSaida1.TENTRADA.Close;
  RepSaida1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NFNUMERO = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TENTRADA.Filtered:=True;
  RepSaida1.TENTRADA.Open;
  repSAIDA1.TENTRADA.Last;
  repSAIDA1.TOTAL.Caption := 'TOTAL (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

if combobox2.ItemIndex = 0 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIA';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Print;
  //  repsaida1.Free;
end
else
begin
if combobox2.ItemIndex = 1 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Print;
  //  repsaida1.Free;
end
else
begin
if combobox2.ItemIndex = 2 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'QUANTIDADE';
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Print;
   // repsaida1.Free;
end
else
begin
if combobox2.ItemIndex = 3 then
begin
  RepSaida1.TFECHAMENTO.Filtered:=False;
  RepSaida1.TFECHAMENTO.Close;
  RepSaida1.TFECHAMENTO.Filter := 'CODIGOCLIENTE = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NF = ' + QuotedStr(frmvenda.nota.Text);
  RepSaida1.TFECHAMENTO.Filtered:=True;
  RepSaida1.TFECHAMENTO.Open;

RepSaida1.NF.Caption := frmvenda.nota.text;
RepSaida1.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
if DM.QCredor['ENDERECO']= null then RepSaida1.ENDERECO.Caption := '' else  RepSaida1.ENDERECO.Caption := DM.QCredor['ENDERECO'];
if DM.QCredor['CIDADE']= null then RepSaida1.CIDADE.Caption := '' else RepSaida1.CIDADE.Caption := DM.QCredor['CIDADE'] + '-' + DM.QCredor['UF'];;
if DM.QCredor['BAIRRO']= null then RepSaida1.BAIRRO.Caption := '' else RepSaida1.BAIRRO.Caption := DM.QCredor['BAIRRO'];
if DM.QCredor['FONE']= null then RepSaida1.FONE.Caption := '' else RepSaida1.FONE.Caption := DM.QCredor['FONE'];
RepSaida1.OBS.Lines := MEMO1.Lines;
  if (DM.QCredor['CNPJ'] = null)and (DM.QCredor['CPF'] = null) then RepSaida1.CNPJ1.Caption := '';
  if DM.QCredor['CNPJ']= null then
  begin
      if DM.QCredor['CNPJ']= '00000000000000' then
      begin
        if DM.QCredor['CPF']= null then
        begin
          if DM.QCredor['CPF']= '00000000000' then
          begin
          RepSaida1.CNPJ1.Caption := '';
          end;
          end;
          end;
          end;
  if (DM.QCredor['CNPJ'] <> null)and (DM.QCredor['CNPJ'] <> '00000000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CNPJ']
  else
  if (DM.QCredor['CPF'] <> null)and (DM.QCredor['CPF'] <> '00000000000') then RepSaida1.CNPJ1.Caption := DM.QCredor['CPF'];
RepSaida1.TENTRADA.IndexFieldNames := 'TOTALM3';
   // Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Print;
   // repsaida1.Free;
end;
end;
end;
end;
end;

if self.tag = 2 then //comando imprimir romaneio
begin
if check1.Checked = true then DM.QManutencao.open else DM.QManutencao.close;
DM.QCredor.Open;

  Repromaneio.TENTRADA.Filtered:=False;
  Repromaneio.TENTRADA.Close;
  Repromaneio.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(frmvenda.dbEdit6.Text) + ' and NFNUMERO = ' + QuotedStr(frmvenda.nota.Text);
  Repromaneio.TENTRADA.Filtered:=True;
  Repromaneio.TENTRADA.Open;
  Repromaneio.TENTRADA.Last;
  Repromaneio.TOTAL.Caption := 'TOTAL (' + IntToStr(repSAIDA1.TENTRADA.RecordCount)+ ')';

with repromaneio.query1 do
  	begin
    repromaneio.Query1.Close;
    repromaneio.Query1.SQL.Clear ;
    repromaneio.query1.SQL.Add('select SUM(QUANTIDADE) AS QUANTIDADE, SUM(TOTALM3) AS TOTALM3, ESSENCIATIPO');
    repromaneio.query1.SQL.Add('from SAIDA');
    repromaneio.query1.SQL.Add('where CODIGOFORNECEDOR =:busca AND NFNUMERO =:nota'); // linha para atender as condições
    repromaneio.query1.SQL.Add('GROUP BY ESSENCIATIPO');
    repromaneio.query1.ParamByName('busca').AsInteger  := StrToInt(frmvenda.dbEdit6.Text); // preenche o parametro
    repromaneio.query1.ParamByName('nota').AsInteger  := StrToInt(frmvenda.nota.Text); // preenche o parametro
    repromaneio.query1.Open;
    repromaneio.Query1.Last;
    repromaneio.TOTAL1.Caption := 'TOTAL (' + IntToStr(repromaneio.query1.RecordCount)+ ')';
    end;  

if combobox1.ItemIndex = 0 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIA';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    Repromaneio.QuickRep1.Print;
  //  repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    Repromaneio.QuickRep1.Print;
  //  repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'COMPRIMENTO';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    Repromaneio.QuickRep1.Print;
  //  repsaida1.Free;
end
else
begin
if combobox1.ItemIndex = 3 then
begin
Repromaneio.FORNECEDOR.Caption := frmvenda.FORNECEDOR.text;
repromaneio.TENTRADA.IndexFieldNames := 'TOTALM3';
//    Application.CreateForm(TRepsaida1, Repsaida1);
    repromaneio.QuickRep1.Print;
  //  repsaida1.Free;
end;
end;
end;
end;
end;
end;

end.
