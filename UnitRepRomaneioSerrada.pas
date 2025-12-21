unit UnitRepRomaneioSerrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmRRomaneioSerrada = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    FORNECEDOR: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    nota: TSpinEditXP;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRRomaneioSerrada: TfrmRRomaneioSerrada;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepRomaneioToros,
  UnitPesquisa3, UnitRepRomaneioSerrada1;


{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmRRomaneioSerrada.BitBtn5Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Cliente deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end;

if (Edit1.Text <> '')  then
begin
  RepRomaneioSerrada.TSAIDA.Filtered:=False;
  RepRomaneioSerrada.TSAIDA.Close;
  RepRomaneioSerrada.TSAIDA.Filter := 'CODEMPRESA = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota.Text);
  RepRomaneioSerrada.TSAIDA.Filtered:=True;
  RepRomaneioSerrada.TSAIDA.Open;
  DM.QManutencao.Open;
  if RepRomaneioSerrada.TSAIDA.RecordCount = 0 then
begin
RepRomaneioSerrada.TSAIDA.Filtered:=False;
RepRomaneioSerrada.TSAIDA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
nota.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepRomaneioSerrada.ENDERECO.Caption := Edit2.Text;
RepRomaneioSerrada.BAIRRO.Caption := Edit3.Text;
RepRomaneioSerrada.CIDADE.Caption := Edit5.Text + '-' + EDIT6.Text;
RepRomaneioSerrada.FONE.Caption := Edit7.Text;
RepRomaneioSerrada.CLIENTE.Caption := FORNECEDOR.Text;
if Edit9.Text <> '00000000000000' then RepRomaneioSerrada.CNPJ.Caption := Edit9.Text else RepRomaneioSerrada.CNPJ.Caption := Edit10.Text;
RepRomaneioSerrada.TSAIDA.IndexFieldNames := 'PRODUTO';
RepRomaneioSerrada.OBS.Lines := MEMO1.Lines;
RepRomaneioSerrada.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepRomaneioSerrada.ENDERECO.Caption := Edit2.Text;
RepRomaneioSerrada.BAIRRO.Caption := Edit3.Text;
RepRomaneioSerrada.CIDADE.Caption := Edit5.Text + '-' + EDIT6.Text;
RepRomaneioSerrada.FONE.Caption := Edit7.Text;
RepRomaneioSerrada.CLIENTE.Caption := FORNECEDOR.Text;
if Edit9.Text <> '00000000000000' then RepRomaneioSerrada.CNPJ.Caption := Edit9.Text else RepRomaneioSerrada.CNPJ.Caption := Edit10.Text;
RepRomaneioSerrada.TSAIDA.IndexFieldNames := 'ESSENCIA';
RepRomaneioSerrada.OBS.Lines := MEMO1.Lines;
RepRomaneioSerrada.QuickRep1.print;
end;
end;
end;
end;
end;

procedure TfrmRRomaneioSerrada.FormShow(Sender: TObject);
begin
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmRRomaneioSerrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmRRomaneioSerrada.BitBtn4Click(Sender: TObject);
begin
frmPesquisa3.ShowModal;
end;

procedure TfrmRRomaneioSerrada.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRRomaneioSerrada.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRRomaneioSerrada.BitBtn6Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Cliente deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end;

if (Edit1.Text <> '')  then
begin
  RepRomaneioSerrada.TSAIDA.Filtered:=False;
  RepRomaneioSerrada.TSAIDA.Close;
  RepRomaneioSerrada.TSAIDA.Filter := 'CODEMPRESA = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota.Text);
  RepRomaneioSerrada.TSAIDA.Filtered:=True;
  RepRomaneioSerrada.TSAIDA.Open;
  DM.QManutencao.Open;
  if RepRomaneioSerrada.TSAIDA.RecordCount = 0 then
begin
RepRomaneioSerrada.TSAIDA.Filtered:=False;
RepRomaneioSerrada.TSAIDA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
nota.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepRomaneioSerrada.ENDERECO.Caption := Edit2.Text;
RepRomaneioSerrada.BAIRRO.Caption := Edit3.Text;
RepRomaneioSerrada.CIDADE.Caption := Edit5.Text + '-' + EDIT6.Text;
RepRomaneioSerrada.FONE.Caption := Edit7.Text;
RepRomaneioSerrada.CLIENTE.Caption := FORNECEDOR.Text;
if Edit9.Text <> '00000000000000' then RepRomaneioSerrada.CNPJ.Caption := Edit9.Text else RepRomaneioSerrada.CNPJ.Caption := Edit10.Text;
RepRomaneioSerrada.TSAIDA.IndexFieldNames := 'PRODUTO';
RepRomaneioSerrada.OBS.Lines := MEMO1.Lines;
RepRomaneioSerrada.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepRomaneioSerrada.ENDERECO.Caption := Edit2.Text;
RepRomaneioSerrada.BAIRRO.Caption := Edit3.Text;
RepRomaneioSerrada.CIDADE.Caption := Edit5.Text + '-' + EDIT6.Text;
RepRomaneioSerrada.FONE.Caption := Edit7.Text;
RepRomaneioSerrada.CLIENTE.Caption := FORNECEDOR.Text;
if Edit9.Text <> '00000000000000' then RepRomaneioSerrada.CNPJ.Caption := Edit9.Text else RepRomaneioSerrada.CNPJ.Caption := Edit10.Text;
RepRomaneioSerrada.TSAIDA.IndexFieldNames := 'ESSENCIA';
RepRomaneioSerrada.OBS.Lines := MEMO1.Lines;
RepRomaneioSerrada.QuickRep1.Preview;
end;
end;
end;
end;
end;

procedure TfrmRRomaneioSerrada.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
memo1.Clear;
Close;
end;



end.
