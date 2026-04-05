unit UnitSobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, CJVLinkLabel, Registry, jpeg, CJVScrollLabel, inifiles;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CJVLinkLabel1: TCJVLinkLabel;
    Label12: TLabel;
    Label14: TLabel;
    label13: TCJVScrollLabel;
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Label14Click(Sender: TObject);
  private
  procedure ValidarBasedeDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;
  data:tinifile;

implementation

uses UnitSplash;
type
{ Declara um tipo registro }
TFicha = record
Nome: string[40];
Nome1: string[100];
end;

{$R *.dfm}

procedure TfrmSobre.FormShow(Sender: TObject);
begin
MessageBeep(0);
self.Label10.Caption := frmsplash.Label1.caption +' de '+ frmsplash.Label4.caption;
data := TIniFile.Create('C:\HF-Software\Sismad\Config.ini'); //Nome do meu arquivo INI que quero ler
label13.Caption := data.ReadString('CONEXAO','HOST','')+ data.ReadString('CONEXAO','CAMINHO','') + '                             ';
data.Free; //Libera a memória
end;


Procedure TfrmSobre.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Siscomad','CaminhoDados',chave);
    Label13.Caption := (Chave);
end;

procedure TfrmSobre.Image2Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSobre.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSobre.FormClick(Sender: TObject);
begin
Close;
end;

procedure TfrmSobre.Label14Click(Sender: TObject);
begin
close;
end;

end.

