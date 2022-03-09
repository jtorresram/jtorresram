object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 436
  ClientWidth = 825
  Caption = 'MainForm'
  WindowState = wsMaximized
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  PixelsPerInch = 96
  TextHeight = 13
  object UniMainMenu1: TUniMainMenu
    AutoMerge = True
    AlwaysOnTop = True
    Left = 64
    Top = 32
    object Catlogos1: TUniMenuItem
      Caption = 'Cat'#225'logos'
      object Empleados1: TUniMenuItem
        Caption = 'Empleados'
        OnClick = Empleados1Click
      end
      object iendas1: TUniMenuItem
        Caption = 'Tiendas'
        OnClick = iendas1Click
      end
      object CajasxTienda1: TUniMenuItem
        Caption = 'Cajas x Tienda'
        OnClick = CajasxTienda1Click
      end
      object Clientes1: TUniMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Proveedores1: TUniMenuItem
        Caption = 'Proveedores'
        OnClick = Proveedores1Click
      end
      object N2: TUniMenuItem
        Caption = '-'
      end
      object Unidades1: TUniMenuItem
        Caption = 'Unidades'
        OnClick = Unidades1Click
      end
      object Lineas1: TUniMenuItem
        Caption = 'Lineas'
        OnClick = Lineas1Click
      end
      object Marcas1: TUniMenuItem
        Caption = 'Marcas'
        OnClick = Marcas1Click
      end
      object Clasificaciones1: TUniMenuItem
        Caption = 'Clasificaciones'
        OnClick = Clasificaciones1Click
      end
      object Corridas1: TUniMenuItem
        Caption = 'Corridas'
        OnClick = Corridas1Click
      end
      object N10: TUniMenuItem
        Caption = '-'
      end
      object CrearCatlogodesdeinsumos1: TUniMenuItem
        Caption = 'Cat'#225'logo Colores desde insumos'
        OnClick = CrearCatlogodesdeinsumos1Click
      end
      object Colores1: TUniMenuItem
        Caption = 'Pieles - Colores'
        OnClick = Colores1Click
      end
      object N6: TUniMenuItem
        Caption = '-'
      end
      object Modelos2: TUniMenuItem
        Caption = 'Modelos'
        object Modelos1: TUniMenuItem
          Caption = 'Modelos'
          OnClick = Modelos1Click
        end
        object CopiadeModelos1: TUniMenuItem
          Caption = 'Copia de Modelo'
          OnClick = CopiadeModelos1Click
        end
      end
      object Estilos2: TUniMenuItem
        Caption = 'Estilos'
        object Estilos1: TUniMenuItem
          Caption = 'Estilos'
          OnClick = Estilos1Click
        end
        object CopiadeEstilo1: TUniMenuItem
          Caption = 'Copia de Estilo'
          OnClick = CopiadeEstilo1Click
        end
      end
      object N7: TUniMenuItem
        Caption = '-'
      end
      object ListadePrecios1: TUniMenuItem
        Caption = 'Lista de Precios'
        OnClick = ListadePrecios1Click
      end
      object Acceso1: TUniMenuItem
        Caption = 'Acceso'
        object Usuarios1: TUniMenuItem
          Caption = 'Usuarios'
          OnClick = Usuarios1Click
        end
        object Permisos1: TUniMenuItem
          Caption = 'Permisos'
        end
      end
    end
    object iendas2: TUniMenuItem
      Caption = 'Tiendas'
      HideOnClick = False
      object Compras1: TUniMenuItem
        Caption = 'Surtido a Tiendas'
        object Pedidos2: TUniMenuItem
          Caption = 'Pedidos y Entradas a Bodega'
          OnClick = Pedidos2Click
        end
        object Resurtidos1: TUniMenuItem
          Caption = 'Resurtidos'
          OnClick = Resurtidos1Click
        end
      end
      object Inventarios1: TUniMenuItem
        Caption = 'Inventarios'
        object raspasoentretiendas1: TUniMenuItem
          Caption = 'Embarque Bodega a Tienda'
          OnClick = raspasoentretiendas1Click
        end
        object raspasoentretiendas2: TUniMenuItem
          Caption = 'Traspaso entre tiendas'
          OnClick = raspasoentretiendas2Click
        end
        object EntradadeEmbarquesTraspasos1: TUniMenuItem
          Caption = 'Entrada de Embarque '#243' Traspaso'
          OnClick = EntradadeEmbarquesTraspasos1Click
        end
        object N3: TUniMenuItem
          Caption = '-'
        end
        object Inventario1: TUniMenuItem
          Caption = 'Inventario'
          object Inicial1: TUniMenuItem
            Caption = 'Inicial'
            OnClick = Inicial1Click
          end
          object Fsico1: TUniMenuItem
            Caption = 'F'#237'sico'
          end
        end
        object N1: TUniMenuItem
          Caption = '-'
        end
        object ConsultadeInventario1: TUniMenuItem
          Caption = 'Consulta de Inventario x Tienda'
          OnClick = ConsultadeInventario1Click
        end
        object ConsultadeInventario21: TUniMenuItem
          Caption = 'Consulta de Inventario General'
          OnClick = ConsultadeInventario21Click
        end
      end
      object Reportes1: TUniMenuItem
        Caption = 'Reportes'
        object InventariodeTiendasGeneral1: TUniMenuItem
          Caption = 'Inventario de Tiendas'
          OnClick = InventariodeTiendasGeneral1Click
        end
      end
    end
    object esorera1: TUniMenuItem
      Caption = 'Tesorer'#237'a'
      object CuentasxCobrar1: TUniMenuItem
        Caption = 'Cuentas x Cobrar'
        object ConceptosCxC1: TUniMenuItem
          Caption = 'Conceptos CxC'
          OnClick = ConceptosCxC1Click
        end
        object RegistrodeDocumentos1: TUniMenuItem
          Caption = 'Registro de Documentos'
          OnClick = RegistrodeDocumentos1Click
        end
        object RegistrodeMovimientos1: TUniMenuItem
          Caption = 'Registro de Movimientos'
          OnClick = RegistrodeMovimientos1Click
        end
      end
      object CuentasxPagar1: TUniMenuItem
        Caption = 'Cuentas x Pagar'
      end
    end
    object Pedidos1: TUniMenuItem
      Caption = 'Producci'#243'n'
      object Catlogos4: TUniMenuItem
        Caption = 'Cat'#225'logos'
        object Departamentos1: TUniMenuItem
          Caption = 'Departamentos'
          OnClick = Departamentos1Click
        end
        object Flujos1: TUniMenuItem
          Caption = 'Flujos'
          OnClick = Flujos1Click
        end
        object Hormas1: TUniMenuItem
          Caption = 'Hormas'
          OnClick = Hormas1Click
        end
      end
      object PedidosCliente1: TUniMenuItem
        Caption = 'Pedidos Clientes'
        OnClick = PedidosCliente1Click
      end
      object Programacin1: TUniMenuItem
        Caption = 'Programaci'#243'n'
        OnClick = Programacin1Click
      end
      object ExplosindeMateriales1: TUniMenuItem
        Caption = 'Explosi'#243'n de Materiales'
        object ExplosindeMateriales2: TUniMenuItem
          Caption = 'Explosi'#243'n x Estilo'
          OnClick = ExplosindeMateriales2Click
        end
        object E1: TUniMenuItem
          Caption = 'Explosi'#243'n x Insumo'
          OnClick = E1Click
        end
      end
    end
    object Consumos1: TUniMenuItem
      Caption = 'Consumos'
      object Catlogos2: TUniMenuItem
        Caption = 'Cat'#225'logos'
        object ClasificacindeElementos1: TUniMenuItem
          Caption = 'Clasificaci'#243'n de Elementos'
          OnClick = ClasificacindeElementos1Click
        end
        object Elementos1: TUniMenuItem
          Caption = 'Elementos'
          OnClick = Elementos1Click
        end
        object N5: TUniMenuItem
          Caption = '-'
        end
      end
      object ConsumosxModelo1: TUniMenuItem
        Caption = 'Consumos x Modelo'
        OnClick = ConsumosxModelo1Click
      end
      object ConsumosxEstilo1: TUniMenuItem
        Caption = 'Consumos x Estilo'
        OnClick = ConsumosxEstilo1Click
      end
    end
    object Destajos1: TUniMenuItem
      Caption = 'Destajos'
      object Catlogos5: TUniMenuItem
        Caption = 'Cat'#225'logos'
        object DepartamentosdeNmina1: TUniMenuItem
          Caption = 'Departamentos de N'#243'mina'
          OnClick = DepartamentosdeNmina1Click
        end
        object Puestos1: TUniMenuItem
          Caption = 'Puestos'
          OnClick = Puestos1Click
        end
        object Empleados2: TUniMenuItem
          Caption = 'Empleados'
          OnClick = Empleados2Click
        end
      end
      object N9: TUniMenuItem
        Caption = '-'
      end
      object Fracciones1: TUniMenuItem
        Caption = 'Fracciones'
        OnClick = Fracciones1Click
      end
      object FracccionesxModelo1: TUniMenuItem
        Caption = 'Fracciones x Modelo'
        OnClick = FracccionesxModelo1Click
      end
      object FraccionesxEstilo1: TUniMenuItem
        Caption = 'Fracciones x Estilo'
        OnClick = FraccionesxEstilo1Click
      end
      object N4: TUniMenuItem
        Caption = '-'
      end
      object CapturarDestajos1: TUniMenuItem
        Caption = 'Capturar Destajos'
      end
    end
    object Catlogos3: TUniMenuItem
      Caption = 'Insumos'
      object Insumos1: TUniMenuItem
        Caption = 'Insumos'
        OnClick = Insumos1Click
      end
      object N8: TUniMenuItem
        Caption = '-'
      end
      object Familias1: TUniMenuItem
        Caption = 'Familias, Tipos y Grupos'
        OnClick = Familias1Click
      end
    end
  end
end
