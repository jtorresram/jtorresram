object FDM: TFDM
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 672
  Width = 1282
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\PROYECTOS\CAZ\CAZ.FDB'
      'User_Name=SYSDBA'
      'Password=SagJtr76.'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 24
  end
  object FDTransaction1: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = FDConnection1
    Left = 80
  end
  object qTiendas: TFDQuery
    OnNewRecord = qTiendasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    SQL.Strings = (
      'Select * from Tiendas')
    Left = 144
    object qTiendasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTiendasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
    object qTiendasRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Required = True
      Size = 50
    end
    object qTiendasRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
      Required = True
      Size = 18
    end
    object qTiendasZONA: TSmallintField
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Required = True
    end
    object qTiendasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Required = True
      Size = 50
    end
    object qTiendasCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Required = True
      Size = 50
    end
    object qTiendasCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      Required = True
      Size = 60
    end
    object qTiendasESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 60
    end
    object qTiendasTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
      Required = True
      Size = 21
    end
    object qTiendasES_BODEGA: TBooleanField
      FieldName = 'ES_BODEGA'
      Origin = 'ES_BODEGA'
      Required = True
    end
    object qTiendasLISTA: TSmallintField
      FieldName = 'LISTA'
      Origin = 'LISTA'
      Required = True
    end
    object qTiendasPORCENT_INCRE: TCurrencyField
      FieldName = 'PORCENT_INCRE'
      Origin = 'PORCENT_INCRE'
      Required = True
    end
    object qTiendasNUMPEDIDO: TIntegerField
      FieldName = 'NUMPEDIDO'
      Origin = 'NUMPEDIDO'
      Required = True
    end
    object qTiendasFEC_ULTINV: TDateField
      FieldName = 'FEC_ULTINV'
      Origin = 'FEC_ULTINV'
    end
    object qTiendasIMPUESTO: TBooleanField
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      Required = True
    end
  end
  object Query1: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    Left = 8
    Top = 48
  end
  object qLineas: TFDQuery
    OnNewRecord = qLineasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Lineas')
    Left = 192
    object qLineasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLineasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
  end
  object qMarcas: TFDQuery
    OnNewRecord = qMarcasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Marcas')
    Left = 240
    object qMarcasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMarcasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object qClasifi: TFDQuery
    OnNewRecord = qClasifiNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Clasifi')
    Left = 288
    object qClasifiCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qClasifiNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 25
    end
  end
  object qColores: TFDQuery
    OnNewRecord = qColoresNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Colores')
    Left = 336
    object qColoresCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qColoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 40
    end
  end
  object qCorridas: TFDQuery
    OnNewRecord = qCorridasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Corridas')
    Left = 384
    object qCorridasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCorridasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
    object qCorridasTOTPUN: TSmallintField
      DisplayLabel = 'TOT PUNTOS'
      FieldName = 'TOTPUN'
      Origin = 'TOTPUN'
      Required = True
    end
    object qCorridasDESC01: TStringField
      FieldName = 'DESC01'
      Origin = 'DESC01'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC02: TStringField
      FieldName = 'DESC02'
      Origin = 'DESC02'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC03: TStringField
      FieldName = 'DESC03'
      Origin = 'DESC03'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC04: TStringField
      FieldName = 'DESC04'
      Origin = 'DESC04'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC05: TStringField
      FieldName = 'DESC05'
      Origin = 'DESC05'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC06: TStringField
      FieldName = 'DESC06'
      Origin = 'DESC06'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC07: TStringField
      FieldName = 'DESC07'
      Origin = 'DESC07'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC08: TStringField
      FieldName = 'DESC08'
      Origin = 'DESC08'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC09: TStringField
      FieldName = 'DESC09'
      Origin = 'DESC09'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC10: TStringField
      FieldName = 'DESC10'
      Origin = 'DESC10'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC11: TStringField
      FieldName = 'DESC11'
      Origin = 'DESC11'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC12: TStringField
      FieldName = 'DESC12'
      Origin = 'DESC12'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC13: TStringField
      FieldName = 'DESC13'
      Origin = 'DESC13'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC14: TStringField
      FieldName = 'DESC14'
      Origin = 'DESC14'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC15: TStringField
      FieldName = 'DESC15'
      Origin = 'DESC15'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC16: TStringField
      FieldName = 'DESC16'
      Origin = 'DESC16'
      FixedChar = True
      Size = 4
    end
    object qCorridasDESC17: TStringField
      FieldName = 'DESC17'
      Origin = 'DESC17'
      FixedChar = True
      Size = 4
    end
    object qCorridasINCREMENTO: TSmallintField
      FieldName = 'INCREMENTO'
      Origin = 'INCREMENTO'
      Required = True
    end
    object qCorridasV01: TStringField
      FieldName = 'V01'
      Origin = 'V01'
      FixedChar = True
      Size = 3
    end
    object qCorridasV02: TStringField
      FieldName = 'V02'
      Origin = 'V02'
      Size = 3
    end
    object qCorridasV03: TStringField
      FieldName = 'V03'
      Origin = 'V03'
      Size = 3
    end
    object qCorridasV04: TStringField
      FieldName = 'V04'
      Origin = 'V04'
      Size = 3
    end
    object qCorridasV05: TStringField
      FieldName = 'V05'
      Origin = 'V05'
      Size = 3
    end
    object qCorridasV06: TStringField
      FieldName = 'V06'
      Origin = 'V06'
      Size = 3
    end
    object qCorridasV07: TStringField
      FieldName = 'V07'
      Origin = 'V07'
      Size = 3
    end
    object qCorridasV08: TStringField
      FieldName = 'V08'
      Origin = 'V08'
      Size = 3
    end
    object qCorridasV09: TStringField
      FieldName = 'V09'
      Origin = 'V09'
      Size = 3
    end
    object qCorridasV10: TStringField
      FieldName = 'V10'
      Origin = 'V10'
      Size = 3
    end
    object qCorridasV11: TStringField
      FieldName = 'V11'
      Origin = 'V11'
      Size = 3
    end
    object qCorridasV12: TStringField
      FieldName = 'V12'
      Origin = 'V12'
      Size = 3
    end
    object qCorridasV13: TStringField
      FieldName = 'V13'
      Origin = 'V13'
      Size = 3
    end
    object qCorridasV14: TStringField
      FieldName = 'V14'
      Origin = 'V14'
      Size = 3
    end
    object qCorridasV15: TStringField
      FieldName = 'V15'
      Origin = 'V15'
      Size = 3
    end
    object qCorridasV16: TStringField
      FieldName = 'V16'
      Origin = 'V16'
      Size = 3
    end
    object qCorridasV17: TStringField
      FieldName = 'V17'
      Origin = 'V17'
      Size = 3
    end
    object qCorridasDEF01: TSmallintField
      FieldName = 'DEF01'
      Origin = 'DEF01'
    end
    object qCorridasDEF02: TSmallintField
      FieldName = 'DEF02'
      Origin = 'DEF02'
    end
    object qCorridasDEF03: TSmallintField
      FieldName = 'DEF03'
      Origin = 'DEF03'
    end
    object qCorridasDEF04: TSmallintField
      FieldName = 'DEF04'
      Origin = 'DEF04'
    end
    object qCorridasDEF05: TSmallintField
      FieldName = 'DEF05'
      Origin = 'DEF05'
    end
    object qCorridasDEF06: TSmallintField
      FieldName = 'DEF06'
      Origin = 'DEF06'
    end
    object qCorridasDEF07: TSmallintField
      FieldName = 'DEF07'
      Origin = 'DEF07'
    end
    object qCorridasDEF08: TSmallintField
      FieldName = 'DEF08'
      Origin = 'DEF08'
    end
    object qCorridasDEF09: TSmallintField
      FieldName = 'DEF09'
      Origin = 'DEF09'
    end
    object qCorridasDEF10: TSmallintField
      FieldName = 'DEF10'
      Origin = 'DEF10'
    end
    object qCorridasDEF11: TSmallintField
      FieldName = 'DEF11'
      Origin = 'DEF11'
    end
    object qCorridasDEF12: TSmallintField
      FieldName = 'DEF12'
      Origin = 'DEF12'
    end
    object qCorridasDEF13: TSmallintField
      FieldName = 'DEF13'
      Origin = 'DEF13'
    end
    object qCorridasDEF14: TSmallintField
      FieldName = 'DEF14'
      Origin = 'DEF14'
    end
    object qCorridasDEF15: TSmallintField
      FieldName = 'DEF15'
      Origin = 'DEF15'
    end
    object qCorridasDEF16: TSmallintField
      FieldName = 'DEF16'
      Origin = 'DEF16'
    end
    object qCorridasDEF17: TSmallintField
      FieldName = 'DEF17'
      Origin = 'DEF17'
    end
  end
  object qEstilos: TFDQuery
    AfterOpen = qEstilosAfterOpen
    AfterClose = qEstilosAfterClose
    BeforePost = qEstilosBeforePost
    OnNewRecord = qEstilosNewRecord
    MasterSource = dsModelos
    MasterFields = 'MODELO'
    DetailFields = 'MODELO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select '
      '    estilos.estilo,'
      '    estilos.modelo,'
      '    estilos.corrida,'
      '    corridas.nombre corrida_descr,'
      '    estilos.color,'
      '    colores.nombre color_desr,'
      '    estilos.nombre,'
      '    estilos.codprov,'
      '    estilos.es_saldo,'
      '    estilos.obs,'
      '    estilos.costo,'
      '    estilos.menudeo,'
      '    estilos.medio_mayoreo,'
      '    estilos.mayoreo,'
      '    estilos.foranea,'
      '    estilos.feccambiopre,'
      '    estilos.imagen,'
      '    estilos.existencia,'
      '    estilos.activo,'
      '    estilos.feccambio,'
      '    estilos.linea,'
      '    estilos.marca,'
      '    estilos.genero,'
      '    estilos.clasifi'
      'from estilos'
      
        '   left outer join corridas on (estilos.corrida = corridas.codig' +
        'o)'
      '   left outer join colores on (estilos.color = colores.codigo)'
      'where estilos.Modelo like :Modelo')
    Left = 432
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 11
        Value = '%%'
      end>
    object qEstilosESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qEstilosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object qEstilosCORRIDA: TSmallintField
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      Required = True
    end
    object qEstilosCORRIDA_DESCR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CORRIDA_DESCR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qEstilosCOLOR: TSmallintField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
    object qEstilosCOLOR_DESR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COLOR_DESR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qEstilosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qEstilosCODPROV: TSmallintField
      FieldName = 'CODPROV'
      Origin = 'CODPROV'
    end
    object qEstilosES_SALDO: TBooleanField
      FieldName = 'ES_SALDO'
      Origin = 'ES_SALDO'
      Required = True
    end
    object qEstilosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object qEstilosCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object qEstilosMENUDEO: TSingleField
      FieldName = 'MENUDEO'
      Origin = 'MENUDEO'
    end
    object qEstilosMEDIO_MAYOREO: TSingleField
      FieldName = 'MEDIO_MAYOREO'
      Origin = 'MEDIO_MAYOREO'
    end
    object qEstilosMAYOREO: TSingleField
      FieldName = 'MAYOREO'
      Origin = 'MAYOREO'
    end
    object qEstilosFORANEA: TSingleField
      FieldName = 'FORANEA'
      Origin = 'FORANEA'
    end
    object qEstilosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      Origin = 'IMAGEN'
    end
    object qEstilosEXISTENCIA: TSmallintField
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      Required = True
    end
    object qEstilosACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
    end
    object qEstilosFECCAMBIOPRE: TDateField
      FieldName = 'FECCAMBIOPRE'
      Origin = 'FECCAMBIOPRE'
    end
    object qEstilosFECCAMBIO: TDateField
      FieldName = 'FECCAMBIO'
      Origin = 'FECCAMBIO'
    end
    object qEstilosLINEA: TSmallintField
      FieldName = 'LINEA'
      Origin = 'LINEA'
      Required = True
    end
    object qEstilosMARCA: TSmallintField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Required = True
    end
    object qEstilosGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
      Required = True
      Size = 10
    end
    object qEstilosCLASIFI: TSmallintField
      FieldName = 'CLASIFI'
      Origin = 'CLASIFI'
      Required = True
    end
  end
  object qModelos: TFDQuery
    OnNewRecord = qModelosNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from modelos')
    Left = 480
    object qModelosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 11
    end
    object qModelosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
    object qModelosUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qModelosRECIO: TStringField
      FieldName = 'RECIO'
      Origin = 'RECIO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qModelosCORRIDA: TSmallintField
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      Required = True
    end
    object qModelosLINEA: TSmallintField
      FieldName = 'LINEA'
      Origin = 'LINEA'
      Required = True
    end
    object qModelosMARCA: TSmallintField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Required = True
    end
    object qModelosGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENERO'
      Required = True
      Size = 10
    end
    object qModelosACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
    end
    object qModelosFLUJO: TSmallintField
      FieldName = 'FLUJO'
      Origin = 'FLUJO'
      Required = True
    end
    object qModelosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      Origin = 'IMAGEN'
    end
    object qModelosCLASIFI: TSmallintField
      FieldName = 'CLASIFI'
      Origin = 'CLASIFI'
      Required = True
    end
    object qModelosHORMA: TSmallintField
      FieldName = 'HORMA'
      Origin = 'HORMA'
      Required = True
    end
    object qModelosCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
    end
    object qModelosPRECIO: TSingleField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object qModelosCAPTURA: TStringField
      FieldName = 'CAPTURA'
      Origin = 'CAPTURA'
      Required = True
      FixedChar = True
      Size = 6
    end
    object qModelosLK_CORRIDA: TStringField
      DisplayLabel = 'CORRIDA'
      FieldKind = fkLookup
      FieldName = 'LK_CORRIDA'
      LookupDataSet = qCorridas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'CORRIDA'
      Lookup = True
    end
  end
  object dsColores: TDataSource
    DataSet = qColores
    Left = 336
    Top = 48
  end
  object dsEstilos: TDataSource
    DataSet = qEstilos
    Left = 432
    Top = 48
  end
  object dsModelos: TDataSource
    AutoEdit = False
    DataSet = qModelos
    Left = 480
    Top = 48
  end
  object dsCorridas: TDataSource
    DataSet = qCorridas
    Left = 384
    Top = 48
  end
  object dsClasi: TDataSource
    DataSet = qClasifi
    Left = 288
    Top = 48
  end
  object dsMarcas: TDataSource
    DataSet = qMarcas
    Left = 240
    Top = 48
  end
  object dsLineas: TDataSource
    DataSet = qLineas
    Left = 192
    Top = 48
  end
  object dsTiendas: TDataSource
    DataSet = qTiendas
    Left = 144
    Top = 48
  end
  object qPed: TFDQuery
    BeforePost = qPedBeforePost
    OnNewRecord = qPedNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from pedidos'
      'where fecha between :pfecha1 and :pfecha2')
    Left = 24
    Top = 195
    ParamData = <
      item
        Name = 'PFECHA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PFECHA2'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qPedTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedCODPROV: TSmallintField
      FieldName = 'CODPROV'
      Origin = 'CODPROV'
      Required = True
    end
    object qPedPROVEEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'PROVEEDOR'
      LookupDataSet = qProvsProd
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'CODPROV'
      Size = 50
      Lookup = True
    end
    object qPedFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qPedCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qPedTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qPedESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      OnGetText = qPedESTATUSGetText
      FixedChar = True
      Size = 1
    end
    object qPedENTREGA_INI: TDateField
      FieldName = 'ENTREGA_INI'
      Origin = 'ENTREGA_INI'
      Required = True
    end
    object qPedENTREGA_FIN: TDateField
      FieldName = 'ENTREGA_FIN'
      Origin = 'ENTREGA_FIN'
      Required = True
    end
    object qPedFLETE: TStringField
      FieldName = 'FLETE'
      Origin = 'FLETE'
      Size = 40
    end
    object qPedOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object qPedFECENTRADA: TDateField
      FieldName = 'FECENTRADA'
      Origin = 'FECENTRADA'
    end
    object qPedENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
  end
  object qPedDet: TFDQuery
    BeforePost = qPedDetBeforePost
    OnNewRecord = qPedDetNewRecord
    AggregatesActive = True
    MasterSource = dsPed
    MasterFields = 'TIENDA;FOLIO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from pedidosdet'
      'where Tienda=:Tienda and Folio=:Folio')
    Left = 64
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qPedDetTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPedDetCODCORRIDA: TSmallintField
      FieldName = 'CODCORRIDA'
      Origin = 'CODCORRIDA'
      Required = True
    end
    object qPedDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qPedDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qPedDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qPedDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qPedDetESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qPedDetENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
    object qPedDetTOTCANTIDAD: TAggregateField
      FieldName = 'TOTCANTIDAD'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(CANTIDAD)'
    end
    object qPedDetTOTENTRADA: TAggregateField
      FieldName = 'TOTENTRADA'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(ENTRADA)'
    end
    object qPedDetTOTIMPORTE: TAggregateField
      FieldName = 'TOTIMPORTE'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
  end
  object qPedRen: TFDQuery
    OnNewRecord = qPedRenNewRecord
    MasterSource = dsPedDet
    MasterFields = 'TIENDA;FOLIO;PARTIDA'
    DetailFields = 'TIENDA;FOLIO;PARTIDA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from pedidosren'
      'where Tienda=:Tienda '
      '  and Folio=:Folio '
      '  and Partida=:Partida')
    Left = 112
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PARTIDA'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qPedRenTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedRenFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedRenPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedRenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedRenCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qPedRenENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
  end
  object dsPed: TDataSource
    DataSet = qPed
    Left = 24
    Top = 243
  end
  object dsPedDet: TDataSource
    DataSet = qPedDet
    Left = 64
    Top = 243
  end
  object qProvs: TFDQuery
    OnNewRecord = qProvsNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Provs')
    Left = 528
    object qProvsCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProvsNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qProvsTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qProvsRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qProvsREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Required = True
      Size = 40
    end
    object qProvsDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 30
    end
    object qProvsCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 30
    end
    object qProvsCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      Required = True
      Size = 30
    end
    object qProvsESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 30
    end
    object qProvsTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
      Size = 30
    end
    object qProvsMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 30
    end
    object qProvsWEB: TStringField
      FieldName = 'WEB'
      Origin = 'WEB'
      Size = 30
    end
    object qProvsCREDITO_DIAS: TSmallintField
      FieldName = 'CREDITO_DIAS'
      Origin = 'CREDITO_DIAS'
      Required = True
    end
    object qProvsCREDITO_LIMITE: TSingleField
      FieldName = 'CREDITO_LIMITE'
      Origin = 'CREDITO_LIMITE'
      Required = True
    end
    object qProvsSALDO: TSingleField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
    end
  end
  object dsProvs: TDataSource
    DataSet = qProvs
    Left = 528
    Top = 48
  end
  object qProvsProd: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'Select * from provs'
      'where tipo = '#39'PRODUCTOS'#39)
    Left = 168
    Top = 195
    object qProvsProdCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProvsProdNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qProvsProdTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qProvsProdRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qProvsProdREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Required = True
      Size = 40
    end
    object qProvsProdDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 30
    end
    object qProvsProdCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 30
    end
    object qProvsProdCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      Required = True
      Size = 30
    end
    object qProvsProdESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 30
    end
    object qProvsProdTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
      Size = 30
    end
    object qProvsProdMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 30
    end
    object qProvsProdWEB: TStringField
      FieldName = 'WEB'
      Origin = 'WEB'
      Size = 30
    end
    object qProvsProdCREDITO_DIAS: TSmallintField
      FieldName = 'CREDITO_DIAS'
      Origin = 'CREDITO_DIAS'
      Required = True
    end
    object qProvsProdCREDITO_LIMITE: TSingleField
      FieldName = 'CREDITO_LIMITE'
      Origin = 'CREDITO_LIMITE'
      Required = True
    end
    object qProvsProdSALDO: TSingleField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
    end
  end
  object dsqProvsProd: TDataSource
    AutoEdit = False
    DataSet = qProvsProd
    Left = 168
    Top = 243
  end
  object qCtes: TFDQuery
    OnNewRecord = qCtesNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from ctes')
    Left = 576
    object qCtesCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCtesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qCtesEMPLEADO: TBooleanField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Required = True
    end
    object qCtesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qCtesRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qCtesREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Required = True
      Size = 40
    end
    object qCtesDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 30
    end
    object qCtesCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 30
    end
    object qCtesCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      Required = True
      Size = 30
    end
    object qCtesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 30
    end
    object qCtesTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
      Size = 30
    end
    object qCtesMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 30
    end
    object qCtesWEB: TStringField
      FieldName = 'WEB'
      Origin = 'WEB'
      Size = 30
    end
    object qCtesCREDITO_DIAS: TSmallintField
      FieldName = 'CREDITO_DIAS'
      Origin = 'CREDITO_DIAS'
      Required = True
    end
    object qCtesCREDITO_LIMITE: TFMTBCDField
      FieldName = 'CREDITO_LIMITE'
      Origin = 'CREDITO_LIMITE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCtesSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsCtes: TDataSource
    DataSet = qCtes
    Left = 576
    Top = 48
  end
  object dsModeloBuscar: TDataSource
    DataSet = qModeloBuscar
    Left = 768
    Top = 520
  end
  object qModeloBuscar: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select e.estilo, e.nombre, e.modelo, '
      '  e.corrida, c.nombre nom_corrida,'
      '  e.color, s.nombre nom_color,'
      '  costo, menudeo'
      'from estilos e'
      'left outer join corridas c on c.codigo=e.corrida'
      'left outer join colores s on s.codigo=e.color'
      'where e.modelo like :modelo')
    Left = 768
    Top = 472
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftString
        ParamType = ptInput
        Size = 7
        Value = Null
      end>
    object qModeloBuscarESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qModeloBuscarNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qModeloBuscarMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object qModeloBuscarCORRIDA: TIntegerField
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      Required = True
    end
    object qModeloBuscarNOM_CORRIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_CORRIDA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qModeloBuscarCOLOR: TSmallintField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
    object qModeloBuscarNOM_COLOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_COLOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qModeloBuscarMENUDEO: TSingleField
      FieldName = 'MENUDEO'
      Origin = 'MENUDEO'
    end
    object qModeloBuscarCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
  end
  object qEmpleados: TFDQuery
    OnNewRecord = qEmpleadosNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Empleados')
    Left = 744
    object qEmpleadosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmpleadosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qEmpleadosDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 30
    end
    object qEmpleadosCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 30
    end
    object qEmpleadosCP: TStringField
      FieldName = 'CP'
      Origin = 'CP'
      FixedChar = True
      Size = 5
    end
    object qEmpleadosCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      Size = 30
    end
    object qEmpleadosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 30
    end
    object qEmpleadosTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
    end
    object qEmpleadosPUESTO: TStringField
      FieldName = 'PUESTO'
      Origin = 'PUESTO'
    end
    object qEmpleadosTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
    end
    object qEmpleadosFECHA_INGRESO: TDateField
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
      Required = True
    end
    object qEmpleadosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
  end
  object dsEmps: TDataSource
    DataSet = qEmpleados
    Left = 744
    Top = 48
  end
  object qInven: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Inventario'
      'where Tienda=:Tienda'
      '  and Estilo=:Estilo'
      '  and Punto=:Punto')
    Left = 672
    Top = 296
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'ESTILO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 16
      end
      item
        Name = 'PUNTO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
    object qInvenTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInvenESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qInvenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInvenEXISTENCIA: TSmallintField
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      Required = True
    end
  end
  object qInvenMovs: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from inven_movs'
      'where 1=1')
    Left = 536
    Top = 296
    object qInvenMovsTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInvenMovsESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qInvenMovsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qInvenMovsFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qInvenMovsTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object qInvenMovsFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      Required = True
    end
    object qInvenMovsCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qInvenMovsEXISTENCIA: TSmallintField
      FieldName = 'EXISTENCIA'
      Required = True
    end
    object qInvenMovsPROMEDIO: TFMTBCDField
      FieldName = 'PROMEDIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qInvenMovsULTIMO: TFMTBCDField
      FieldName = 'ULTIMO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qInvenMovsDet: TFDQuery
    MasterSource = dsInvenMovs
    MasterFields = 'TIENDA;ESTILO;ID'
    DetailFields = 'TIENDA;ESTILO;ID'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from INVEN_MOVS_DET'
      'where TIENDA=:TIENDA'
      '  AND ESTILO=:ESTILO'
      '  AND ID=:ID')
    Left = 608
    Top = 296
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ESTILO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 16
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qInvenMovsDetTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      Required = True
    end
    object qInvenMovsDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qInvenMovsDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInvenMovsDetPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInvenMovsDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qInvenMovsDetEXISTENCIA: TSmallintField
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      Required = True
    end
  end
  object Query2: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    Left = 48
    Top = 48
  end
  object mPrecios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 624
    object mPreciosCODIGO: TByteField
      FieldName = 'CODIGO'
    end
    object mPreciosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 10
    end
  end
  object dsPrecios: TDataSource
    AutoEdit = False
    DataSet = mPrecios
    Left = 624
    Top = 48
  end
  object qTiendasDest: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select t.codigo, t.nombre'
      'from tiendas t'
      'where t.codigo <> :CodTienda'
      '  and es_bodega= False')
    Left = 864
    ParamData = <
      item
        Name = 'CODTIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsTiendasDest: TDataSource
    AutoEdit = False
    DataSet = qTiendasDest
    Left = 864
    Top = 48
  end
  object qInveTienda: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select i.tienda, i.estilo, e.modelo, '
      'e.corrida, c.nombre nom_corrida, e.color, s.nombre nom_color,'
      ' e.costo, e.menudeo, sum(i.existencia) existencia '
      'from inventario i '
      'left outer join estilos e on e.estilo=i.estilo '
      'left outer join corridas c on c.codigo=e.corrida '
      'left outer join colores s on s.codigo=e.color  '
      'group by i.tienda, i.estilo, e.modelo, e.corrida, c.nombre, '
      'e.color, s.nombre, e.costo, e.menudeo ')
    Left = 728
    Top = 296
    object qInveTiendaTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInveTiendaESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qInveTiendaMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object qInveTiendaCORRIDA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveTiendaNOM_CORRIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_CORRIDA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveTiendaCOLOR: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'COLOR'
      Origin = 'COLOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveTiendaNOM_COLOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_COLOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qInveTiendaEXISTENCIA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveTiendaCOSTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COSTO'
      Origin = 'COSTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveTiendaMENUDEO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'MENUDEO'
      Origin = 'MENUDEO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsInveTienda: TDataSource
    AutoEdit = False
    DataSet = qInveTienda
    Left = 728
    Top = 344
  end
  object qTras: TFDQuery
    OnNewRecord = qTrasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from traspasos'
      'where fecha between :pfecha1 and :pfecha2')
    Left = 264
    Top = 195
    ParamData = <
      item
        Name = 'PFECHA1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PFECHA2'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qTrasTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qTrasCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qTrasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTrasTIENDA2: TSmallintField
      FieldName = 'TIENDA2'
      Required = True
    end
    object qTrasFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object qTrasENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Required = True
    end
    object qTrasOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qTrasESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qTrasDet: TFDQuery
    OnNewRecord = qTrasDetNewRecord
    AggregatesActive = True
    MasterSource = dsTras
    MasterFields = 'TIENDA;FOLIO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from TraspasosDet'
      'where Tienda=:Tienda and Folio=:Folio')
    Left = 312
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qTrasDetTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qTrasDetCODCORRIDA: TSmallintField
      FieldName = 'CODCORRIDA'
      Origin = 'CODCORRIDA'
      Required = True
    end
    object qTrasDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTrasDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTrasDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qTrasDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTrasDetESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTrasDetENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Required = True
    end
    object qTrasDetTOTCANTIDAD: TAggregateField
      FieldName = 'TOTCANTIDAD'
      Active = True
      DisplayName = ''
      Expression = 'SUM(CANTIDAD)'
    end
    object qTrasDetTOTIMPORTE: TAggregateField
      FieldName = 'TOTIMPORTE'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
  end
  object qTrasRen: TFDQuery
    OnNewRecord = qTrasRenNewRecord
    MasterSource = dsTrasDet
    MasterFields = 'TIENDA;FOLIO;PARTIDA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from traspasosren'
      'where tienda=:Tienda'
      '  and Folio=:Folio'
      '  and Partida=:Partida')
    Left = 368
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PARTIDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
    object qTrasRenTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasRenFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasRenPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasRenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTrasRenCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qTrasRenENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
  end
  object dsTras: TDataSource
    DataSet = qTras
    Left = 264
    Top = 243
  end
  object dsTrasDet: TDataSource
    DataSet = qTrasDet
    Left = 312
    Top = 243
  end
  object dsInvenMovs: TDataSource
    DataSet = qInvenMovs
    Left = 536
    Top = 344
  end
  object mPuntos: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 472
    Top = 296
    object mPuntosPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
    end
    object mPuntosESTILO: TStringField
      FieldName = 'ESTILO'
      Size = 16
    end
    object mPuntosC01: TStringField
      FieldName = 'C01'
    end
    object mPuntosC02: TStringField
      FieldName = 'C02'
    end
    object mPuntosC03: TStringField
      FieldName = 'C03'
    end
    object mPuntosC04: TStringField
      FieldName = 'C04'
    end
    object mPuntosC05: TStringField
      FieldName = 'C05'
    end
    object mPuntosC06: TStringField
      FieldName = 'C06'
    end
    object mPuntosC07: TStringField
      FieldName = 'C07'
    end
    object mPuntosC08: TStringField
      FieldName = 'C08'
    end
    object mPuntosC09: TStringField
      FieldName = 'C09'
    end
    object mPuntosC10: TStringField
      FieldName = 'C10'
    end
    object mPuntosC11: TStringField
      FieldName = 'C11'
    end
    object mPuntosC12: TStringField
      FieldName = 'C12'
    end
    object mPuntosC13: TStringField
      FieldName = 'C13'
    end
    object mPuntosC14: TStringField
      FieldName = 'C14'
    end
    object mPuntosC15: TStringField
      FieldName = 'C15'
    end
    object mPuntosC16: TStringField
      FieldName = 'C16'
    end
    object mPuntosC17: TStringField
      FieldName = 'C17'
    end
    object mPuntosP01: TSmallintField
      FieldName = 'P01'
    end
    object mPuntosP02: TSmallintField
      FieldName = 'P02'
    end
    object mPuntosP03: TSmallintField
      FieldName = 'P03'
    end
    object mPuntosP04: TSmallintField
      FieldName = 'P04'
    end
    object mPuntosP05: TSmallintField
      FieldName = 'P05'
    end
    object mPuntosP06: TSmallintField
      FieldName = 'P06'
    end
    object mPuntosP07: TSmallintField
      FieldName = 'P07'
    end
    object mPuntosP08: TSmallintField
      FieldName = 'P08'
    end
    object mPuntosP09: TSmallintField
      FieldName = 'P09'
    end
    object mPuntosP10: TSmallintField
      FieldName = 'P10'
    end
    object mPuntosP11: TSmallintField
      FieldName = 'P11'
    end
    object mPuntosP12: TSmallintField
      FieldName = 'P12'
    end
    object mPuntosP13: TSmallintField
      FieldName = 'P13'
    end
    object mPuntosP14: TSmallintField
      FieldName = 'P14'
    end
    object mPuntosP15: TSmallintField
      FieldName = 'P15'
    end
    object mPuntosP16: TSmallintField
      FieldName = 'P16'
    end
    object mPuntosP17: TSmallintField
      FieldName = 'P17'
    end
    object mPuntosPARES: TSmallintField
      FieldName = 'PARES'
    end
    object mPuntosTOTPUN: TSmallintField
      FieldName = 'TOTPUN'
    end
    object mPuntosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 6
    end
    object mPuntosCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 40
    end
    object mPuntosCOSTO: TSingleField
      FieldName = 'COSTO'
    end
    object mPuntosPRECIO: TSingleField
      FieldName = 'PRECIO'
    end
  end
  object qBodegas: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select t.codigo, t.nombre'
      'from tiendas t'
      'where es_bodega= True')
    Left = 928
    object qBodegasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBodegasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
  end
  object dsBodegas: TDataSource
    AutoEdit = False
    DataSet = qBodegas
    Left = 928
    Top = 48
  end
  object qEmbar: TFDQuery
    OnNewRecord = qEmbarNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from embarques'
      'where fecha between :pfecha1 and :pfecha2')
    Left = 448
    Top = 195
    ParamData = <
      item
        Name = 'PFECHA1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'PFECHA2'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qEmbarTIENDA: TSmallintField
      DisplayLabel = 'BODEGA'
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qEmbarCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qEmbarTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qEmbarTIENDA2: TSmallintField
      FieldName = 'TIENDA2'
      Required = True
    end
    object qEmbarFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object qEmbarENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Required = True
    end
    object qEmbarOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qEmbarESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qEmbarDet: TFDQuery
    OnNewRecord = qEmbarDetNewRecord
    AggregatesActive = True
    MasterSource = dsEmbar
    MasterFields = 'TIENDA;FOLIO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from EmbarquesDet'
      'where Tienda=:Tienda and Folio=:Folio')
    Left = 504
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qEmbarDetTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qEmbarDetCODCORRIDA: TSmallintField
      FieldName = 'CODCORRIDA'
      Origin = 'CODCORRIDA'
      Required = True
    end
    object qEmbarDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qEmbarDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qEmbarDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qEmbarDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qEmbarDetESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qEmbarDetENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Required = True
    end
    object qEmbarDetTOTCANTIDAD: TAggregateField
      FieldName = 'TOTCANTIDAD'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(CANTIDAD)'
    end
    object qEmbarDetTOTIMPORTE: TAggregateField
      FieldName = 'TOTIMPORTE'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
  end
  object qEmbarRen: TFDQuery
    OnNewRecord = qTrasRenNewRecord
    MasterSource = dsEmbarDet
    MasterFields = 'TIENDA;FOLIO;PARTIDA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from EmbarquesRen'
      'where Tienda=:Tienda'
      '  and Folio=:Folio'
      '  and Partida=:Partida')
    Left = 568
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PARTIDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
    object qEmbarRenTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarRenFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarRenPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarRenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmbarRenCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qEmbarRenENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
  end
  object dsEmbar: TDataSource
    DataSet = qEmbar
    Left = 448
    Top = 243
  end
  object dsEmbarDet: TDataSource
    DataSet = qEmbarDet
    Left = 504
    Top = 243
  end
  object qInvenTipos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Naturaleza from inven_tipos'
      'where codigo=:codigo')
    Left = 632
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Query3: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    Left = 88
    Top = 48
  end
  object qTransito: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from &Tabla'
      'where estatus = '#39'T'#39)
    Left = 648
    Top = 195
    MacroData = <
      item
        Value = 'embarques'
        Name = 'TABLA'
      end>
    object qTransitoTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTransitoFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTransitoFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qTransitoCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qTransitoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTransitoTIENDA2: TSmallintField
      FieldName = 'TIENDA2'
      Required = True
    end
    object qTransitoFECHA_ENTRADA: TDateField
      FieldName = 'FECHA_ENTRADA'
    end
    object qTransitoENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Required = True
    end
    object qTransitoOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qTransitoESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsTransito: TDataSource
    AutoEdit = False
    DataSet = qTransito
    Left = 648
    Top = 243
  end
  object qTransitoDet: TFDQuery
    AggregatesActive = True
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      
        'select Tienda,Folio,Partida,Estilo,CodCorrida,Costo,Precio,Canti' +
        'dad,Importe,Estatus,Entrada'
      'from &TablaDet'
      'where tienda=:tienda'
      '  and folio=:folio')
    Left = 712
    Top = 195
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    MacroData = <
      item
        Value = 'EmbarquesDet'
        Name = 'TABLADET'
      end>
    object qTransitoDetTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTransitoDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTransitoDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTransitoDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qTransitoDetCODCORRIDA: TSmallintField
      FieldName = 'CODCORRIDA'
      Origin = 'CODCORRIDA'
      Required = True
    end
    object qTransitoDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTransitoDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTransitoDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qTransitoDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qTransitoDetESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qTransitoDetENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Required = True
    end
    object qTransitoDetTOTENTRADA: TAggregateField
      FieldName = 'TOTENTRADA'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(ENTRADA)'
    end
  end
  object dsTransitoDet: TDataSource
    AutoEdit = False
    DataSet = qTransitoDet
    Left = 712
    Top = 243
  end
  object qTiendasOri: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select t.codigo, t.nombre'
      'from tiendas t'
      '  where es_bodega= False')
    Left = 792
    object qTiendasOriCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTiendasOriNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
  end
  object dsTiendasOri: TDataSource
    AutoEdit = False
    DataSet = qTiendasOri
    Left = 792
    Top = 48
  end
  object qCtesPos: TFDQuery
    OnNewRecord = qCtesPosNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Ctes'
      'where Tipo = '#39'MOSTRADOR'#39)
    Left = 24
    Top = 296
    object qCtesPosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCtesPosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qCtesPosEMPLEADO: TBooleanField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Required = True
    end
    object qCtesPosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 9
    end
    object qCtesPosRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qCtesPosREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Required = True
      Size = 40
    end
    object qCtesPosDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 30
    end
    object qCtesPosCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 30
    end
    object qCtesPosCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      Required = True
      Size = 30
    end
    object qCtesPosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 30
    end
    object qCtesPosTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
      Size = 30
    end
    object qCtesPosMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 30
    end
    object qCtesPosWEB: TStringField
      FieldName = 'WEB'
      Origin = 'WEB'
      Size = 30
    end
    object qCtesPosCREDITO_DIAS: TSmallintField
      FieldName = 'CREDITO_DIAS'
      Origin = 'CREDITO_DIAS'
      Required = True
    end
    object qCtesPosCREDITO_LIMITE: TFMTBCDField
      FieldName = 'CREDITO_LIMITE'
      Origin = 'CREDITO_LIMITE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCtesPosSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsCtesPos: TDataSource
    DataSet = qCtesPos
    Left = 24
    Top = 344
  end
  object qVentaPos: TFDQuery
    OnNewRecord = qVentaPosNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from VentasPos'
      'where Tienda=:Tienda'
      '  and Tipo=:Tipo'
      '  and Fecha=:Fecha')
    Left = 160
    Top = 296
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = 'VENTA'
      end
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = 44042d
      end>
    object qVentaPosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVentaPosTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVentaPosFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVentaPosCODCTE: TSmallintField
      FieldName = 'CODCTE'
      Origin = 'CODCTE'
      Required = True
    end
    object qVentaPosCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = qCtes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'CODCTE'
      Size = 50
      Lookup = True
    end
    object qVentaPosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qVentaPosCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qVentaPosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 8
    end
    object qVentaPosTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object qVentaPosDCTO: TFMTBCDField
      FieldName = 'DCTO'
      Origin = 'DCTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qVentaPosIMPUESTO: TFMTBCDField
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qVentaPosNETO: TFMTBCDField
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qVentaPosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object qVentaPosCODLISTAPRE: TSmallintField
      FieldName = 'CODLISTAPRE'
      Origin = 'CODLISTAPRE'
      Required = True
    end
    object qVentaPosFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAPAGO'
      Required = True
    end
    object qVentaPosESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qVentaPosCAJA: TSmallintField
      FieldName = 'CAJA'
      Origin = 'CAJA'
      Required = True
    end
    object qVentaPosAPARTADOSALIDA: TBooleanField
      FieldName = 'APARTADOSALIDA'
      Origin = 'APARTADOSALIDA'
      Required = True
    end
  end
  object qVentasPosDet: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from VentasPosDet'
      'where Id=:Id')
    Left = 232
    Top = 296
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qVentasPosDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVentasPosDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVentasPosDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      Size = 16
    end
    object qVentasPosDetPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      Required = True
    end
    object qVentasPosDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qVentasPosDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qVentasPosDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qVentasPosDetDCTO: TFMTBCDField
      FieldName = 'DCTO'
      Origin = 'DCTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qVentasPosDetIMPORTE2: TFMTBCDField
      FieldName = 'IMPORTE2'
      Origin = 'IMPORTE2'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qVentasPosDetTALLA: TStringField
      FieldName = 'TALLA'
      Origin = 'TALLA'
      FixedChar = True
      Size = 4
    end
  end
  object dsVentasPos: TDataSource
    DataSet = qVentaPos
    Left = 160
    Top = 344
  end
  object mFormasPago: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 88
    Top = 296
    object mFormasPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
  end
  object mTiposPos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 88
    Top = 344
    object mTiposPosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 8
    end
  end
  object dsVentasPosDet: TDataSource
    DataSet = qVentasPosDet
    Left = 232
    Top = 344
  end
  object mVentasDet: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    AggregatesActive = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 312
    Top = 296
    object mVentasDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Required = True
    end
    object mVentasDetESTILO: TStringField
      FieldName = 'ESTILO'
      Required = True
      Size = 16
    end
    object mVentasDetPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Required = True
    end
    object mVentasDetTALLA: TStringField
      FieldName = 'TALLA'
      Size = 4
    end
    object mVentasDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object mVentasDetCANTIORI: TSmallintField
      FieldName = 'CANTIORI'
    end
    object mVentasDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Size = 2
    end
    object mVentasDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 18
      Size = 2
    end
    object mVentasDetDCTO: TFMTBCDField
      FieldName = 'DCTO'
      Precision = 18
      Size = 2
    end
    object mVentasDetIMPORTE2: TFMTBCDField
      FieldName = 'IMPORTE2'
      Precision = 18
      Size = 2
    end
    object mVentasDetDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object mVentasDetTOTIMPORTE: TAggregateField
      FieldName = 'TOTIMPORTE'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
    object mVentasDetTODCTO: TAggregateField
      FieldName = 'TODCTO'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(DCTO)'
    end
  end
  object dsmVentasDet: TDataSource
    DataSet = mVentasDet
    Left = 312
    Top = 344
  end
  object qCajas: TFDQuery
    OnNewRecord = qCajasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Cajas')
    Left = 64
    Top = 104
    object qCajasTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCajasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCajasESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsCajas: TDataSource
    DataSet = qCajas
    Left = 64
    Top = 152
  end
  object qCxc_Conce: TFDQuery
    OnNewRecord = qCxc_ConceNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from cxc_Conceptos')
    Left = 280
    Top = 96
    object qCxc_ConceCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxc_ConceNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object qCxc_ConceTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qCxc_ConceNOMPOL: TStringField
      FieldName = 'NOMPOL'
      Origin = 'NOMPOL'
      FixedChar = True
      Size = 9
    end
    object qCxc_ConceCUENTA: TStringField
      FieldName = 'CUENTA'
      Origin = 'CUENTA'
      FixedChar = True
    end
    object qCxc_ConceES_PAGO: TBooleanField
      FieldName = 'ES_PAGO'
      Origin = 'ES_PAGO'
      Required = True
    end
  end
  object dsCxc_Conce: TDataSource
    DataSet = qCxc_Conce
    Left = 280
    Top = 144
  end
  object qCxcDet: TFDQuery
    OnNewRecord = qCxcDetNewRecord
    MasterSource = dsCxc
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from cxc_det'
      '  where id=:id')
    Left = 464
    Top = 96
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qCxcDetTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qCxcDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcDetUNICO: TIntegerField
      FieldName = 'UNICO'
      Origin = 'UNICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcDetCODCTE: TSmallintField
      FieldName = 'CODCTE'
      Origin = 'CODCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcDetCODCXC: TSmallintField
      FieldName = 'CODCXC'
      Origin = 'CODCXC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcDetDOCTO: TLargeintField
      FieldName = 'DOCTO'
      Origin = 'DOCTO'
    end
    object qCxcDetFOLIONOTA: TIntegerField
      FieldName = 'FOLIONOTA'
      Origin = 'FOLIONOTA'
    end
    object qCxcDetFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object qCxcDetFECVEN: TDateField
      FieldName = 'FECVEN'
      Origin = 'FECVEN'
    end
    object qCxcDetDESMON: TStringField
      FieldName = 'DESMON'
      FixedChar = True
      Size = 5
    end
    object qCxcDetTIPOCAMBIO: TBCDField
      FieldName = 'TIPOCAMBIO'
      Precision = 18
    end
    object qCxcDetMONTO: TFMTBCDField
      FieldName = 'MONTO'
      Precision = 18
      Size = 2
    end
    object qCxcDetCARGO: TFMTBCDField
      FieldName = 'CARGO'
      Precision = 18
      Size = 2
    end
    object qCxcDetABONO: TFMTBCDField
      FieldName = 'ABONO'
      Precision = 18
      Size = 2
    end
    object qCxcDetCTACHEQ: TSmallintField
      FieldName = 'CTACHEQ'
    end
    object qCxcDetORIGEN: TStringField
      FieldName = 'ORIGEN'
      FixedChar = True
      Size = 1
    end
    object qCxcDetFOLIO1: TLargeintField
      FieldName = 'FOLIO1'
    end
    object qCxcDetOBSERVA: TStringField
      FieldName = 'OBSERVA'
      FixedChar = True
      Size = 60
    end
  end
  object dsCxc: TDataSource
    DataSet = qCxc
    Left = 416
    Top = 144
  end
  object qCxc_ConceM: TFDQuery
    OnNewRecord = qCxc_ConceNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from cxc_Conceptos'
      'where es_pago = False'
      '  and codigo <= 2')
    Left = 360
    Top = 96
    object SmallintField1: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'NOMPOL'
      Origin = 'NOMPOL'
      FixedChar = True
      Size = 9
    end
    object StringField4: TStringField
      FieldName = 'CUENTA'
      Origin = 'CUENTA'
      FixedChar = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'ES_PAGO'
      Origin = 'ES_PAGO'
      Required = True
    end
  end
  object dsCxc_ConceM: TDataSource
    DataSet = qCxc_ConceM
    Left = 360
    Top = 144
  end
  object dsCxcDet: TDataSource
    DataSet = qCxcDet
    Left = 464
    Top = 144
  end
  object qCxc_ConceD: TFDQuery
    OnNewRecord = qCxc_ConceNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from cxc_Conceptos'
      'where codigo > 2')
    Left = 528
    Top = 96
    object SmallintField2: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'NOMPOL'
      Origin = 'NOMPOL'
      FixedChar = True
      Size = 9
    end
    object StringField8: TStringField
      FieldName = 'CUENTA'
      Origin = 'CUENTA'
      FixedChar = True
    end
    object BooleanField2: TBooleanField
      FieldName = 'ES_PAGO'
      Origin = 'ES_PAGO'
      Required = True
    end
  end
  object dsCxc_ConceD: TDataSource
    DataSet = qCxc_ConceD
    Left = 528
    Top = 144
  end
  object qCxcDocs: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select v.tienda, v.tipo, v.folio, c.*'
      'from cxc c'
      'left outer join ventaspos v on v.id=c.id'
      'where c.codcte = :CodCte'
      '  and c.saldo <> 0')
    Left = 592
    Top = 96
    ParamData = <
      item
        Name = 'CODCTE'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qCxcDocsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qCxcDocsTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
    end
    object qCxcDocsTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 8
    end
    object qCxcDocsFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
    end
    object qCxcDocsCODCTE: TSmallintField
      FieldName = 'CODCTE'
      Origin = 'CODCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcDocsCODCXC: TSmallintField
      FieldName = 'CODCXC'
      Origin = 'CODCXC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcDocsFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object qCxcDocsFECVEN: TDateField
      FieldName = 'FECVEN'
      Origin = 'FECVEN'
    end
    object qCxcDocsTIPO_1: TStringField
      FieldName = 'TIPO_1'
      Required = True
      Size = 10
    end
    object qCxcDocsCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object qCxcDocsSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object dsCxcDocs: TDataSource
    AutoEdit = False
    DataSet = qCxcDocs
    Left = 592
    Top = 144
  end
  object qCajaMovs: TFDQuery
    MasterSource = dsCajas
    MasterFields = 'TIENDA;CODIGO'
    DetailFields = 'TIENDA;CAJA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Caja_Movs'
      'where Tienda=:Tienda'
      '  and Caja=:Codigo'
      '  and fecha_cierre is null')
    Left = 120
    Top = 104
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qCajaMovsTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      Required = True
    end
    object qCajaMovsCAJA: TSmallintField
      FieldName = 'CAJA'
      Origin = 'CAJA'
      Required = True
    end
    object qCajaMovsFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qCajaMovsFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object qCajaMovsEMPLEADO: TSmallintField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Required = True
    end
    object qCajaMovsFONDO: TFMTBCDField
      FieldName = 'FONDO'
      Origin = 'FONDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsVENTAS: TFMTBCDField
      FieldName = 'VENTAS'
      Origin = 'VENTAS'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsPAGOS: TFMTBCDField
      FieldName = 'PAGOS'
      Origin = 'PAGOS'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsGASTOS: TFMTBCDField
      FieldName = 'GASTOS'
      Origin = 'GASTOS'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsARQUEO: TFMTBCDField
      FieldName = 'ARQUEO'
      Origin = 'ARQUEO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsCIERRE: TFMTBCDField
      FieldName = 'CIERRE'
      Origin = 'CIERRE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsDEVOLUCIONES: TFMTBCDField
      FieldName = 'DEVOLUCIONES'
      Origin = 'DEVOLUCIONES'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsVENTAS_CREDITO: TFMTBCDField
      FieldName = 'VENTAS_CREDITO'
      Origin = 'VENTAS_CREDITO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsVENTAS_APARTADO: TFMTBCDField
      FieldName = 'VENTAS_APARTADO'
      Origin = 'VENTAS_APARTADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsVENTAS_EFECTIVO: TFMTBCDField
      FieldName = 'VENTAS_EFECTIVO'
      Origin = 'VENTAS_EFECTIVO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCajaMovsVENTAS_TARJETA: TFMTBCDField
      FieldName = 'VENTAS_TARJETA'
      Origin = 'VENTAS_TARJETA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qInveGral: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select i.estilo, e.modelo, e.corrida,'
      
        '  c.nombre nom_corrida, e.color, s.nombre nom_color, e.costo, e.' +
        'menudeo,'
      '  sum(i.existencia) existencia'
      'from inventario i'
      'left outer join estilos e on e.estilo=i.estilo'
      'left outer join corridas c on c.codigo=e.corrida'
      'left outer join colores s on s.codigo=e.color'
      'group by i.estilo, e.modelo, e.corrida,'
      '  c.nombre, e.color, s.nombre, e.costo, e.menudeo')
    Left = 792
    Top = 296
    object qInveGralESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qInveGralMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object qInveGralCORRIDA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveGralNOM_CORRIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_CORRIDA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveGralCOLOR: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'COLOR'
      Origin = 'COLOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveGralNOM_COLOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_COLOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qInveGralEXISTENCIA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveGralCOSTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COSTO'
      Origin = 'COSTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qInveGralMENUDEO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'MENUDEO'
      Origin = 'MENUDEO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsInveGral: TDataSource
    AutoEdit = False
    DataSet = qInveGral
    Left = 792
    Top = 344
  end
  object qApartados: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Apartados'
      'where tienda=:tienda'
      '  and estilo=:estilo'
      '  and punto=:punto')
    Left = 376
    Top = 296
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'ESTILO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 16
      end
      item
        Name = 'PUNTO'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qApartadosTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qApartadosESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qApartadosPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qApartadosAPARTADOS: TSmallintField
      FieldName = 'APARTADOS'
      Origin = 'APARTADOS'
      Required = True
    end
  end
  object qEmpresas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select nombre, rfc from Empresas')
    Left = 8
    Top = 104
    object qEmpresasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 120
    end
    object qEmpresasRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
      Required = True
      Size = 18
    end
  end
  object mInveFis: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'Tienda;Estilo'
    AggregatesActive = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 864
    Top = 296
    object mInveFisTIENDA: TSmallintField
      FieldName = 'TIENDA'
    end
    object mInveFisESTILO: TStringField
      FieldName = 'ESTILO'
      Size = 19
    end
    object mInveFisDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object mInveFisTALLA: TStringField
      DisplayWidth = 4
      FieldName = 'TALLA'
      Size = 4
    end
    object mInveFisPUNTO: TSmallintField
      FieldName = 'PUNTO'
    end
    object mInveFisCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
    end
    object mInveFisCANTIDAD_ACTUAL: TSmallintField
      FieldName = 'CANTIDAD_ACTUAL'
    end
    object mInveFisCOSTO: TCurrencyField
      FieldName = 'COSTO'
    end
    object mInveFisIMPORTE: TCurrencyField
      FieldName = 'IMPORTE'
    end
    object mInveFisESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 1
    end
    object mInveFisESTILO2: TStringField
      FieldName = 'ESTILO2'
      Size = 16
    end
  end
  object DsInveFis: TDataSource
    DataSet = mInveFis
    Left = 856
    Top = 344
  end
  object mBitacora: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 224
    Top = 400
    object mBitacoraTIENDA: TSmallintField
      FieldName = 'TIENDA'
    end
    object mBitacoraESTILO: TStringField
      FieldName = 'ESTILO'
      Size = 19
    end
    object mBitacoraERROR: TStringField
      FieldName = 'ERROR'
      Size = 40
    end
  end
  object qInveIni: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Inven_ini'
      'where folio=:Folio')
    Left = 24
    Top = 400
    ParamData = <
      item
        Name = 'FOLIO'
        ParamType = ptInput
      end>
    object qInveIniFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInveIniFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qInveIniEMPLEADO: TSmallintField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Required = True
    end
    object qInveIniCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qInveIniTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object qInveIniESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qInveIniOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qInveIniTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qInveIniDet: TFDQuery
    MasterSource = dsInveIni
    MasterFields = 'FOLIO'
    DetailFields = 'FOLIO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Inven_iniDet'
      'where Folio=:Folio')
    Left = 136
    Top = 400
    ParamData = <
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qInveIniDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInveIniDetTIENDA: TIntegerField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInveIniDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 16
    end
    object qInveIniDetPUNTO: TIntegerField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qInveIniDetTALLA: TStringField
      FieldName = 'TALLA'
      Origin = 'TALLA'
      Size = 4
    end
    object qInveIniDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qInveIniDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qInveIniDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsInveIni: TDataSource
    DataSet = qInveIni
    Left = 72
    Top = 400
  end
  object dsBitacora: TDataSource
    AutoEdit = False
    DataSet = mBitacora
    Left = 280
    Top = 400
  end
  object qCxc: TFDQuery
    OnNewRecord = qCxcNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Cxc'
      'where 1=2')
    Left = 416
    Top = 96
    object qCxcTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qCxcID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCxcCODCTE: TSmallintField
      FieldName = 'CODCTE'
      Origin = 'CODCTE'
      Required = True
    end
    object qCxcCODCXC: TSmallintField
      FieldName = 'CODCXC'
      Origin = 'CODCXC'
      Required = True
    end
    object qCxcFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object qCxcFECVEN: TDateField
      FieldName = 'FECVEN'
      Origin = 'FECVEN'
    end
    object qCxcCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 18
      Size = 2
    end
    object qCxcSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object qCambios: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Cambios'
      'where Tienda=:Tienda')
    Left = 352
    Top = 400
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
    object qCambiosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCambiosTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      Required = True
    end
    object qCambiosFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      Required = True
    end
    object qCambiosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object qCambiosTOTENTRADA: TFMTBCDField
      FieldName = 'TOTENTRADA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCambiosTOTSALIDA: TFMTBCDField
      FieldName = 'TOTSALIDA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qCambiosDet: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from CambiosDet'
      'where id=:id')
    Left = 416
    Top = 400
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qCambiosDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCambiosDetREN1: TSmallintField
      FieldName = 'REN1'
      Origin = 'REN1'
      Required = True
    end
    object qCambiosDetESTILO1: TStringField
      FieldName = 'ESTILO1'
      Origin = 'ESTILO1'
      Required = True
      Size = 16
    end
    object qCambiosDetTALLA1: TStringField
      FieldName = 'TALLA1'
      Origin = 'TALLA1'
      Required = True
      Size = 4
    end
    object qCambiosDetPUNTO1: TSmallintField
      FieldName = 'PUNTO1'
      Origin = 'PUNTO1'
      Required = True
    end
    object qCambiosDetPRECIO1: TFMTBCDField
      FieldName = 'PRECIO1'
      Origin = 'PRECIO1'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCambiosDetCANTIDAD1: TSmallintField
      FieldName = 'CANTIDAD1'
      Origin = 'CANTIDAD1'
      Required = True
    end
    object qCambiosDetIMPORTE1: TFMTBCDField
      FieldName = 'IMPORTE1'
      Origin = 'IMPORTE1'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCambiosDetREN2: TSmallintField
      FieldName = 'REN2'
      Origin = 'REN2'
      Required = True
    end
    object qCambiosDetESTILO2: TStringField
      FieldName = 'ESTILO2'
      Origin = 'ESTILO2'
      Required = True
      Size = 16
    end
    object qCambiosDetTALLA2: TStringField
      FieldName = 'TALLA2'
      Origin = 'TALLA2'
      Required = True
      Size = 4
    end
    object qCambiosDetPUNTO2: TSmallintField
      FieldName = 'PUNTO2'
      Origin = 'PUNTO2'
      Required = True
    end
    object qCambiosDetPRECIO2: TFMTBCDField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
      Required = True
      Precision = 18
      Size = 2
    end
    object qCambiosDetCANTIDAD2: TSmallintField
      FieldName = 'CANTIDAD2'
      Origin = 'CANTIDAD2'
      Required = True
    end
    object qCambiosDetIMPORTE2: TFMTBCDField
      FieldName = 'IMPORTE2'
      Origin = 'IMPORTE2'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qDevol: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Devol'
      'where Tienda=:Tienda')
    Left = 512
    Top = 400
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
    object qDevolID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDevolTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      Required = True
    end
    object qDevolBODEGA: TSmallintField
      FieldName = 'BODEGA'
      Origin = 'BODEGA'
      Required = True
    end
    object qDevolFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      Required = True
    end
    object qDevolFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qDevolFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAPAGO'
      Required = True
    end
  end
  object qDevolDet: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from DevolDet'
      'where id=:id')
    Left = 560
    Top = 400
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qDevolDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDevolDetREN: TSmallintField
      FieldName = 'REN'
      Origin = 'REN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDevolDetMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
      Size = 6
    end
    object qDevolDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      Size = 16
    end
    object qDevolDetCOLOR: TSmallintField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
    object qDevolDetPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      Required = True
    end
    object qDevolDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qDevolDetCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Required = True
      Size = 40
    end
  end
  object qCaja_Concep: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Caja_Conceptos')
    Left = 648
    Top = 96
    object qCaja_ConcepCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCaja_ConcepNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
    object qCaja_ConcepNATURALEZA: TStringField
      FieldName = 'NATURALEZA'
      Origin = 'NATURALEZA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qReq: TFDQuery
    OnNewRecord = qReqNewRecord
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Req'
      'where Fecha=:pFecha')
    Left = 624
    Top = 400
    ParamData = <
      item
        Name = 'PFECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qReqFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReqCODCLI: TSmallintField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
      Required = True
    end
    object qReqCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = qCtes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object qReqFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object qReqCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qReqTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object qReqESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qReqENTREGA_INI: TDateField
      FieldName = 'ENTREGA_INI'
      Origin = 'ENTREGA_INI'
      Required = True
    end
    object qReqENTREGA_FIN: TDateField
      FieldName = 'ENTREGA_FIN'
      Origin = 'ENTREGA_FIN'
      Required = True
    end
    object qReqFLETE: TStringField
      FieldName = 'FLETE'
      Origin = 'FLETE'
      Size = 40
    end
    object qReqOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object qReqFECSALIDA: TDateField
      FieldName = 'FECSALIDA'
      Origin = 'FECSALIDA'
    end
    object qReqSALIDA: TSmallintField
      FieldName = 'SALIDA'
      Origin = 'SALIDA'
      Required = True
    end
    object qReqCTEPEDIDO: TStringField
      FieldName = 'CTEPEDIDO'
      Origin = 'CTEPEDIDO'
      Size = 15
    end
  end
  object dsReq: TDataSource
    DataSet = qReq
    Left = 664
    Top = 400
  end
  object qReqDet: TFDQuery
    OnNewRecord = qReqDetNewRecord
    AggregatesActive = True
    MasterSource = dsReq
    MasterFields = 'FOLIO'
    DetailFields = 'FOLIO'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from ReqDet'
      'where Folio=:Folio')
    Left = 728
    Top = 400
    ParamData = <
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qReqDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReqDetPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReqDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qReqDetCODCORRIDA: TSmallintField
      FieldName = 'CODCORRIDA'
      Origin = 'CODCORRIDA'
      Required = True
    end
    object qReqDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qReqDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qReqDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object qReqDetIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qReqDetESTATUS: TStringField
      FieldName = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qReqDetSALIDA: TSmallintField
      FieldName = 'SALIDA'
      Required = True
    end
    object qReqDetMUESTRAS: TBooleanField
      FieldName = 'MUESTRAS'
      Required = True
    end
    object qReqDetCTEPEDIDO: TStringField
      FieldName = 'CTEPEDIDO'
      Size = 15
    end
    object qReqDetTOTCANTIDAD: TAggregateField
      FieldName = 'TOTCANTIDAD'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(CANTIDAD)'
    end
    object qReqDetTOTIMPORTE: TAggregateField
      FieldName = 'TOTIMPORTE'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
    object qReqDetTOTSALIDA: TAggregateField
      FieldName = 'TOTSALIDA'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(SALIDA)'
    end
  end
  object dsReqDet: TDataSource
    DataSet = qReqDet
    Left = 776
    Top = 400
  end
  object qReqRen: TFDQuery
    OnNewRecord = qReqRenNewRecord
    MasterSource = dsReqDet
    MasterFields = 'FOLIO;PARTIDA'
    DetailFields = 'FOLIO;PARTIDA'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from ReqRen'
      'where Folio=:Folio'
      '  and Partida=:Partida')
    Left = 832
    Top = 400
    ParamData = <
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PARTIDA'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qReqRenFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReqRenPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReqRenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      Required = True
    end
    object qReqRenCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qReqRenSALIDA: TSmallintField
      FieldName = 'SALIDA'
      Origin = 'SALIDA'
      Required = True
    end
    object qReqRenPRSPROG: TSmallintField
      FieldName = 'PRSPROG'
      Origin = 'PRSPROG'
      Required = True
    end
  end
  object qClasElement: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from ClasElemento')
    Left = 24
    Top = 456
    object qClasElementCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object qClasElementNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object qElement: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from elementos')
    Left = 88
    Top = 456
    object qElementCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object qElementNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
    object qElementTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 8
    end
    object qElementCLAVECLA: TStringField
      FieldName = 'CLAVECLA'
      Origin = 'CLAVECLA'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qElementCLASIFICACION: TStringField
      FieldKind = fkLookup
      FieldName = 'CLASIFICACION'
      LookupDataSet = qClasElement
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'NOMBRE'
      KeyFields = 'CLAVECLA'
      Lookup = True
    end
  end
  object dsClaElement: TDataSource
    DataSet = qClasElement
    Left = 24
    Top = 504
  end
  object dsElement: TDataSource
    DataSet = qElement
    Left = 88
    Top = 504
  end
  object dsReqRen: TDataSource
    DataSet = qReqRen
    Left = 896
    Top = 400
  end
  object dsUnidades: TDataSource
    DataSet = qUnidades
    Left = 712
    Top = 144
  end
  object qUnidades: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Unidades')
    Left = 712
    Top = 96
    object qUnidadesCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object qUnidadesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object dsHormas: TDataSource
    DataSet = qHormas
    Left = 768
    Top = 144
  end
  object qHormas: TFDQuery
    OnNewRecord = qColoresNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Hormas')
    Left = 768
    Top = 96
    object qHormasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qHormasCORRIDA: TSmallintField
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qHormasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object dsDeptos: TDataSource
    DataSet = qDeptos
    Left = 824
    Top = 144
  end
  object qDeptos: TFDQuery
    OnNewRecord = qColoresNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Deptos')
    Left = 824
    Top = 96
    object qDeptosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDeptosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object dsFlujos: TDataSource
    DataSet = qFlujos
    Left = 880
    Top = 144
  end
  object qFlujos: TFDQuery
    OnNewRecord = qColoresNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Flujos')
    Left = 880
    Top = 96
    object qFlujosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFlujosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object dsFlujoDet: TDataSource
    DataSet = qFlujoDet
    Left = 936
    Top = 144
  end
  object qFlujoDet: TFDQuery
    OnNewRecord = qColoresNewRecord
    MasterSource = dsFlujos
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from FlujoDet'
      'where codigo=:codigo')
    Left = 936
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = 1
      end>
    object qFlujoDetCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFlujoDetORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFlujoDetDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFlujoDetLK_DEPTO: TStringField
      DisplayLabel = 'DEPARTAMENTO'
      FieldKind = fkLookup
      FieldName = 'LK_DEPTO'
      LookupDataSet = qDeptos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO'
      Lookup = True
    end
  end
  object qFam: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from inFamilias')
    Left = 192
    Top = 456
    object qFamCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object qFamNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
  end
  object qTip: TFDQuery
    MasterSource = dsFam
    MasterFields = 'CLAVE'
    DetailFields = 'FAMILIA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from inTipos'
      'where Familia=:Clave')
    Left = 232
    Top = 456
    ParamData = <
      item
        Name = 'CLAVE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object qTipCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object qTipNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qTipFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Origin = 'FAMILIA'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object qGrup: TFDQuery
    MasterSource = dsTip
    MasterFields = 'CLAVE;FAMILIA'
    DetailFields = 'TIPO;FAMILIA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from inGrupos'
      'where Tipo=:Clave'
      '  and Familia=:Familia')
    Left = 272
    Top = 456
    ParamData = <
      item
        Name = 'CLAVE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'FAMILIA'
        ParamType = ptInput
      end>
    object qGrupCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object qGrupNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qGrupTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qGrupFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Origin = 'FAMILIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object qIns: TFDQuery
    OnNewRecord = qInsNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from Insumos'
      '&MacroWhere'
      ' order by Clave')
    Left = 312
    Top = 456
    MacroData = <
      item
        Value = Null
        Name = 'MACROWHERE'
        DataType = mdIdentifier
      end>
    object qInsCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 18
    end
    object qInsNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 100
    end
    object qInsNUMPARTE: TStringField
      FieldName = 'NUMPARTE'
      Origin = 'NUMPARTE'
      Size = 18
    end
    object qInsESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qInsFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Origin = 'FAMILIA'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qInsTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qInsGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qInsFOTO1: TBlobField
      FieldName = 'FOTO1'
      Origin = 'FOTO1'
    end
    object qInsALTA: TDateField
      FieldName = 'ALTA'
      Origin = 'ALTA'
      Required = True
    end
    object qInsUNI_ENT: TStringField
      FieldName = 'UNI_ENT'
      Origin = 'UNI_ENT'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qInsUNI_SAL: TStringField
      FieldName = 'UNI_SAL'
      Origin = 'UNI_SAL'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qInsCOLOR: TBooleanField
      DisplayLabel = 'ES COLOR?'
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
  end
  object dsFam: TDataSource
    DataSet = qFam
    Left = 192
    Top = 504
  end
  object dsTip: TDataSource
    DataSet = qTip
    Left = 232
    Top = 503
  end
  object dsGrup: TDataSource
    DataSet = qGrup
    Left = 272
    Top = 503
  end
  object dsIns: TDataSource
    DataSet = qIns
    Left = 312
    Top = 503
  end
  object Exp1: TQExport4Xlsx
    About = '(About EMS AdvancedExport)'
    _Version = '4.13.3.1'
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm AMPM'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss AMPM'
    Formats.CurrencyFormat = '$#,###,##0.00'
    SheetName = 'sheet1'
    XlsxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.HeaderStyle.Font.Color = clBlack
    XlsxOptions.HeaderStyle.Font.Height = -15
    XlsxOptions.HeaderStyle.Font.Name = 'Calibri'
    XlsxOptions.HeaderStyle.Font.Style = []
    XlsxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.CaptionRowStyle.Font.Color = clBlack
    XlsxOptions.CaptionRowStyle.Font.Height = -15
    XlsxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    XlsxOptions.CaptionRowStyle.Font.Style = []
    XlsxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.DataStyle.Font.Color = clBlack
    XlsxOptions.DataStyle.Font.Height = -15
    XlsxOptions.DataStyle.Font.Name = 'Calibri'
    XlsxOptions.DataStyle.Font.Style = []
    XlsxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.FooterStyle.Font.Color = clBlack
    XlsxOptions.FooterStyle.Font.Height = -15
    XlsxOptions.FooterStyle.Font.Name = 'Calibri'
    XlsxOptions.FooterStyle.Font.Style = []
    XlsxOptions.StripStylesList = <>
    XlsxOptions.PageSettings.MarginLeft = 0.700000000000000000
    XlsxOptions.PageSettings.MarginRight = 0.700000000000000000
    XlsxOptions.PageSettings.MarginTop = 0.750000000000000000
    XlsxOptions.PageSettings.MarginBottom = 0.750000000000000000
    XlsxOptions.PageSettings.Header = 0.300000000000000000
    XlsxOptions.PageSettings.Footer = 0.300000000000000000
    Left = 992
    Top = 104
  end
  object UniFileUpload1: TUniFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Subiendo...'
    Messages.PleaseWait = 'Espera por favor'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Procesando...'
    Messages.UploadError = 'Error al subir'
    Messages.Upload = 'Subir'
    Messages.NoFileError = 'Selecciona un archivo'
    Messages.BrowseText = 'Buscar...'
    Messages.UploadTimeout = 'Tiempo excedido...'
    Messages.MaxSizeError = 'El tama'#241'o del archivo excede el l'#237'mite permitido...'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    Left = 1053
    Top = 102
  end
  object qDeptoNom: TFDQuery
    OnNewRecord = qColoresNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from DeptoNom')
    Left = 776
    Top = 192
    object qDeptoNomCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDeptoNomNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object dsDeptoNom: TDataSource
    DataSet = qDeptoNom
    Left = 776
    Top = 240
  end
  object qPuesNom: TFDQuery
    OnNewRecord = qColoresNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from PuesNom')
    Left = 840
    Top = 192
    object qPuesNomCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPuesNomNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
  end
  object dsPueNom: TDataSource
    DataSet = qPuesNom
    Left = 832
    Top = 240
  end
  object qEmpProd: TFDQuery
    OnNewRecord = qEmpProdNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from EMPS')
    Left = 896
    Top = 192
    object qEmpProdCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = 'CLAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object qEmpProdNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Origin = 'NOMBRES'
      Required = True
      Size = 40
    end
    object qEmpProdPATERNO: TStringField
      FieldName = 'PATERNO'
      Origin = 'PATERNO'
      Size = 25
    end
    object qEmpProdMATERNO: TStringField
      FieldName = 'MATERNO'
      Origin = 'MATERNO'
      Size = 25
    end
    object qEmpProdCOMPLETO: TStringField
      FieldName = 'COMPLETO'
      Origin = 'COMPLETO'
      Size = 90
    end
    object qEmpProdALIAS: TStringField
      FieldName = 'ALIAS'
      Origin = 'ALIAS'
    end
    object qEmpProdACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
    end
    object qEmpProdDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      Required = True
    end
    object qEmpProdPUESTO: TSmallintField
      FieldName = 'PUESTO'
      Origin = 'PUESTO'
    end
    object qEmpProdFECALTA: TDateField
      FieldName = 'FECALTA'
      Origin = 'FECALTA'
      Required = True
    end
    object qEmpProdFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qEmpProdOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object qEmpProdDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 90
    end
    object qEmpProdCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 60
    end
    object qEmpProdCEL: TStringField
      FieldName = 'CEL'
      Origin = 'CEL'
      Size = 10
    end
  end
  object dsEmpProd: TDataSource
    DataSet = qEmpProd
    Left = 880
    Top = 240
  end
  object qConsumos: TFDQuery
    MasterSource = dsModelos
    MasterFields = 'MODELO'
    DetailFields = 'MODELO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from Consumos'
      'where modelo=:modelo')
    Left = 144
    Top = 456
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 11
        Value = 'TEN00100001'
      end>
    object qConsumosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 11
    end
    object qConsumosINSUMO: TStringField
      FieldName = 'INSUMO'
      Origin = 'INSUMO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 18
    end
    object qConsumosLK_INSUMO: TStringField
      DisplayLabel = 'INSUMO'
      FieldKind = fkLookup
      FieldName = 'LK_INSUMO'
      LookupDataSet = qIns
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'NOMBRE'
      KeyFields = 'INSUMO'
      Size = 100
      Lookup = True
    end
    object qConsumosCONSUMO: TSingleField
      FieldName = 'CONSUMO'
      Origin = 'CONSUMO'
      Required = True
    end
    object qConsumosLK_UNIDAD: TStringField
      DisplayLabel = 'UNIDAD'
      FieldKind = fkLookup
      FieldName = 'LK_UNIDAD'
      LookupDataSet = qIns
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'UNI_SAL'
      KeyFields = 'INSUMO'
      Size = 3
      Lookup = True
    end
    object qConsumosELEMENTO: TStringField
      FieldName = 'ELEMENTO'
      Origin = 'ELEMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qConsumosLK_ELEMENTO: TStringField
      DisplayLabel = 'ELEMENTO'
      FieldKind = fkLookup
      FieldName = 'LK_ELEMENTO'
      LookupDataSet = qElement
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ELEMENTO'
      Lookup = True
    end
    object qConsumosLK_DEPTO: TStringField
      DisplayLabel = 'DEPTO'
      FieldKind = fkLookup
      FieldName = 'LK_DEPTO'
      LookupDataSet = qDeptos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO'
      Lookup = True
    end
    object qConsumosDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      Required = True
    end
    object qConsumosTALLA: TBooleanField
      FieldName = 'TALLA'
      Origin = 'TALLA'
      Required = True
    end
    object qConsumosC01: TSmallintField
      FieldName = 'C01'
      Origin = 'C01'
    end
    object qConsumosC02: TSmallintField
      FieldName = 'C02'
      Origin = 'C02'
    end
    object qConsumosC03: TSmallintField
      FieldName = 'C03'
      Origin = 'C03'
    end
    object qConsumosC04: TSmallintField
      FieldName = 'C04'
      Origin = 'C04'
    end
    object qConsumosC05: TSmallintField
      FieldName = 'C05'
      Origin = 'C05'
    end
    object qConsumosC06: TSmallintField
      FieldName = 'C06'
      Origin = 'C06'
    end
    object qConsumosC07: TSmallintField
      FieldName = 'C07'
      Origin = 'C07'
    end
    object qConsumosC08: TSmallintField
      FieldName = 'C08'
      Origin = 'C08'
    end
    object qConsumosC09: TSmallintField
      FieldName = 'C09'
      Origin = 'C09'
    end
    object qConsumosC10: TSmallintField
      FieldName = 'C10'
      Origin = 'C10'
    end
    object qConsumosC11: TSmallintField
      FieldName = 'C11'
      Origin = 'C11'
    end
    object qConsumosC12: TSmallintField
      FieldName = 'C12'
      Origin = 'C12'
    end
    object qConsumosC13: TSmallintField
      FieldName = 'C13'
      Origin = 'C13'
    end
    object qConsumosC14: TSmallintField
      FieldName = 'C14'
      Origin = 'C14'
    end
    object qConsumosC15: TSmallintField
      FieldName = 'C15'
      Origin = 'C15'
    end
    object qConsumosC16: TSmallintField
      FieldName = 'C16'
      Origin = 'C16'
    end
    object qConsumosC17: TSmallintField
      FieldName = 'C17'
      Origin = 'C17'
    end
  end
  object dsConsumos: TDataSource
    DataSet = qConsumos
    Left = 144
    Top = 503
  end
  object qFracc: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Fraccion')
    Left = 928
    Top = 240
    object qFraccDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFraccLK_DEPTO: TStringField
      DisplayLabel = 'DEPTO'
      FieldKind = fkLookup
      FieldName = 'LK_DEPTO'
      LookupDataSet = qDeptos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO'
      Lookup = True
    end
    object qFraccCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFraccNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
    object qFraccCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
    end
  end
  object dsFracc: TDataSource
    DataSet = qFracc
    Left = 928
    Top = 296
  end
  object qFracMod: TFDQuery
    MasterSource = dsModelos
    MasterFields = 'MODELO'
    DetailFields = 'MODELO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from FracMod'
      'Where Modelo=:Modelo')
    Left = 1096
    Top = 240
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 11
        Value = 'TEN00100001'
      end>
    object qFracModMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 11
    end
    object qFracModDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFracModLK_DEPTO: TStringField
      DisplayLabel = 'DEPTO'
      FieldKind = fkLookup
      FieldName = 'LK_DEPTO'
      LookupDataSet = qDeptos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO'
      Lookup = True
    end
    object qFracModFRACCION: TSmallintField
      FieldName = 'FRACCION'
      Origin = 'FRACCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFracModLK_FRACCION: TStringField
      DisplayLabel = 'FRACCION'
      FieldKind = fkLookup
      FieldName = 'LK_FRACCION'
      LookupDataSet = qFracc
      LookupKeyFields = 'DEPTO;CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO;FRACCION'
      Size = 30
      Lookup = True
    end
    object qFracModORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object qFracModTIEMPO: TSingleField
      FieldName = 'TIEMPO'
      Origin = 'TIEMPO'
    end
    object qFracModCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
    end
  end
  object dsFracMod: TDataSource
    DataSet = qFracMod
    Left = 1096
    Top = 296
  end
  object qDeptoFrac: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select distinct f.Depto, d.nombre'
      'from fraccion f'
      'left outer join deptos d on d.codigo=f.depto')
    Left = 976
    Top = 240
    object qDeptoFracDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDeptoFracNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsDeptoFrac: TDataSource
    AutoEdit = False
    DataSet = qDeptoFrac
    Left = 976
    Top = 296
  end
  object qFracDepto: TFDQuery
    MasterSource = dsDeptoFrac
    MasterFields = 'DEPTO'
    DetailFields = 'DEPTO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select f.depto, f.codigo, f.nombre'
      'from fraccion f'
      'where f.depto=:Depto')
    Left = 1040
    Top = 240
    ParamData = <
      item
        Name = 'DEPTO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsFracDepto: TDataSource
    AutoEdit = False
    DataSet = qFracDepto
    Left = 1040
    Top = 296
  end
  object qEstConsumos: TFDQuery
    MasterSource = dsEstilos
    MasterFields = 'ESTILO'
    DetailFields = 'ESTILO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from EstConsumos'
      'where estilo=:Estilo')
    Left = 368
    Top = 456
    ParamData = <
      item
        Name = 'ESTILO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 16
      end>
    object qEstConsumosESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qEstConsumosINSUMO: TStringField
      FieldName = 'INSUMO'
      Origin = 'INSUMO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 18
    end
    object qEstConsumosLK_INSUMOS: TStringField
      DisplayLabel = 'INSUMO'
      FieldKind = fkLookup
      FieldName = 'LK_INSUMO'
      LookupDataSet = qIns
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'NOMBRE'
      KeyFields = 'INSUMO'
      Size = 100
      Lookup = True
    end
    object qEstConsumosLK_UNIDAD: TStringField
      DisplayLabel = 'UNIDAD'
      FieldKind = fkLookup
      FieldName = 'LK_UNIDAD'
      LookupDataSet = qIns
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'UNI_SAL'
      KeyFields = 'INSUMO'
      Size = 3
      Lookup = True
    end
    object qEstConsumosCONSUMO: TSingleField
      FieldName = 'CONSUMO'
      Origin = 'CONSUMO'
      Required = True
    end
    object qEstConsumosELEMENTO: TStringField
      FieldName = 'ELEMENTO'
      Origin = 'ELEMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qEstConsumosLK_ELEMENTO: TStringField
      DisplayLabel = 'ELEMENTO'
      FieldKind = fkLookup
      FieldName = 'LK_ELEMENTO'
      LookupDataSet = qElement
      LookupKeyFields = 'CLAVE'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ELEMENTO'
      Lookup = True
    end
    object qEstConsumosDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      Required = True
    end
    object qEstConsumosLK_DEPTO: TStringField
      DisplayLabel = 'DEPTO'
      FieldKind = fkLookup
      FieldName = 'LK_DEPTO'
      LookupDataSet = qDeptos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO'
      Lookup = True
    end
    object qEstConsumosTALLA: TBooleanField
      FieldName = 'TALLA'
      Origin = 'TALLA'
      Required = True
    end
    object qEstConsumosC01: TSmallintField
      FieldName = 'C01'
      Origin = 'C01'
    end
    object qEstConsumosC02: TSmallintField
      FieldName = 'C02'
      Origin = 'C02'
    end
    object qEstConsumosC03: TSmallintField
      FieldName = 'C03'
      Origin = 'C03'
    end
    object qEstConsumosC04: TSmallintField
      FieldName = 'C04'
      Origin = 'C04'
    end
    object qEstConsumosC05: TSmallintField
      FieldName = 'C05'
      Origin = 'C05'
    end
    object qEstConsumosC06: TSmallintField
      FieldName = 'C06'
      Origin = 'C06'
    end
    object qEstConsumosC07: TSmallintField
      FieldName = 'C07'
      Origin = 'C07'
    end
    object qEstConsumosC08: TSmallintField
      FieldName = 'C08'
      Origin = 'C08'
    end
    object qEstConsumosC09: TSmallintField
      FieldName = 'C09'
      Origin = 'C09'
    end
    object qEstConsumosC10: TSmallintField
      FieldName = 'C10'
      Origin = 'C10'
    end
    object qEstConsumosC11: TSmallintField
      FieldName = 'C11'
      Origin = 'C11'
    end
    object qEstConsumosC12: TSmallintField
      FieldName = 'C12'
      Origin = 'C12'
    end
    object qEstConsumosC13: TSmallintField
      FieldName = 'C13'
      Origin = 'C13'
    end
    object qEstConsumosC14: TSmallintField
      FieldName = 'C14'
      Origin = 'C14'
    end
    object qEstConsumosC15: TSmallintField
      FieldName = 'C15'
      Origin = 'C15'
    end
    object qEstConsumosC16: TSmallintField
      FieldName = 'C16'
      Origin = 'C16'
    end
    object qEstConsumosC17: TSmallintField
      FieldName = 'C17'
      Origin = 'C17'
    end
  end
  object qEstFrac: TFDQuery
    MasterSource = dsEstilos
    MasterFields = 'ESTILO'
    DetailFields = 'ESTILO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select * from EstFrac'
      'where estilo=:estilo')
    Left = 440
    Top = 456
    ParamData = <
      item
        Name = 'ESTILO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 16
        Value = Null
      end>
    object qEstFracESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qEstFracLK_DEPTO: TStringField
      DisplayLabel = 'DEPTO'
      FieldKind = fkLookup
      FieldName = 'LK_DEPTO'
      LookupDataSet = qDeptos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO'
      Lookup = True
    end
    object qEstFracDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Origin = 'DEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstFracFRACCION: TSmallintField
      FieldName = 'FRACCION'
      Origin = 'FRACCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstFracLK_FRACCION: TStringField
      DisplayLabel = 'FRACCION'
      FieldKind = fkLookup
      FieldName = 'LK_FRACCION'
      LookupDataSet = qFracc
      LookupKeyFields = 'DEPTO;CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'DEPTO;FRACCION'
      Size = 30
      Lookup = True
    end
    object qEstFracORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object qEstFracTIEMPO: TSingleField
      FieldName = 'TIEMPO'
      Origin = 'TIEMPO'
    end
    object qEstFracCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
    end
  end
  object dsEstConsumos: TDataSource
    DataSet = qEstConsumos
    Left = 368
    Top = 504
  end
  object dsEstFrac: TDataSource
    DataSet = qEstFrac
    Left = 440
    Top = 504
  end
  object qProg: TFDQuery
    OnNewRecord = qProgNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from prog'
      'where Fecha=:pFecha')
    Left = 512
    Top = 456
    ParamData = <
      item
        Name = 'PFECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qProgFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object qProgPARES: TSmallintField
      FieldName = 'PARES'
      Origin = 'PARES'
    end
    object qProgPLANTA: TSmallintField
      FieldName = 'PLANTA'
      Origin = 'PLANTA'
    end
    object qProgIMPRESO: TBooleanField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
    end
    object qProgOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 90
    end
    object qProgESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qProgFECCAN: TDateField
      FieldName = 'FECCAN'
      Origin = 'FECCAN'
    end
  end
  object qPlantas: TFDQuery
    OnNewRecord = qPlantasNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Plantas')
    Left = 986
    object qPlantasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPlantasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
  end
  object dsPlantas: TDataSource
    AutoEdit = False
    DataSet = qPlantas
    Left = 986
    Top = 48
  end
  object qProgDet: TFDQuery
    MasterSource = dsProg
    MasterFields = 'FOLIO'
    DetailFields = 'FOLIO'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from progDet'
      'where Folio=:Folio')
    Left = 560
    Top = 456
    ParamData = <
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qProgDetFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgDetCODCLI: TSmallintField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
      Required = True
    end
    object qProgDetESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qProgDetCODCORRIDA: TSmallintField
      FieldName = 'CODCORRIDA'
      Origin = 'CODCORRIDA'
      Required = True
    end
    object qProgDetCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qProgDetESTATUS: TStringField
      FieldName = 'ESTATUS'
      Origin = 'ESTATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsProg: TDataSource
    AutoEdit = False
    DataSet = qProg
    Left = 512
    Top = 504
  end
  object dsProgDet: TDataSource
    AutoEdit = False
    DataSet = qProgDet
    Left = 560
    Top = 504
  end
  object qProgRen: TFDQuery
    MasterSource = dsProgDet
    MasterFields = 'FOLIO;LOTE'
    DetailFields = 'FOLIO;LOTE'
    Connection = FDConnection1
    Transaction = FDTransaction1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from progRen'
      'where Folio=:Folio'
      '  and Lote=:Lote')
    Left = 618
    Top = 456
    ParamData = <
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qProgRenFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgRenLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgRenREQ: TIntegerField
      FieldName = 'REQ'
      Origin = 'REQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgRenREQPARTIDA: TSmallintField
      FieldName = 'REQPARTIDA'
      Origin = 'REQPARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgRenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgRenCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
  end
  object dsProgRen: TDataSource
    AutoEdit = False
    DataSet = qProgRen
    Left = 618
    Top = 504
  end
  object qRen: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from &TablaRen'
      'where Tienda=:Tienda'
      '  and Folio=:Folio'
      '  and PArtida=:Partida')
    Left = 576
    Top = 248
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FOLIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PARTIDA'
        ParamType = ptInput
      end>
    MacroData = <
      item
        Value = 'EmbarquesRen'
        Name = 'TABLAREN'
      end>
    object qRenTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRenFOLIO: TIntegerField
      FieldName = 'FOLIO'
      Origin = 'FOLIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRenPARTIDA: TSmallintField
      FieldName = 'PARTIDA'
      Origin = 'PARTIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRenPUNTO: TSmallintField
      FieldName = 'PUNTO'
      Origin = 'PUNTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRenCANTIDAD: TSmallintField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object qRenENTRADA: TSmallintField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
  end
  object mEstilosUsados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 1056
    Top = 8
    object mEstilosUsadosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 11
    end
    object mEstilosUsadosESTILO: TStringField
      FieldName = 'ESTILO'
      Size = 16
    end
  end
  object dsCajaMovs: TDataSource
    AutoEdit = False
    DataSet = qCajaMovs
    Left = 120
    Top = 152
  end
  object qCajaCocep: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Caja_Conceptos')
    Left = 216
    Top = 104
    object qCajaCocepCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCajaCocepNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 30
    end
    object qCajaCocepNATURALEZA: TStringField
      FieldName = 'NATURALEZA'
      Origin = 'NATURALEZA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qHistListaPre: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from LISTAPRECIOS_HISTORICO'
      'where 1 = 1')
    Left = 680
    object qHistListaPreESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 16
    end
    object qHistListaPreUSUARIO: TSmallintField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qHistListaPreFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qHistListaPreCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object qHistListaPreMENUDEO: TSingleField
      FieldName = 'MENUDEO'
      Origin = 'MENUDEO'
    end
    object qHistListaPreMEDIO_MAYOREO: TSingleField
      FieldName = 'MEDIO_MAYOREO'
      Origin = 'MEDIO_MAYOREO'
    end
    object qHistListaPreMAYOREO: TSingleField
      FieldName = 'MAYOREO'
      Origin = 'MAYOREO'
    end
    object qHistListaPreFORANEA: TSingleField
      FieldName = 'FORANEA'
      Origin = 'FORANEA'
    end
  end
  object qUpEstilo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Estilos'
      'where estilo=:pEstilo')
    Left = 24
    Top = 560
    ParamData = <
      item
        Name = 'PESTILO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 16
      end>
    object qUpEstiloESTILO: TStringField
      FieldName = 'ESTILO'
      Origin = 'ESTILO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 16
    end
    object qUpEstiloMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object qUpEstiloCORRIDA: TSmallintField
      FieldName = 'CORRIDA'
      Origin = 'CORRIDA'
      Required = True
    end
    object qUpEstiloCOLOR: TSmallintField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
    object qUpEstiloNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 50
    end
    object qUpEstiloCODPROV: TSmallintField
      FieldName = 'CODPROV'
      Origin = 'CODPROV'
    end
    object qUpEstiloES_SALDO: TBooleanField
      FieldName = 'ES_SALDO'
      Origin = 'ES_SALDO'
      Required = True
    end
    object qUpEstiloOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object qUpEstiloCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object qUpEstiloMENUDEO: TSingleField
      FieldName = 'MENUDEO'
      Origin = 'MENUDEO'
    end
    object qUpEstiloMEDIO_MAYOREO: TSingleField
      FieldName = 'MEDIO_MAYOREO'
      Origin = 'MEDIO_MAYOREO'
    end
    object qUpEstiloMAYOREO: TSingleField
      FieldName = 'MAYOREO'
      Origin = 'MAYOREO'
    end
    object qUpEstiloFORANEA: TSingleField
      FieldName = 'FORANEA'
      Origin = 'FORANEA'
    end
    object qUpEstiloIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      Origin = 'IMAGEN'
    end
    object qUpEstiloEXISTENCIA: TSmallintField
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      Required = True
    end
    object qUpEstiloACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
    end
    object qUpEstiloFECCAMBIO: TDateField
      FieldName = 'FECCAMBIO'
      Origin = 'FECCAMBIO'
    end
  end
  object FDScript1: TFDScript
    SQLScripts = <
      item
        Name = 'BORRA_MOVS'
        SQL.Strings = (
          '/* LIMPIAR MOVIMIENTOS */'
          ''
          'DELETE FROM APARTADOS;'
          'DELETE FROM CAJA_MOVS;'
          'DELETE FROM CAMBIOS;'
          'UPDATE CTES SET SALDO = 0;'
          'UPDATE PROVS SET SALDO = 0;'
          'DELETE FROM CXC;'
          'DELETE FROM DEVOL;'
          'DELETE FROM EMBARQUES;'
          ''
          'DELETE FROM INVENTARIO;'
          'DELETE FROM INVEN_INI;'
          'DELETE FROM INVEN_MOVS;'
          'DELETE FROM LISTAPRECIOS_HISTORICO;'
          ''
          'DELETE FROM PEDIDOS;'
          'DELETE FROM PROG;'
          'DELETE FROM REQ;'
          ''
          'DELETE FROM TRASPASOS;'
          'DELETE FROM VENTASPOS;'
          ''
          'UPDATE ESTILOS SET existencia = 0;')
      end>
    Connection = FDConnection1
    Transaction = FDTransaction1
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 1220
    Top = 240
  end
  object mGeneros: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 168
    Top = 96
    object mGenerosNOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
  end
  object dsGeneros: TDataSource
    AutoEdit = False
    DataSet = mGeneros
    Left = 168
    Top = 152
  end
  object qUsr: TFDQuery
    OnNewRecord = qUsrNewRecord
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select * from usuarios')
    Left = 1208
    Top = 8
    object qUsrCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUsrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qUsrPASS: TStringField
      FieldName = 'PASS'
      Origin = 'PASS'
      Required = True
      Size = 10
    end
    object qUsrTIENDA: TStringField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      Required = True
      Size = 10
    end
    object qUsrACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
    end
    object qUsrADMIN: TBooleanField
      FieldName = 'ADMIN'
      Origin = '"ADMIN"'
      Required = True
    end
  end
  object dsUsr: TDataSource
    DataSet = qUsr
    Left = 1208
    Top = 56
  end
  object qGastos: TFDQuery
    OnNewRecord = qGastosNewRecord
    MasterSource = dsCajas
    MasterFields = 'TIENDA'
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'Select * from Gastos'
      'Where Tienda=:Tienda'
      '  and Caja=:Codigo')
    Left = 1216
    Top = 112
    ParamData = <
      item
        Name = 'TIENDA'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object qGastosTIENDA: TSmallintField
      FieldName = 'TIENDA'
      Origin = 'TIENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGastosCAJA: TSmallintField
      FieldName = 'CAJA'
      Origin = 'CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGastosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGastosCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Required = True
      Size = 90
    end
    object qGastosIMPORTE: TSingleField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
    end
  end
  object dsGastos: TDataSource
    DataSet = qGastos
    Left = 1216
    Top = 160
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 1008
    Top = 392
  end
  object qModEst: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction1
    SQL.Strings = (
      'select e.modelo, sum(e.existencia) existencia '
      'from estilos e'
      'where e.activo = True '
      'group by e.modelo')
    Left = 1128
    Top = 8
    object qModEstMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object qModEstEXISTENCIA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
