unit unitfrmdicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, ECkBox, TFlatCheckBoxUnit, IniFiles,
  XP_Panel;

type
  Tfrmdicas = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    check: TFlatCheckBox;
    Image1: TImage;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure checkClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdicas: Tfrmdicas;
  Data: TIniFile;

implementation

uses UnitPrincipal;

{$R *.dfm}

procedure Tfrmdicas.BitBtn1Click(Sender: TObject);
begin
bitbtn3.Tag := 0;
Close;
end;

procedure Tfrmdicas.FormShow(Sender: TObject);
begin
data := TIniFile.Create('C:\HF-Software\Sismad\Config.ini'); //Nome do aquivo INI que quero ler
EDIT1.Text := data.ReadString('TELADICAS','MOSTRA','');
data.Free; //Libera a memória

if edit1.Text = 'true' then check.Checked := true else check.Checked := false;
end;

procedure Tfrmdicas.checkClick(Sender: TObject);
begin
if check.Checked = true then edit1.Text := 'true' else edit1.Text := 'false';
data := TIniFile.Create('C:\HF-Software\Sismad\Config.ini'); //Nome do arquivo INI que será criado
data.WriteString('TELADICAS','MOSTRA',EDIT1.Text  );
data.Free; //Libera a memória
end;

procedure Tfrmdicas.BitBtn3Click(Sender: TObject);
begin
if bitbtn3.Tag = 0 then
begin
bitbtn3.Tag := 1;
label2.Visible := false;//vendas
label3.Visible := false;//vendas
label5.Visible := true; //teclas
label4.Visible := true; //teclas
end
else
begin
if bitbtn3.Tag = 1 then
begin
bitbtn3.Tag := 2;
label5.Visible := false; //teclas
label4.Visible := false; //teclas
label6.Visible := true;  //mouse
label7.Visible := true;  //mouse
end
else
begin
if bitbtn3.Tag = 2 then
begin
bitbtn3.Tag := 3;
label6.Visible := false; //teclas
label7.Visible := false; //teclas
label8.Visible := true;  //mouse
label9.Visible := true;  //mouse
end
else
begin
if bitbtn3.Tag = 3 then
begin
bitbtn3.Tag := 4;
label9.Caption := 'CADASTRO DE CLIENTES';
label8.Caption := 'Duplo click no titulo "DATA DE CADASTRAMENTO" acessa o campo.' + #13+ #13+ 'Click Simples no titulo "DATA DE CADASTRAMENTO" desativa o campo.'; //mouse
end;
end;
end;
end;
end;

procedure Tfrmdicas.BitBtn2Click(Sender: TObject);
begin
if bitbtn3.Tag = 2 then
begin
bitbtn2.Tag := 1;
bitbtn3.Tag := 1;
label4.Visible := true;
label5.Visible := true;
label6.Visible := false;
label7.Visible := false;
end
else
begin
if bitbtn3.Tag = 1 then
begin
bitbtn2.Tag := 0;
bitbtn3.Tag := 0;
label2.Visible := true;
label3.Visible := true;
label4.Visible := false;
label5.Visible := false;
end
else
begin
if bitbtn3.Tag = 3 then
begin
bitbtn2.Tag := 2;
bitbtn3.Tag := 2;
label6.Visible := true;
label7.Visible := true;
label8.Visible := false;
label9.Visible := false;
end
else
begin
if bitbtn3.Tag = 4 then
begin
bitbtn2.Tag := 3;
bitbtn3.Tag := 3;
label8.Caption := 'Duplo click no titulo "DATA DE CADASTRAMENTO" acessa o campo.' + #13+ #13+ 'Click Simples no titulo "DATA DE CADASTRAMENTO" desativa o campo.'; 
label9.Caption := 'CADASTRO DE FORNECEDORES';
end;
end;
end;
end;
end;

end.
