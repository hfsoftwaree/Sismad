unit UnitEssencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, DB, DBTables, DBXpress, FMTBcd, DBClient, Provider,
  SqlExpr, IBCustomDataSet, IBTable;

type
  TfrmEssencia = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    BitBtn5: TBitBtn;
    DataSource1: TDataSource;
    fechamento: TIBTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEssencia: TfrmEssencia;


implementation

uses UnitPrincipal, UnitDM;


{$R *.dfm}


procedure TfrmEssencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
end;


procedure TfrmEssencia.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
Label1.Caption := 'Cadastro de Essência';
DBEdit2.SetFocus;
DM.TEssencia.Open;
//DM.TEssencia.Refresh;
DM.TEssencia.IndexFieldNames := ('ESSENCIA');
DM.TEssencia.First;
DM.TEssencia.Edit;
end;

procedure TfrmEssencia.Edit1Change(Sender: TObject);
begin
if (edit1.Text>='A') and (edit1.Text<='Z') then
begin
DM.TEssencia.Locate('ESSENCIA',Edit1.text,[lopartialkey,locaseinsensitive]);
end
else
begin
if (edit1.Text>='0') and (edit1.Text<='9') then
begin
DM.TEssencia.Locate('CODIGO',Edit1.text,[lopartialkey,locaseinsensitive]);
end;
end;
end;

procedure TfrmEssencia.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  bitbtn1.Click;
end;

procedure TfrmEssencia.BitBtn4Click(Sender: TObject);
begin
if frmprincipal.incluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DBEdit2.SetFocus;
DM.TEssencia.Cancel;
DM.TEssencia.Append;
    DM.TEssencia['ETOROS']:= '0';
    DM.TEssencia['TENTRADA']:= '0';
    DM.TEssencia['TSAIDA']:= '0';
    DM.TEssencia['ESERRADA']:= '0';
    DM.TEssencia['EINICIAL']:= '0';

BitBtn4.Enabled := False;
BitBtn6.Enabled := False;
BitBtn3.Enabled := False;
end;
end;

procedure TfrmEssencia.BitBtn1Click(Sender: TObject);
begin
if frmprincipal.alterar.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if DBEDIT2.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end;

if (DBEDIT2.Text <> '')  then
begin
If Application.MessageBox('Confirma Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
    DM.TEssencia.Post;
    DM.TEssencia.Refresh;
    If Application.MessageBox('Gostaria de incluir outra Essência?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
    begin
    DM.TEssencia.Append;
    dbedit2.SetFocus;
    BitBtn4.Enabled := False;
    BitBtn6.Enabled := False;
    BitBtn3.Enabled := False;
    end
    else
    begin
    dbedit2.SetFocus;
    BitBtn4.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn3.Enabled := true;
    end;
  except
    Application.MessageBox('Essência já Cadastrada!', 'Essência', mb_Ok + mb_IconExclamation);
    DBEdit2.Clear;
  end;
  end;
end;
end;
end;

procedure TfrmEssencia.BitBtn2Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TEssencia.Cancel;
BitBtn4.Enabled := true;
BitBtn6.Enabled := true;
BitBtn3.Enabled := true;
end;

procedure TfrmEssencia.BitBtn7Click(Sender: TObject);
begin
Label1.Caption := 'Cadastro de Essência';
Bitbtn7.Visible := False;
Bitbtn6.Visible := True;
Label3.Visible := False;
Edit1.Clear;
Edit1.Visible := False;
Label2.Visible := True;
DBEdit2.Visible := True;
DBEdit2.SetFocus;
end;

procedure TfrmEssencia.BitBtn6Click(Sender: TObject);
begin
if DM.TEssencia.RecordCount <> 0 then
begin
Label1.Caption := 'Pesquisa de Essência';
Bitbtn6.Visible := False;
Bitbtn7.Visible := True;
Label2.Visible := False;
DBEdit2.Visible := False;
Label3.Visible := True;
Edit1.Visible := True;
Edit1.Clear;
Edit1.SetFocus;
end
else
begin
if DM.TEssencia.RecordCount = 0 then
begin
Application.MessageBox('Não há Essência cadastrada para pesquisa!', 'Informação', mb_Ok + mb_IconExclamation);
DBEdit2.SetFocus;
end;
end;
end;

procedure TfrmEssencia.BitBtn3Click(Sender: TObject);
begin
DM.TEssencia.Cancel;
Label1.Caption := 'Cadastro de Essência';
Label3.Visible := False;
Edit1.Clear;
Edit1.Visible := False;
Label2.Visible := True;
DBEdit2.Visible := True;
Bitbtn7.Visible := False;
Bitbtn6.Visible := True;
bitbtn1.Tag := 0;
Close;
end;

procedure TfrmEssencia.BitBtn5Click(Sender: TObject);
begin
if frmprincipal.excluir.Caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if DM.TEssencia['CODIGO'] = '87' then
begin
Application.MessageBox('A Essência selecionado não pode ser excluída. Por favor tente outra!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.Tessencia.Open;
if DM.TEssencia.RecordCount = 0 then
begin
DM.TEssencia.Close;
Application.MessageBox('Não hà Essência para ser Excluída!', 'Informação', mb_Ok + mb_IconInformation);
end;
end;
end;

DM.TEssencia.Open;
if DM.TEssencia.RecordCount <> 0 then
begin
If Application.MessageBox('Confirma Exclusão desta essência?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TEssencia.Delete;
DM.TEssencia.Refresh;
end;
end;
end;



procedure TfrmEssencia.FormDestroy(Sender: TObject);
begin
DM.TEssencia.Close;
end;

procedure TfrmEssencia.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;

end;

procedure TfrmEssencia.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  mousePt: TGridcoord;
begin
  mousePt := DbGrid1.MouseCoord(x,y);
  if mousePt.y = 0 then
    Screen.Cursor := crHandPoint
  else
    Screen.Cursor := crDefault;

end;

procedure TfrmEssencia.DBGrid1TitleClick(Column: TColumn);
var
  I: Integer;
begin
  for I := 0 to DBGrid1.Columns.Count - 1 do
  DBGrid1.Columns[i].Title.Font.Style := [];
  dm.TEssencia.IndexFieldNames := Column.FieldName;
  Column.Title.Font.Style := [fsBold];

end;

end.
