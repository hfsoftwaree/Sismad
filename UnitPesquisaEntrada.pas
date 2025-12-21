unit UnitPesquisaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  IBCustomDataSet, IBQuery;

type
  TfrmPesquisa = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaToros, UnitREntrada1,
  UnitfrmFunrural, UnitEntradaSerrada, UnitREntrada3, UnitRRomaneioToros,
  UnitEntradaTorosNF, Unitromaneiotoro, unitfrmocorrencia,
  unitfrmcontaspagar;



{$R *.dfm}

procedure TfrmPesquisa.BitBtn2Click(Sender: TObject);
begin
if frmcontaspagar = nil then
else
if frmcontaspagar.Tag = 1 then
begin
      frmcontaspagar.edit1.Text := '';
      DM.QCredor.Close;
      Close;
//      frmcontaspagar.edit1.SetFocus;
      end;


if frmocorrencia = nil then
else
if frmocorrencia.Tag = 1 then
begin
      frmocorrencia.edit1.Text := '';
      DM.QCredor.Close;
      Close;
      frmocorrencia.edit1.SetFocus;
            frmocorrencia.BitBtn5.Enabled := true;
      end;

if frmentradaserrada = nil then
else
if frmEntradaSerrada.Tag = 1 then
begin
//      frmEntradaSerrada.nota.Text := '0';
      frmentradaserrada.BitBtn4.Enabled := true;
      DM.QFornecedor.Close;
      Close;
      end;

if frmrentrada1 = nil then
else
if frmREntrada1.Tag = 1 then
begin
      frmrEntrada1.nota1.Text := '0';
      DM.QFornecedor.Close;
      Close;
      end;

if frmrentrada3 = nil then
else
if frmREntrada3.Tag = 1 then
begin
      frmREntrada3.nota1.Text := '0';
      DM.QFornecedor.Close;
      Close;
      end;
end;

procedure TfrmPesquisa.Edit1Change(Sender: TObject);
begin
//if edit1.Text = '' then
//begin
//DM.QFornecedor.First;
//end
//else
if (edit1.Text>='A') and (edit1.Text<='Z') then
begin
DM.QFornecedor.Locate('NOMEFORNECEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end
else
begin
if (edit1.Text>='0') and (edit1.Text<='9') then
begin
DM.QFornecedor.Locate('CODIGOFORNECEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end
END;
end;

procedure TfrmPesquisa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
bitbtn1.Click;
    Key:=#0;
    end;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
//DM.QFornecedor.Open;
Edit1.SetFocus;
Edit1.Clear;
with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor');
               SQL.Add('Order by NOMEFORNECEDOR');
               Open;
    end;

with query1 do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) as CODIGOFORNECEDOR from FORNECEDOR');
      Open;
    end;
panel2.Caption:= query1.FieldByName('CODIGOFORNECEDOR').AsString;
query1.Close ;
end;

procedure TfrmPesquisa.BitBtn1Click(Sender: TObject);
begin
if frmcontaspagar = nil then
else
if frmcontaspagar.Tag = 1 then
begin
      frmcontaspagar.edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmcontaspagar.DBEDIT2.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmcontaspagar.DBEDIT6.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmcontaspagar.dbmemo1.SetFocus;
      Close;
      end;

if frmocorrencia = nil then
else
if frmocorrencia.Tag = 1 then
begin
      frmocorrencia.DBEDIT3.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmocorrencia.edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmocorrencia.dbedit4.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmocorrencia.edit2.SetFocus;
      frmocorrencia.BitBtn5.Enabled := true;
      Close;
      end;


if frmentradaserrada = nil then
else
if frmEntradaSerrada.Tag = 1 then
begin
      frmEntradaSerrada.fornecedor.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmEntradaSerrada.DBEdit6.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmEntradaSerrada.nota.SetFocus;
      Close;
      end;


if frmrentrada1 = nil then
else
if frmREntrada1.Tag = 1 then
begin
      frmrEntrada1.fornecedor.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmrEntrada1.EDIT1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      Close;
      frmrEntrada1.nota1.SetFocus;
      end;

if frmrentrada3 = nil then
else
if frmREntrada3.Tag = 1 then
begin
      frmREntrada3.fornecedor.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmREntrada3.EDIT1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmREntrada3.nota1.SetFocus;
      Close;
      end;
end;

procedure TfrmPesquisa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;


procedure TfrmPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #40  then
   begin
   dbgrid1.SetFocus;
   end

end;

procedure TfrmPesquisa.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_DOWN then
dbgrid1.SetFocus;
end;

procedure TfrmPesquisa.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_BACK then
edit1.SetFocus;
end;

procedure TfrmPesquisa.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with DM.Qfornecedor do
  	begin
    Close;
    SQL.Clear ;
    SQL.Add('select * from FORNECEDOR');
//    SQL.Add('Where PADROES_INATIVO =:busca');
    SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
//    ParamByName('busca').Text := '2';
    Open;
    end;
end;

end.
