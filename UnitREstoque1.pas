unit UnitREstoque1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  TfrmREstoque1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREstoque1: TfrmREstoque1;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepSaida, UnitRepEstoque,
  UnitRepEstoque1;

{$R *.dfm}
procedure TfrmREstoque1.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmREstoque1.BitBtn2Click(Sender: TObject);
begin
if combobox1.ItemIndex = 1 then
begin
DM.QManutencao.Open;
RepEstoque1.TENTRADA.Close;
RepEstoque1.TENTRADA.Open;
RepEstoque1.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepEstoque1.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
DM.QManutencao.Open;
RepEstoque1.TENTRADA.Close;
RepEstoque1.TENTRADA.Open;
RepEstoque1.TENTRADA.IndexFieldNames := 'CODIGO';
RepEstoque1.QuickRep1.Preview;
end
end
end;

procedure TfrmREstoque1.BitBtn1Click(Sender: TObject);
begin
if combobox1.ItemIndex = 1 then
begin
DM.QManutencao.Open;
RepEstoque1.TENTRADA.Close;
RepEstoque1.TENTRADA.Open;
RepEstoque1.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepEstoque1.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
DM.QManutencao.Open;
RepEstoque1.TENTRADA.Close;
RepEstoque1.TENTRADA.Open;
RepEstoque1.TENTRADA.IndexFieldNames := 'CODIGO';
RepEstoque1.QuickRep1.Print;
end
end
end;

end.
