unit unitfrmcredorseleciona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, db, SSSpin, IBCustomDataSet,
  IBQuery,  DBCtrls, shellapi ;

type
  Tfrmcredor_Seleciona = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    edit1: TSpinEditXP;
    Edit2: TEdit;
    Label2: TLabel;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    Label3: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcredor_Seleciona: Tfrmcredor_Seleciona;

implementation

uses UnitDM, UnitPrincipal;

{$R *.dfm}

procedure Tfrmcredor_Seleciona.BitBtn3Click(Sender: TObject);
begin
ibquery1.Close ;
Close;
end;

procedure Tfrmcredor_Seleciona.BitBtn2Click(Sender: TObject);
begin
if not DM.TCredor.Locate('CODIGOCREDOR',Edit1.text,[lopartialkey,locaseinsensitive]) then
begin
Application.MessageBox('Cliente não localizado!', 'Verifique', mb_Ok + mb_IconError);
edit1.SetFocus ;
end
else
begin
ibquery1.Close ;
close;
dm.TCredor.Edit ;
end;
end;

procedure Tfrmcredor_Seleciona.FormShow(Sender: TObject);
begin
frmprincipal.EvFocusColor1.ChangeFont := false;
edit1.SelectAll ;
with ibquery1 do
begin
  close;
  SQL.Clear;
  SQL.Add('select CODIGOCREDOR, NOMECREDOR');
  SQL.Add('from CREDOR');
  SQL.Add('Order By NOMECREDOR');  
  open;
  end; 
end;

procedure Tfrmcredor_Seleciona.Edit2Change(Sender: TObject);
begin
if (edit2.Text <> '') then
begin
ibquery1.Locate('NOMECREDOR',Edit2.text,[lopartialkey,locaseinsensitive]);
Edit1.Text := ibquery1['CODIGOCREDOR'];
LABEL3.Caption := ibquery1['NOMECREDOR'];
end;

if (edit2.Text = '') then
begin
edit1.Text := '0';
LABEL3.Caption := '';
end;
end;

procedure Tfrmcredor_Seleciona.edit1Change(Sender: TObject);
begin
if (edit1.Text <> '0') and (edit1.Text <> '') then
begin
ibquery1.Locate('CODIGOCREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
LABEL3.Caption := ibquery1['NOMECREDOR'];
end;

if (edit1.Text = '0') then
begin
LABEL3.Caption := '';
end;

if (edit1.Text = '') then
begin
LABEL3.Caption := '';
end;
end;

procedure Tfrmcredor_Seleciona.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprincipal.EvFocusColor1.ChangeFont := true;
end;

end.
