unit unitconsultaentrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBTable,
  EChkCPF, EChkCNPJ, dbAleGrids, EDBNum, EDBDate, ToolEdit, CurrEdit,
  SSSpin, jpeg, EDateEd, ENumEd, SSBaseXP, SSEdit, Gauges, IBQuery,
  DBClient, Provider;

type
  Tfrmconsultaentrega = class(TForm)
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    g: TGroupBox;
    DBGrid3: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    fornecedor: TEdit;
    DataSource1: TDataSource;
    Query1: TIBQuery;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    filtro: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    GroupBox4: TGroupBox;
    datainicial1: TEvDateEdit;
    datafinal1: TEvDateEdit;
    datainicial: TEdit;
    datafinal: TEdit;
    Panel1: TPanel;
    BitBtn5: TBitBtn;

    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure fornecedorChange(Sender: TObject);
    procedure fornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure fornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure filtroChange(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure datainicial1Change(Sender: TObject);
    procedure datafinal1Change(Sender: TObject);
    procedure datainicial1Enter(Sender: TObject);
    procedure datafinal1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure datainicial1KeyPress(Sender: TObject; var Key: Char);
    procedure datafinal1KeyPress(Sender: TObject; var Key: Char);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsultaentrega: Tfrmconsultaentrega;

implementation

uses UnitDM, UnitPrincipal, UnitEntradaTorosProdutos, UnitSobre,
  UnitPesquisaEntrada, UnitEntradaToros, UnitEntradaSerradaProdutos,
  unitentradaserradagauge, Unitentradaserradagauge1,
  Unitentradaserradagauge2, UnitEntradaSerrada, unitfrmvendafinaliza,
  unitconsultaentregaedita, unitfrmconsultapedido;


{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure tbDBDeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
  while RecordCount > 0 do
  Delete;
end;

procedure Tfrmconsultaentrega.BitBtn3Click(Sender: TObject);
begin
g.Caption := 'Pedidos';
fornecedor.Text := '';
query1.close;
timer1.Enabled := false;
frmPrincipal.EvKeyNavigator1.Active := true;
Close;
end;



procedure Tfrmconsultaentrega.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;

//timer1.Enabled := true;
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO <>:busca AND ENTREGACODIGO <>:busca1');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '4';
    query1.ParamByName('busca1').Text := '6';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    query1.First ;
    end;
end;

procedure Tfrmconsultaentrega.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmconsultaentrega.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure Tfrmconsultaentrega.BitBtn10Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Next;
end;

procedure Tfrmconsultaentrega.BitBtn11Click(Sender: TObject);
begin
DM.TESDISCRIMINACAO.Prior;
end;

procedure Tfrmconsultaentrega.fornecedorChange(Sender: TObject);
begin
if fornecedor.Text = '' then
begin
Query1.First;
end
else
if (fornecedor.Text>='A') and (fornecedor.Text<='Z') then
begin
Query1.Locate('NOMECLIENTE',fornecedor.text,[lopartialkey,locaseinsensitive]);
end
else
begin
if (fornecedor.Text>='0') and (fornecedor.Text<='9') then
begin
Query1.Locate('NF',fornecedor.text,[lopartialkey,locaseinsensitive]);
end
END;
end;

procedure Tfrmconsultaentrega.fornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = VK_DOWN then
dbgrid3.SetFocus;
end;

procedure Tfrmconsultaentrega.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure Tfrmconsultaentrega.fornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure Tfrmconsultaentrega.BitBtn1Click(Sender: TObject);
begin
timer1.Enabled := false;
Application.CreateForm(TFrmconsultaentregaedita, frmconsultaentregaedita);
frmconsultaentregaedita.ShowModal;
frmconsultaentregaedita.free;
end;

procedure Tfrmconsultaentrega.Timer1Timer(Sender: TObject);
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO <>:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '4';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    end;
end;

procedure Tfrmconsultaentrega.filtroChange(Sender: TObject);
begin
if filtro.ItemIndex = 3 then
begin
groupbox4.Enabled := true;
groupbox1.Enabled := true;
datainicial1.Color := clwindow;
datafinal1.Color := clwindow   ;
panel1.Enabled := true;
query1.Close;
end;

if filtro.ItemIndex = 6 then
begin
groupbox4.Enabled := true;
groupbox1.Enabled := true ;
datainicial1.Color := clwindow;
datafinal1.Color := clwindow;
panel1.Enabled := true;
query1.Close;
end;

if filtro.ItemIndex = 0 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '1';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
groupbox4.Enabled := false;
groupbox1.Enabled := false;
datainicial1.Color := clbtnface;
datafinal1.Color := clbtnface   ;
panel1.Enabled := false;
    end;
end;

if filtro.ItemIndex = 1 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '2';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
        if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
groupbox4.Enabled := false;
groupbox1.Enabled := false;
datainicial1.Color := clbtnface;
datafinal1.Color := clbtnface   ;
panel1.Enabled := false;
    end;
end;

if filtro.ItemIndex = 2 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '3';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
groupbox4.Enabled := false;
groupbox1.Enabled := false;
datainicial1.Color := clbtnface;
datafinal1.Color := clbtnface   ;
panel1.Enabled := false;
    end;
end;

if filtro.ItemIndex = 4 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO <>:busca AND ENTREGACODIGO <>:busca1');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '4';
    query1.ParamByName('busca1').Text := '6';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
        if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
groupbox4.Enabled := false;
groupbox1.Enabled := false;
datainicial1.Color := clbtnface;
datafinal1.Color := clbtnface   ;
panel1.Enabled := false;
    end;
end;

if filtro.ItemIndex = 5 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '5';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
groupbox4.Enabled := false;
groupbox1.Enabled := false;
datainicial1.Color := clbtnface;
datafinal1.Color := clbtnface   ;
panel1.Enabled := false;
    end;
end;
end;

procedure Tfrmconsultaentrega.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 with DBGrid3 do
  begin
    if DataSource.DataSet.FieldByName('ENTREGASTATUS').Text = 'A SEPARAR' then
    begin
        Canvas.Font.Color := clblack;
      if (gdSelected in State) then
        Canvas.Brush.Color := $0097FFFF
      else
      begin
        Canvas.Brush.Color := $00B8F3FE;
//        Canvas.Font.Style := $00208FFF;
        Canvas.Font.Color := $000080FF;
      end
    end;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;


 with DBGrid3 do
  begin
    if DataSource.DataSet.FieldByName('ENTREGASTATUS').Text = 'A ENTREGAR' then
    begin
        Canvas.Font.Color := clblack;
      if (gdSelected in State) then
        Canvas.Brush.Color := $0097FFFF
      else
      begin
        Canvas.Brush.Color := $00A4FFA4;
//        Canvas.Font.Style := $00208FFF;
        Canvas.Font.Color := clgreen;
      end
    end;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

with DBGrid3 do
  begin
    if DataSource.DataSet.FieldByName('ENTREGASTATUS').Text = 'SAIU PARA ENTREGA' then
    begin
            Canvas.Font.Color := clblack;
      if (gdSelected in State) then
        Canvas.Brush.Color := $0097FFFF
      else
      begin
        Canvas.Brush.Color := $00FFC6C6;
//        Canvas.Font.Style := $00208FFF;
        Canvas.Font.Color := clNAVY;
      end
    end;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

with DBGrid3 do
  begin
    if DataSource.DataSet.FieldByName('ENTREGASTATUS').Text = 'A RETIRAR' then
    begin
            Canvas.Font.Color := clblack;
      if (gdSelected in State) then
        Canvas.Brush.Color := $0097FFFF
      else
      begin
        Canvas.Brush.Color := clwindow;
//        Canvas.Font.Style := $00208FFF;
        Canvas.Font.Color := clNAVY;
      end
    end;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure Tfrmconsultaentrega.DBGrid3TitleClick(Column: TColumn);
var
  I: Integer;
begin
if filtro.ItemIndex = 0 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca').Text := '1';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 1 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca').Text := '2';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
        if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 2 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca').Text := '3';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 3 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGADATA between :inicio AND :fim AND ENTREGACODIGO =:busca');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    query1.ParamByName('busca').Text := '4';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
        if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 4 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO <>:busca AND ENTREGACODIGO <>:busca1');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca').Text := '4';
    query1.ParamByName('busca1').Text := '6';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
        if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 5 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO =:busca');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('busca').Text := '5';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 6 then
begin
  for I := 0 to DBGrid3.Columns.Count - 1 do
  DBGrid3.Columns[i].Title.Font.Style := [];
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGADATA between :inicio AND :fim AND ENTREGACODIGO =:busca');
    Query1.SQL.Add('ORDER BY '+ Column.FieldName);
    Column.Title.Font.Style := [fsBold];
    query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    query1.ParamByName('busca').Text := '6';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;


end;

procedure Tfrmconsultaentrega.BitBtn2Click(Sender: TObject);
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGACODIGO <>:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('busca').Text := '4';
    query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
        if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

procedure Tfrmconsultaentrega.DBGrid3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Back then
begin
fornecedor.SetFocus;
end;

if (Shift = [ssCtrl]) and (Key = 46) Then 
KEY := 0;

end;

procedure Tfrmconsultaentrega.BitBtn4Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
self.Tag := 1;
frmPrincipal.EvKeyNavigator1.Active := true;
Application.CreateForm(TfrmConsultapedido, frmConsultapedido);
frmconsultapedido.showmodal;
frmconsultapedido.Free;
end;
end;

procedure Tfrmconsultaentrega.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F9 then bitbtn4.Click;
end;

procedure Tfrmconsultaentrega.BitBtn17Click(Sender: TObject);
begin
query1.First ;
end;

procedure Tfrmconsultaentrega.BitBtn18Click(Sender: TObject);
begin
query1.Prior ;
end;

procedure Tfrmconsultaentrega.BitBtn20Click(Sender: TObject);
begin
query1.Last ;
end;

procedure Tfrmconsultaentrega.BitBtn19Click(Sender: TObject);
begin
query1.Next ;
end;

procedure Tfrmconsultaentrega.datainicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure Tfrmconsultaentrega.datafinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure Tfrmconsultaentrega.datainicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure Tfrmconsultaentrega.datafinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;

procedure Tfrmconsultaentrega.BitBtn5Click(Sender: TObject);
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Inicial deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Período Final deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
if filtro.ItemIndex = 6 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGADATA between :inicio AND :fim AND ENTREGACODIGO =:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    query1.ParamByName('busca').Text := '6';
    query1.Open;
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;

if filtro.ItemIndex = 3 then
begin
with query1 do
  	begin
    Query1.Close;
    Query1.SQL.Clear ;
    query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    query1.SQL.Add('from SAIDA_FECHAMENTO');
    query1.SQL.Add('where ENTREGADATA between :inicio AND :fim AND ENTREGACODIGO =:busca');
    query1.SQL.Add('ORDER BY NOMECLIENTE');
    query1.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    query1.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    query1.ParamByName('busca').Text := '4';
    query1.Open;
    Query1.Last;
    g.Caption := 'Lista de Pedidos (' + IntToStr(query1.RecordCount)+ ')';
    if query1.RecordCount = 0 then bitbtn1.Enabled := false else bitbtn1.Enabled := true;
    end;
end;
end;
end;

procedure Tfrmconsultaentrega.BitBtn5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = VK_DOWN then
dbgrid3.SetFocus;
end;

procedure Tfrmconsultaentrega.datainicial1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
datafinal1.SetFocus ;
end;

procedure Tfrmconsultaentrega.datafinal1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
bitbtn5.SetFocus ;
end;

end.
