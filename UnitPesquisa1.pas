unit UnitPesquisa1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmPesquisa1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa1: TfrmPesquisa1;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaToros, UnitProducao, UnitPesquisa2;



{$R *.dfm}

procedure TfrmPesquisa1.BitBtn2Click(Sender: TObject);
begin
DM.QProduto.Close;
Close;
end;

procedure TfrmPesquisa1.Edit1Change(Sender: TObject);
begin
if edit1.Text = '' then
begin
DM.QProduto.First;
end
else
DM.QProduto.Locate('NOMEGRAU',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmPesquisa1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
   bitBtn1.Click;
       Key:=#0;
   end;
end;

procedure TfrmPesquisa1.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
DM.QProduto.Open;
Edit1.Clear; 
Edit1.SetFocus;
DM.QProduto.Last;
Panel2.Caption := '' + intTostr(DM.QProduto.RecordCount);
DM.QProduto.First; 
with DM.QProduto do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from PRODUTO Order by NOMEGRAU');
               Open;
    end
end;

procedure TfrmPesquisa1.BitBtn1Click(Sender: TObject);
begin
      frmProducao.PRODUTO.Text := DM.QProduto['NOMEGRAU'];
      frmProducao.IND.value := DM.QProduto['FATOR'];
      Close;
      frmPesquisa2.ShowModal;
end;

procedure TfrmPesquisa1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
    with DM.QProduto do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from PRODUTO Order by FATOR');
               Open;
               end;
               end;

begin
if ComboBox1.ItemIndex = 1 then
    begin
    with DM.QProduto do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from PRODUTO Order by NOMEGRAU');
               Open;
               end;
               end;
end;
end;

procedure TfrmPesquisa1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;

procedure TfrmPesquisa1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_DOWN then
dbgrid1.SetFocus;
end;

procedure TfrmPesquisa1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_BACK then
edit1.SetFocus;
end;

end.
