unit unitfrmocorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, EDBDate, EDBZero, EChkIE, EChkCNPJ, EChkCPF, EDBNum,
  EKeyNav, XPMenu, Registry, DB;

type
  Tfrmocorrencia = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ImageList1: TImageList;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit4: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    DATA: TEvDBDateEdit;
    situacao: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    DATAPARA: TEvDBDateEdit;
    DBEdit6: TDBEdit;
    tipo: TRadioGroup;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Panel18: TPanel;
    GroupBox3: TGroupBox;
    CIDADE: TDBLookupComboBox;
    GroupBox4: TGroupBox;
    TIPOPESSOA: TDBLookupComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
    procedure EvCheckIE1Error(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure situacaoChange(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure tipoClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DATAPARAExit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CIDADEClick(Sender: TObject);
    procedure CIDADEEnter(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);

  private
    { Private declarations }
  procedure ValidarBasedeDados;
  public
    { Public declarations }
  end;

var
  frmocorrencia: Tfrmocorrencia;


implementation

uses UnitPrincipal, UnitDM, UnitPesquisaEntrada, UnitPesquisa3,
  unitpesquisavendedor;

{$R *.dfm}

class function ListaCliente: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with DM.TSETORES do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('NOMESETOR').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

class function ListaCliente1: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with DM.TTIPOCONTATO  do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('NOMECONTATO').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

Procedure Tfrmocorrencia.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoDados',chave);
    DM.IBDatabase1.DatabaseName := (Chave)+'\bdsiscomad.gdb';
    DM.IBDatabase1.Connected := true;
end;

procedure Tfrmocorrencia.FormShow(Sender: TObject);
begin
frmocorrencia.Tag := 1;
DM.TOCORRENCIA.Open;
DM.TOCORRENCIA.Edit;
EDIT1.Text := DBEDIT4.Text ;
EDIT2.Text := DBEDIT18.Text;
DM.TSETORES.Open;
DM.TTIPOCONTATO.Open;
DBComboBox1.Items := ListaCliente;
DBComboBox2.Items := ListaCliente1;
data.SetFocus;
end;


procedure Tfrmocorrencia.SpeedButton9Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Open;
DM.TManutencao.Append;
end;

procedure Tfrmocorrencia.SpeedButton10Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Edit;
end;



procedure Tfrmocorrencia.MaskEdit7Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmocorrencia.EvCheckIE1Error(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmocorrencia.MaskEdit2Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmocorrencia.MaskEdit1Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmocorrencia.MaskEdit3Exit(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitada incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmocorrencia.BitBtn1Click(Sender: TObject);
begin
if frmprincipal.alterar.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin

	if DATA.Text='' then
   	begin
         Application.MessageBox('Data da Ocorrência deve ser informada!', 'Ocorrência', mb_Ok + mb_IconInformation);
         data.SetFocus;
      end
   else
    begin
	if edit1.Text='' then
   	begin
         Application.MessageBox('Cliente deve ser informado!', 'Ocorrência', mb_Ok + mb_IconInformation);
         edit1.SetFocus;
      end
   else
   	begin
	if dbcombobox1.Text='' then
   	begin
         Application.MessageBox('Tipo de atendimento deve ser informado!', 'Ocorrência', mb_Ok + mb_IconInformation);
         dbcombobox1.SetFocus;
    end
    else
    begin
	if dbcombobox2.Text='' then
   	begin
         Application.MessageBox('Tipo de contato deve ser informado!', 'Ocorrência', mb_Ok + mb_IconInformation);
         dbcombobox2.SetFocus;
    end
    else
    begin
	if situacao.Text='' then
   	begin
         Application.MessageBox('Situação deve ser informado!', 'Ocorrência', mb_Ok + mb_IconInformation);
         situacao.SetFocus;
      end
      end;
      end;
      end;
      end;

if (data.Text <> '') and (Edit1.Text <> '')and (dbcombobox1.Text <> '')and (dbcombobox2.Text <> '')and  (situacao.Text <> '')then
begin
If Application.MessageBox('Confirma Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    DM.TOCORRENCIA.Edit;
    DBEDIT2.Text := frmPrincipal.usuario.Caption;
    DM.TOCORRENCIA.Post;
    DM.TOCORRENCIA.Refresh;
    If Application.MessageBox('Gostaria de incluir outra Ocorrência?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
    begin
    DM.TOCORRENCIA.Append;
    DBEDIT2.Text := frmPrincipal.usuario.Caption;
    data.SetFocus;
    data.Text := dateToStr(now);
    edit1.Text := '' ;
    edit2.Text := '' ;
    end
    else
    begin
    data.SetFocus;
    BitBtn6.Enabled := true;
    BitBtn8.Enabled := true;
    BitBtn10.Enabled := true;
    end;
  end;
  end;
end;
end;

procedure Tfrmocorrencia.BitBtn3Click(Sender: TObject);
begin
dm.TOCORRENCIA.Cancel;
//edit1.Text := dbedit4.Text ;
//edit2.Text := dbedit18.Text ;
bitbtn6.Enabled := true;
bitbtn8.Enabled := true;
bitbtn10.Enabled := true;
end;

procedure Tfrmocorrencia.BitBtn5Click(Sender: TObject);
begin
self.Tag := 1;
DM.QFornecedor.Open;
if DM.QFornecedor.RecordCount = 0 then
begin
DM.QFornecedor.Close;
Application.MessageBox('Não há Fornecedor(es) Cadastrado(s), Verifíque!', 'Informação', mb_Ok + mb_IconExclamation);
end
else
begin
bitbtn5.Enabled := False;
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.ShowModal;
frmpesquisa.Free;
end;
end;

procedure Tfrmocorrencia.BitBtn10Click(Sender: TObject);
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
//dm.TOCORRENCIA.Close;
//Close;
DM.TOCORRENCIA.Open;
if DM.TOCORRENCIA.RecordCount = 0 then
begin
DM.TOCORRENCIA.Close;
Application.MessageBox('Não hà Ocorrência para ser Excluída!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.TOCORRENCIA.Open;
if DM.TOCORRENCIA.RecordCount <> 0 then
begin
If Application.MessageBox('Confirma Exclusão desta Ocorrência?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TOCORRENCIA.Delete;
DM.TOCORRENCIA.Refresh;
DM.TOCORRENCIA.Last;
Panel18.Caption := 'Ocorrência(s) Cadastrada(s).: ' + intTostr(DM.TOCORRENCIA.RecordCount);
DM.TOCORRENCIA.First;
end;
end;
end;
end;
end;

procedure Tfrmocorrencia.BitBtn4Click(Sender: TObject);
begin
self.Tag := 1;
DM.QCredor.Open;
if DM.QCredor.RecordCount = 0 then
begin
DM.QCredor.Close;
Application.MessageBox('Não há Cliente(s) Cadastrado(s), Verifíque!', 'Informação', mb_Ok + mb_IconExclamation);
end
else
begin
bitbtn4.Enabled := False;
Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.ShowModal;
frmpesquisa3.Free;
end;
end;

procedure Tfrmocorrencia.BitBtn6Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.TOCORRENCIA.Append;
DBEDIT2.Text := frmPrincipal.usuario.Caption;
data.SetFocus;
data.Text := dateToStr(now);
bitbtn6.Enabled := false;
bitbtn8.Enabled := false;
bitbtn10.Enabled := false;
END;
end;

procedure Tfrmocorrencia.Button1Click(Sender: TObject);
begin
dm.TOCORRENCIA.Close;
Close;
end;

procedure Tfrmocorrencia.BitBtn8Click(Sender: TObject);
begin
dm.TOCORRENCIA.Cancel;
self.Tag := 0;
close;
end;

procedure Tfrmocorrencia.BitBtn2Click(Sender: TObject);
begin
self.Tag := 1;
DM.T_VENDEDOR.Open;
if DM.T_VENDEDOR.RecordCount = 0 then
begin
DM.T_VENDEDOR.Close;
Application.MessageBox('Não há Vendedor(es) Cadastrado(s), Verifíque!', 'Vendedor', mb_Ok + mb_IconExclamation);
end
else
begin
bitbtn2.Enabled := False;
Application.CreateForm(TfrmPesquisavendedor, frmPesquisavendedor);
frmPesquisavendedor.ShowModal;
frmpesquisavendedor.Free;
end;
end;

procedure Tfrmocorrencia.situacaoChange(Sender: TObject);
begin
if situacao.Text = 'PENDENTE' then
begin
dbedit6.Text := '1';
end
else
begin
if situacao.Text <> 'PENDENTE' then
begin
dbedit6.Text := '0';
end;
end;
end;

procedure Tfrmocorrencia.DBComboBox1Change(Sender: TObject);
begin
DM.TSETORES.Locate('NOMESETOR',dbcombobox1.text,[lopartialkey,locaseinsensitive]);
dbedit7.Text := DM.TSETORES['CODIGOSETOR'];
end;

procedure Tfrmocorrencia.DBComboBox2Change(Sender: TObject);
begin
DM.TTIPOCONTATO.Locate('NOMECONTATO',dbcombobox2.text,[lopartialkey,locaseinsensitive]);
dbedit8.Text := DM.TTIPOCONTATO['CODIGOCONTATO'];
end;

procedure Tfrmocorrencia.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  if DBmemo1.Lines.Text = '' then
  begin
  Key:=#8;
  DBMEMO2.SetFocus;
  end
  else
  end
else
end;

procedure Tfrmocorrencia.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  if DBmemo2.Lines.Text = '' then
  begin
  Key:=#8;
  SITUACAO.SetFocus;
  end
  else
  end
else
end;

procedure Tfrmocorrencia.tipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
            edit1.Clear;
            bitbtn4.Visible := true;
            bitbtn5.Visible := false;

        end;
     1: Begin
          edit1.Clear;
            bitbtn4.Visible := false;
            bitbtn5.Visible := true;

        end;
end;
end;

procedure Tfrmocorrencia.TabSheet2Show(Sender: TObject);
begin
Label1.Caption := 'Pesquisa de Ocorrência';
DM.TOCORRENCIA.Last;
Panel18.Caption := 'Ocorrência(s) Cadastrada(s).: ' + intTostr(DM.TOCORRENCIA.RecordCount);
DM.TOCORRENCIA.First;
Edit3.SetFocus;
end;

procedure Tfrmocorrencia.TabSheet1Show(Sender: TObject);
begin
Label1.Caption := 'Cadastro de Ocorrência';
end;

procedure Tfrmocorrencia.Edit3Change(Sender: TObject);
begin
if edit3.Text = '' then
begin
DM.TOCORRENCIA.First;
end
else
if (edit3.Text>='A') and (edit3.Text<='Z') then
begin
DM.TOCORRENCIA.Locate('NOMECLIENTE',Edit3.text,[lopartialkey,locaseinsensitive]);
end
else
begin
if (edit3.Text>='0') and (edit3.Text<='9') then
begin
DM.TOCORRENCIA.Locate('CODIGO',Edit3.text,[lopartialkey,locaseinsensitive]);
end
END;
end;

procedure Tfrmocorrencia.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
DM.TOCORRENCIA.IndexFieldNames := 'NOMECLIENTE';
end;

begin
if ComboBox1.ItemIndex = 1 then
begin
DM.TOCORRENCIA.IndexFieldNames := 'CODIGO';
end;

begin
if ComboBox1.ItemIndex = 2 then
begin
DM.TOCORRENCIA.IndexFieldNames := 'DATAOCORRENCIA';
end;

END;
end;
end;

procedure Tfrmocorrencia.Edit1Change(Sender: TObject);
begin
if edit1.Text = '' then dbedit3.clear;
dbedit4.Text := edit1.Text;
end;

procedure Tfrmocorrencia.Edit2Change(Sender: TObject);
begin
if edit2.Text = '' then dbedit5.clear;
dbedit18.Text := edit2.Text;
end;

procedure Tfrmocorrencia.DATAPARAExit(Sender: TObject);
begin
BITBTN1.Click ;
end;

procedure Tfrmocorrencia.Edit3KeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
 if key = VK_DOWN then
 begin
dbgrid1.SetFocus;
end;
end;

procedure Tfrmocorrencia.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_BACK then
begin
edit3.SetFocus;
end;

if (Shift = [ssCtrl]) and (Key = 46) Then 
KEY := 0; 
end;

procedure Tfrmocorrencia.CIDADEClick(Sender: TObject);
begin
//edit4.Text := DM.QTipopessoa['CODIGOTIPO'];
//DM.TCredor.Filtered := false;
//DM.TCredor.Close;
//DM.TCredor.Filter := 'CODIGOTIPOPESSOA =' + (edit3.Text);
//DM.TCredor.Filtered := TRUE;
//DM.TCredor.Open;
//DM.TCredor.IndexFieldNames := 'NOMECREDOR';
//DM.TCredor.Last;
//Panel18.Caption := 'Cliente(s) Cadastrado(s).: ' + intTostr(DM.TCredor.RecordCount);
//DM.TCredor.First;
end;

procedure Tfrmocorrencia.CIDADEEnter(Sender: TObject);
begin
//TIPOPESSOA.DropDown;
//cidade.KeyValue := ' ';
end;

procedure Tfrmocorrencia.DBEdit4Change(Sender: TObject);
begin
edit1.Text := dbedit4.Text;
end;

procedure Tfrmocorrencia.DBEdit18Change(Sender: TObject);
begin
Edit2.Text := dbedit18.Text ;
end;

procedure Tfrmocorrencia.FormDestroy(Sender: TObject);
begin
dm.TOCORRENCIA.Close;
DM.TSETORES.Close;
DM.TTIPOCONTATO.Close;
end;

procedure Tfrmocorrencia.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
  DM.TOCORRENCIA.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];

end;

end.
