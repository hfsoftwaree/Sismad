program Siscomad;

uses
  Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitEssencia in 'UnitEssencia.pas' {frmEssencia},
  UnitCredor in 'UnitCredor.pas' {frmCredor},
  UnitFretero in 'UnitFretero.pas' {frmFretero},
  UnitMunicipio in 'UnitMunicipio.pas' {frmMunicipio},
  UnitProdutos in 'UnitProdutos.pas' {frmProdutos},
  UnitInfo in 'UnitInfo.pas' {frmInfo},
  UnitSplash in 'UnitSplash.pas' {frmSplash},
  UnitSobre in 'UnitSobre.pas' {frmSobre},
  UnitRepEssencia in 'UnitRepEssencia.pas' {RepEssencia},
  UnitRepCredores in 'UnitRepCredores.pas' {RepCredores},
  UnitRepFornecedores in 'UnitRepFornecedores.pas' {RepFornecedores},
  UnitRepFretero in 'UnitRepFretero.pas' {RepFretero},
  UnitRepProduto in 'UnitRepProduto.pas' {RepProduto},
  UnitRepMunicipio in 'UnitRepMunicipio.pas' {RepMunicipio},
  UnitBackup in 'UnitBackup.pas' {frmBackup},
  UnitRestore in 'UnitRestore.pas' {frmRestore},
  UnitEntradaToros in 'UnitEntradaToros.pas' {frmEntradaToros},
  UnitFornecedor in 'UnitFornecedor.pas' {frmFornecedores},
  UnitEntradaTorosProdutos in 'UnitEntradaTorosProdutos.pas' {frmEntradaTorosProdutos},
  UnitSaidaMadeiras in 'UnitSaidaMadeiras.pas' {frmSaidaMadeiras},
  UnitSaidaMadeirasProdutos in 'UnitSaidaMadeirasProdutos.pas' {frmSaidaMadeirasProdutos},
  UnitConsultaEPatio in 'UnitConsultaEPatio.pas' {frmConsultaEPatio},
  UnitConsultaESerrada in 'UnitConsultaESerrada.pas' {frmConsultaESerrada},
  UnitProducao in 'UnitProducao.pas' {frmProducao},
  UnitPesquisaEntrada in 'UnitPesquisaEntrada.pas' {frmPesquisa},
  UnitPesquisa1 in 'UnitPesquisa1.pas' {frmPesquisa1},
  UnitPesquisa2 in 'UnitPesquisa2.pas' {frmPesquisa2},
  UnitPesquisa3 in 'UnitPesquisa3.pas' {frmPesquisa3},
  UnitConsultaProducao in 'UnitConsultaProducao.pas' {frmConsultaProducao},
  UnitDemo in 'UnitDemo.pas' {frmDemo},
  UnitDemoGrafico in 'UnitDemoGrafico.pas' {frmDemoGrafico},
  UnitDemoGrafico1 in 'UnitDemoGrafico1.pas' {frmDemoGrafico1},
  UnitREntrada in 'UnitREntrada.pas' {frmREntrada},
  UnitREntrada1 in 'UnitREntrada1.pas' {frmREntrada1},
  UnitRepEntrada in 'UnitRepEntrada.pas' {RepEntrada},
  UnitRepEntrada1 in 'UnitRepEntrada1.pas' {RepEntrada1},
  UnitRepSaida in 'UnitRepSaida.pas' {RepSaida},
  UnitRepSaida1 in 'UnitRepSaida1.pas' {RepSaida1},
  UnitRSaida in 'UnitRSaida.pas' {frmRSaida},
  UnitRSaida1 in 'UnitRSaida1.pas' {frmRSaida1},
  UnitRepProducao in 'UnitRepProducao.pas' {RepProducao},
  UnitRepProducao1 in 'UnitRepProducao1.pas' {RepProducao1},
  UnitRProducao in 'UnitRProducao.pas' {frmRProducao},
  UnitRProducao1 in 'UnitRProducao1.pas' {frmRProducao1},
  UnitREstoque in 'UnitREstoque.pas' {frmREstoque},
  UnitRepEstoque in 'UnitRepEstoque.pas' {RepEstoque},
  UnitRepEstoque1 in 'UnitRepEstoque1.pas' {RepEstoque1},
  UnitREstoque1 in 'UnitREstoque1.pas' {frmREstoque1},
  UnitManutencao1 in 'UnitManutencao1.pas' {frmManutencao1},
  UnitLogin in 'UnitLogin.pas' {frmLogin},
  UnitAtualizacao in 'UnitAtualizacao.pas' {frmAtualizacao},
  UnitUsuario in 'UnitUsuario.pas' {frmUsuario},
  UnitfrmFunrural in 'UnitfrmFunrural.pas' {frmFunRural},
  UnitEntradaSerrada in 'UnitEntradaSerrada.pas' {frmEntradaSerrada},
  UnitEntradaSerradaProdutos in 'UnitEntradaSerradaProdutos.pas' {frmEntradaSerradaProdutos},
  UnitREntrada2 in 'UnitREntrada2.pas' {frmREntrada2},
  UnitREntrada3 in 'UnitREntrada3.pas' {frmREntrada3},
  UnitRepEntrada2 in 'UnitRepEntrada2.pas' {RepEntrada2},
  UnitRepEntrada3 in 'UnitRepEntrada3.pas' {RepEntrada3},
  UnitRepRomaneioToros in 'UnitRepRomaneioToros.pas' {RepRomaneioToros},
  UnitSaidaToros in 'UnitSaidaToros.pas' {frmSaidaToros},
  UnitSaidaTorosProdutos in 'UnitSaidaTorosProdutos.pas' {frmSaidaTorosProdutos},
  UnitRepCredoresCompleto in 'UnitRepCredoresCompleto.pas' {RepCredores1},
  UnitRepRomaneioSerrada in 'UnitRepRomaneioSerrada.pas' {frmRRomaneioSerrada},
  UnitRepRomaneioSerrada1 in 'UnitRepRomaneioSerrada1.pas' {RepRomaneioserrada},
  Unitconfig in 'Unitconfig.pas' {frmconfig},
  Unitromaneioserrada in 'Unitromaneioserrada.pas' {frmromaneioserrada},
  Unitromaneioserradaprodutos in 'Unitromaneioserradaprodutos.pas' {frmromaneioSerradaProdutos},
  Unitsubprodutos in 'Unitsubprodutos.pas' {frmsubprodutos},
  Unitrepsubprodutos in 'Unitrepsubprodutos.pas' {Repsubproduto},
  Unitromaneiotoro in 'Unitromaneiotoro.pas' {frmRomaneiotoro},
  Unitromaneiotorosprodutos in 'Unitromaneiotorosprodutos.pas' {frmRomaneiotorosprodutos},
  UnitRRomaneioToros in 'UnitRRomaneioToros.pas' {frmRRomaneiotoros},
  UnitLimparBD in 'UnitLimparBD.pas' {frmLimparBD},
  Unitskin in 'Unitskin.pas' {frmSkin},
  Unitconsultaproduto in 'Unitconsultaproduto.pas' {frmConsultaProduto},
  Unit1 in 'Unit1.pas' {Form1},
  Unitinicial in 'Unitinicial.pas' {frmInicial};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Siscomad';
  frmsplash := Tfrmsplash.Create (application);
  frmsplash.show;
  frmsplash.Refresh;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmEssencia, frmEssencia);
  Application.CreateForm(TfrmCredor, frmCredor);
  Application.CreateForm(TfrmFretero, frmFretero);
  Application.CreateForm(TfrmMunicipio, frmMunicipio);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TRepEssencia, RepEssencia);
  Application.CreateForm(TRepCredores, RepCredores);
  Application.CreateForm(TRepFornecedores, RepFornecedores);
  Application.CreateForm(TRepFretero, RepFretero);
  Application.CreateForm(TRepProduto, RepProduto);
  Application.CreateForm(TRepMunicipio, RepMunicipio);
  Application.CreateForm(TfrmBackup, frmBackup);
  Application.CreateForm(TfrmRestore, frmRestore);
  Application.CreateForm(TfrmEntradaToros, frmEntradaToros);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmEntradaTorosProdutos, frmEntradaTorosProdutos);
  Application.CreateForm(TfrmSaidaMadeiras, frmSaidaMadeiras);
  Application.CreateForm(TfrmSaidaMadeirasProdutos, frmSaidaMadeirasProdutos);
  Application.CreateForm(TfrmConsultaEPatio, frmConsultaEPatio);
  Application.CreateForm(TfrmConsultaESerrada, frmConsultaESerrada);
  Application.CreateForm(TfrmProducao, frmProducao);
  Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.CreateForm(TfrmPesquisa1, frmPesquisa1);
  Application.CreateForm(TfrmPesquisa2, frmPesquisa2);
  Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
  Application.CreateForm(TfrmConsultaProducao, frmConsultaProducao);
  Application.CreateForm(TfrmDemo, frmDemo);
  Application.CreateForm(TfrmDemoGrafico, frmDemoGrafico);
  Application.CreateForm(TfrmDemoGrafico1, frmDemoGrafico1);
  Application.CreateForm(TfrmREntrada, frmREntrada);
  Application.CreateForm(TfrmREntrada1, frmREntrada1);
  Application.CreateForm(TRepEntrada, RepEntrada);
  Application.CreateForm(TRepEntrada1, RepEntrada1);
  Application.CreateForm(TRepSaida, RepSaida);
  Application.CreateForm(TRepSaida1, RepSaida1);
  Application.CreateForm(TfrmRSaida, frmRSaida);
  Application.CreateForm(TfrmRSaida1, frmRSaida1);
  Application.CreateForm(TRepProducao, RepProducao);
  Application.CreateForm(TRepProducao1, RepProducao1);
  Application.CreateForm(TfrmRProducao, frmRProducao);
  Application.CreateForm(TfrmRProducao1, frmRProducao1);
  Application.CreateForm(TfrmREstoque, frmREstoque);
  Application.CreateForm(TRepEstoque, RepEstoque);
  Application.CreateForm(TRepEstoque1, RepEstoque1);
  Application.CreateForm(TfrmREstoque1, frmREstoque1);
  Application.CreateForm(TfrmManutencao1, frmManutencao1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmAtualizacao, frmAtualizacao);
  Application.CreateForm(TfrmUsuario, frmUsuario);
  Application.CreateForm(TfrmFunRural, frmFunRural);
  Application.CreateForm(TfrmEntradaSerrada, frmEntradaSerrada);
  Application.CreateForm(TfrmEntradaSerradaProdutos, frmEntradaSerradaProdutos);
  Application.CreateForm(TfrmREntrada2, frmREntrada2);
  Application.CreateForm(TfrmREntrada3, frmREntrada3);
  Application.CreateForm(TRepEntrada2, RepEntrada2);
  Application.CreateForm(TRepEntrada3, RepEntrada3);
  Application.CreateForm(TRepRomaneioToros, RepRomaneioToros);
  Application.CreateForm(TfrmSaidaToros, frmSaidaToros);
  Application.CreateForm(TfrmSaidaTorosProdutos, frmSaidaTorosProdutos);
  Application.CreateForm(TRepCredores1, RepCredores1);
  Application.CreateForm(TfrmRRomaneioSerrada, frmRRomaneioSerrada);
  Application.CreateForm(TRepRomaneioserrada, RepRomaneioserrada);
  Application.CreateForm(Tfrmconfig, frmconfig);
  Application.CreateForm(Tfrmromaneioserrada, frmromaneioserrada);
  Application.CreateForm(TfrmromaneioSerradaProdutos, frmromaneioSerradaProdutos);
  Application.CreateForm(Tfrmsubprodutos, frmsubprodutos);
  Application.CreateForm(TRepsubproduto, Repsubproduto);
  Application.CreateForm(TfrmRomaneiotoro, frmRomaneiotoro);
  Application.CreateForm(TfrmRomaneiotorosprodutos, frmRomaneiotorosprodutos);
  Application.CreateForm(TfrmRRomaneiotoros, frmRRomaneiotoros);
  Application.CreateForm(TfrmLimparBD, frmLimparBD);
  Application.CreateForm(TfrmSkin, frmSkin);
  Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmInicial, frmInicial);
  Application.Run;
end.
