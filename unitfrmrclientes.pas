unit unitfrmrclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit, DBCtrls;

type
  Tfrmrclientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    tipo: TDBLookupComboBox;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Edit2: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tipoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrclientes: Tfrmrclientes;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepSaida, UnitRepEstoque,
  UnitRepCredores, UnitRepfechamentovenda;

{$R *.dfm}
procedure Tfrmrclientes.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmrclientes.BitBtn2Click(Sender: TObject);
begin
if edit1.Text = '' then
begin
if edit2.Text  = '1' then
begin
dm.TCredor.Filtered:=False;
DM.TCredor.Close;
DM.TCredor.Open;
DM.TCredor.IndexFieldNames  := ('NOMECREDOR');
Application.CreateForm(TRepcredores, Repcredores);
RepCredores.QuickRep1.Preview;
repcredores.Free;
end
else
begin
if edit2.Text  = '0' then
begin
dm.TCredor.Filtered:=False;
DM.TCredor.Close;
DM.TCredor.Open;
DM.TCredor.IndexFieldNames  := ('CODIGOCREDOR');
Application.CreateForm(TRepcredores, Repcredores);
RepCredores.QuickRep1.Preview;
repcredores.Free;
end
end;
end;

if edit1.Text <> '' then
begin
if edit2.Text  = '1' then
begin
  dm.TCredor.Filtered:=False;
  dm.TCredor.Close;
  dm.TCredor.Filter := 'CODIGOTIPOPESSOA = ' + (edit1.Text) ;
  dm.TCredor.Filtered:=True;
  dm.TCredor.Open;

        if DM.TCredor.RecordCount = 0 then
        begin
        DM.TCredor.Filtered := False;
        DM.TCredor.Close;
        Application.MessageBox('Não há cliente cadastrado para os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        tipo.SetFocus;
        end
        else
        begin
        if DM.TCredor.RecordCount <> 0 then
        begin

DM.TCredor.IndexFieldNames  := ('NOMECREDOR');
Application.CreateForm(TRepcredores, Repcredores);
repcredores.TIPOPESSOA.Caption := tipo.Text ;
RepCredores.QuickRep1.Preview;
repcredores.Free;
end;
end;
end;
if edit2.Text  = '0' then
begin
  dm.TCredor.Filtered:=False;
  dm.TCredor.Close;
  dm.TCredor.Filter := 'CODIGOTIPOPESSOA = ' + (edit1.Text) ;
  dm.TCredor.Filtered:=True;
  dm.TCredor.Open;

        if DM.TCredor.RecordCount = 0 then
        begin
        DM.TCredor.Filtered := False;
        DM.TCredor.Close;
        Application.MessageBox('Não há cliente cadastrado para os critérios informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);
        end
        else
        begin
        if DM.TCredor.RecordCount <> 0 then
        begin
DM.TCredor.IndexFieldNames  := ('CODIGOCREDOR');
Application.CreateForm(TRepcredores, Repcredores);
repcredores.TIPOPESSOA.Caption := tipo.Text ;
RepCredores.QuickRep1.Preview;
repcredores.Free;
end;
end;
end;
end;
end;


procedure Tfrmrclientes.BitBtn1Click(Sender: TObject);
begin
if combobox1.ItemIndex = 1 then
begin
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDOR Order by NOMECREDOR');
               Open;
               Application.CreateForm(TRepcredores, Repcredores);
               RepCredores.QuickRep1.print;
               repcredores.Free;
    end
end
else
begin
if combobox1.ItemIndex = 0 then
begin
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDOR Order by CODIGOCREDOR');
               Open;
               Application.CreateForm(TRepcredores, Repcredores);
               RepCredores.QuickRep1.print;
               repcredores.Free;
    end
end
end
end;

procedure Tfrmrclientes.FormShow(Sender: TObject);
begin
DM.TTipopessoa.Open;
DM.TTipopessoa.IndexName := ('IND_CREDORTIPO');
DM.TTipopessoa.Last;
DM.TTipopessoa.First;
end;

procedure Tfrmrclientes.tipoClick(Sender: TObject);
begin
edit1.Text := dm.TTipopessoa['CODIGOTIPO']; 
end;

procedure Tfrmrclientes.BitBtn4Click(Sender: TObject);
begin
edit1.Text := '';
tipo.KeyValue := ' ';
end;

procedure Tfrmrclientes.ComboBox1Click(Sender: TObject);
begin
if combobox1.Text = 'NOME' then
begin
edit2.Text := '1';
end
else
begin
if combobox1.Text = 'CÓDIGO' then
begin
edit2.Text := '0';
end;
end;
end;

procedure Tfrmrclientes.FormDestroy(Sender: TObject);
begin
  dm.TCredor.Filtered:=False;
  dm.TCredor.Close;
DM.TTipopessoa.Close;
end;

end.
