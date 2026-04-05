unit unitfrmvendafinalizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  Tfrmvendafinaliza = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DataInicial1: TEvDateEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    DataInicial: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvendafinaliza: Tfrmvendafinaliza;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure Tfrmvendafinaliza.BitBtn3Click(Sender: TObject);
begin
DataInicial1.Text := '';
Close;
end;

procedure Tfrmvendafinaliza.BitBtn2Click(Sender: TObject);
begin
If Application.MessageBox('Confirma Fechamento da Venda?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin

   DM.TSaida_Discriminacao.First;
   dm.TSaida_Discriminacao.Edit;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '2';
        dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Venda Finalizada';
        DM.TSaida_Discriminacao['DATALANCAMENTO']:= DateToStr(Now);
        DM.TSaida_Discriminacao.Next;
        dm.TSaida_Discriminacao.Edit;
     end;
     dm.TSaida_Discriminacao.Post;

    DM.TSAIDAFECHAMENTO.Edit;
    DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '2';
    DM.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Venda Finalizada';
    DM.TSAIDAFECHAMENTO['DATA']:= DateToStr(Now);    
    dm.TSAIDAFECHAMENTO.Post;

    DM.TSTATUS1.Edit;
    DM.TSTATUS1['CODIGOSTATUS'] := '2';
    DM.TSTATUS1['STATUS'] := 'Venda Finalizada';
    dm.TSTATUS1.Post;
    frmvenda.status1.Caption :=DM.TSTATUS1['STATUS'];
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn12.Enabled := false else frmvenda.bitbtn12.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn9.Enabled := false else frmvenda.bitbtn9.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn1.Enabled := false else frmvenda.bitbtn1.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn5.Enabled := false else frmvenda.bitbtn5.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn8.Enabled := true else frmvenda.bitbtn8.Enabled := false;   
   tipolancamento.ItemIndex  := DM.TSaida_Discriminacao['TIPOCODIGO'];
bitbtn14.Enabled := false;If Application.MessageBox('Confirma Fechamento da Venda?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin

   DM.TSaida_Discriminacao.First;
   dm.TSaida_Discriminacao.Edit;
   while not DM.TSaida_Discriminacao.Eof do
     begin
        dm.TSaida_Discriminacao['FECHAMENTOTIPO'] := '2';
        dm.TSaida_Discriminacao['FECHAMENTODESCRICAO'] := 'Venda Finalizada';
        DM.TSaida_Discriminacao['DATALANCAMENTO']:= DateToStr(Now);
        DM.TSaida_Discriminacao.Next;
        dm.TSaida_Discriminacao.Edit;
     end;
     dm.TSaida_Discriminacao.Post;

    DM.TSAIDAFECHAMENTO.Edit;
    DM.TSAIDAFECHAMENTO['FECHAMENTOTIPO'] := '2';
    DM.TSAIDAFECHAMENTO['FECHAMENTODESCRICAO'] := 'Venda Finalizada';
    DM.TSAIDAFECHAMENTO['DATA']:= DateToStr(Now);    
    dm.TSAIDAFECHAMENTO.Post;

    DM.TSTATUS1.Edit;
    DM.TSTATUS1['CODIGOSTATUS'] := '2';
    DM.TSTATUS1['STATUS'] := 'Venda Finalizada';
    dm.TSTATUS1.Post;
    frmvenda.status1.Caption :=DM.TSTATUS1['STATUS'];
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn12.Enabled := false else frmvenda.bitbtn12.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn9.Enabled := false else frmvenda.bitbtn9.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn1.Enabled := false else frmvenda.bitbtn1.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn5.Enabled := false else frmvenda.bitbtn5.Enabled := true;
   if DM.TSTATUS1['CODIGOSTATUS'] = 2 then frmvenda.bitbtn8.Enabled := true else frmvenda.bitbtn8.Enabled := false;   
   tipolancamento.ItemIndex  := DM.TSaida_Discriminacao['TIPOCODIGO'];
bitbtn14.Enabled := false;
end;

procedure Tfrmvendafinaliza.BitBtn1Click(Sender: TObject);
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
  RepEntrada.TENTRADA.Filtered:=False;
  RepEntrada.TENTRADA.Close;
  RepEntrada.TENTRADA.Filter := 'DATA_EMISSAO >= ' + QuotedStr(DataInicial.Text) + ' and DATA_EMISSAO <= ' + QuotedStr(DataFinal.Text);
  RepEntrada.TENTRADA.Filtered:=True;
  RepEntrada.TENTRADA.Open;
  DM.QManutencao.Open;
  if RepEntrada.TENTRADA.RecordCount = 0 then
begin
RepEntrada.TENTRADA.Filtered:=False;
RepEntrada.TENTRADA.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 2 then
begin
RepEntrada.TENTRADA.IndexFieldNames := 'NF_NUMERO';
RepEntrada.PI.Caption := DataInicial1.text;
RepEntrada.PF.Caption := DataFinal1.text;
RepEntrada.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
RepEntrada.TENTRADA.IndexFieldNames := 'DATA_EMISSAO';
RepEntrada.PI.Caption := DataInicial1.text;
RepEntrada.PF.Caption := DataFinal1.text;
RepEntrada.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 1 then
begin
RepEntrada.TENTRADA.IndexFieldNames := 'RAZAO_SOCIAL';
RepEntrada.PI.Caption := DataInicial1.text;
RepEntrada.PF.Caption := DataFinal1.text;
RepEntrada.QuickRep1.Print;
end;
end;
end;
end;
end;
end;


procedure Tfrmvendafinaliza.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
end;

procedure Tfrmvendafinaliza.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure Tfrmvendafinaliza.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure Tfrmvendafinaliza.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure Tfrmvendafinaliza.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;

end.
