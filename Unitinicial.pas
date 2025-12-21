unit Unitinicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Registry;

type
  TfrmInicial = class(TForm)
    GroupBox1: TGroupBox;
    ATIVIDADE: TComboBox;
    Bevel3: TBevel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicial: TfrmInicial;

implementation

{$R *.dfm}

type
{ Declara um tipo registro }
TFicha = record
Nome: string[40];
end;

procedure TfrmInicial.FormCreate(Sender: TObject);
var
Reg: TRegistry;
Ficha: TFicha;
begin
Reg := TRegistry.Create;
{ Define a chave-raiz do registro }
Reg.RootKey := HKEY_CURRENT_USER;
{ Se existir a chave (path)... }
if not Reg.KeyExists('Software\vision\2') then
begin
ShowModal;
end
else
begin
if Reg.KeyExists('Software\vision\2') then
begin
  { Abre a chave (path) }
  Reg.OpenKey('Software\vision\2', false);
  { Se existir o valor... }
  if not Reg.ValueExists('2') then
  begin
    ShowModal;
  end
  end
  end
end;

procedure TfrmInicial.BitBtn1Click(Sender: TObject);
var
Reg: TRegistry;
Ficha: TFicha;
begin
  if ATIVIDADE.Text = '' then
	begin
  Application.MessageBox('Atividade da Empresa deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
  ATIVIDADE.SetFocus;
  end;

if (ATIVIDADE.Text <> '') then
begin
  if Application.MessageBox('Atenção! Verifique se a Atividade escolhida esta correta, pois o perfeito funcionamento do sistema depende desta informação.', 'Confirmação',
 	mb_YesNo + mb_ICONEXCLAMATION) = idYes then
begin
  { Coloca alguns dados na variável Ficha }
  Ficha.Nome := ATIVIDADE.Text;
  Reg := TRegistry.Create;
  try
  { Define a chave-raiz do registro }
  Reg.RootKey := HKEY_CURRENT_USER;
  { Abre uma chave (path). Se não existir cria e abre. }
  Reg.OpenKey('Software\vision\2', true);
  { Grava os dados (o registro) }
  Reg.WriteBinaryData('2', Ficha,SizeOf(Ficha));
  finally
  Reg.Free;
  self.Close;
  end
  end
  else
  ATIVIDADE.SetFocus;
  end;
end;

end.
