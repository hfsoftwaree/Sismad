unit UnitREntrada2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  TfrmREntrada2 = class(TForm)
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
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREntrada2: TfrmREntrada2;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepEntrada2;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmREntrada2.BitBtn3Click(Sender: TObject);
begin
DataInicial1.Text := '';
DataFinal1.Text := '';
Close;
end;

procedure TfrmREntrada2.BitBtn2Click(Sender: TObject);
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
  RepEntrada2.TENTRADA.Filtered:=False;
  RepEntrada2.TENTRADA.Close;
  RepEntrada2.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text);
  RepEntrada2.TENTRADA.Filtered:=True;
  RepEntrada2.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepEntrada2.TENTRADA.RecordCount = 0 then
begin
RepEntrada2.TENTRADA.Filtered:=False;
RepEntrada2.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
RepEntrada2.TENTRADA.IndexFieldNames := 'NFNUMERO';
RepEntrada2.PI.Caption := DataInicial1.text;
RepEntrada2.PF.Caption := DataFinal1.text;
RepEntrada2.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepEntrada2.TENTRADA.IndexFieldNames := 'DATALANCAMENTO';
RepEntrada2.PI.Caption := DataInicial1.text;
RepEntrada2.PF.Caption := DataFinal1.text;
RepEntrada2.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepEntrada2.TENTRADA.IndexFieldNames := 'FORNECEDOR';
RepEntrada2.PI.Caption := DataInicial1.text;
RepEntrada2.PF.Caption := DataFinal1.text;
RepEntrada2.QuickRep1.Preview;
end;
end;
end;
end;
end;
end;

procedure TfrmREntrada2.BitBtn1Click(Sender: TObject);
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
  RepEntrada2.TENTRADA.Filtered:=False;
  RepEntrada2.TENTRADA.Close;
  RepEntrada2.TENTRADA.Filter := 'DATALANCAMENTO >= ' + QuotedStr(DataInicial.Text) + ' and DATALANCAMENTO <= ' + QuotedStr(DataFinal.Text);
  RepEntrada2.TENTRADA.Filtered:=True;
  RepEntrada2.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepEntrada2.TENTRADA.RecordCount = 0 then
begin
RepEntrada2.TENTRADA.Filtered:=False;
RepEntrada2.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
RepEntrada2.TENTRADA.IndexFieldNames := 'NFNUMERO';
RepEntrada2.PI.Caption := DataInicial1.text;
RepEntrada2.PF.Caption := DataFinal1.text;
RepEntrada2.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepEntrada2.TENTRADA.IndexFieldNames := 'DATALANCAMENTO';
RepEntrada2.PI.Caption := DataInicial1.text;
RepEntrada2.PF.Caption := DataFinal1.text;
RepEntrada2.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepEntrada2.TENTRADA.IndexFieldNames := 'FORNECEDOR';
RepEntrada2.PI.Caption := DataInicial1.text;
RepEntrada2.PF.Caption := DataFinal1.text;
RepEntrada2.QuickRep1.Print;
end;
end;
end;
end;
end;
end;


procedure TfrmREntrada2.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
end;

procedure TfrmREntrada2.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmREntrada2.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure TfrmREntrada2.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;

procedure TfrmREntrada2.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

end.
