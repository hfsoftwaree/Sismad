unit unitfrmrsaida3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, SSSpin;

type
  TfrmRSaida3 = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRSaida3: TfrmRSaida3;

implementation

uses UnitDM, UnitRepEntrada1, UnitPesquisaEntrada, UnitRepSaida1,
  UnitPesquisa3, Unitrepsaida2, unitrepromaneio, unitrepsaida3,
  UnitRepfechamentovenda1, unitrepsaida4;


{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;


procedure TfrmRSaida3.FormShow(Sender: TObject);
begin
//BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmRSaida3.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.ShowModal;
end;

procedure TfrmRSaida3.BitBtn6Click(Sender: TObject);
begin
      Application.CreateForm(TRepsaida4, repsaida4);
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select * from SAIDA_FECHAMENTO');;
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    end;

  DM.QManutencao.Open;
  if RepSaida4.Query1.RecordCount = 0 then
    begin
    RepSaida4.Query1.Filtered:=False;
    RepSaida4.Query1.Close;
    Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    end
    else
    begin
      if combobox2.ItemIndex = 0 then
      begin
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO, NOMEVENDEDOR, TIPOLANCAMENTO');
    repsaida4.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.SQL.Add('GROUP BY NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO, NOMEVENDEDOR, TIPOLANCAMENTO');
    repsaida4.query1.SQL.Add('Order by NOMECLIENTE');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    repsaida4.Query1.Last;
    repsaida4.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida4.query1.RecordCount)+ ')';
      RepSaida4.QuickRep1.Preview;
      repsaida4.free;
      end;
      end
      else
      begin
      if combobox2.ItemIndex = 1 then
      begin
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO, NOMEVENDEDOR, TIPOLANCAMENTO');
    repsaida4.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.SQL.Add('GROUP BY NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO, NOMEVENDEDOR, TIPOLANCAMENTO');
    repsaida4.query1.SQL.Add('Order by NF');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    repsaida4.Query1.Last;
    repsaida4.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida4.query1.RecordCount)+ ')';
      RepSaida4.QuickRep1.Preview;
      repsaida4.free;
      end;
    end
    else
    begin
      if combobox2.ItemIndex = 2 then
      begin
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO, NOMEVENDEDOR, TIPOLANCAMENTO');
    repsaida4.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.SQL.Add('GROUP BY NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO, NOMEVENDEDOR, TIPOLANCAMENTO');
    repsaida4.query1.SQL.Add('Order by TIPOLANCAMENTO');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    repsaida4.Query1.Last;
    repsaida4.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida4.query1.RecordCount)+ ')';
      RepSaida4.QuickRep1.Preview;
      repsaida4.free;
      end;
      end;
      end;
      end;
      end;
end;


procedure TfrmRSaida3.BitBtn7Click(Sender: TObject);
begin
Close;
end;

procedure TfrmRSaida3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Self.Tag := 0;
end;

procedure TfrmRSaida3.DataInicial1Enter(Sender: TObject);
begin
//Datainicial1.Text := DateToStr(now);
end;

procedure TfrmRSaida3.DataFinal1Enter(Sender: TObject);
begin
//Datafinal1.Text := DateToStr(now);
end;

procedure TfrmRSaida3.BitBtn5Click(Sender: TObject);
begin
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select * from SAIDA_FECHAMENTO');;
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    end;

  DM.QManutencao.Open;
  if RepSaida4.Query1.RecordCount = 0 then
    begin
    RepSaida4.Query1.Filtered:=False;
    RepSaida4.Query1.Close;
    Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
    end
    else
    begin
      if combobox2.ItemIndex = 0 then
      begin
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO');
    repsaida4.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.SQL.Add('GROUP BY NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO');
    repsaida4.query1.SQL.Add('Order by NOMECLIENTE');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    repsaida4.Query1.Last;
    repsaida4.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida4.query1.RecordCount)+ ')';
      Application.CreateForm(TRepsaida4, repsaida4);
      RepSaida4.QuickRep1.Print;
      repsaida4.free;
      end;
      end
      else
      begin
      if combobox2.ItemIndex = 1 then
      begin
with repsaida4.query1 do
  	begin
    repsaida4.Query1.Close;
    repsaida4.Query1.SQL.Clear ;
    repsaida4.query1.SQL.Add('select SUM(VAL_TOT_NOTA) AS VAL_TOT_NOTA,SUM(VAL_TOT_PRODUTOS)AS VAL_TOT_PRODUTOS, NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO');
    repsaida4.query1.SQL.Add('from SAIDA_FECHAMENTO');
    repsaida4.query1.SQL.Add('where FECHAMENTOTIPO =:codigo');
    repsaida4.query1.SQL.Add('GROUP BY NF, NOMECLIENTE, FORMAPAGAMENTO, TIPOPAGAMENTO');
    repsaida4.query1.SQL.Add('Order by NF');
    repsaida4.query1.ParamByName('codigo').Text := '1' ;
    repsaida4.query1.Open;
    repsaida4.Query1.Last;
    repsaida4.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida4.query1.RecordCount)+ ')';
      Application.CreateForm(TRepsaida4, repsaida4);
      RepSaida4.QuickRep1.Print;
      repsaida4.free;
      end;
      end;
      end;
      end;
end;

end.
