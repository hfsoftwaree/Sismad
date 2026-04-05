unit UnitREntrada1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmREntrada1 = class(TForm)
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
  frmREntrada1: TfrmREntrada1;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada;


{$R *.dfm}

procedure TfrmREntrada1.BitBtn5Click(Sender: TObject);
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
  RepEntrada1.TENTRADA.Filtered:=False;
  RepEntrada1.TENTRADA.Close;
  RepEntrada1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepEntrada1.TENTRADA.Filtered:=True;
  RepEntrada1.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepEntrada1.TENTRADA.RecordCount = 0 then
begin
RepEntrada1.TENTRADA.Filtered:=False;
RepEntrada1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
RepEntrada1.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepEntrada1.NF.Caption := nota1.text;
RepEntrada1.QuickRep1.Print;
end;
end;
end;

procedure TfrmREntrada1.FormShow(Sender: TObject);
begin
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmREntrada1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmREntrada1.BitBtn4Click(Sender: TObject);
begin
frmPesquisa.ShowModal;
end;

procedure TfrmREntrada1.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmREntrada1.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmREntrada1.BitBtn6Click(Sender: TObject);
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
  RepEntrada1.TENTRADA.Filtered:=False;
  RepEntrada1.TENTRADA.Close;
  RepEntrada1.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepEntrada1.TENTRADA.Filtered:=True;
  RepEntrada1.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepEntrada1.TENTRADA.RecordCount = 0 then
begin
RepEntrada1.TENTRADA.Filtered:=False;
RepEntrada1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
RepEntrada1.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepEntrada1.NF.Caption := nota1.text;
RepEntrada1.QuickRep1.Preview;
end;
end;
end;

procedure TfrmREntrada1.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
nota1.Text := '0';
Close;
end;

end.
