unit unitusuariologof;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, DB, IBCustomDataSet, IBTable,Registry,
  RxGIF ;

type
  Tfrmusuariologof = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    edusuario: TEdit;
    edsenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmusuariologof: Tfrmusuariologof;

implementation

uses UnitDM, UnitManutencao1, UnitPrincipal, unitconfigbd, UnitSplash,
  UnitLogin;
type
{ Declara um tipo registro }
TFicha = record
Nome: string[40];
Nome1: string[100];

end;


{$R *.dfm}


procedure Tfrmusuariologof.BitBtn2Click(Sender: TObject);
begin
if edUsuario.text = '' then
begin
Application.MessageBox('Novo usuário deve ser informado!', 'Login', mb_Ok + mb_IconExclamation);
edusuario.SetFocus;
end
else
begin
if edsenha.text = '' then
begin
Application.MessageBox('Senha deve ser informada!', 'Login', mb_Ok + mb_IconExclamation);
edsenha.SetFocus;
end
end;

if (edusuario.Text <> '') and (edsenha.Text <> '') then
begin
    DM.TLOGIN.locate('USUARIO',EdUsuario.text,[locaseinsensitive]);
    if not (Edusuario.text = DM.TLOGIN['USUARIO']) then
    begin
    Application.MessageBox('Usuário inválido ou digitado incorretamente, Verífique!', 'Login', mb_Ok + mb_IconError);
    EdUsuario.clear;
    Edusuario.setfocus;
    end
    else
    begin
      if not (EdSenha.text = DM.TLOGIN['SENHA']) then
      begin
      Application.MessageBox('Senha invália ou digitada incorretamente, Verífique!', 'Login', mb_Ok + mb_IconError);
      EdSenha.clear;
      EdSenha.setfocus;
      end;
      end;


if (DM.TLOGIN.locate('USUARIO',EdUsuario.text,[LocaseInsensitive])) and (EdSenha.text = DM.TLOGIN['SENHA']) then
      begin
      frmPrincipal.StatusBar1.Panels[1].Text := ' Usuário: ' + edusuario.Text;
      frmPrincipal.usuario.Caption := edusuario.Text;
      frmprincipal.incluir.Caption := DM.TLOGIN['INCLUIR'];
      frmprincipal.alterar.Caption := DM.TLOGIN['ALTERAR'];
      frmprincipal.editaproduto.Caption := DM.TLOGIN['VENDAEDITAPRODUTO'];
      frmprincipal.CANCELARFECHAMENTO.Caption := DM.TLOGIN['CANCELAFECHAMENTO'];
      frmprincipal.excluir.Caption := DM.TLOGIN['EXCLUIR'];
      frmprincipal.fechamentovenda.Caption := DM.TLOGIN['FECHAMENTOVENDA'];
      frmprincipal.consultar.Caption := DM.TLOGIN['CONSULTAR'];
      frmprincipal.relatorio.Caption := DM.TLOGIN['RELATORIO'];
      frmprincipal.ocorrencia.Caption := DM.TLOGIN['REGOCORRENCIA'];
      frmprincipal.rfv.Caption := DM.TLOGIN['RELATORIOFECHVENDA'];
      frmprincipal.ae.Caption := DM.TLOGIN['AJUSTARESTOQUE'];
      frmprincipal.total.Caption := DM.TLOGIN['ACESSOTOTAL'];
      DM.TLOGIN.Close;
      close;
      end;
      end;
end;

procedure Tfrmusuariologof.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmusuariologof.FormShow(Sender: TObject);
begin
DM.TLOGIN.Open;
edusuario.SetFocus;
end;

end.
