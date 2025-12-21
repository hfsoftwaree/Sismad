unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, EKeyNav, EOneInst, EFocCol, EHintBal, EAppProt,
  StdCtrls, Menus, ExtCtrls, ComCtrls, jpeg, UrlMon, RXShell, Shellapi, Registry, ShlObj,
  CJVScrollLabel, RxGIF, MSNPopUp, WinSkinData,
  dbAleNavegador, Buttons, xCalcltr, XPMenu, Mask, DBCtrls, Sockets,
  UsersCSLite, Grids, DBGrids, EChkCNPJ, verslab, IniFiles, AppEvnts,
  RXCtrls, RxCalc, DB, IBCustomDataSet, IBQuery, UnitDM, IBDatabase;

type
  TfrmPrincipal = class(TForm)
    EvHintBalloon1: TEvHintBalloon;
    EvFocusColor1: TEvFocusColor;
    EvOneInstance1: TEvOneInstance;
    EvKeyNavigator1: TEvKeyNavigator;
    MainMenu1: TMainMenu;
    Parametros1: TMenuItem;
    Manuteno1: TMenuItem;
    Cadastro1: TMenuItem;
    Essncia1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Lanamento1: TMenuItem;
    Entrada1: TMenuItem;
    Municpio1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Sada1: TMenuItem;
    Consulta1: TMenuItem;
    SadadeMadSerrada1: TMenuItem;
    Relatrio1: TMenuItem;
    Cadastro2: TMenuItem;
    Essncia2: TMenuItem;
    Produto1: TMenuItem;
    Municpio2: TMenuItem;
    Fornecedor1: TMenuItem;
    Cliente1: TMenuItem;
    SadadeMadSerrada2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Utilitrio1: TMenuItem;
    CalculadoraM31: TMenuItem;
    OutrasOpes1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    GravarCpiadeSegurana1: TMenuItem;
    RestaurarCpiadeSegurana1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobreosistema1: TMenuItem;
    N12: TMenuItem;
    Supore1: TMenuItem;
    web1: TMenuItem;
    N5: TMenuItem;
    EstoquePatio1: TMenuItem;
    UltimasAtualizaes1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    EnviaremailparaSuporte1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    ConfigurarBancodeDados1: TMenuItem;
    VerificarAtualizaes1: TMenuItem;
    Calculator: TCalculator;
    Image1: TImage;
    Timer2: TTimer;
    N18: TMenuItem;
    RelaodeComprasVendas1: TMenuItem;
    XPMenu1: TXPMenu;
    SKIN: TSkinData;
    Skin1: TMenuItem;
    N19: TMenuItem;
    EstoqueInicial2: TMenuItem;
    MadeiraemToros1: TMenuItem;
    MadeiraSerrada2: TMenuItem;
    MadeiraSerrada3: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Lancamento1: TMenuItem;
    Detalhado1: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton7: TSpeedButton;
    N14: TMenuItem;
    ManutenodeUsurios1: TMenuItem;
    ImageList1: TImageList;
    EvAppProtect1: TEvAppProtect;
    N22: TMenuItem;
    LINKSMT1: TMenuItem;
    SEMA1: TMenuItem;
    FIEMT1: TMenuItem;
    SEFAZ1: TMenuItem;
    MinistriodoMeioAmbiente1: TMenuItem;
    N23: TMenuItem;
    IBAMA2: TMenuItem;
    PautadaMadeira1: TMenuItem;
    PautaFrete1: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    AcessorpidoaoSISFLORA1: TMenuItem;
    OutrosLinks1: TMenuItem;
    EntradadeMadSerrada1: TMenuItem;
    Lanamento4: TMenuItem;
    Detalhado3: TMenuItem;
    N26: TMenuItem;
    RomaneiodeSada1: TMenuItem;
    Serrada3: TMenuItem;
    N30: TMenuItem;
    N32: TMenuItem;
    ClientesCompleto1: TMenuItem;
    ConfiguraodoSistema1: TMenuItem;
    N34: TMenuItem;
    Romaneio1: TMenuItem;
    SubProdutos1: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    LimparBancodeDados1: TMenuItem;
    LanamentoporEssncia1: TMenuItem;
    Produtos1: TMenuItem;
    N4: TMenuItem;
    ProdutosDanificados1: TMenuItem;
    Plaqueta1: TMenuItem;
    N1: TMenuItem;
    Gerencial1: TMenuItem;
    odasasEntradas1: TMenuItem;
    otasasSadas1: TMenuItem;
    FechamentoVendas1: TMenuItem;
    Vendedor1: TMenuItem;
    N6: TMenuItem;
    Estoque1: TMenuItem;
    Lancamentos1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    AjustarEstoque1: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    Pesquisadesatisfao1: TMenuItem;
    N27: TMenuItem;
    ipodePessoa1: TMenuItem;
    ConsultaLancamentodeSada1: TMenuItem;
    PorProduto1: TMenuItem;
    REgistrodeOcorrncia1: TMenuItem;
    usuario: TLabel;
    ipodeContato1: TMenuItem;
    Setores1: TMenuItem;
    incluir: TLabel;
    alterar: TLabel;
    excluir: TLabel;
    consultar: TLabel;
    relatorio: TLabel;
    total: TLabel;
    ocorrencia: TLabel;
    rfv: TLabel;
    ae: TLabel;
    N29: TMenuItem;
    cancelarfechamento: TLabel;
    editaproduto: TLabel;
    fechamentovenda: TLabel;
    SpeedButton10: TSpeedButton;
    AlternarUsurio1: TMenuItem;
    PorTipodePedido1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    StatusdaEntrega1: TMenuItem;
    PadrodeVenda1: TMenuItem;
    N28: TMenuItem;
    Dicas1: TMenuItem;
    Edit1: TEdit;
    PorTipodePagamento1: TMenuItem;
    N31: TMenuItem;
    Financeiro1: TMenuItem;
    Cheques1: TMenuItem;
    Recebidos1: TMenuItem;
    Emitidos1: TMenuItem;
    RecebidosDevolvidos1: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N38: TMenuItem;
    Repassar1: TMenuItem;
    RecebidosExtornarRepasse1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Inclur1: TMenuItem;
    Inclur2: TMenuItem;
    Quitar1: TMenuItem;
    Extornar1: TMenuItem;
    Quitar2: TMenuItem;
    Extornar2: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    Categoria1: TMenuItem;
    SubCategoria1: TMenuItem;
    Manuteno2: TMenuItem;
    Manutencao1: TMenuItem;
    procedure Manuteno1Click(Sender: TObject);
    procedure Essncia1Click(Sender: TObject);
    procedure SubProdutos1Click(Sender: TObject);
    procedure Municpio1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Sada1Click(Sender: TObject);
    procedure SadadeMadSerrada1Click(Sender: TObject);
    procedure LanamentoporEssncia1Click(Sender: TObject);
    procedure RelaodeComprasVendas1Click(Sender: TObject);
    procedure Skin1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfigurarBancodeDados1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ManutenodeUsurios1Click(Sender: TObject);
    procedure LimparBancodeDados1Click(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure ProdutosDanificados1Click(Sender: TObject);
    procedure Essncia2Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Municpio2Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure ClientesCompleto1Click(Sender: TObject);
    procedure CalculadoraM31Click(Sender: TObject);
    procedure AcessorpidoaoSISFLORA1Click(Sender: TObject);
    procedure FIEMT1Click(Sender: TObject);
    procedure SEMA1Click(Sender: TObject);
    procedure SEFAZ1Click(Sender: TObject);
    procedure PautaFrete1Click(Sender: TObject);
    procedure PautadaMadeira1Click(Sender: TObject);
    procedure IBAMA2Click(Sender: TObject);
    procedure MinistriodoMeioAmbiente1Click(Sender: TObject);
    procedure GravarCpiadeSegurana1Click(Sender: TObject);
    procedure RestaurarCpiadeSegurana1Click(Sender: TObject);
    procedure UltimasAtualizaes1Click(Sender: TObject);
    procedure VerificarAtualizaes1Click(Sender: TObject);
    procedure Sobreosistema1Click(Sender: TObject);
    procedure EnviaremailparaSuporte1Click(Sender: TObject);
    procedure web1Click(Sender: TObject);
    procedure Supore1Click(Sender: TObject);
    procedure Lancamento1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure Lanamento4Click(Sender: TObject);
    procedure Detalhado3Click(Sender: TObject);
    procedure Serrada3Click(Sender: TObject);
    procedure MadeiraSerrada3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Plaqueta1Click(Sender: TObject);
    procedure FechamentoVendas1Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure Porpedido1Click(Sender: TObject);
    procedure AjustarEstoque1Click(Sender: TObject);
    procedure Pesquisadesatisfao1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure ipodePessoa1Click(Sender: TObject);
    procedure ConsultaLancamentodeSada1Click(Sender: TObject);
    procedure PorProduto1Click(Sender: TObject);
    procedure REgistrodeOcorrncia1Click(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure ipodeContato1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure AlternarUsurio1Click(Sender: TObject);
    procedure PorTipodePedido1Click(Sender: TObject);
    procedure StatusdaEntrega1Click(Sender: TObject);
    procedure PadrodeVenda1Click(Sender: TObject);
    procedure Dicas1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PorTipodePagamento1Click(Sender: TObject);
    procedure Emitidos1Click(Sender: TObject);
    procedure Recebidos1Click(Sender: TObject);
    procedure Repassar1Click(Sender: TObject);
    procedure RecebidosExtornarRepasse1Click(Sender: TObject);
    procedure RecebidosDevolvidos1Click(Sender: TObject);
    procedure Inclur1Click(Sender: TObject);
    procedure Inclur2Click(Sender: TObject);
    procedure Quitar1Click(Sender: TObject);
    procedure Extornar1Click(Sender: TObject);
    procedure Quitar2Click(Sender: TObject);
    procedure Extornar2Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure SubCategoria1Click(Sender: TObject);
    procedure Manuteno2Click(Sender: TObject);


  private
    { Private declarations }
//  procedure ValidarBasedeDados1;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  Data:TInifile;
  Data1:TInifile;
  Info:TIniFile;

implementation

uses UnitCredor, UnitEssencia, UnitFornecedor, UnitManutencao,
  UnitEInicial, UnitFretero, UnitMunicipio, UnitProdutos, UnitSobre,
  Unitdvpf, UnitDVPF1, UnitInfo, UnitCalculator, UnitCalculator1,
  UnitRepEssencia, UnitRepCredores, UnitRepFornecedores, UnitRepFretero,
  UnitRepProduto, UnitRepMunicipio, UnitBackup, UnitRestore,
  UnitEntradaToros, UnitSaidaMadeiras, UnitConsultaEPatio, UnitEInicial1,
  UnitConsultaESerrada, UnitProducao, UnitConsultaProducao, UnitDemo,
  Unitskin, UnitREntrada, UnitREntrada1, UnitRSaida, UnitRSaida1,
  UnitRProducao, UnitRProducao1, UnitREstoque, UnitREstoque1,
  UnitManutencao1, UnitAtualizacao, UnitUsuario, UnitfrmFunrural,
  UnitEntradaSerrada, UnitREntrada2, UnitREntrada3, UnitRRomaneioToros,
  UnitEntradaTorosNF, UnitRepCredoresCompleto, UnitRepRomaneioSerrada,
  Unitromaneioserrada, Unitsubprodutos, Unitrepsubprodutos,
  Unitromaneiotoro, UnitLimparBD, UnitPesquisaEntrada, Unitconsultaproduto,
  Unit1, UnitVenda, UnitConsultaProduto1, unitconsultapd,
  unitrestoquepatio, unitconfigbd, Unitconsultaplaqueta,
  unitrepestoquepatio, UnitDemoGrafico, Unitconfig, UnitRfechamentovenda,
  unitfrmvendedor, unitfrmconsultapedido, Unitajustarestoque,
  UnitDemoGrafico1, UnitRepfechamentovenda1, unitpsatisfacao,
  unittipopessoa, UnitSplash, UnitLogin, unitfrmrclientes,
  unitrsaidaprodutos, unitfrmocorrencia, unitfrmsetores, unittipocontato,
  unitusuariologof, Unitrepsaida2, unitfrmrsaida3, unitconsultaentrega,
  unitfrmpadraovenda, unitfrmdicas, unitfrmrtipopagamento,
  unitfrmcontaspagar, unitfrmcontasreceber, unitfrmchequesemitidos,
  unitfrmchequesrecebidos, unitfrmchequesrepassar, unitfrmchequeextornar,
  unitfrmchequesdevolvidos, unitfrmcontaspagarquitar,
  unitfrmcontaspagarestornar, unitfrmcontasreceberquitar,
  unitfrmcontasreceberestornar, unitfrmcategoria, unitfrmsubcategoria,
  unitfrmcontaspagarmanutencao;

type
{ Declara um tipo registro }
TFicha = record
Nome: string[40];
Nome1: string[100];

end;

{$R *.dfm}

procedure AjustaStatusBar(StatusBar: TStatusBar);
const
  BORDA = 10;
var
  temp, i: Integer;
  lmax: array [0..4] of Integer;
begin
  with StatusBar do
  begin
    Canvas.Font := Font;
    for i := 0 to Panels.Count - 1 do
      lmax[i] := Canvas.TextWidth(Panels[i].Text) + BORDA;
    for i := 0 to Panels.Count - 1 do
      if lmax[i] > 0 then
        Panels[i].Width := lmax[i];
  end;
end;

//Procedure TfrmPrincipal.ValidarBasedeDados1;
//var IniFile: TRegIniFile;
  //  Chave: String;
//begin
  //  IniFile:=TRegIniFile.Create('Software\HF Softwares');
    //chave:=IniFile.ReadString('Sismad','CaminhoSkin1',chave);
//    SKIN.SkinFile := (Chave);
//end;


procedure ExecutePrograma(Nome, Parametros: String);
Var
 Comando: Array[0..1024] of Char;
 Parms: Array[0..1024] of Char;
begin
  StrPCopy (Comando, Nome);
  StrPCopy (Parms, Parametros);
  ShellExecute (0, Nil, Comando, Parms, Nil, SW_ShowNormal);
end;


procedure TfrmPrincipal.Manuteno1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmManutencao1, frmManutencao1);
frmManutencao1.ShowModal;
frmManutencao1.Free;
end;
end;

procedure TfrmPrincipal.Essncia1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.MessageBox('Utilize esta opção para cadastrar somente produtos de origens de madeira. Os demais produtos devem ser cadastrados diretamente na opção Produtos!', 'Informação', mb_Ok + mb_IconInformation);
Application.CreateForm(TfrmEssencia, frmEssencia);
frmessencia.ShowModal;
frmessencia.Free;
end;
end;

procedure TfrmPrincipal.SubProdutos1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmsubprodutos, frmsubprodutos);
    frmsubProdutos.ShowModal;
    frmsubprodutos.Free;
end;
end;

procedure TfrmPrincipal.Municpio1Click(Sender: TObject);
begin
Application.CreateForm(TfrmMunicipio, frmMunicipio);
    frmMunicipio.ShowModal;
    frmmunicipio.Free;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
//if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
//begin
//Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
//end
//else
//begin
Application.CreateForm(TfrmFornecedores, frmFornecedores);
    frmFornecedores.ShowModal;
    frmfornecedores.Free;
//end;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
Application.CreateForm(TfrmCredor, frmCredor);
    frmCREDOR.ShowModal;
    frmcredor.Free;
end;

procedure TfrmPrincipal.Sada1Click(Sender: TObject);
begin
Application.CreateForm(TfrmVenda, frmVenda);
frmVenda.ShowModal;
frmvenda.Free;
end;

procedure TfrmPrincipal.SadadeMadSerrada1Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmConsultaESerrada, frmConsultaESerrada);
frmConsultaESerrada.ShowModal;
frmconsultaeserrada.Free;
end;
end;

procedure TfrmPrincipal.LanamentoporEssncia1Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
frmconsultaproduto.showmodal;
frmconsultaproduto.Free;
end;
end;

procedure TfrmPrincipal.RelaodeComprasVendas1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmDemo, frmDemo);
frmDemo.ShowModal;
frmdemo.Free;
end;
end;

procedure TfrmPrincipal.Skin1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmskin, frmskin);
frmSkin.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     Application.Terminate;
     end
     else
     Application.Run;

end;

procedure TfrmPrincipal.ConfigurarBancodeDados1Click(Sender: TObject);
var Patch: String;
begin
Application.CreateForm(Tfrmconfig, frmconfig);
frmconfigbd.ShowModal;
//    frmconfigbd.Free;
end;

procedure TfrmPrincipal.SpeedButton6Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     Application.Terminate;
     end
     else

end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
//     DM.IBDatabase1.Connected := False;
     Application.Terminate;
     end
     else

end;


procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmConsultaProduto1, frmConsultaProduto1);
frmConsultaproduto1.ShowModal;
frmconsultaproduto1.Free;
end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[3].Text:=DateToStr(now);
  StatusBar1.Panels[4].Text:=TimeToStr(now);
end;

procedure TfrmPrincipal.ManutenodeUsurios1Click(Sender: TObject);
begin
  DM.TSETORES.Close;
  DM.TSETORES.Open;
  if DM.TSETORES.RecordCount = 0 then
begin
  DM.TSETORES.Close;
  Application.MessageBox('Não há Setor(es) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
  if DM.TSETORES.RecordCount <> 0 then
begin
dm.TSETORES.Close;
Application.CreateForm(TfrmUsuario, frmUsuario);
frmUsuario.showmodal;
frmusuario.Free;
end;
end;
end;

procedure TfrmPrincipal.LimparBancodeDados1Click(Sender: TObject);
begin
if frmprincipal.usuario.Caption <> 'admin' then
begin
Application.MessageBox('É preciso estar logado como "admin" para executar este Menu!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if not fileexists('C:\HF-Software\Sismad\BancoDados\BDSISMAD.FDB') then
begin
Application.MessageBox('O procedimento de Limpeza de Banco de Dados, só pode ser realizado no Servidor!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmLimparBD, frmLimparBD);
frmlimparbd.showmodal;
frmlimparbd.Free;
end;
end;
end;

procedure TfrmPrincipal.Romaneio1Click(Sender: TObject);
begin
    frmRomaneioserrada.ShowModal;
end;

procedure TfrmPrincipal.ProdutosDanificados1Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmconsultapd, frmconsultapd);
frmConsultapd.ShowModal;
frmconsultapd.Free;
end;
end;

procedure TfrmPrincipal.Essncia2Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.free;
  end
  else
begin
  DM.QEssencia.Close;
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Não há Essência cadastrada!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
               Application.CreateForm(TRepEssencia, RepEssencia);
               RepEssencia.QuickRep1.Preview;
               repessencia.free;
    end
end;
end;
end
end;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.free;
  end
  else
begin
  DM.TSUBProdutoS.Close;
  DM.TSUBProdutoS.Open;
  if DM.TSUBProdutoS.RecordCount = 0 then
begin
  DM.TSUBProdutoS.Close;
  Application.MessageBox('Não há Produto(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.TSUBProdutoS.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
DM.TsubProdutos.IndexName := ('SUBPRODUTO');
Application.CreateForm(TRepsubproduto, Repsubproduto);
RepsubProduto.QuickRep1.Preview;
repsubproduto.free;
end;
end;
end;
end;

end;

procedure TfrmPrincipal.Municpio2Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
    frmmanutencao1.free;
  end
  else
begin
  DM.QMunicipio.Close;
  DM.QMunicipio.Open;
  if DM.QMunicipio.RecordCount = 0 then
begin
  DM.QMunicipio.Close;
  Application.MessageBox('Não há Produto(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QEssencia.Close;
//  DM.QEssencia.Open;
  if DM.QMunicipio.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QMunicipio do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Municipio Order by NOM_MUNIC');
               Open;
               Application.CreateForm(TRepmunicipio, Repmunicipio);
               RepMunicipio.QuickRep1.Preview;
               repmunicipio.free;
    end
end;
end;
end;
end;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation); Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
    frmmanutencao1.free;
  end
  else
begin
  DM.QFornecedor.Close;
  DM.QFornecedor.Open;
  if DM.QFornecedor.RecordCount = 0 then
begin
  DM.QFornecedor.Close;
  Application.MessageBox('Não há Fornecedor(es) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QCredor.Close;
//  DM.QCredor.Open;
  if DM.QFornecedor.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from FORNECEDOR Order by NOMEFORNECEDOR');
               Open;
               Application.CreateForm(TRepfornecedores, Repfornecedores);
               RepFornecedores.QuickRep1.Preview;
               repfornecedores.free;
    end
end;
end;
end;
end;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation); Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.Free;
  end
  else
begin
  DM.QCredor.Close;
  DM.QCredor.Open;
  if DM.QCredor.RecordCount = 0 then
begin
  DM.QCredor.Close;
  Application.MessageBox('Não há Cliente(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QCredor.Close;
//  DM.QCredor.Open;
  if DM.QCredor.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
Application.CreateForm(TfrmRclientes, frmRclientes);
frmRclientes.ShowModal;
frmrclientes.free;
end;
end;
end;
end;

end;

procedure TfrmPrincipal.ClientesCompleto1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation); Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.Free;
  end
  else
begin
  DM.QCredor.Close;
  DM.QCredor.Open;
  if DM.QCredor.RecordCount = 0 then
begin
  DM.QCredor.Close;
  Application.MessageBox('Não há Cliente(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
//  DM.QCredor.Close;
//  DM.QCredor.Open;
  if DM.QCredor.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDOR Order by NOMECREDOR');
               Open;
               Application.CreateForm(TRepcredores1, Repcredores1);
               RepCredores1.QuickRep1.Preview;
               repcredores1.Free;
    end
end;
end;
end;
end;
end;



procedure TfrmPrincipal.CalculadoraM31Click(Sender: TObject);
begin
Calculator.Execute;
end;

procedure TfrmPrincipal.AcessorpidoaoSISFLORA1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://monitoramento.sema.mt.gov.br/sisflora/default.aspx');
end
end;

procedure TfrmPrincipal.FIEMT1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.fiemt.com.br');
end
end;

procedure TfrmPrincipal.SEMA1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sema.mt.gov.br');
end
end;

procedure TfrmPrincipal.SEFAZ1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sefaz.mt.gov.br');
end
end;

procedure TfrmPrincipal.PautaFrete1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sefaz.mt.gov.br/portal/leg/leg.php?flag=1&destino=http://app1.sefaz.mt.gov.br/Sistema/Legislacao/legislacaotribut.nsf/b627c5d8a24d8a5003256730004d2e96/58d25ac9e22aae2f04256fe00066bce1?OpenDocument');
end;
end;

procedure TfrmPrincipal.PautadaMadeira1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.sefaz.mt.gov.br/portal/leg/leg.php?flag=1&destino=http://app1.sefaz.mt.gov.br/Sistema/Legislacao/legislacaotribut.nsf/b627c5d8a24d8a5003256730004d2e96/0ea4b5a8d76b48560425705b006719e1?OpenDocument');
end
end;

procedure TfrmPrincipal.IBAMA2Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.ibama.gov.br');
end
end;

procedure TfrmPrincipal.MinistriodoMeioAmbiente1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.mma.gov.br/');
end
end;

procedure TfrmPrincipal.GravarCpiadeSegurana1Click(Sender: TObject);
begin
if not fileexists('C:\HF-Software\Sismad\BancoDados\BDSISMAD.FDB') then
begin
Application.MessageBox('O procedimento de Backup só pode ser realizado no Servidor!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmBackup, frmBackup);
frmbackup.showmodal;
frmbackup.Free;
end;
end;

procedure TfrmPrincipal.RestaurarCpiadeSegurana1Click(Sender: TObject);
begin
if not fileexists('C:\HF-Software\Sismad\BancoDados\BDSISMAD.FDB') then
begin
Application.MessageBox('O procedimento de Restauração de Backup só pode ser realizado no Servidor!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.IBDatabase1.Connected := False;
Application.CreateForm(TfrmRestore, frmRestore);
frmRestore.showmodal;
frmrestore.Free;
end;
end;

procedure TfrmPrincipal.UltimasAtualizaes1Click(Sender: TObject);
begin
Application.CreateForm(TfrmInfo, frmInfo);
frmInfo.ShowModal;
end;

procedure TfrmPrincipal.VerificarAtualizaes1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
Application.CreateForm(TfrmAtualizacao, frmAtualizacao);
frmAtualizacao.showmodal;
frmatualizacao.Free;
end
end;

procedure TfrmPrincipal.Sobreosistema1Click(Sender: TObject);
begin
    Application.MessageBox('Menu não disponivel nesta versão!','Informação',mb_ok+mb_iconinformation);
end;

procedure TfrmPrincipal.EnviaremailparaSuporte1Click(Sender: TObject);
var Mail: String;
begin
    Mail := 'mailto:hfinformatica@bol.com.br';
    ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil, sw_ShowNormal);

end;

procedure TfrmPrincipal.web1Click(Sender: TObject);
begin
if Application.MessageBox('Certifique-se de estar conectado a internet, e clique em OK para continuar!', 'Confirmação',
mb_OKCANCEL + mb_ICONINFORMATION) = idOK then
begin
HlinkNavigateString(nil,'http://www.hfinformatica.net');
end
end;

procedure TfrmPrincipal.Supore1Click(Sender: TObject);
begin
Application.CreateForm(TfrmSobre, frmSobre);
frmSobre.ShowModal;
frmsobre.Free;
end;

procedure TfrmPrincipal.Lancamento1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
Application.CreateForm(TfrmRsaida, frmRsaida);
frmRSaida.Showmodal;
frmrsaida.Free;
end;
end;
end;
end;

procedure TfrmPrincipal.Detalhado1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.Free;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
Application.CreateForm(TfrmRSaida1, frmRSaida1);
frmRSaida1.tipo.itemindex := 1;
frmRSaida1.caption := 'Relatório de Vendas';
//frmrsaida1.combobox1.enabled := false;
frmrsaida1.combobox1.visible := false;
//frmrsaida1.combobox2.enabled := true;
frmrsaida1.combobox2.visible := true;
frmRSaida1.ShowModal;
frmrsaida1.free;
end;
end;
end;
end;


procedure TfrmPrincipal.Lanamento4Click(Sender: TObject);
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QESERRADA.Open;
if DM.QESERRADA.RecordCount = 0 then
begin
DM.QESERRADA.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QESERRADA.Close;
frmREntrada2.ShowModal;
end;
end;
end;

procedure TfrmPrincipal.Detalhado3Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.free;
  end
  else
begin
DM.QESERRADA.Open;
if DM.QESERRADA.RecordCount = 0 then
begin
DM.QESERRADA.Close;
Application.MessageBox('Não há lançamento(s) de Entrada(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QESERRADA.Close;
Application.CreateForm(TfrmREntrada3, frmREntrada3);
frmREntrada3.Showmodal;
frmrentrada3.Free; 
end;
end;
end;
end;

procedure TfrmPrincipal.Serrada3Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.Free;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
Application.CreateForm(TfrmRSaida1, frmRSaida1);
frmRSaida1.tipo.itemindex := 0;
frmRSaida1.caption := 'Romaneio';
frmrsaida1.tipovendas.enabled := false;
frmrsaida1.groupbox5.enabled := false;
frmrsaida1.groupbox6.enabled := false;
frmrsaida1.groupbox4.enabled := true;
//frmrsaida1.combobox2.enabled := false;
frmrsaida1.combobox2.Visible := false;
//frmrsaida1.combobox1.enabled := true;
frmrsaida1.combobox1.visible := true;
frmRSaida1.ShowModal;
frmrsaida1.free;
end;
end;
end;
end;

procedure TfrmPrincipal.MadeiraSerrada3Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation); Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.Free;
  end
  else
begin
DM.QESTOQUE.Open;
if DM.QESTOQUE.RecordCount = 0 then
begin
DM.QESTOQUE.Close;
Application.MessageBox('Movimento de estoque zerado, Verífique lançamentos!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QESTOQUE.Close;
Application.CreateForm(TfrmREstoquePatio, frmREstoquePatio);
frmRestoquepatio.ShowModal;
frmrestoquepatio.free;
end
end;
end;
end;

procedure TfrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
if not fileexists('C:\HF-Software\Sismad\BancoDados\BDSISMAD.FDB') then
begin
Application.MessageBox('O procedimento de Backup só pode ser realizado no Servidor!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmBackup, frmBackup);
frmbackup.showmodal;
frmbackup.free;
end;
end;

procedure TfrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
if not fileexists('C:\HF-Software\Sismad\BancoDados\BDSISMAD.FDB') then
begin
Application.MessageBox('O procedimento de Restauração de Backup só pode ser realizado no Servidor!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.IBDatabase1.Connected := False;
Application.CreateForm(TfrmRestore, frmRestore);
frmRestore.showmodal;
frmrestore.Free;
end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TfrmFornecedores, frmFornecedores);
    frmFornecedores.ShowModal;
    frmfornecedores.Free;
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TfrmCredor, frmCredor);
    frmCREDOR.ShowModal;
    frmcredor.Free;
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
Application.CreateForm(TfrmEntradaSerrada, frmEntradaSerrada);
frmEntradaSerrada.ShowModal;
frmentradaserrada.Free;
end;

procedure TfrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
Application.CreateForm(TfrmVenda, frmVenda);
frmVenda.ShowModal;
frmvenda.Free;
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmConsultaESerrada, frmConsultaESerrada);
frmConsultaESerrada.ShowModal;
frmconsultaeserrada.free;
end;
end;

procedure TfrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('É preciso estar logado como "admin" para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmDemo, frmDemo);
frmDemo.ShowModal;
frmdemo.free;
end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
self.Caption := 'SISMAD - Sistema Madeireiro '+frmsplash.Label1.caption;
data := TIniFile.Create('C:\HF-Software\Sismad\Config.ini'); //Nome do meu arquivo INI que quero ler
frmprincipal.Skin.SkinFile := data.ReadString('SKIN','NOME','');
edit1.Text := Data.ReadString('TELADICAS','MOSTRA','');
data.Free; //Libera a memória
end;

procedure TfrmPrincipal.Plaqueta1Click(Sender: TObject);
begin
frmConsultaplaqueta.ShowModal;
end;

procedure TfrmPrincipal.FechamentoVendas1Click(Sender: TObject);
begin
if frmprincipal.rfv.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmRFechamentovenda, frmrfechamentovenda);
frmrfechamentovenda.ShowModal;
frmrfechamentovenda.free;
end;
end;

procedure TfrmPrincipal.Vendedor1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmvendedor, frmvendedor);
    frmvendedor.ShowModal;
    frmvendedor.Free;
end;
end;

procedure TfrmPrincipal.Porpedido1Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmConsultapedido, frmConsultapedido);
frmconsultapedido.showmodal;
frmconsultapedido.Free;
end;
end;

procedure TfrmPrincipal.AjustarEstoque1Click(Sender: TObject);
begin
if frmprincipal.ae.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmajusteestoque, frmajusteestoque);
frmajusteestoque.showmodal;
frmajusteestoque.Free;
end;
end;





procedure TfrmPrincipal.Pesquisadesatisfao1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmpsatisfacao, frmpsatisfacao);
    frmpsatisfacao.ShowModal;
    frmpsatisfacao.Free;
end;

procedure TfrmPrincipal.Entrada1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmentradaserrada, frmentradaserrada);
frmentradaserrada.ShowModal;
frmentradaserrada.Free;
end;

procedure TfrmPrincipal.ipodePessoa1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmtipopessoa, frmtipopessoa);
    frmtipopessoa.ShowModal;
    frmtipopessoa.Free;
end;
end;

procedure TfrmPrincipal.ConsultaLancamentodeSada1Click(Sender: TObject);
begin
if frmprincipal.consultar.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmConsultapedido, frmConsultapedido);
frmconsultapedido.showmodal;
frmconsultapedido.Free;
end;
end;

procedure TfrmPrincipal.PorProduto1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);  frmManutencao1.ShowModal;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
Application.CreateForm(TfrmRsaidaprodutos, frmRsaidaprodutos);
frmRsaidaprodutos.ShowModal;
frmrsaidaprodutos.free;
end;
end;
end;
end;

procedure TfrmPrincipal.REgistrodeOcorrncia1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text = ' Usuário: admin' then
begin
Application.CreateForm(Tfrmocorrencia, frmocorrencia);
frmocorrencia.ShowModal;
frmocorrencia.Free;
end
else
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
if frmprincipal.ocorrencia.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmocorrencia, frmocorrencia);
frmocorrencia.ShowModal;
frmocorrencia.Free;
end;
end;
end;
end;

procedure TfrmPrincipal.Setores1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmsetores, frmsetores);
    frmsetores.ShowModal;
    frmsetores.Free;
end;
end;

procedure TfrmPrincipal.ipodeContato1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmtipocontato, frmtipocontato);
    frmtipocontato.ShowModal;
    frmtipocontato.Free;
end;
end;

procedure TfrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
Application.CreateForm(Tfrmusuariologof, frmusuariologof);
frmusuariologof.Showmodal;
frmusuariologof.Free;
end;

procedure TfrmPrincipal.AlternarUsurio1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmusuariologof, frmusuariologof);
frmusuariologof.Showmodal;
frmusuariologof.Free;
end;

procedure TfrmPrincipal.PorTipodePedido1Click(Sender: TObject);
begin
if frmprincipal.relatorio.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Parametros da Empresa não informados, Verífique!', 'Informação', mb_Ok + mb_IconInformation);Application.CreateForm(TfrmManutencao1, frmManutencao1);
  frmManutencao1.ShowModal;
  frmmanutencao1.Free;
  end
  else
begin
DM.QSaida_Discriminacao.Open;
if DM.QSaida_Discriminacao.RecordCount = 0 then
begin
DM.QSaida_Discriminacao.Close;
Application.MessageBox('Não há lançamento(s) de Saída(s), Verífique!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
DM.QSaida_Discriminacao.Close;
Application.CreateForm(TfrmRSaida3, frmRSaida3);
frmRSaida3.ShowModal;
frmrsaida3.free;
end;
end;
end;
end;

procedure TfrmPrincipal.StatusdaEntrega1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmconsultaentrega, frmconsultaentrega);
frmconsultaentrega.ShowModal;
frmconsultaentrega.Free;
end;

procedure TfrmPrincipal.PadrodeVenda1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
  Application.CreateForm(Tfrmpadraovenda, frmpadraovenda);
  frmpadraovenda.ShowModal;
  frmpadraovenda.Free;
end;
end;

procedure TfrmPrincipal.Dicas1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmdicas, frmdicas);
frmdicas.ShowModal;
frmdicas.Free;
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
if edit1.text = 'true' then
begin
timer2.enabled := false;
Application.CreateForm(Tfrmdicas, frmdicas);
frmdicas.ShowModal;
frmdicas.Free;
end
else
begin
timer2.enabled := false;
end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
timer2.enabled := true;
end;

procedure TfrmPrincipal.PorTipodePagamento1Click(Sender: TObject);
begin
if frmprincipal.rfv.caption = 'False' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(TfrmRtipopagamento, frmrtipopagamento);
frmrtipopagamento.ShowModal;
frmrtipopagamento.free;
end;
end;

procedure TfrmPrincipal.Emitidos1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmchequesemitidos, frmchequesemitidos);
frmchequesemitidos.ShowModal;
frmchequesemitidos.Free;
end;
end;

procedure TfrmPrincipal.Recebidos1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmchequesrecebidos, frmchequesrecebidos);
frmchequesrecebidos.ShowModal;
frmchequesrecebidos.Free;
end;
end;

procedure TfrmPrincipal.Repassar1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmchequesrepassar, frmchequesrepassar);
frmchequesrepassar.ShowModal;
frmchequesrepassar.Free;
end;
end;

procedure TfrmPrincipal.RecebidosExtornarRepasse1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmchequesestornar, frmchequesestornar);
frmchequesestornar.ShowModal;
frmchequesestornar.Free;
end;
end;

procedure TfrmPrincipal.RecebidosDevolvidos1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmchequesdevolvidos, frmchequesdevolvidos);
frmchequesdevolvidos.ShowModal;
frmchequesdevolvidos.Free;
end;
end;

procedure TfrmPrincipal.Inclur1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontaspagar, frmcontaspagar);
frmcontaspagar.ShowModal;
frmcontaspagar.Free;
end;
end;

procedure TfrmPrincipal.Inclur2Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontasreceber, frmcontasreceber);
frmcontasreceber.ShowModal;
frmcontasreceber.Free;
end;
end;

procedure TfrmPrincipal.Quitar1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontaspagarquitar, frmcontaspagarquitar);
frmcontaspagarquitar.ShowModal;
frmcontaspagarquitar.Free;
end;
end;

procedure TfrmPrincipal.Extornar1Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontaspagarestornar, frmcontaspagarestornar);
frmcontaspagarestornar.ShowModal;
frmcontaspagarestornar.Free;
end;
end;

procedure TfrmPrincipal.Quitar2Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontasreceberquitar, frmcontasreceberquitar);
frmcontasreceberquitar.ShowModal;
frmcontasreceberquitar.Free;
end;
end;

procedure TfrmPrincipal.Extornar2Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontasreceberestornar, frmcontasreceberestornar);
frmcontasreceberestornar.ShowModal;
frmcontasreceberestornar.Free;
end;
end;

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmcategoria, frmcategoria);
frmcategoria.ShowModal;
frmcategoria.Free;
end;

procedure TfrmPrincipal.SubCategoria1Click(Sender: TObject);
begin
Application.CreateForm(Tfrmsubcategoria, frmsubcategoria);
frmsubcategoria.ShowModal;
frmsubcategoria.Free;

end;

procedure TfrmPrincipal.Manuteno2Click(Sender: TObject);
begin
if frmprincipal.StatusBar1.Panels[1].Text <> ' Usuário: admin' then
begin
Application.MessageBox('Você não tem permissão para executar esta ação!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
Application.CreateForm(Tfrmcontaspagarmanutencao, frmcontaspagarmanutencao);
frmcontaspagarmanutencao.ShowModal;
frmcontaspagarmanutencao.Free;
end;
end;

end.

