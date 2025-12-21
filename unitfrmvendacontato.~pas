unit unitfrmvendacontato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, EDBDate, EDBZero, EChkIE, EChkCNPJ, EChkCPF, EDBNum,
  EKeyNav, XPMenu, Registry, DB;

type
  Tfrmvendacontato = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ImageList1: TImageList;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit18: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    PageControl1: TPageControl;
    Panel2: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    situacao: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    DATAPARA: TEvDBDateEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DATA: TEvDBDateEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
    procedure EvCheckIE1Error(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure situacaoChange(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet2Show(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DATAPARAExit(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  procedure ValidarBasedeDados;
  public
    { Public declarations }
  end;

var
  frmvendacontato: Tfrmvendacontato;


implementation

uses UnitPrincipal, UnitDM, UnitPesquisaEntrada, UnitPesquisa3,
  unitpesquisavendedor, unitfrmocorrencia, UnitVenda;

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

Procedure Tfrmvendacontato.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoDados',chave);
    DM.IBDatabase1.DatabaseName := (Chave)+'\bdsiscomad.gdb';
    DM.IBDatabase1.Connected := true;
end;

procedure Tfrmvendacontato.SpeedButton9Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Open;
DM.TManutencao.Append;
end;

procedure Tfrmvendacontato.SpeedButton10Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Edit;
end;



procedure Tfrmvendacontato.MaskEdit7Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmvendacontato.EvCheckIE1Error(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmvendacontato.MaskEdit2Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmvendacontato.MaskEdit1Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmvendacontato.MaskEdit3Exit(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitada incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmvendacontato.BitBtn1Click(Sender: TObject);
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

if (data.Text <> '') and  (dbcombobox1.Text <> '')and (dbcombobox2.Text <> '')and  (situacao.Text <> '')then
begin
If Application.MessageBox('Confirma Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
//    DM.TOCORRENCIA.Edit;
    DBEDIT2.Text := frmPrincipal.usuario.Caption;
    DM.TOCORRENCIA.Post;
    DM.TOCORRENCIA.edit;
    data.SetFocus;
//    BitBtn6.Enabled := false;
    BitBtn8.Enabled := true;
//    BitBtn10.Enabled := true;
  end;
  end;
end;
end;

procedure Tfrmvendacontato.BitBtn3Click(Sender: TObject);
begin
dm.TOCORRENCIA.Cancel;
dm.TOCORRENCIA.Close; 
//bitbtn6.Enabled := true;
bitbtn8.Enabled := true;
//bitbtn10.Enabled := true;
end;

procedure Tfrmvendacontato.Button1Click(Sender: TObject);
begin
dm.TOCORRENCIA.Close;
Close;
end;

procedure Tfrmvendacontato.BitBtn8Click(Sender: TObject);
begin
dm.TOCORRENCIA.Cancel;
Self.Tag := 0;
close;
end;

procedure Tfrmvendacontato.BitBtn2Click(Sender: TObject);
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

procedure Tfrmvendacontato.situacaoChange(Sender: TObject);
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

procedure Tfrmvendacontato.DBComboBox1Change(Sender: TObject);
begin
DM.TSETORES.Locate('NOMESETOR',dbcombobox1.text,[lopartialkey,locaseinsensitive]);
dbedit7.Text := DM.TSETORES['CODIGOSETOR'];
end;

procedure Tfrmvendacontato.DBComboBox2Change(Sender: TObject);
begin
DM.TTIPOCONTATO.Locate('NOMECONTATO',dbcombobox2.text,[lopartialkey,locaseinsensitive]);
dbedit8.Text := DM.TTIPOCONTATO['CODIGOCONTATO'];
end;

procedure Tfrmvendacontato.DBMemo1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmvendacontato.DBMemo2KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmvendacontato.TabSheet2Show(Sender: TObject);
begin
Label1.Caption := 'Pesquisa de Ocorrência';
DM.TOCORRENCIA.Last;
DM.TOCORRENCIA.First;
end;

procedure Tfrmvendacontato.Edit2Change(Sender: TObject);
begin
if edit2.Text = '' then dbedit5.clear;
dbedit18.Text := edit2.Text;
end;

procedure Tfrmvendacontato.DATAPARAExit(Sender: TObject);
begin
BITBTN1.setfocus;
end;

procedure Tfrmvendacontato.DBEdit18Change(Sender: TObject);
begin
Edit2.Text := dbedit18.Text ;
end;

procedure Tfrmvendacontato.FormDestroy(Sender: TObject);
begin
frmvenda.Tag := 0;
DM.TOCORRENCIA.Filtered:=FALSE;
dm.TOCORRENCIA.Close;
DM.TSETORES.Close;
DM.TTIPOCONTATO.Close;
    with frmvenda.query3 do
  	begin
    frmvenda.Query3.Close;
    frmvenda.Query3.SQL.Clear ;
    frmvenda.query3.SQL.Add('select DATAOCORRENCIA, OCORRENCIA, FOLOWUPPARA, CODIGO');
    frmvenda.query3.SQL.Add('from OCORRENCIA');
    frmvenda.query3.SQL.Add('where NFNUMERO =:nf AND CODIGOCLIENTE =:cliente'); // linha para atender as condições
    frmvenda.query3.SQL.Add('ORDER BY DATAOCORRENCIA');
    frmvenda.query3.ParamByName('nf').Text := frmvenda.DBEDIT8.Text ; // preenche o parametro
    frmvenda.query3.ParamByName('cliente').Text := frmvenda.DBEDIT9.Text ; // preenche o parametro
    frmvenda.query3.Open;
    END;

end;

procedure Tfrmvendacontato.FormShow(Sender: TObject);
begin
if frmvenda.Tag = 1 then
begin
frmvendacontato.Tag := 1;
DM.TOCORRENCIA.Open;
DM.TOCORRENCIA.Append;
DM.TSETORES.Open;
DM.TTIPOCONTATO.Open;
DBComboBox1.Items := ListaCliente;
DBComboBox2.Items := ListaCliente1;
DBEdit4.Text := frmvenda.query1['CODIGOCLIENTE'];
DBEdit3.Text := frmvenda.Query1['NOMECLIENTE'];
DBEdit9.Text := frmvenda.Query1['NF'];
DBEDIT2.Text := frmPrincipal.usuario.Caption;
data.SetFocus;
data.Text := dateToStr(now);
bitbtn8.Enabled := true;
end
else
begin
if frmvenda.Tag = 2 then
begin
frmvendacontato.Tag := 1;
DM.TOCORRENCIA.Filter := 'CODIGO= ' + QuotedStr(frmvenda.Query3['CODIGO']);
DM.TOCORRENCIA.Filtered:=True;
DM.TOCORRENCIA.Open;
DM.TOCORRENCIA.edit;
DM.TSETORES.Open;
DM.TTIPOCONTATO.Open;
DBComboBox1.Items := ListaCliente;
DBComboBox2.Items := ListaCliente1;
//DBEdit4.Text := frmvenda.query1['CODIGOCLIENTE'];
//DBEdit3.Text := frmvenda.Query1['NOMECLIENTE'];
//DBEdit9.Text := frmvenda.Query1['NF'];
//DBEDIT2.Text := frmPrincipal.usuario.Caption;
//data.SetFocus;
//data.Text := dateToStr(now);
bitbtn8.Enabled := true;
end;
end;
end;

end.
