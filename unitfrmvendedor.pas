unit unitfrmvendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, EDBNum;

type
  Tfrmvendedor = class(TForm)
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel17: TPanel;
    ImageList1: TImageList;
    Button1: TButton;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvendedor: Tfrmvendedor;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure Tfrmvendedor.BitBtn4Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.T_VENDEDOR.Cancel;
BitBtn4.Enabled := False;
PageControl1.ActivePage := TabSheet1;
BitBtn6.Enabled := False;
BitBtn3.Enabled := False;
DM.T_VENDEDOR.Append;
DBEdit2.SetFocus;
end;
end;

procedure Tfrmvendedor.BitBtn1Click(Sender: TObject);
begin
if frmprincipal.alterar.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Sub-Produto deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit2.SetFocus;
    end;

if (DBEdit2.Text <> '')  then
begin
If Application.MessageBox('Confirma a Inclusão/Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
    DM.T_VENDEDOR.Post;
    DM.T_VENDEDOR.Refresh;
    If Application.MessageBox('Continua Cadastramento?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then DM.T_VENDEDOR.Append
  except
    Application.MessageBox('Vendedor já Cadastrado!', 'Município', mb_Ok + mb_IconExclamation);
  end;
  DBEdit2.SetFocus;
  BitBtn4.Enabled := True;
  BitBtn6.Enabled := True;
  BitBtn3.Enabled := True;
  end
  else
  DBEdit2.SetFocus;
  end
end;
end;

procedure Tfrmvendedor.BitBtn2Click(Sender: TObject);
begin
DM.T_VENDEDOR.Cancel;
BitBtn4.Enabled := True;
BitBtn6.Enabled := True;
BitBtn3.Enabled := True;
DBEdit2.SetFocus;
end;

procedure Tfrmvendedor.BitBtn3Click(Sender: TObject);
begin
DM.T_VENDEDOR.cancel;
Close;
end;

procedure Tfrmvendedor.Edit1Change(Sender: TObject);
begin
DM.T_VENDEDOR.Locate('NOMEVENDEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure Tfrmvendedor.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
Label1.Caption := 'Cadastro de Vendedor';
DM.T_VENDEDOR.Close;
DM.T_VENDEDOR.Open;
DM.T_VENDEDOR.IndexName := ('NOMEVENDEDOR');
DM.T_VENDEDOR.First;
end;

procedure Tfrmvendedor.BitBtn7Click(Sender: TObject);
begin
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
Label1.Caption := 'Cadastro de Vendedor';
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBEdit2.SetFocus;
end;

procedure Tfrmvendedor.BitBtn6Click(Sender: TObject);
begin
if DM.T_VENDEDOR.RecordCount = 0 then
begin
Application.MessageBox('Não hà Vendedor cadastrados para pesquisa!', 'Pesquisa', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end
else
begin
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
Label1.Caption := 'Pesquisa de Vendedor';
PageControl1.ActivePage := TabSheet2;
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;
end;
end;

procedure Tfrmvendedor.TabSheet1Show(Sender: TObject);
begin
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
Label1.Caption := 'Cadastro de Sub-Produto(s)';
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBEdit2.SetFocus;
end;


procedure Tfrmvendedor.DBEdit11Exit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure Tfrmvendedor.TabSheet2Show(Sender: TObject);
begin
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
Label1.Caption := 'Pesquisa de Vendedor';
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;
end;




procedure Tfrmvendedor.DBEdit2Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

procedure Tfrmvendedor.Button1Click(Sender: TObject);
begin
DM.TSUBPRODUTOS.Delete ;
end;

procedure Tfrmvendedor.FormDestroy(Sender: TObject);
begin
DM.T_VENDEDOR.Close;
end;

procedure Tfrmvendedor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then 
KEY := 0; 

end;

procedure Tfrmvendedor.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
  dm.T_VENDEDOR.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];
end;

end.
