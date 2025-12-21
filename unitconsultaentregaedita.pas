unit unitconsultaentregaedita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit, DBCtrls,
  DB, IBCustomDataSet, IBQuery, IBTable, EDBDate;

type
  Tfrmconsultaentregaedita = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ESSENCIATIPO: TDBLookupComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TIBQuery;
    DBEdit1: TDBEdit;
    table1: TIBTable;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    GroupBox2: TGroupBox;
    EvDBDateEdit1: TEvDBDateEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESSENCIATIPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EvDBDateEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsultaentregaedita: Tfrmconsultaentregaedita;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitVenda,
  unitconsultaentrega, UnitPrincipal;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure Tfrmconsultaentregaedita.BitBtn3Click(Sender: TObject);
begin
query1.Close ;
TABLE1.Close;
close;
end;

procedure Tfrmconsultaentregaedita.BitBtn2Click(Sender: TObject);
begin
If Application.MessageBox('Confirma alteração do Status?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
table1['ENTREGACODIGO'] := DBEDIT1.Text ;
//    DM.TSAIDAFECHAMENTO['ENTREGASTATUS'] := ESSENCIATIPO.Text;
//table1['ENTREGADATA'] := DateToStr(Now);
table1.Post;
query1.Close ;
TABLE1.Close;
close;
end;
end;


procedure Tfrmconsultaentregaedita.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := true;
Label3.Caption := frmconsultaentrega.Query1['NOMECLIENTE'];
query1.Open;
query1.Last;
table1.Filter :=  'NF = ' + QuotedStr(frmconsultaentrega.dbEdit1.Text)+ 'and CODIGOCLIENTE= ' + QuotedStr(FRMCONSULTAENTREGA.DBEdit2.Text);
table1.Filtered:=True;
table1.Open;
table1.edit;
end;

procedure Tfrmconsultaentregaedita.ESSENCIATIPOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_SPACE then
essenciatipo.DropDown;
end;

procedure Tfrmconsultaentregaedita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
with frmconsultaentrega.query1 do
  	begin
    frmconsultaentrega.Query1.Close;
    frmconsultaentrega.Query1.SQL.Clear ;
    frmconsultaentrega.query1.SQL.Add('select NF, CODIGOCLIENTE, NOMECLIENTE, ENTREGASTATUS, ENTREGADATA, DATA');
    frmconsultaentrega.query1.SQL.Add('from SAIDA_FECHAMENTO');
    frmconsultaentrega.query1.SQL.Add('where ENTREGACODIGO <>:busca AND ENTREGACODIGO <>:busca1');
    frmconsultaentrega.query1.SQL.Add('ORDER BY NOMECLIENTE');
    frmconsultaentrega.query1.ParamByName('busca').Text := '4';
    frmconsultaentrega.query1.ParamByName('busca1').Text := '6';
    frmconsultaentrega.query1.Open;
//    DBGrid1.Fields[3].EditMask:= '99-9999-9999;0;_';
    frmconsultaentrega.filtro.ItemIndex := 4;
    end;
end;

procedure Tfrmconsultaentregaedita.EvDBDateEdit1Enter(Sender: TObject);
begin
evdbdateedit1.Text := DateToStr(Now);
end;

end.
