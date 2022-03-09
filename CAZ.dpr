{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  CAZ;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  DM in 'DM.pas' {FDM: TDataModule},
  DmCons in 'DmCons.pas' {FDMCons: TDataModule},
  LineasConsulta in 'Catalogos\LineasConsulta.pas' {FLineasConsulta: TUniForm},
  LineasCatalogo in 'Catalogos\LineasCatalogo.pas' {FLineasCatalogo: TUniForm},
  MarcasCatalogo in 'Catalogos\MarcasCatalogo.pas' {FMarcasCatalogo: TUniForm},
  MarcasConsulta in 'Catalogos\MarcasConsulta.pas' {FMarcasConsulta: TUniForm},
  Puntos in 'Puntos.pas',
  PartidaCat in 'PartidaCat.pas' {FPartidaCat: TUniForm},
  ListaPrecios in 'ListaPrecios.pas' {FListaPrecios: TUniForm},
  TraspasosConsulta in 'Traspasos\TraspasosConsulta.pas' {FTraspasosConsulta: TUniForm},
  TraspasosCatalogo in 'Traspasos\TraspasosCatalogo.pas' {FTraspasosCatalogo: TUniForm},
  EntradasConsulta in 'Entradas de Embarques y de Traspasos\EntradasConsulta.pas' {FEntradasConsulta: TUniForm},
  EntradasCatalogo in 'Entradas de Embarques y de Traspasos\EntradasCatalogo.pas' {FEntradasCatalogo: TUniForm},
  Resurtidos in 'Resurtidos.pas' {FResurtidos: TUniForm},
  CtesCons in 'Clientes\CtesCons.pas' {FCtesCons: TUniForm},
  CtesConsController in 'Clientes\CtesConsController.pas',
  ReqCons in 'PedidosCtes\ReqCons.pas' {FReqCons: TUniForm},
  ReqConsController in 'PedidosCtes\ReqConsController.pas',
  ReqCat in 'PedidosCtes\ReqCat.pas' {FReqCat: TUniForm},
  ReqPartidaCatController in 'PedidosCtes\ReqPartidaCatController.pas',
  ModelosConsulta in 'ModelosConsulta.pas' {FModelosConsulta: TUniForm},
  ModeloCatalogo in 'ModeloCatalogo.pas' {FModeloCatalogo: TUniForm},
  UnidadesCatalogo in 'Catalogos\UnidadesCatalogo.pas' {FUnidadesCatalogo: TUniForm},
  UnidadesConsulta in 'Catalogos\UnidadesConsulta.pas' {FUnidadesConsulta: TUniForm},
  HormasConsulta in 'Catalogos\HormasConsulta.pas' {FHormasConsulta: TUniForm},
  HormasCatalogo in 'Catalogos\HormasCatalogo.pas' {FHormasCatalogo: TUniForm},
  GruposCatalogo in 'GruposCatalogo.pas' {FGruposCatalogo: TUniForm},
  ModeloCopia in 'ModeloCopia.pas' {FModeloCopia: TUniForm},
  EstiloCopia in 'EstiloCopia.pas' {FEstiloCopia: TUniForm},
  ClasiElementCatalogo in 'Catalogos\ClasiElementCatalogo.pas' {FClasiElementCatalogo: TUniForm},
  ClasiElementConsulta in 'Catalogos\ClasiElementConsulta.pas' {FClasiElementConsulta: TUniForm},
  ClasifiCatalogo in 'Catalogos\ClasifiCatalogo.pas' {FClasifiCatalogo: TUniForm},
  ClasifiConsulta in 'Catalogos\ClasifiConsulta.pas' {FClasifiConsulta: TUniForm},
  ColoresCatalogo in 'Catalogos\ColoresCatalogo.pas' {FColoresCatalogo: TUniForm},
  ColoresConsulta in 'Catalogos\ColoresConsulta.pas' {FColoresConsulta: TUniForm},
  DeptoNomConsulta in 'Catalogos\DeptoNomConsulta.pas' {FDeptoNomConsulta: TUniForm},
  DeptoNomCatalogo in 'Catalogos\DeptoNomCatalogo.pas' {FDeptoNomCatalogo: TUniForm},
  EmpProdConsulta in 'Catalogos\EmpProdConsulta.pas' {FEmpProdConsulta: TUniForm},
  EmpProdCatalogo in 'Catalogos\EmpProdCatalogo.pas' {FEmpProdCatalogo: TUniForm},
  PuestosCatalogo in 'Catalogos\PuestosCatalogo.pas' {FPuestosCatalogo: TUniForm},
  PuestosConsulta in 'Catalogos\PuestosConsulta.pas' {FPuestosConsulta: TUniForm},
  FamiliasCatalogo in 'Catalogos\FamiliasCatalogo.pas' {FFamiliasCatalogo: TUniForm},
  FamiliasConsulta in 'Catalogos\FamiliasConsulta.pas' {FFamiliasConsulta: TUniForm},
  TiposCatalogo in 'Catalogos\TiposCatalogo.pas' {FTiposCatalogo: TUniForm},
  DeptosCatalogo in 'Catalogos\DeptosCatalogo.pas' {FDeptosCatalogo: TUniForm},
  DeptosConsulta in 'Catalogos\DeptosConsulta.pas' {FDeptosConsulta: TUniForm},
  ElementCatalogo in 'Catalogos\ElementCatalogo.pas' {FElementCatalogo: TUniForm},
  ElementConsulta in 'Catalogos\ElementConsulta.pas' {FElementConsulta: TUniForm},
  EmbarqueConsulta in 'Embarques\EmbarqueConsulta.pas' {FEmbarqueConsulta: TUniForm},
  EmbarquesCatalogo in 'Embarques\EmbarquesCatalogo.pas' {FEmbarquesCatalogo: TUniForm},
  EmpsCatalogo in 'Catalogos\EmpsCatalogo.pas' {FEmpsCatalogo: TUniForm},
  EmpsConsulta in 'Catalogos\EmpsConsulta.pas' {FEmpsConsulta: TUniForm},
  ProvsCatalogo in 'Catalogos\ProvsCatalogo.pas' {FProvsCatalogo: TUniForm},
  ProvsConsulta in 'Catalogos\ProvsConsulta.pas' {FProvsConsulta: TUniForm},
  PedidosCatalogo in 'PedidosProvs\PedidosCatalogo.pas' {FPedidosCatalogo: TUniForm},
  PedidosConsulta in 'PedidosProvs\PedidosConsulta.pas' {FPedidosConsulta: TUniForm},
  PedPartidaCatController in 'PedidosProvs\PedPartidaCatController.pas',
  CorridasCatalogo in 'Catalogos\CorridasCatalogo.pas' {FCorridasCatalogo: TUniForm},
  CorridasConsulta in 'Catalogos\CorridasConsulta.pas' {FCorridasConsulta: TUniForm},
  CtesCatalogo in 'Catalogos\CtesCatalogo.pas' {FCtesCatalogo: TUniForm},
  TiendaCatalogo in 'Catalogos\TiendaCatalogo.pas' {FTiendaCatalogo: TUniForm},
  TiendaConsulta in 'Catalogos\TiendaConsulta.pas' {FTiendaConsulta: TUniForm},
  ColoresInsumos in 'Catalogos\ColoresInsumos.pas' {FColoresInsumos: TUniForm},
  ProgSimple in 'Programacion\ProgSimple.pas' {FProgSimple: TUniForm},
  uProgSimpleController in 'Programacion\uProgSimpleController.pas',
  PlantasConsulta in 'Catalogos\PlantasConsulta.pas' {FPlantasConsulta: TUniForm},
  PlantasCatalogo in 'Catalogos\PlantasCatalogo.pas' {FPlantasCatalogo: TUniForm},
  ExplosionConsulta in 'ExplosionConsulta.pas' {FExplosionConsulta: TUniForm},
  EmbPartidaCatController in 'Embarques\EmbPartidaCatController.pas',
  TraspasoPartidaCatController in 'Traspasos\TraspasoPartidaCatController.pas',
  EntradasPartidaCatController in 'Entradas de Embarques y de Traspasos\EntradasPartidaCatController.pas',
  CajasCatalogo in 'Catalogos\CajasCatalogo.pas' {FCajasCatalogo: TUniForm},
  CajasConsulta in 'Catalogos\CajasConsulta.pas' {FCajasConsulta: TUniForm},
  EstilosConsulta in 'CatalogosProduccion\EstilosConsulta.pas',
  FracEstCatalogo in 'CatalogosProduccion\FracEstCatalogo.pas' {FFracEstCatalogo: TUniForm},
  FracEstDetCatalogo in 'CatalogosProduccion\FracEstDetCatalogo.pas' {FFracEstDetCatalogo: TUniForm},
  EstConsumosCatalogo in 'CatalogosProduccion\EstConsumosCatalogo.pas' {FEstConsumosCatalogo: TUniForm},
  EstConsumosDetCatalogo in 'CatalogosProduccion\EstConsumosDetCatalogo.pas' {FEstConsumosDetCatalogo: TUniForm},
  EstilosCatalogo in 'CatalogosProduccion\EstilosCatalogo.pas' {FEstilosCatalogo: TUniForm},
  EstConsuDetCatalogo in 'CatalogosProduccion\EstConsuDetCatalogo.pas' {FEstConsuDetCatalogo: TUniForm},
  InventarioConsulta in 'Inventarios\InventarioConsulta.pas' {FInventarioConsulta: TUniForm},
  Cxc_ConcepConsulta in 'Tesoreria\Cxc_ConcepConsulta.pas' {FCxc_ConcepConsulta: TUniForm},
  Cxc_ConcepCatalogo in 'Tesoreria\Cxc_ConcepCatalogo.pas' {FCxc_ConcepCatalogo: TUniForm},
  CxcCatalogo in 'Tesoreria\CxcCatalogo.pas' {FCxcCatalogo: TUniForm},
  CxcDetCatalogo in 'Tesoreria\CxcDetCatalogo.pas' {FCxcDetCatalogo: TUniForm},
  Cxc_DocsConsulta in 'Tesoreria\Cxc_DocsConsulta.pas' {FCxc_DocsConsulta: TUniForm},
  InventarioConsulta2 in 'Inventarios\InventarioConsulta2.pas' {FInventarioConsulta2: TUniForm},
  InventarioTdasGralDlg in 'Inventarios\InventarioTdasGralDlg.pas' {FInventarioTdasGralDlg: TUniForm},
  InventarioFisicoCatalogo in 'Inventarios\InventarioFisicoCatalogo.pas' {FInventarioFisicoCatalogo: TUniForm},
  FracModCatalogo in 'CatalogosProduccion\FracModCatalogo.pas' {FFracModCatalogo: TUniForm},
  FracModDetCatalogo in 'CatalogosProduccion\FracModDetCatalogo.pas' {FFracModDetCatalogo: TUniForm},
  ConsumosCatalogo in 'CatalogosProduccion\ConsumosCatalogo.pas' {FConsumosCatalogo: TUniForm},
  ConsumosDetCatalogo in 'CatalogosProduccion\ConsumosDetCatalogo.pas' {FConsumosDetCatalogo: TUniForm},
  FlujoDetCatalogo in 'CatalogosProduccion\FlujoDetCatalogo.pas' {FFlujoDetCatalogo: TUniForm},
  FlujosCatalogo in 'CatalogosProduccion\FlujosCatalogo.pas' {FFlujosCatalogo: TUniForm},
  FlujosConsulta in 'CatalogosProduccion\FlujosConsulta.pas' {FFlujosConsulta: TUniForm},
  InsumosCatalogo in 'Inventarios\InsumosCatalogo.pas' {FInsumosCatalogo: TUniForm},
  InsumosConsulta in 'Inventarios\InsumosConsulta.pas' {FInsumosConsulta: TUniForm},
  FraccConsulta in 'CatalogosProduccion\FraccConsulta.pas' {FFraccConsulta: TUniForm},
  FraccCatalogo in 'CatalogosProduccion\FraccCatalogo.pas' {FFraccCatalogo: TUniForm},
  UsrCatalogo in 'Catalogos\UsrCatalogo.pas' {FUsrCatalogo: TUniForm},
  UsrConsulta in 'Catalogos\UsrConsulta.pas' {FUsrConsulta: TUniForm},
  DlgModelos in 'DlgModelos.pas' {FDlgModelos: TUniForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
