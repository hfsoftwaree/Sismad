unit UnitREntrada3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmREntrada3 = class(TForm)
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
  frmREntrada3: TfrmREntrada3;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepEntrada3;


{$R *.dfm}

procedure TfrmREntrada3.BitBtn5Click(Sender: TObject);
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
  RepEntrada3.TENTRADA.Filtered:=False;
  RepEntrada3.TENTRADA.Close;
  RepEntrada3.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepEntrada3.TENTRADA.Filtered:=True;
  RepEntrada3.TENTRADA.Open;
  repentrada3.TENTRADA.Last;
  repentrada3.TOTAL.Caption := 'TOTAL (' + IntToStr(repentrada3.TENTRADA.RecordCount)+ ')';
    
  DM.QManutencao.Open;
  if RepEntrada3.TENTRADA.RecordCount = 0 then
begin
RepEntrada3.TENTRADA.Filtered:=False;
RepEntrada3.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
  if combobox1.ItemIndex = 0 then
  begin
  RepEntrada3.TENTRADA.IndexFieldNames := 'ESSENCIA';
  RepEntrada3.NF.Caption := nota1.text;
//  Application.CreateForm(TRepentrada3, Repentrada3);
  RepEntrada3.QuickRep1.print;
  //repentrada3.Free;
  end
  else
  begin
  if combobox1.ItemIndex = 1 then
  begin
  RepEntrada3.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
  RepEntrada3.NF.Caption := nota1.text;
//  Application.CreateForm(TRepentrada3, Repentrada3);
  RepEntrada3.QuickRep1.print;
  //repentrada3.Free;
  end;
end;
end;
end;
end;

procedure TfrmREntrada3.FormShow(Sender: TObject);
begin
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmREntrada3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmREntrada3.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.ShowModal;
end;

procedure TfrmREntrada3.Edit1Click(Sender: TObject);
begin
FORNECEDOR.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmREntrada3.DBEdit1Change(Sender: TObject);
begin
FORNECEDOR.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmREntrada3.BitBtn6Click(Sender: TObject);
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
  Application.CreateForm(TRepEntrada3, RepEntrada3);
  RepEntrada3.TENTRADA.Filtered:=False;
  RepEntrada3.TENTRADA.Close;
  RepEntrada3.TENTRADA.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and NFNUMERO = ' + QuotedStr(nota1.Text);
  RepEntrada3.TENTRADA.Filtered:=True;
  RepEntrada3.TENTRADA.Open;
  repentrada3.TENTRADA.Last;
  repentrada3.TOTAL.Caption := 'TOTAL (' + IntToStr(repentrada3.TENTRADA.RecordCount)+ ')';

  DM.QManutencao.Open;
  if RepEntrada3.TENTRADA.RecordCount = 0 then
begin
RepEntrada3.TENTRADA.Filtered:=False;
RepEntrada3.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
  if combobox1.ItemIndex = 0 then
  begin
  RepEntrada3.TENTRADA.IndexFieldNames := 'ESSENCIA';
  RepEntrada3.NF.Caption := nota1.text;
  RepEntrada3.QuickRep1.Preview;
  repentrada3.Free;
  end
  else
  begin
  if combobox1.ItemIndex = 1 then
  begin
  RepEntrada3.TENTRADA.IndexFieldNames := 'ESSENCIATIPO';
  RepEntrada3.NF.Caption := nota1.text;
  RepEntrada3.QuickRep1.Preview;
  repentrada3.Free;
  end;
end;
end;
end;
end;

procedure TfrmREntrada3.BitBtn7Click(Sender: TObject);
begin
EDIT1.Text := '';
FORNECEDOR.Text := '';
nota1.Text := '0';
Close;
end;

end.
