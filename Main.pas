unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Menus, uniMainMenu,
  uniGUIBaseClasses, uniImageList, System.IniFiles;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    Catlogos1: TUniMenuItem;
    iendas1: TUniMenuItem;
    Proveedores1: TUniMenuItem;
    N2: TUniMenuItem;
    Lineas1: TUniMenuItem;
    Colores1: TUniMenuItem;
    Clasificaciones1: TUniMenuItem;
    Marcas1: TUniMenuItem;
    Corridas1: TUniMenuItem;
    Estilos1: TUniMenuItem;
    Pedidos1: TUniMenuItem;
    Inventarios1: TUniMenuItem;
    Reportes1: TUniMenuItem;
    Pedidos2: TUniMenuItem;
    Programacin1: TUniMenuItem;
    ListadePrecios1: TUniMenuItem;
    PedidosCliente1: TUniMenuItem;
    Compras1: TUniMenuItem;
    Clientes1: TUniMenuItem;
    Empleados1: TUniMenuItem;
    ConsultadeInventario1: TUniMenuItem;
    raspasoentretiendas1: TUniMenuItem;
    N1: TUniMenuItem;
    raspasoentretiendas2: TUniMenuItem;
    EntradadeEmbarquesTraspasos1: TUniMenuItem;
    CajasxTienda1: TUniMenuItem;
    esorera1: TUniMenuItem;
    CuentasxCobrar1: TUniMenuItem;
    CuentasxPagar1: TUniMenuItem;
    ConceptosCxC1: TUniMenuItem;
    RegistrodeDocumentos1: TUniMenuItem;
    RegistrodeMovimientos1: TUniMenuItem;
    Resurtidos1: TUniMenuItem;
    ConsultadeInventario21: TUniMenuItem;
    InventariodeTiendasGeneral1: TUniMenuItem;
    Inventario1: TUniMenuItem;
    Inicial1: TUniMenuItem;
    Fsico1: TUniMenuItem;
    N3: TUniMenuItem;
    Catlogos2: TUniMenuItem;
    ClasificacindeElementos1: TUniMenuItem;
    Elementos1: TUniMenuItem;
    Departamentos1: TUniMenuItem;
    Flujos1: TUniMenuItem;
    N5: TUniMenuItem;
    Modelos1: TUniMenuItem;
    Unidades1: TUniMenuItem;
    Hormas1: TUniMenuItem;
    N6: TUniMenuItem;
    N7: TUniMenuItem;
    Catlogos3: TUniMenuItem;
    Familias1: TUniMenuItem;
    Insumos1: TUniMenuItem;
    N8: TUniMenuItem;
    Destajos1: TUniMenuItem;
    Empleados2: TUniMenuItem;
    Fracciones1: TUniMenuItem;
    FracccionesxModelo1: TUniMenuItem;
    CapturarDestajos1: TUniMenuItem;
    iendas2: TUniMenuItem;
    DepartamentosdeNmina1: TUniMenuItem;
    N9: TUniMenuItem;
    Puestos1: TUniMenuItem;
    Consumos1: TUniMenuItem;
    ConsumosxModelo1: TUniMenuItem;
    Catlogos4: TUniMenuItem;
    Modelos2: TUniMenuItem;
    CopiadeModelos1: TUniMenuItem;
    ConsumosxEstilo1: TUniMenuItem;
    FraccionesxEstilo1: TUniMenuItem;
    N4: TUniMenuItem;
    Estilos2: TUniMenuItem;
    CopiadeEstilo1: TUniMenuItem;
    N10: TUniMenuItem;
    CrearCatlogodesdeinsumos1: TUniMenuItem;
    Catlogos5: TUniMenuItem;
    ExplosindeMateriales1: TUniMenuItem;
    ExplosindeMateriales2: TUniMenuItem;
    E1: TUniMenuItem;
    Acceso1: TUniMenuItem;
    Usuarios1: TUniMenuItem;
    Permisos1: TUniMenuItem;
    procedure iendas1Click(Sender: TObject);
    procedure Lineas1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Clasificaciones1Click(Sender: TObject);
    procedure Colores1Click(Sender: TObject);
    procedure Corridas1Click(Sender: TObject);
    procedure Estilos1Click(Sender: TObject);
    procedure Pedidos2Click(Sender: TObject);
    procedure ListadePrecios1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
    procedure ConsultadeInventario1Click(Sender: TObject);
    procedure raspasoentretiendas2Click(Sender: TObject);
    procedure raspasoentretiendas1Click(Sender: TObject);
    procedure EntradadeEmbarquesTraspasos1Click(Sender: TObject);
    procedure CajasxTienda1Click(Sender: TObject);
    procedure ConceptosCxC1Click(Sender: TObject);
    procedure RegistrodeDocumentos1Click(Sender: TObject);
    procedure RegistrodeMovimientos1Click(Sender: TObject);
    procedure Resurtidos1Click(Sender: TObject);
    procedure ConsultadeInventario21Click(Sender: TObject);
    procedure InventariodeTiendasGeneral1Click(Sender: TObject);
    procedure Inicial1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure PedidosCliente1Click(Sender: TObject);
    procedure ClasificacindeElementos1Click(Sender: TObject);
    procedure Elementos1Click(Sender: TObject);
    procedure Modelos1Click(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure Flujos1Click(Sender: TObject);
    procedure Hormas1Click(Sender: TObject);
    procedure Familias1Click(Sender: TObject);
    procedure Insumos1Click(Sender: TObject);
    procedure DepartamentosdeNmina1Click(Sender: TObject);
    procedure Puestos1Click(Sender: TObject);
    procedure Empleados2Click(Sender: TObject);
    procedure ConsumosxModelo1Click(Sender: TObject);
    procedure Fracciones1Click(Sender: TObject);
    procedure FracccionesxModelo1Click(Sender: TObject);
    procedure CopiadeModelos1Click(Sender: TObject);
    procedure ConsumosxEstilo1Click(Sender: TObject);
    procedure FraccionesxEstilo1Click(Sender: TObject);
    procedure CopiadeEstilo1Click(Sender: TObject);
    procedure CrearCatlogodesdeinsumos1Click(Sender: TObject);
    procedure Programacin1Click(Sender: TObject);
    procedure ExplosindeMateriales2Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  DM,
  TiendaConsulta,
  LineasConsulta,
  MarcasConsulta,
  ClasifiConsulta,
  ColoresConsulta,
  CorridasConsulta,
  EstilosConsulta,
  PedidosConsulta,
  ListaPrecios,
  ProvsConsulta,
  EmpsConsulta,
  InventarioConsulta,
  EmbarqueConsulta,
  TraspasosConsulta,
  EntradasConsulta,
  CajasConsulta,
  Cxc_ConcepConsulta,
  CxcCatalogo,
  CxcDetCatalogo,
  Resurtidos,
  InventarioConsulta2,
  InventarioTdasGralDlg,
  InventarioFisicoCatalogo,
  CtesConsController,
  ReqConsController,
  ClasiElementConsulta,
  ElementConsulta,
  ModelosConsulta,
  UnidadesConsulta,
  DeptosConsulta,
  FlujosConsulta,
  HormasConsulta,
  FamiliasConsulta,
  InsumosConsulta,
  DeptoNomConsulta,
  PuestosConsulta,
  EmpProdConsulta,
  FraccConsulta,
  FracModCatalogo,
  ModeloCopia,
  EstiloCopia,
  ColoresInsumos,
  uProgSimpleController,
  ExplosionConsulta,
  UsrConsulta;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.CajasxTienda1Click(Sender: TObject);
begin
  FCajasConsulta.Show();
end;

procedure TMainForm.ClasificacindeElementos1Click(Sender: TObject);
begin
  FClasiElementConsulta.Show();
end;

procedure TMainForm.Clasificaciones1Click(Sender: TObject);
begin
  FClasifiConsulta.Show();
end;

procedure TMainForm.Clientes1Click(Sender: TObject);
begin
  CtesConsController.TCtesConsulta.New.Free;
end;

procedure TMainForm.Colores1Click(Sender: TObject);
begin
  FColoresConsulta.Show();
end;

procedure TMainForm.ConceptosCxC1Click(Sender: TObject);
begin
  FCxc_ConcepConsulta.Show();
end;

procedure TMainForm.ConsultadeInventario1Click(Sender: TObject);
begin
  FInventarioConsulta.Show();
end;

procedure TMainForm.ConsultadeInventario21Click(Sender: TObject);
begin
  FInventarioConsulta2.Show();
end;

procedure TMainForm.ConsumosxEstilo1Click(Sender: TObject);
begin
  fEstilosConsulta.bNuevo.Visible := False;
  fEstilosConsulta.bModificar.Visible := False;
  fEstilosConsulta.bEliminar.Visible := False;
  fEstilosConsulta.bConsumos.Visible := True;
  FestilosConsulta.bFracc.Visible := False;
  fEstilosConsulta.Show();
end;

procedure TMainForm.ConsumosxModelo1Click(Sender: TObject);
begin
  FModelosConsulta.bNuevo.Visible := False;
  FModelosConsulta.bModificar.Visible := False;
  FModelosConsulta.bEliminar.Visible := False;
  FModelosConsulta.bConsumos.Visible := True;
  FModelosConsulta.bFracc.Visible := False;
  FModelosConsulta.UniPanel1.Height := 73;
  FModelosConsulta.Show();
end;

procedure TMainForm.CopiadeEstilo1Click(Sender: TObject);
begin
  FEstiloCopia.ShowModal();
end;

procedure TMainForm.CopiadeModelos1Click(Sender: TObject);
begin
  FModeloCopia.ShowModal();
end;

procedure TMainForm.Corridas1Click(Sender: TObject);
begin
  FCorridasConsulta.Show();
end;

procedure TMainForm.CrearCatlogodesdeinsumos1Click(Sender: TObject);
begin
  FColoresInsumos.ShowModal();
end;

procedure TMainForm.Departamentos1Click(Sender: TObject);
begin
  FDeptosConsulta.Show();
end;

procedure TMainForm.DepartamentosdeNmina1Click(Sender: TObject);
begin
  FDeptoNomConsulta.Show();
end;

procedure TMainForm.E1Click(Sender: TObject);
begin
  FExplosionConsulta.tag := 2;
  FExplosionConsulta.Show();
end;

procedure TMainForm.Elementos1Click(Sender: TObject);
begin
  FElementConsulta.ShowModal();
end;

procedure TMainForm.Empleados1Click(Sender: TObject);
begin
  FEmpsConsulta.Show();
end;

procedure TMainForm.Empleados2Click(Sender: TObject);
begin
  FEmpProdConsulta.Show();
end;

procedure TMainForm.EntradadeEmbarquesTraspasos1Click(Sender: TObject);
begin
  FEntradasConsulta.Show();
end;

procedure TMainForm.Estilos1Click(Sender: TObject);
begin
  fEstilosConsulta.bConsumos.Visible := False;
  FestilosConsulta.bFracc.Visible := False;
  fEstilosConsulta.Show();
end;

procedure TMainForm.ExplosindeMateriales2Click(Sender: TObject);
begin
  FExplosionConsulta.tag := 1;
  FExplosionConsulta.Show();
end;

procedure TMainForm.Familias1Click(Sender: TObject);
begin
  FFamiliasConsulta.Show();
end;

procedure TMainForm.Flujos1Click(Sender: TObject);
begin
  FFlujosConsulta.Show();
end;

procedure TMainForm.FracccionesxModelo1Click(Sender: TObject);
begin
  FModelosConsulta.bNuevo.Visible := False;
  FModelosConsulta.bModificar.Visible := False;
  FModelosConsulta.bEliminar.Visible := False;
  FModelosConsulta.bConsumos.Visible := False;
  FModelosConsulta.bFracc.Visible := True;
  FModelosConsulta.Show();
end;

procedure TMainForm.Fracciones1Click(Sender: TObject);
begin
  FFraccConsulta.Show();
end;

procedure TMainForm.FraccionesxEstilo1Click(Sender: TObject);
begin
  fEstilosConsulta.bNuevo.Visible := False;
  fEstilosConsulta.bModificar.Visible := False;
  fEstilosConsulta.bEliminar.Visible := False;
  fEstilosConsulta.bConsumos.Visible := False;
  FestilosConsulta.bFracc.Visible := True;
  fEstilosConsulta.Show();
end;

procedure TMainForm.Hormas1Click(Sender: TObject);
begin
  FHormasConsulta.Show();
end;

procedure TMainForm.iendas1Click(Sender: TObject);
begin
  FTiendaConsulta.Show();
end;

procedure TMainForm.Inicial1Click(Sender: TObject);
begin
  FInventarioFisicoCatalogo.ShowModal();
end;

procedure TMainForm.Insumos1Click(Sender: TObject);
begin
  FInsumosConsulta.ShowModal();
end;

procedure TMainForm.InventariodeTiendasGeneral1Click(Sender: TObject);
begin
  FInventarioTdasGralDlg.ShowModal();
end;

procedure TMainForm.Lineas1Click(Sender: TObject);
begin
  FLineasConsulta.Show();
end;

procedure TMainForm.ListadePrecios1Click(Sender: TObject);
begin
  fListaPrecios.Show();
end;

procedure TMainForm.Marcas1Click(Sender: TObject);
begin
  fMarcasConsulta.Show();
end;

procedure TMainForm.Modelos1Click(Sender: TObject);
begin
  FModelosConsulta.bNuevo.Visible := True;
  FModelosConsulta.bModificar.Visible := True;
  FModelosConsulta.bEliminar.Visible := True;
  FModelosConsulta.bConsumos.Visible := False;
  FModelosConsulta.bFracc.Visible := False;
  FModelosConsulta.Show();
end;

procedure TMainForm.Pedidos2Click(Sender: TObject);
begin
  fPEdidosConsulta.Show();
end;

procedure TMainForm.PedidosCliente1Click(Sender: TObject);
begin
  ReqConsController.TReqCons.New.Free;
end;

procedure TMainForm.Programacin1Click(Sender: TObject);
begin
  uProgSimpleController.TProgSimple.New.Free;
end;

procedure TMainForm.Proveedores1Click(Sender: TObject);
begin
  fProvsConsulta.Show();
end;

procedure TMainForm.Puestos1Click(Sender: TObject);
begin
  FPuestosConsulta.Show();
end;

procedure TMainForm.raspasoentretiendas1Click(Sender: TObject);
begin
  FEmbarqueConsulta.Show();
end;

procedure TMainForm.raspasoentretiendas2Click(Sender: TObject);
begin
  FTraspasosConsulta.Show();
end;

procedure TMainForm.RegistrodeDocumentos1Click(Sender: TObject);
begin
  FCxcCatalogo.ShowModal();
end;

procedure TMainForm.RegistrodeMovimientos1Click(Sender: TObject);
begin
  FCxcDetCatalogo.ShowModal();
end;

procedure TMainForm.Resurtidos1Click(Sender: TObject);
begin
  FResurtidos.ShowModal();
end;

procedure TMainForm.Unidades1Click(Sender: TObject);
begin
  FUnidadesConsulta.Show();
end;

procedure TMainForm.Usuarios1Click(Sender: TObject);
begin
  FUsrConsulta.show();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
