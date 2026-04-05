unit UnitManutencao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, EDBDate, EDBZero, EChkIE, EChkCNPJ, EChkCPF, EDBNum,
  EKeyNav, XPMenu, Registry, ExtDlgs;

type
  TfrmManutencao1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    EvCheckCNPJ1: TEvCheckCNPJ;
    EvCheckIE1: TEvCheckIE;
    EvCheckCPF2: TEvCheckCPF;
    Image1: TImage;
    Panel2: TPanel;
    DBEdit21: TEvDBZeroEdit;
    DBEdit17: TEvDBZeroEdit;
    DBEdit13: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit5: TMaskEdit;
    DBComboBox4: TDBComboBox;
    MaskEdit4: TMaskEdit;
    DBComboBox3: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Panel3: TPanel;
    EvDBNumEdit1: TEvDBNumEdit;
    MaskEdit10: TEvDBDateEdit;
    MaskEdit9: TEvDBDateEdit;
    MaskEdit3: TMaskEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox5: TDBComboBox;
    MaskEdit11: TMaskEdit;
    MaskEdit7: TMaskEdit;
    DBEdit35: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit29: TDBEdit;
    Label3: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Panel4: TPanel;
    MaskEdit2: TMaskEdit;
    DBEdit37: TDBEdit;
    DBEdit36: TDBEdit;
    Label42: TLabel;
    Label41: TLabel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ImageList1: TImageList;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    EvDBZeroEdit1: TEvDBZeroEdit;
    DBImage1: TDBImage;
    BitBtn2: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MaskEdit5Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure MaskEdit6Change(Sender: TObject);
    procedure MaskEdit4Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure MaskEdit7Change(Sender: TObject);
    procedure MaskEdit11Change(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure DBEdit37Change(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
    procedure MaskEdit3Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure EvCheckIE1Error(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure MaskEdit11Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBComboBox5Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  procedure ValidarBasedeDados;
  public
    { Public declarations }
  end;

var
  frmManutencao1: TfrmManutencao1;


implementation

uses UnitPrincipal, UnitDM;

{$R *.dfm}

Procedure TfrmManutencao1.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoDados',chave);
    DM.IBDatabase1.DatabaseName := (Chave)+'\bdsiscomad.gdb';
    DM.IBDatabase1.Connected := true;
end;

procedure TfrmManutencao1.FormShow(Sender: TObject);
begin
DM.TManutencao.Open;
DM.TManutencao.Edit;
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end;

procedure TfrmManutencao1.SpeedButton9Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Open;
DM.TManutencao.Append;
end;

procedure TfrmManutencao1.SpeedButton10Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Edit;
end;



procedure TfrmManutencao1.MaskEdit5Change(Sender: TObject);
begin
DBEdit5.Text := MaskEdit5.Text; 
end;

procedure TfrmManutencao1.DBEdit5Change(Sender: TObject);
begin
MaskEdit5.Text := DBEdit5.Text; 
end;

procedure TfrmManutencao1.MaskEdit6Change(Sender: TObject);
begin
DBEdit6.Text := MaskEdit6.Text;
end;

procedure TfrmManutencao1.MaskEdit4Change(Sender: TObject);
begin
DBEdit13.Text := MaskEdit4.Text;
end;

procedure TfrmManutencao1.DBEdit6Change(Sender: TObject);
begin
MaskEdit6.Text := DBEdit6.Text;
end;

procedure TfrmManutencao1.DBEdit13Change(Sender: TObject);
begin
MaskEdit4.Text := DBEdit13.Text;
end;

procedure TfrmManutencao1.DBEdit7Change(Sender: TObject);
begin
MaskEdit7.Text := DBEdit7.Text;
end;

procedure TfrmManutencao1.DBEdit11Change(Sender: TObject);
begin
MaskEdit11.Text := DBEdit11.Text;
end;

procedure TfrmManutencao1.MaskEdit7Change(Sender: TObject);
begin
DBEdit7.Text := MaskEdit7.Text;
end;

procedure TfrmManutencao1.MaskEdit11Change(Sender: TObject);
begin
DBEdit11.Text := MaskEdit11.Text;
end;

procedure TfrmManutencao1.MaskEdit2Change(Sender: TObject);
begin
DBEdit37.Text := MaskEdit2.Text;
end;

procedure TfrmManutencao1.DBEdit37Change(Sender: TObject);
begin
MaskEdit2.Text := DBEdit37.Text;
end;

procedure TfrmManutencao1.MaskEdit7Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao1.MaskEdit3Change(Sender: TObject);
begin
DBEdit8.Text := MaskEdit3.Text;
end;

procedure TfrmManutencao1.DBEdit8Change(Sender: TObject);
begin
MaskEdit3.Text := DBEdit8.Text;
end;

procedure TfrmManutencao1.EvCheckIE1Error(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao1.MaskEdit2Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao1.MaskEdit1Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao1.MaskEdit3Exit(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitada incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao1.MaskEdit4Exit(Sender: TObject);
begin
if MaskEdit4.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit4.Text) < 8 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit4.SetFocus;
end
else
exit;
end;
end;

procedure TfrmManutencao1.MaskEdit5Exit(Sender: TObject);
begin
if MaskEdit5.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit5.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit5.SetFocus;
end
else
exit;
end;
end;

procedure TfrmManutencao1.MaskEdit6Exit(Sender: TObject);
begin
if MaskEdit6.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit6.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit6.SetFocus;
end
else
exit;
end;
end;

procedure TfrmManutencao1.MaskEdit11Exit(Sender: TObject);
begin
if MaskEdit11.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit11.Text) < 7 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit11.SetFocus;
end
else
exit;
end;
end;



procedure TfrmManutencao1.BitBtn1Click(Sender: TObject);
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Nome da Empresa deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBEdit2.SetFocus;
      end
   else
    begin
	if DBEdit4.Text='' then
   	begin
         Application.MessageBox('Nome de fantasia deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBEdit4.SetFocus;
      end
   else
   	begin
	if DBComboBox3.Text='' then
   	begin
         Application.MessageBox('Logradouro deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBComboBox3.SetFocus;
      end
   else
   	begin
         if DBEDIT12.Text = '' then
				begin
               Application.MessageBox('Endereço deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT12.SetFocus;
      		end
         else
      		begin
               if DBEDIT17.Text = '' then
   					begin
            		Application.MessageBox('Numero deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
                PageControl1.ActivePage := TabSheet1;
                        DBEDIT17.SetFocus;
                        end
         else
   	begin
         if DBEDIT19.Text = '' then
				begin
               Application.MessageBox('Bairro deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT19.SetFocus;
      		end
          else
   	begin
         if DBEDIT13.Text = '' then
				begin
               Application.MessageBox('CEP deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               MASKEDIT4.SetFocus;
      		end
         else
   	begin
         if DBEDIT22.Text = '' then
				begin
               Application.MessageBox('Cidade deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT22.SetFocus;
      		end
         else
   	begin
         if DBComboBox4.Text = '' then
				begin
               Application.MessageBox('UF deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBComboBox4.SetFocus;
      		end
         else
   	begin
         if DBEDIT7.Text = '' then
				begin
               Application.MessageBox('CNPJ deve ser informado!', 'Inscrições', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet2;
               MASKEDIT7.SetFocus;
      		end
         else
   	begin
         if DBEDIT8.Text = '' then
				begin
               Application.MessageBox('Inscrição Estadual deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet2;
               MaskEdit3.SetFocus;
      		end
          else
    begin
         if DBEDIT3.Text = '' then
				begin
               Application.MessageBox('Registro no Ibama deve ser informado!', 'Inscrições', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet2;
               DBEDIT3.SetFocus;
      		end
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;

if (DBEDIT2.Text <> '') and (DBEdit4.Text <> '')and (DBComboBox3.Text <> '') and (DBEDIT12.Text <> '')and (DBEdit17.Text <> '')and (DBEdit19.Text <> '') and (DBEdit13.Text <> '') and (DBEdit22.Text <> '') and (DBComboBox4.Text <> '') and (DBEdit7.Text <> '') and (DBEdit8.Text <> '') and (DBEdit3.Text <> '')then

begin
If Application.MessageBox('Confirma a Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TManutencao.Post;
Self.Close;
end
else
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end
end
end;

procedure TfrmManutencao1.DBEdit26Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet2;
MaskEdit7.SetFocus; 
end;

procedure TfrmManutencao1.DBComboBox5Exit(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet3;
DBEdit36.SetFocus; 
end;


procedure TfrmManutencao1.BitBtn3Click(Sender: TObject);
begin
dm.TManutencao.Cancel; 
Close;
end;

procedure TfrmManutencao1.BitBtn5Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('É preciso estar logado como "admin" para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if DM.TManutencao.RecordCount <> 0 then
begin
if Application.MessageBox ('Confirma Exclusão?','Confirmação', mb_YesNo +
MB_ICONQUESTION) = idYes then
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
DM.TManutencao.Delete;
DM.TManutencao.Refresh;
end
else
DBEdit2.SetFocus;
end
else
Application.MessageBox('Não há dados para exclusão!', 'Informação', mb_Ok + mb_IconExclamation);
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end;
end;
procedure TfrmManutencao1.BitBtn2Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

end.
