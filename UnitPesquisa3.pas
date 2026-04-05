unit UnitPesquisa3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, Mask,
  DBCtrls, CJVBlinkLabel, IBCustomDataSet, IBQuery;

type
  TfrmPesquisa3 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    atencao: TCJVBlinkLabel;
    dbedit1: TDBMemo;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    BitBtn20: TBitBtn;
    BitBtn17: TBitBtn;
    DBEdit2: TDBEdit;
    BitBtn4: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa3: TfrmPesquisa3;

implementation

uses UnitDM, UnitPrincipal, UnitSaidaMadeiras, UnitRSaida1, UnitREntrada1,
  UnitRepRomaneioSerrada, Unitromaneioserrada, Unitromaneiotoro,
  UnitRRomaneioToros, Unitconsultaproduto, UnitVenda, UnitRSaida,
  UnitCredor, unitfrmocorrencia;

{$R *.dfm}
procedure TfrmPesquisa3.BitBtn2Click(Sender: TObject);
begin
if frmocorrencia = nil then
else
if frmocorrencia.Tag = 1 then
begin
      frmocorrencia.edit1.Text := '';
      DM.QCredor.Close;
      Close;
      frmocorrencia.edit1.SetFocus;
            frmocorrencia.BitBtn4.Enabled := true;
      end;

if frmvenda = nil then
else
if frmVenda.Tag = 1 then
begin
      frmVenda.nota.Text := '0';
      DM.QCredor.Close;
      Close;
//      frmVenda.nota.SetFocus;
      end;

if frmconsultaproduto = nil then
else
if frmconsultaproduto.Tag = 1 then
begin
      frmconsultaproduto.nota.Text := '0';
      DM.QCredor.Close;
      Close;
      end;

if frmrsaida1 = nil then
else
if frmrsaida1.Tag = 1 then
begin
      frmrsaida1.nota1.Text := '0';
      DM.QCredor.Close;
      Close;
      end;

end;


procedure TfrmPesquisa3.Edit1Change(Sender: TObject);
begin
//if edit1.Text = '' then
//begin
//DM.QCredor.First;
//end
//else
if (edit1.Text>='A') and (edit1.Text<='Z') then
begin
DM.QCredor.Locate('NOMECREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end
else
begin
if (edit1.Text>='0') and (edit1.Text<='9') then
begin
DM.QCredor.Locate('CODIGOCREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end
END;
end;

procedure TfrmPesquisa3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  bitBtn4.Click;
  Key:=#0; // Elimina o beep ao fechar o form
  end;
end;

procedure TfrmPesquisa3.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
with query1 do
  	begin
      Close;
      SQL.Clear;
      SQL.Add('select Count(*) as CODIGOCREDOR from Credor');
      SQL.Add('Where PADROES_INATIVO =:busca');
      ParamByName('busca').Text := '2';
      Open;
    end;
panel2.Caption:= query1.FieldByName('CODIGOCREDOR').AsString;
query1.Close ;
end;

procedure TfrmPesquisa3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;

procedure TfrmPesquisa3.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn4.Click;
   Key:=#0;
end;

procedure TfrmPesquisa3.BitBtn3Click(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := true;
self.Tag := 1;
Application.CreateForm(TfrmCredor, frmCredor);
frmcredor.BitBtn9.Visible := true;
frmcredor.BitBtn3.Visible := false;
frmCREDOR.ShowModal;
frmcredor.Free;
end;

procedure TfrmPesquisa3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_DOWN then
dbgrid1.SetFocus;
end;

procedure TfrmPesquisa3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_BACK then
edit1.SetFocus;
end;

procedure TfrmPesquisa3.DBEdit1Change(Sender: TObject);
begin
if dbedit1.Text <> '' then atencao.Visible := true else atencao.Visible := false;
end;

procedure TfrmPesquisa3.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
with DM.QCredor do
  	begin
    Close;
    SQL.Clear ;
    SQL.Add('select * from CREDOR');
    SQL.Add('Where PADROES_INATIVO =:busca');
    SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    ParamByName('busca').Text := '2';
    Open;
    end;
end;

procedure TfrmPesquisa3.BitBtn20Click(Sender: TObject);
begin
DM.QCredor.Last;
end;

procedure TfrmPesquisa3.BitBtn17Click(Sender: TObject);
begin
DM.QCredor.First;
end;

procedure TfrmPesquisa3.BitBtn4Click(Sender: TObject);
begin
if frmocorrencia = nil then
else
if frmocorrencia.Tag = 1 then
begin
      frmocorrencia.DBEDIT3.Text := DM.QCredor['NOMECREDOR'];
      frmocorrencia.edit1.Text := DM.QCredor['CODIGOCREDOR'];
      frmocorrencia.dbedit4.Text := DM.QCredor['CODIGOCREDOR'];
      frmocorrencia.edit2.SetFocus;
      frmocorrencia.BitBtn4.Enabled := true;
      Close;
      end;

if frmsaidamadeiras = nil then
else
if frmSaidaMadeiras.Tag = 1 then
begin
      frmSaidaMadeiras.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmSaidaMadeiras.DBEdit6.Text := DM.QCredor['CODIGOCREDOR'];

      if DM.QCredor['IE'] = null then exit
      else
      frmSaidaMadeiras.inscricao.Text := DM.QCredor['IE'];

      if DM.QCredor['CNPJ'] = null then exit
      else
      frmSaidaMadeiras.DBEDIT1.Text := DM.QCredor['CNPJ'];

      Close;
      frmSaidaMadeiras.nota.SetFocus;
      end;

if frmrsaida1 = nil then
else
if frmRSaida1.Tag = 1 then
begin
      Close;
      frmRSaida1.nota1.SetFocus;
      frmRSaida1.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRSaida1.EDIT1.Text := DM.QCredor['CODIGOCREDOR'];

      if DM.QCredor['ENDERECO'] = null then exit
      else
      frmRSaida1.EDIT2.Text := DM.QCredor['ENDERECO'];

      if DM.QCredor['BAIRRO'] = null then exit
      else
      frmRSaida1.EDIT6.Text := DM.QCredor['BAIRRO'];

      if DM.QCredor['CIDADE'] = null then exit
      else
      frmRSaida1.EDIT3.Text := DM.QCredor['CIDADE'];

      if DM.QCredor['UF'] = null then exit
      else
      frmRSaida1.EDIT8.Text := DM.QCredor['UF'];

      if DM.QCredor['FONE'] = null then exit
      else
      frmRSaida1.EDIT7.Text := DM.QCredor['FONE'];

      if DM.QCredor['CNPJ'] = null then exit
      else
      frmRSaida1.EDIT5.Text := DM.QCredor['CNPJ'];

      if DM.QCredor['CPF'] = null then exit
      else
      frmRSaida1.EDIT10.Text := DM.QCredor['CPF'];

      end;

if frmrromaneioserrada = nil then
else
if frmRRomaneioSerrada.Tag = 1 then
begin
      frmRRomaneioSerrada.EDIT1.Text := DM.QCredor['CODIGOCREDOR'];
      frmRRomaneioSerrada.fornecedor.Text := DM.QCredor['NOMECREDOR'];

      if DM.QCredor['ENDERECO'] = null then exit
      else
      frmRRomaneioSerrada.EDIT2.Text := DM.QCredor['ENDERECO'];

      if DM.QCredor['BAIRRO'] = null then exit
      else
      frmRRomaneioSerrada.EDIT3.Text := DM.QCredor['BAIRRO'];

      if DM.QCredor['CIDADE'] = null then exit
      else
      frmRRomaneioSerrada.EDIT5.Text := DM.QCredor['CIDADE'];

      if DM.QCredor['UF'] = null then exit
      else
      frmRRomaneioSerrada.EDIT6.Text := DM.QCredor['UF'];

      if DM.QCredor['FONE'] = null then exit
      else
      frmRRomaneioSerrada.EDIT7.Text := DM.QCredor['FONE'];

      if DM.QCredor['CNPJ'] = null then exit
      else
      frmRRomaneioSerrada.EDIT9.Text := DM.QCredor['CNPJ'];

      if DM.QCredor['CPF'] = null then exit
      else
      frmRRomaneioSerrada.EDIT10.Text := DM.QCredor['CPF'];

      frmRRomaneioSerrada.nota.SetFocus;
      Close;
      end;

if frmromaneioserrada = nil then
else
if frmRomaneioserrada.Tag = 1 then
begin
      frmRomaneioserrada.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      frmRomaneioSerrada.edit1.Text := DM.QCredor['CODIGOCREDOR'];

      if DM.QCredor['CNPJ'] = null then exit
      else
      frmRomaneioserrada.inscricao.Text := DM.QCredor['CNPJ'];

      frmRomaneioSerrada.nota.Enabled := true;
      frmRomaneioSerrada.data.Enabled := true;
      frmRomaneioSerrada.nota.SetFocus;
      Close;
      end;

if frmconsultaproduto = nil then
else
if frmconsultaproduto.Tag = 1 then
begin
      frmconsultaproduto.edit2.Text := DM.QCredor['CODIGOCREDOR'];
      frmconsultaproduto.fornecedor.Text := DM.QCredor['NOMECREDOR'];
      Close;
      frmconsultaproduto.nota.SetFocus;
      end;

if frmvenda = nil then
else
if frmVenda.Tag = 1 then
begin
if dbedit2.Text = '2' then
    begin
    Application.MessageBox('Venda bloqueada para o cliente selecionado. Verifique!', 'Informação', mb_Ok + mb_IconError);
    edit1.SetFocus ;
    end;

if dbedit2.Text <> '2' then
    begin
    if DM.TSaida_Discriminacao.RecordCount = 0 then
    begin
    frmVenda.fornecedor.Text := DM.QCredor['NOMECREDOR'];
    frmVenda.DBEdit6.Text := DM.QCredor['CODIGOCREDOR'];
    if DM.QCredor['FONE']=null then frmvenda.Edit4.Text := '' else frmvenda.Edit4.Text  := DM.QCredor['FONE'];
    frmVenda.nota.SetFocus;
    DM.QCredor.Close ;
    Close;
    end;

       if DM.TSaida_Discriminacao.RecordCount <> 0 then
       begin
        If Application.MessageBox('Atenção! Você solicitou alterar o nome do Cliente para o Pedido informado. Confirma?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
         DM.TSaida_Discriminacao.First;
         DM.TSaida_Discriminacao.Edit;
         while not DM.TSaida_Discriminacao.Eof do
         begin
         DM.TSaida_Discriminacao['CODIGOFORNECEDOR']:=DM.QCredor['CODIGOCREDOR'];
         DM.TSaida_Discriminacao['FORNECEDOR']:=DM.QCredor['NOMECREDOR'];
         DM.TSaida_Discriminacao.Next;
         DM.TSaida_Discriminacao.Edit;
         end;
         frmVenda.fornecedor.Text := DM.QCredor['NOMECREDOR'];
         frmVenda.DBEdit6.Text := DM.QCredor['CODIGOCREDOR'];
         if DM.QCredor['FONE']=null then frmvenda.Edit4.Text := '' else frmvenda.Edit4.Text  := DM.QCredor['FONE'];
         DM.TSaida_Discriminacao.Post;


         if DM.TSAIDAFECHAMENTO.RecordCount <> 0 then
         begin
         DM.TSAIDAFECHAMENTO.Edit;
         DM.TSAIDAFECHAMENTO['CODIGOCLIENTE']:= DM.QCredor['CODIGOCREDOR'];
         DM.TSAIDAFECHAMENTO['NOMECLIENTE']:=DM.QCredor['NOMECREDOR'];
         DM.TSAIDAFECHAMENTO.Post;
         end;
         close;
end;
end;
end;
end;

end;

end.
