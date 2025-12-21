unit UnitConsultaEPatio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable, jpeg;

type
  TfrmConsultaEPatio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    ESTOQUE: TLabel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Essencia: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Tipo: TRadioGroup;
    Label4: TLabel;
    TENTRADA1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    TSERRADO: TLabel;
    FATOR: TDBEdit;
    CODIGOFATOR: TEdit;
    Image1: TImage;
    procedure TipoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaEPatio: TfrmConsultaEPatio;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}

procedure TfrmConsultaEPatio.TipoClick(Sender: TObject);
begin
   case (Tipo.ItemIndex) of
     0: Begin
            DM.TEssencia.Open;
            DM.TEssencia.IndexFieldNames := 'ESSENCIA';
            Essencia.Enabled := True;
            Essencia.SetFocus;
            Essencia.DropDown;
        end;

     1: Begin
            DM.TEssencia.Close;     
            Essencia.Enabled := False;
        end;
   end
end;


end.
