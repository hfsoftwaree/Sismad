unit unitfrmromaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  Tfrmrromaneio = class(TForm)
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
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit10: TEdit;
    Edit8: TEdit;
    ComboBox2: TComboBox;
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrromaneio: Tfrmrromaneio;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepSaida1,
  UnitPesquisa3, Unitrepsaida2;


{$R *.dfm}

procedure Tfrmrromaneio.BitBtn5Click(Sender: TObject);
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
end;
end;

if (edit1.Text <> '')and (nota1.Text = '0') then
begin
  repsaida2.TENTRADA.Filtered := False;
  repsaida2.TENTRADA.Close;
  repsaida2.TENTRADA.Filter := 'CODIGOCLIENTE = '+ QuotedStr(Edit1.Text);
  repsaida2.TENTRADA.Filtered := True;
  repsaida2.TENTRADA.IndexFieldNames := combobox2.Text;
  repsaida2.TENTRADA.Open;
  repsaida2.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida2.TENTRADA.RecordCount)+ ')';

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
  RepSaida2.PI.Caption := FORNECEDOR.Text;
  //  Application.CreateForm(TRepsaida2, Repsaida2);
    RepSaida2.QuickRep1.Print;
  //  repsaida2.Free;
end
end
else

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
  //  Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Print;
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
  //  Application.CreateForm(TRepsaida1, Repsaida1);
    RepSaida1.QuickRep1.Print;
 //   repsaida1.Free;
end;
end;
end;
end;
end;

procedure Tfrmrromaneio.FormShow(Sender: TObject);
begin
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure Tfrmrromaneio.BitBtn4Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.ShowModal;
end;

procedure Tfrmrromaneio.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure Tfrmrromaneio.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure Tfrmrromaneio.BitBtn6Click(Sender: TObject);
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
end;
end;

if (edit1.Text <> '')and (nota1.Text = '0') then
begin
  repsaida2.TENTRADA.Filtered := False;
  repsaida2.TENTRADA.Close;
  repsaida2.TENTRADA.Filter := 'CODIGOCLIENTE = '+ QuotedStr(Edit1.Text);
  repsaida2.TENTRADA.Filtered := True;
  repsaida2.TENTRADA.IndexFieldNames := combobox2.Text;
  repsaida2.TENTRADA.Open;
  repsaida2.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida2.TENTRADA.RecordCount)+ ')';

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
  RepSaida2.PI.Caption := FORNECEDOR.Text;
//    Application.CreateForm(TRepsaida2, Repsaida2);
    RepSaida2.QuickRep1.Preview;
  //  repsaida2.Free;
end
end
else

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
    RepSaida1.QuickRep1.Preview;
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
    RepSaida1.QuickRep1.Preview;
   // repsaida1.Free;
end;
end;
end;
end;
end;



procedure Tfrmrromaneio.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
nota1.Text := '0';
Close;
end;

procedure Tfrmrromaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure Tfrmrromaneio.Memo1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmrromaneio.nota1Exit(Sender: TObject);
begin
if nota1.Text = '' then
begin
nota1.Text := '0';
end
else
begin
if nota1.Text = '0' then
begin
combobox1.Visible := false;
combobox2.Visible := true;
combobox2.SetFocus;
end
else
begin
if nota1.Text <> '0' then
combobox2.Visible := false;
combobox1.Visible := true;
combobox1.SetFocus;
end;
end;
end;

end.
