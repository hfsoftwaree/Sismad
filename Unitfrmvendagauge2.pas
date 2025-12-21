unit Unitfrmvendagauge2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ExtCtrls;

type
  Tfrmvendagauge2 = class(TForm)
    Timer1: TTimer;
    Label2: TLabel;
    Gauge2: TGauge;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvendagauge2: Tfrmvendagauge2;

implementation

uses UnitEntradaSerrada, UnitDM, UnitPesquisaEntrada;

{$R *.dfm}



procedure Tfrmvendagauge2.Timer1Timer(Sender: TObject);
var total, total1, total2 : Real;
begin
timer1.Enabled := false;
begin
   total := 0;
   total1 := 0;
   total2:=0;


   gauge2.MaxValue := 0;
   Gauge2.MaxValue:= DM.TESDISCRIMINACAO.RecordCount;
   DM.TESDISCRIMINACAO.first;
   if not DM.TESDISCRIMINACAO.Eof then
     repeat
        Gauge2.Progress:=Gauge2.Progress + 1;
        total1 := DM.TESDISCRIMINACAO['TOTALM3'] + total1 ;
        total := DM.TESDISCRIMINACAO['QUANTIDADE'] + total ;
        total2 := DM.TESDISCRIMINACAO['VALTOTAL'] + total2 ;
        DM.TESDISCRIMINACAO.Next;
        until DM.TESDISCRIMINACAO.Eof;
     end;
    frmentradaserrada.quantidade.caption := FormatCurr('#0.000',total1);
    frmentradaserrada.pecas.caption := FormatCurr('#0',total);
    frmentradaserrada.TOTNOTA.Value  := total2;
    frmentradaserrada.g.Caption := 'Produtos > ' + intTostr(DM.TESDISCRIMINACAO.RecordCount);
    frmentradaserrada.bitbtn115.Enabled :=true;
    close;
end;

procedure Tfrmvendagauge2.FormShow(Sender: TObject);
begin
   label2.Caption := frmentradaserrada.nota.Text;
end;

end.
