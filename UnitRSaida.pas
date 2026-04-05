unit UnitRSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  TfrmRSaida = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DataInicial1: TEvDateEdit;
    DataFinal1: TEvDateEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    DataInicial: TEdit;
    DataFinal: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataInicial1Change(Sender: TObject);
    procedure DataFinal1Change(Sender: TObject);
    procedure DataInicial1Enter(Sender: TObject);
    procedure DataFinal1Enter(Sender: TObject);
    procedure DataFinal1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRSaida: TfrmRSaida;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepSaida;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmRSaida.BitBtn3Click(Sender: TObject);
begin
DataInicial1.Text := '';
DataFinal1.Text := '';
Close;
end;

procedure TfrmRSaida.BitBtn2Click(Sender: TObject);
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
    Application.CreateForm(TRepsaida, Repsaida);
DM.QManutencao.Open;

    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    end;

if RepSaida.TENTRADA.RecordCount = 0 then
begin
RepSaida.TENTRADA.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.SQL.Add('Order by CODIGOCLIENTE');
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    RepSaida.PI.Caption := DataInicial1.text;
    RepSaida.PF.Caption := DataFinal1.text;
    RepSaida.QuickRep1.Preview;
    repsaida.Free;

    end;
    end
    else
    begin
if combobox1.ItemIndex = 1 then
begin
    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.SQL.Add('Order by DATA');
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    RepSaida.PI.Caption := DataInicial1.text;
    RepSaida.PF.Caption := DataFinal1.text;
    RepSaida.QuickRep1.Preview;
    repsaida.Free;
    end;

    end
    else
    begin
if combobox1.ItemIndex = 2 then
begin
    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.SQL.Add('Order by NOMECLIENTE');
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    RepSaida.PI.Caption := DataInicial1.text;
    RepSaida.PF.Caption := DataFinal1.text;
    RepSaida.QuickRep1.Preview;
    repsaida.Free;
    end;

    end
    else
    begin
if combobox1.ItemIndex = 3 then
begin
    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.SQL.Add('Order by NF');
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    RepSaida.PI.Caption := DataInicial1.text;
    RepSaida.PF.Caption := DataFinal1.text;
    RepSaida.QuickRep1.Preview;
    repsaida.Free;
    end;
end;
end;
end;
end;
end;
END;
END;

procedure TfrmRSaida.BitBtn1Click(Sender: TObject);
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
DM.QManutencao.Open;

    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO ');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    end;
    
if RepSaida.TENTRADA.RecordCount = 0 then
begin
RepSaida.TENTRADA.Close;
DM.QManutencao.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO ');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.SQL.Add('Order by DATA');
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    RepSaida.PI.Caption := DataInicial1.text;
    RepSaida.PF.Caption := DataFinal1.text;
//    Application.CreateForm(TRepsaida, Repsaida);
    RepSaida.QuickRep1.Print;
  //  repsaida.Free;
    end;
    end
    else
    begin
if combobox1.ItemIndex = 1 then
begin
    with repsaida.TENTRADA do
  	begin
    repsaida.TENTRADA.Close;
    repsaida.TENTRADA.SQL.Clear ;
    repsaida.TENTRADA.SQL.Add('select * from SAIDA_FECHAMENTO ');
    repsaida.TENTRADA.SQL.Add('where DATA between :inicio AND :fim'); // linha para atender as condições
    repsaida.TENTRADA.SQL.Add('Order by NF');
    repsaida.TENTRADA.ParamByName('inicio').AsDateTime := datainicial1.DateValue ; // preenche o parametro 'inicio'
    repsaida.TENTRADA.ParamByName('fim').AsDateTime    := datafinal1.DateValue ; // preenche o parametro 'fim'
    repsaida.TENTRADA.Open;
    repsaida.TENTRADA.Last;
    repsaida.TOTAL.Caption := 'TOTAL (' + IntToStr(repsaida.TENTRADA.RecordCount)+ ')';
    RepSaida.PI.Caption := DataInicial1.text;
    RepSaida.PF.Caption := DataFinal1.text;
//    Application.CreateForm(TRepsaida, Repsaida);
    RepSaida.QuickRep1.Print;
  //  repsaida.Free;
    end;
end;
end;
end;
end;
end;


procedure TfrmRSaida.FormShow(Sender: TObject);
begin
DataInicial1.SetFocus;
end;

procedure TfrmRSaida.DataInicial1Change(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmRSaida.DataFinal1Change(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;

procedure TfrmRSaida.DataInicial1Enter(Sender: TObject);
begin
Datainicial1.Text := DateToStr(now);
end;

procedure TfrmRSaida.DataFinal1Enter(Sender: TObject);
begin
Datafinal1.Text := DateToStr(now);
end;

procedure TfrmRSaida.DataFinal1Exit(Sender: TObject);
begin
if DataInicial.Text = DataFinal.Text then combobox1.ItemIndex := 2 else combobox1.ItemIndex :=1;
end;

end.
