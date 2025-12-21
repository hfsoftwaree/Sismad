unit UnitProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, EDBNum;

type
  TfrmProdutos = class(TForm)
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
    Panel5: TPanel;
    DBEDIT3: TEvDBNumEdit;
    ImageList1: TImageList;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    CODIGO: TEvDBZeroEdit;
    Panel11: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    FATOR: TEvDBNumEdit;
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
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses UnitDM, UnitPrincipal;


{$R *.dfm}

procedure TfrmProdutos.BitBtn4Click(Sender: TObject);
begin
BitBtn4.Enabled := False;
PageControl1.ActivePage := TabSheet1;
BitBtn6.Enabled := False;
BitBtn3.Enabled := False;
DM.TProduto.Append;
DBEdit4.SetFocus;
end;

procedure TfrmProdutos.BitBtn1Click(Sender: TObject);
begin
	if DBEdit4.Text='' then
   	begin
         Application.MessageBox('Produto Origem deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit4.SetFocus;
    end
    else
begin
	if DBEdit5.Text='' then
   	begin
         Application.MessageBox('Produto Destino deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit5.SetFocus;
    end
    else
begin
	if CODIGO.Text='' then
   	begin
         Application.MessageBox('Código deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         codigo.SetFocus;
    end
    else
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Produto Gerado deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit2.SetFocus;
    end
    else
begin
	if DBEdit6.Text='' then
   	begin
         Application.MessageBox('Unidade deve ser informada!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit6.SetFocus;
    end
    else
begin
	if DBEdit3.Text='' then
   	begin
         Application.MessageBox('Indice deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit3.SetFocus;
    end
    else
begin
	if fator.Text='' then
   	begin
         Application.MessageBox('Fator de Expansão deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         fator.SetFocus;
    end
    else
begin
	if DBEdit7.Text='' then
   	begin
         Application.MessageBox('Tipo de Produto deve ser informado!', 'Cadastro', mb_Ok + mb_IconInformation);
         DBEdit7.SetFocus;
    end
    else
    end;
    end;
    end;
    end;
    end;
    end;
    end;


if (DBEdit4.Text <> '')and (DBEdit5.Text <> '')and (codigo.Text <> '')and (DBEdit2.Text <> '')and (DBEdit6.Text <> '')and (DBEdit3.Text <> '')and (fator.Text <> '')and (DBEdit7.Text <> '') then
begin
if DBEdit3.Text='0,00' then DBEdit3.Text := '0';
If Application.MessageBox('Confirma a Inclusão/Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    DM.TProduto.Post;
    DM.TProduto.Refresh;
    If Application.MessageBox('Continua Cadastramento?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then DM.TProduto.Append
    end;
  DBEdit4.SetFocus;
  BitBtn4.Enabled := True;
  BitBtn6.Enabled := True;
  BitBtn3.Enabled := True;
  end
  else
  DBEdit2.SetFocus;
  end;

procedure TfrmProdutos.BitBtn2Click(Sender: TObject);
begin
DM.TProduto.Cancel;
BitBtn4.Enabled := True;
BitBtn6.Enabled := True;
BitBtn3.Enabled := True;
DBEdit2.SetFocus;
end;

procedure TfrmProdutos.BitBtn3Click(Sender: TObject);
begin
DM.TProduto.Close;
Close;
end;

procedure TfrmProdutos.Edit1Change(Sender: TObject);
begin
DM.TProduto.Locate('NOMEGRAU',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
Label1.Caption := 'Cadastro de Produto(s)';
DM.TProduto.Close;
DM.TProduto.Open;
DM.TProduto.IndexName := 'PRODUTO';
DBEdit4.SetFocus;
end;

procedure TfrmProdutos.BitBtn7Click(Sender: TObject);
begin
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
Label1.Caption := 'Cadastro de Produto(s)';
PageControl1.ActivePage := TabSheet1;
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBEdit2.SetFocus;
end;

procedure TfrmProdutos.BitBtn6Click(Sender: TObject);
begin
if DM.TProduto.RecordCount = 0 then
begin
Application.MessageBox('Não hà Produto cadastrados para pesquisa!', 'Pesquisa', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end
else
begin
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
Label1.Caption := 'Pesquisa de Produto(s)';
PageControl1.ActivePage := TabSheet2;
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;
end;
end;

procedure TfrmProdutos.TabSheet1Show(Sender: TObject);
begin
BitBtn1.Enabled := True;
BitBtn2.Enabled := True;
BitBtn4.Enabled := True;
Label1.Caption := 'Cadastro de Produto(s)';
BitBtn7.Visible := False;
BitBtn6.Visible := True;
DBEdit2.SetFocus;
end;


procedure TfrmProdutos.DBEdit11Exit(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TfrmProdutos.TabSheet2Show(Sender: TObject);
begin
BitBtn1.Enabled := False;
BitBtn2.Enabled := False;
BitBtn4.Enabled := False;
Label1.Caption := 'Pesquisa de Produto(s)';
BitBtn6.Visible := False;
BitBtn7.Visible := True;
Edit1.SetFocus;
end;




procedure TfrmProdutos.DBEdit7Exit(Sender: TObject);
begin
BITBTN1.Click;
end;

end.
