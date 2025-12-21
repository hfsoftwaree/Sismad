unit UnitRRomaneioToros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmRRomaneioToros = class(TForm)
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
    edit2: TEdit;
    edit3: TEdit;
    edit5: TEdit;
    edit6: TEdit;
    edit7: TEdit;
    edit8: TEdit;
    edit9: TEdit;
    edit10: TEdit;
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
  frmRRomaneioToros: TfrmRRomaneioToros;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepRomaneioToros,
  UnitPesquisa3;


{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmRRomaneioToros.BitBtn5Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end;

if (Edit1.Text <> '') then
begin
  RepRomaneioToros.TENTRADA.Filtered:=False;
  RepRomaneioToros.TENTRADA.Close;
  RepRomaneioToros.TENTRADA.Filter := 'CODEMPRESA = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota.Text);
  RepRomaneioToros.TENTRADA.Filtered:=True;
  RepRomaneioToros.TENTRADA.Open;
  DM.QManutencao.Open;
if RepRomaneioToros.TENTRADA.RecordCount = 0 then
begin
RepRomaneioToros.TENTRADA.Filtered:=False;
RepRomaneioToros.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
RepRomaneiotoros.ENDERECO.Caption := Edit2.Text;
RepRomaneiotoros.BAIRRO.Caption := Edit3.Text;
RepRomaneiotoros.CIDADE.Caption := Edit5.Text + '-' + EDIT6.Text;
RepRomaneiotoros.FONE.Caption := Edit7.Text;
RepRomaneiotoros.CLIENTE.Caption := FORNECEDOR.Text;
if Edit9.Text <> '00000000000000' then RepRomaneiotoros.CNPJ.Caption := Edit9.Text else RepRomaneiotoros.CNPJ.Caption := Edit10.Text;
RepRomaneiotoros.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepRomaneiotoros.OBS.Lines := MEMO1.Lines;
RepRomaneioToros.QuickRep1.Print;
end;
end;
end;

procedure TfrmRRomaneioToros.FormShow(Sender: TObject);
begin
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmRRomaneioToros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmRRomaneioToros.BitBtn4Click(Sender: TObject);
begin
frmPesquisa3.ShowModal;
end;

procedure TfrmRRomaneioToros.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRRomaneioToros.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmRRomaneioToros.BitBtn6Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end;

if (Edit1.Text <> '') then
begin
  RepRomaneioToros.TENTRADA.Filtered:=False;
  RepRomaneioToros.TENTRADA.Close;
  RepRomaneioToros.TENTRADA.Filter := 'CODEMPRESA = ' + QuotedStr(Edit1.Text) + ' and NF = ' + QuotedStr(nota.Text);
  RepRomaneioToros.TENTRADA.Filtered:=True;
  RepRomaneioToros.TENTRADA.Open;
  DM.QManutencao.Open;
if RepRomaneioToros.TENTRADA.RecordCount = 0 then
begin
RepRomaneioToros.TENTRADA.Filtered:=False;
RepRomaneioToros.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
nota.SetFocus;
end
else
begin
RepRomaneiotoros.ENDERECO.Caption := Edit2.Text;
RepRomaneiotoros.BAIRRO.Caption := Edit3.Text;
RepRomaneiotoros.CIDADE.Caption := Edit5.Text + '-' + EDIT6.Text;
RepRomaneiotoros.FONE.Caption := Edit7.Text;
RepRomaneiotoros.CLIENTE.Caption := FORNECEDOR.Text;
if Edit9.Text <> '00000000000000' then RepRomaneiotoros.CNPJ.Caption := Edit9.Text else RepRomaneiotoros.CNPJ.Caption := Edit10.Text;
RepRomaneiotoros.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepRomaneiotoros.OBS.Lines := MEMO1.Lines;
RepRomaneiotoros.QuickRep1.Preview;
end
end;
end;

procedure TfrmRRomaneioToros.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
memo1.Clear;
Close;
end;



end.
