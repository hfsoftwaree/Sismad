unit UnitREstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDateEd, ToolEdit;

type
  TfrmREstoque = class(TForm)
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
  frmREstoque: TfrmREstoque;

implementation

uses UnitDM, UnitRepEntrada, UnitRepEntrada1, UnitRepSaida, UnitRepEstoque;

{$R *.dfm}
procedure TfrmREstoque.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmREstoque.BitBtn2Click(Sender: TObject);
begin
if combobox1.ItemIndex = 1 then
begin
DM.QManutencao.Open;
RepEstoque.TENTRADA.Close;
RepEstoque.TENTRADA.Open;
RepEstoque.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepEstoque.QuickRep1.Preview;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
DM.QManutencao.Open;
RepEstoque.TENTRADA.Close;
RepEstoque.TENTRADA.Open;
RepEstoque.TENTRADA.IndexFieldNames := 'CODIGO';
RepEstoque.QuickRep1.Preview;
end
end
end;

procedure TfrmREstoque.BitBtn1Click(Sender: TObject);
begin
if combobox1.ItemIndex = 1 then
begin
DM.QManutencao.Open;
RepEstoque.TENTRADA.Close;
RepEstoque.TENTRADA.Open;
RepEstoque.TENTRADA.IndexFieldNames := 'ESSENCIA';
RepEstoque.QuickRep1.Print;
end
else
begin
if combobox1.ItemIndex = 0 then
begin
DM.QManutencao.Open;
RepEstoque.TENTRADA.Close;
RepEstoque.TENTRADA.Open;
RepEstoque.TENTRADA.IndexFieldNames := 'CODIGO';
RepEstoque.QuickRep1.Print;
end
end
end;

end.
