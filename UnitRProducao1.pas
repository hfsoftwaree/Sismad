unit UnitRProducao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit, DBCtrls;

type
  TfrmRProducao1 = class(TForm)
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
    GroupBox3: TGroupBox;
    Essencia: TDBLookupComboBox;
    Edit1: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure EssenciaClick(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRProducao1: TfrmRProducao1;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepSaida,
  UnitRepProducao1;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmRProducao1.BitBtn3Click(Sender: TObject);
begin
DM.TEssencia.Close; 
DataInicial1.Text := '';
DataFinal1.Text := '';
Close;
end;

procedure TfrmRProducao1.BitBtn2Click(Sender: TObject);
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
end
else
begin
if Essencia.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
Essencia.SetFocus;
end;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')and (Essencia.Text <> '') then
begin
  RepProducao1.TENTRADA.Filtered:=False;
  RepProducao1.TENTRADA.Close;
  RepProducao1.TENTRADA.Filter := 'DATA >= ' + QuotedStr(DataInicial.Text) + ' and DATA <= ' + QuotedStr(DataFinal.Text) + ' and CODIGOESSENCIA = ' + (edit1.Text);
  RepProducao1.TENTRADA.Filtered:=True;
  RepProducao1.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepProducao1.TENTRADA.RecordCount = 0 then
begin
RepProducao1.TENTRADA.Filtered:=False;
RepProducao1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepProducao1.TENTRADA.IndexFieldNames := 'DATA';
RepProducao1.PI.Caption := DataInicial1.text;
RepProducao1.PF.Caption := DataFinal1.text;
RepProducao1.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepProducao1.TENTRADA.IndexFieldNames := 'CODPRODUTO';
RepProducao1.PI.Caption := DataInicial1.text;
RepProducao1.PF.Caption := DataFinal1.text;
RepProducao1.QuickRep1.Preview;
end;
end;
end;
end;
end;

procedure TfrmRProducao1.BitBtn1Click(Sender: TObject);
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
end
else
begin
if Essencia.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
Essencia.SetFocus;
end;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')and (Essencia.Text <> '') then
begin
  RepProducao1.TENTRADA.Filtered:=False;
  RepProducao1.TENTRADA.Close;
  RepProducao1.TENTRADA.Filter := 'DATA_EMISSAO >= ' + QuotedStr(DataInicial.Text) + ' and DATA_EMISSAO <= ' + QuotedStr(DataFinal.Text);
  RepProducao1.TENTRADA.Filtered:=True;
  RepProducao1.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepProducao1.TENTRADA.RecordCount = 0 then
begin
RepProducao1.TENTRADA.Filtered:=False;
RepProducao1.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepProducao1.TENTRADA.IndexFieldNames := 'DATA';
RepProducao1.PI.Caption := DataInicial1.text;
RepProducao1.PF.Caption := DataFinal1.text;
RepProducao1.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepProducao1.TENTRADA.IndexFieldNames := 'CODPRODUTO';
RepProducao1.PI.Caption := DataInicial1.text;
RepProducao1.PF.Caption := DataFinal1.text;
RepProducao1.QuickRep1.Print;
end;
end;
end;
end;
end;

procedure TfrmRProducao1.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
DM.TEssencia.Open;
DM.TEssencia.IndexFieldNames := 'ESSENCIA';
end;

procedure TfrmRProducao1.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmRProducao1.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure TfrmRProducao1.EssenciaClick(Sender: TObject);
begin
edit1.Text := DM.TEssencia['CODIGO']; 
end;

procedure TfrmRProducao1.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure TfrmRProducao1.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;

end.
