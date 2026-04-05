unit UnitSelImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelImp = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DataInicial1: TEvDateEdit;
    DataFinal1: TEvDateEdit;
    GroupBox5: TGroupBox;
    Essencia: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    DataInicial: TEdit;
    DataFinal: TEdit;
    RadioButton3: TRadioButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox11Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelImp: TfrmSelImp;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaCapaDetalhada, UnitPesquisa, UnitDMRelatorio;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmSelImp.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelImp.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;;
BitBtn4.SetFocus;
Self.Tag := 1;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
    end
end;

procedure TfrmSelImp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.QEssencia.Close;
frmPrincipal.Enabled := True;
Self.Tag := 0;
Action := Cafree;
end;

procedure TfrmSelImp.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Inicial deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Final deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;
end;

if (Edit1.Text <> '') and (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repEntradaCapaDetalhada.TCapa.Filtered:=False;
  repEntradaCapaDetalhada.TCapa.Close;
  repEntradaCapaDetalhada.TCapa.Filter := 'CODIGOFORNECEDOR = ''' + (Edit1.Text) + ''' and DATAENTRADA >= ''' + (DataInicial.Text) + ''' and DATAENTRADA <= ''' + (DataFinal.Text) + ''' and ESSENCIA = ''' + (Essencia.Text)+  '''';
  repEntradaCapaDetalhada.TCapa.Filtered:=True;
  repEntradaCapaDetalhada.TCapa.Open;
  DM.QManutencao.Open;
  if repEntradaCapaDetalhada.TCapa.RecordCount = 0 then
begin
repEntradaCapaDetalhada.TCapa.Filtered:=False;
repEntradaCapaDetalhada.TCapa.Close;
bitbtn4.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repEntradaCapaDetalhada.TCapa.IndexFieldNames := ('DATAENTRADA');
RepEntradaCapaDetalhada.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapaDetalhada.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapaDetalhada.QuickRep1.Preview;
end
else
begin
if RadioButton2.Checked = True then
begin
repEntradaCapaDetalhada.TCapa.IndexFieldNames := ('ESSENCIA');
RepEntradaCapaDetalhada.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapaDetalhada.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.Preview;
end;
end;
end;
end;
end;

procedure TfrmSelImp.DBLookupComboBox11Click(Sender: TObject);
begin
Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
end;


procedure TfrmSelImp.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.Show;
end;

procedure TfrmSelImp.BitBtn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Inicial deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Final deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;
end;

if (Edit1.Text <> '') and (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repEntradaCapaDetalhada.TCapa.Filtered:=False;
  repEntradaCapaDetalhada.TCapa.Close;
  repEntradaCapaDetalhada.TCapa.Filter := 'CODIGOFORNECEDOR = ''' + (Edit1.Text) + ''' and DATAENTRADA >= ''' + (DataInicial.Text) + ''' and DATAENTRADA <= ''' + (DataFinal.Text) + ''' and ESSENCIA = ''' + (Essencia.Text)+  '''';
  repEntradaCapaDetalhada.TCapa.Filtered:=True;
  repEntradaCapaDetalhada.TCapa.Open;
  DM.QManutencao.Open;
  if repEntradaCapaDetalhada.TCapa.RecordCount = 0 then
begin
repEntradaCapaDetalhada.TCapa.Filtered:=False;
repEntradaCapaDetalhada.TCapa.Close;
bitbtn4.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repEntradaCapaDetalhada.TCapa.IndexFieldNames := ('DATAENTRADA');
RepEntradaCapaDetalhada.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapaDetalhada.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.PrinterSetup;
end
else
begin
if RadioButton2.Checked = True then
begin
repEntradaCapaDetalhada.TCapa.IndexFieldNames := ('ESSENCIA');
RepEntradaCapaDetalhada.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapaDetalhada.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.PrinterSetup;
end;
end;
end;
end;
end;

end.
