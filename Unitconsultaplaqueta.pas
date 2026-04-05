unit Unitconsultaplaqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, EDateEd, jpeg, Grids, DBGrids, SSSpin, Gauges,
  EZeroEd, SSBaseXP, SSEdit;

type
  TfrmConsultaPlaqueta = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel13: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    nota: TEditNumXP;
    Panel11: TPanel;
    DBEdit8: TDBEdit;
    Edit2: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPlaqueta: TfrmConsultaPlaqueta;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator, UnitPesquisa3;

{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmConsultaPlaqueta.BitBtn3Click(Sender: TObject);
begin
if nota.Text = '' then
  begin
  Application.MessageBox('Plaqueta deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
  nota.SetFocus;
  end
  else
  begin
if nota.Text = '0' then
  begin
  Application.MessageBox('Plaqueta deve ser informada!', 'Consulta', mb_Ok + mb_IconInformation);
  nota.Clear;
  nota.SetFocus;
  end
  end;

if (nota.Text <> '') and (nota.Text <> '0') then
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
   DM.TESDISCRIMINACAO.Filter := 'PLAQUETA = ' + QuotedStr(nota.Text);
   DM.TESDISCRIMINACAO.Filtered := True;
   DM.TESDISCRIMINACAO.Open;

begin
   if DM.TESDISCRIMINACAO.RecordCount = 0 then
   begin
         Application.MessageBox('Plaqueta não cadastrada ou digitada incorretamente, Verifique!', 'Consulta', mb_Ok + mb_IconInformation);
         nota.Clear;
         nota.SetFocus;
         edit2.Clear; 
         end
         else
         begin
         exit;
         end
   end;
end;
end;

procedure TfrmConsultaPlaqueta.BitBtn1Click(Sender: TObject);
begin
   DM.TESDISCRIMINACAO.Filtered := False;
   DM.TESDISCRIMINACAO.Close;
nota.Text := '0';
edit2.Text := '';
Close;
end;


procedure TfrmConsultaPlaqueta.BitBtn4Click(Sender: TObject);
begin
frmPesquisa3.ShowModal;
end;


procedure TfrmConsultaPlaqueta.DBEdit8Change(Sender: TObject);
begin
if dbedit8.Text = '' then
begin
edit2.Text := '';
end
else
begin
if dbedit8.Text = '1' then
begin
edit2.Text := 'BAIXADA';
end
else
begin
if dbedit8.Text = '0' then
begin
edit2.Text := 'EM ESTOQUE';
end
end;
end;
end;

end.
