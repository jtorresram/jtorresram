unit DM;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  uniComboBox, uniGUIForm, FireDAC.Stan.StorageBin,
  uniStringGrid, QExport4, QExport4Xlsx, uniGUIBaseClasses, uniGUIClasses,
  uniFileUpload, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script;

type
  TFDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    qTiendas: TFDQuery;
    qTiendasCODIGO: TSmallintField;
    qTiendasNOMBRE: TStringField;
    qTiendasRAZON_SOCIAL: TStringField;
    qTiendasRFC: TStringField;
    qTiendasZONA: TSmallintField;
    qTiendasDIRECCION: TStringField;
    qTiendasCOLONIA: TStringField;
    qTiendasCIUDAD: TStringField;
    qTiendasESTADO: TStringField;
    qTiendasTELEFONOS: TStringField;
    qTiendasES_BODEGA: TBooleanField;
    qTiendasLISTA: TSmallintField;
    qTiendasPORCENT_INCRE: TCurrencyField;
    qTiendasNUMPEDIDO: TIntegerField;
    qTiendasFEC_ULTINV: TDateField;
    Query1: TFDQuery;
    qLineas: TFDQuery;
    qLineasCODIGO: TSmallintField;
    qLineasNOMBRE: TStringField;
    qMarcas: TFDQuery;
    qClasifi: TFDQuery;
    qColores: TFDQuery;
    qCorridas: TFDQuery;
    qMarcasCODIGO: TSmallintField;
    qMarcasNOMBRE: TStringField;
    qClasifiCODIGO: TSmallintField;
    qClasifiNOMBRE: TStringField;
    qColoresCODIGO: TSmallintField;
    qColoresNOMBRE: TStringField;
    qCorridasCODIGO: TSmallintField;
    qCorridasNOMBRE: TStringField;
    qCorridasTOTPUN: TSmallintField;
    qCorridasDESC01: TStringField;
    qCorridasDESC02: TStringField;
    qCorridasDESC03: TStringField;
    qCorridasDESC04: TStringField;
    qCorridasDESC05: TStringField;
    qCorridasDESC06: TStringField;
    qCorridasDESC07: TStringField;
    qCorridasDESC08: TStringField;
    qCorridasDESC09: TStringField;
    qCorridasDESC10: TStringField;
    qCorridasDESC11: TStringField;
    qCorridasDESC12: TStringField;
    qCorridasDESC13: TStringField;
    qCorridasDESC14: TStringField;
    qCorridasDESC15: TStringField;
    qCorridasDESC16: TStringField;
    qCorridasDESC17: TStringField;
    qEstilos: TFDQuery;
    qModelos: TFDQuery;
    dsColores: TDataSource;
    dsEstilos: TDataSource;
    dsModelos: TDataSource;
    dsCorridas: TDataSource;
    dsClasi: TDataSource;
    dsMarcas: TDataSource;
    dsLineas: TDataSource;
    dsTiendas: TDataSource;
    qPed: TFDQuery;
    qPedDet: TFDQuery;
    qPedRen: TFDQuery;
    dsPed: TDataSource;
    qPedTIENDA: TSmallintField;
    qPedFOLIO: TIntegerField;
    qPedDetTIENDA: TSmallintField;
    qPedDetFOLIO: TIntegerField;
    qPedDetPARTIDA: TSmallintField;
    qPedDetESTILO: TStringField;
    qPedRenTIENDA: TSmallintField;
    qPedRenFOLIO: TIntegerField;
    qPedRenPARTIDA: TSmallintField;
    qPedRenPUNTO: TSmallintField;
    qPedRenCANTIDAD: TSmallintField;
    dsPedDet: TDataSource;
    qPedDetCODCORRIDA: TSmallintField;
    qProvs: TFDQuery;
    dsProvs: TDataSource;
    qProvsCODIGO: TSmallintField;
    qProvsNOMBRE: TStringField;
    qProvsTIPO: TStringField;
    qProvsRFC: TStringField;
    qProvsREPRESENTANTE: TStringField;
    qProvsDOMICILIO: TStringField;
    qProvsCOLONIA: TStringField;
    qProvsCIUDAD: TStringField;
    qProvsESTADO: TStringField;
    qProvsTELEFONOS: TStringField;
    qProvsMAIL: TStringField;
    qProvsWEB: TStringField;
    qProvsCREDITO_DIAS: TSmallintField;
    qProvsCREDITO_LIMITE: TSingleField;
    qProvsSALDO: TSingleField;
    qPedCODPROV: TSmallintField;
    qPedFECHA: TDateField;
    qPedESTATUS: TStringField;
    qPedENTREGA_INI: TDateField;
    qPedENTREGA_FIN: TDateField;
    qPedFLETE: TStringField;
    qPedOBS: TStringField;
    qProvsProd: TFDQuery;
    qProvsProdCODIGO: TSmallintField;
    qProvsProdNOMBRE: TStringField;
    qProvsProdTIPO: TStringField;
    qProvsProdRFC: TStringField;
    qProvsProdREPRESENTANTE: TStringField;
    qProvsProdDOMICILIO: TStringField;
    qProvsProdCOLONIA: TStringField;
    qProvsProdCIUDAD: TStringField;
    qProvsProdESTADO: TStringField;
    qProvsProdTELEFONOS: TStringField;
    qProvsProdMAIL: TStringField;
    qProvsProdWEB: TStringField;
    qProvsProdCREDITO_DIAS: TSmallintField;
    qProvsProdCREDITO_LIMITE: TSingleField;
    qProvsProdSALDO: TSingleField;
    qPedPROVEEDOR: TStringField;
    dsqProvsProd: TDataSource;
    qPedDetTOTCANTIDAD: TAggregateField;
    qPedCANTIDAD: TSmallintField;
    qCtes: TFDQuery;
    dsCtes: TDataSource;
    qCtesCODIGO: TSmallintField;
    qCtesNOMBRE: TStringField;
    qCtesEMPLEADO: TBooleanField;
    qCtesTIPO: TStringField;
    qCtesRFC: TStringField;
    qCtesREPRESENTANTE: TStringField;
    qCtesDOMICILIO: TStringField;
    qCtesCOLONIA: TStringField;
    qCtesCIUDAD: TStringField;
    qCtesESTADO: TStringField;
    qCtesTELEFONOS: TStringField;
    qCtesMAIL: TStringField;
    qCtesWEB: TStringField;
    qCtesCREDITO_DIAS: TSmallintField;
    dsModeloBuscar: TDataSource;
    qModeloBuscar: TFDQuery;
    qModeloBuscarESTILO: TStringField;
    qModeloBuscarNOMBRE: TStringField;
    qModeloBuscarMODELO: TStringField;
    qModeloBuscarMENUDEO: TSingleField;
    qPedFECENTRADA: TDateField;
    qPedRenENTRADA: TSmallintField;
    qPedDetTOTENTRADA: TAggregateField;
    qPedENTRADA: TSmallintField;
    qEmpleados: TFDQuery;
    dsEmps: TDataSource;
    qEmpleadosCODIGO: TSmallintField;
    qEmpleadosNOMBRE: TStringField;
    qEmpleadosDOMICILIO: TStringField;
    qEmpleadosCOLONIA: TStringField;
    qEmpleadosCP: TStringField;
    qEmpleadosCIUDAD: TStringField;
    qEmpleadosESTADO: TStringField;
    qEmpleadosTELEFONO: TStringField;
    qEmpleadosPUESTO: TStringField;
    qEmpleadosTIENDA: TSmallintField;
    qEmpleadosFECHA_INGRESO: TDateField;
    qEmpleadosOBS: TStringField;
    qInven: TFDQuery;
    qInvenMovs: TFDQuery;
    qInvenMovsTIENDA: TSmallintField;
    qInvenMovsESTILO: TStringField;
    qInvenMovsID: TIntegerField;
    qInvenMovsFECHA: TDateField;
    qInvenMovsTIPO: TSmallintField;
    qInvenMovsFOLIO: TIntegerField;
    qInvenMovsDet: TFDQuery;
    qInvenMovsDetID: TIntegerField;
    qInvenMovsDetPUNTO: TSmallintField;
    qInvenMovsDetCANTIDAD: TSmallintField;
    qInvenTIENDA: TSmallintField;
    qInvenESTILO: TStringField;
    qInvenPUNTO: TSmallintField;
    qInvenEXISTENCIA: TSmallintField;
    Query2: TFDQuery;
    mPrecios: TFDMemTable;
    mPreciosCODIGO: TByteField;
    mPreciosDESCRIPCION: TStringField;
    dsPrecios: TDataSource;
    qTiendasDest: TFDQuery;
    dsTiendasDest: TDataSource;
    qInveTienda: TFDQuery;
    dsInveTienda: TDataSource;
    qInveTiendaTIENDA: TSmallintField;
    qInveTiendaESTILO: TStringField;
    qInveTiendaMODELO: TStringField;
    qInveTiendaEXISTENCIA: TLargeintField;
    qTras: TFDQuery;
    qTrasDet: TFDQuery;
    qTrasRen: TFDQuery;
    dsTras: TDataSource;
    dsTrasDet: TDataSource;
    qTrasDetTIENDA: TSmallintField;
    qTrasDetFOLIO: TIntegerField;
    qTrasDetPARTIDA: TSmallintField;
    qTrasDetESTILO: TStringField;
    qTrasDetCODCORRIDA: TSmallintField;
    qTrasTIENDA: TSmallintField;
    qTrasFOLIO: TIntegerField;
    qTrasFECHA: TDateField;
    qTrasCANTIDAD: TSmallintField;
    qTrasDetTOTCANTIDAD: TAggregateField;
    qTrasDetTOTIMPORTE: TAggregateField;
    qTrasRenTIENDA: TSmallintField;
    qTrasRenFOLIO: TIntegerField;
    qTrasRenPARTIDA: TSmallintField;
    qTrasRenPUNTO: TSmallintField;
    qTrasRenCANTIDAD: TSmallintField;
    qTrasRenENTRADA: TSmallintField;
    qInvenMovsDetEXISTENCIA: TSmallintField;
    qInvenMovsDetTIENDA: TSmallintField;
    qInvenMovsDetESTILO: TStringField;
    dsInvenMovs: TDataSource;
    mPuntos: TFDMemTable;
    mPuntosPARTIDA: TSmallintField;
    mPuntosESTILO: TStringField;
    mPuntosC01: TStringField;
    mPuntosC02: TStringField;
    mPuntosC03: TStringField;
    mPuntosC04: TStringField;
    mPuntosC05: TStringField;
    mPuntosC06: TStringField;
    mPuntosC07: TStringField;
    mPuntosC08: TStringField;
    mPuntosC09: TStringField;
    mPuntosC10: TStringField;
    mPuntosP01: TSmallintField;
    mPuntosP02: TSmallintField;
    mPuntosP03: TSmallintField;
    mPuntosP04: TSmallintField;
    mPuntosP05: TSmallintField;
    mPuntosP06: TSmallintField;
    mPuntosP07: TSmallintField;
    mPuntosP08: TSmallintField;
    mPuntosP09: TSmallintField;
    mPuntosP10: TSmallintField;
    mPuntosPARES: TSmallintField;
    mPuntosC11: TStringField;
    mPuntosC12: TStringField;
    mPuntosC13: TStringField;
    mPuntosC14: TStringField;
    mPuntosC15: TStringField;
    mPuntosC16: TStringField;
    mPuntosC17: TStringField;
    mPuntosP11: TSmallintField;
    mPuntosP12: TSmallintField;
    mPuntosP13: TSmallintField;
    mPuntosP14: TSmallintField;
    mPuntosP15: TSmallintField;
    mPuntosP16: TSmallintField;
    mPuntosP17: TSmallintField;
    qBodegas: TFDQuery;
    dsBodegas: TDataSource;
    qEmbar: TFDQuery;
    qEmbarDet: TFDQuery;
    qEmbarRen: TFDQuery;
    dsEmbar: TDataSource;
    dsEmbarDet: TDataSource;
    qEmbarDetFOLIO: TIntegerField;
    qEmbarDetPARTIDA: TSmallintField;
    qEmbarDetESTILO: TStringField;
    qEmbarDetCODCORRIDA: TSmallintField;
    qEmbarRenFOLIO: TIntegerField;
    qEmbarRenPARTIDA: TSmallintField;
    qEmbarRenPUNTO: TSmallintField;
    qEmbarRenCANTIDAD: TSmallintField;
    qEmbarRenENTRADA: TSmallintField;
    qEmbarTIENDA: TSmallintField;
    qEmbarFOLIO: TIntegerField;
    qEmbarFECHA: TDateField;
    qEmbarCANTIDAD: TSmallintField;
    qEmbarDetTIENDA: TSmallintField;
    qEmbarRenTIENDA: TSmallintField;
    qInvenTipos: TFDQuery;
    qEmbarDetTOTCANTIDAD: TAggregateField;
    Query3: TFDQuery;
    qTransito: TFDQuery;
    qTransitoTIENDA: TSmallintField;
    qTransitoFOLIO: TIntegerField;
    qTransitoFECHA: TDateField;
    dsTransito: TDataSource;
    qTransitoDet: TFDQuery;
    qTransitoDetTIENDA: TSmallintField;
    qTransitoDetFOLIO: TIntegerField;
    qTransitoDetPARTIDA: TSmallintField;
    qTransitoDetESTILO: TStringField;
    qTransitoDetCODCORRIDA: TSmallintField;
    qTransitoDetTOTENTRADA: TAggregateField;
    dsTransitoDet: TDataSource;
    qTiendasOri: TFDQuery;
    dsTiendasOri: TDataSource;
    qCtesPos: TFDQuery;
    qCtesPosCODIGO: TSmallintField;
    qCtesPosNOMBRE: TStringField;
    qCtesPosEMPLEADO: TBooleanField;
    qCtesPosTIPO: TStringField;
    qCtesPosRFC: TStringField;
    qCtesPosREPRESENTANTE: TStringField;
    qCtesPosDOMICILIO: TStringField;
    qCtesPosCOLONIA: TStringField;
    qCtesPosCIUDAD: TStringField;
    qCtesPosESTADO: TStringField;
    qCtesPosTELEFONOS: TStringField;
    qCtesPosMAIL: TStringField;
    qCtesPosWEB: TStringField;
    dsCtesPos: TDataSource;
    qVentaPos: TFDQuery;
    qVentasPosDet: TFDQuery;
    dsVentasPos: TDataSource;
    mFormasPago: TFDMemTable;
    mFormasPagoDESCRIPCION: TStringField;
    mTiposPos: TFDMemTable;
    mTiposPosDESCRIPCION: TStringField;
    dsVentasPosDet: TDataSource;
    qVentasPosDetPARTIDA: TSmallintField;
    qVentasPosDetESTILO: TStringField;
    qVentasPosDetPUNTO: TSmallintField;
    qVentasPosDetCANTIDAD: TSmallintField;
    qVentaPosTIENDA: TSmallintField;
    qVentaPosFOLIO: TIntegerField;
    qVentaPosCODCTE: TSmallintField;
    qVentaPosFECHA: TSQLTimeStampField;
    qVentaPosCANTIDAD: TSmallintField;
    mVentasDet: TFDMemTable;
    mVentasDetPARTIDA: TSmallintField;
    mVentasDetESTILO: TStringField;
    mVentasDetPUNTO: TSmallintField;
    mVentasDetCANTIDAD: TSmallintField;
    dsmVentasDet: TDataSource;
    mVentasDetTOTIMPORTE: TAggregateField;
    mVentasDetCANTIORI: TSmallintField;
    mVentasDetTODCTO: TAggregateField;
    qTiendasIMPUESTO: TBooleanField;
    qCajas: TFDQuery;
    qCajasTIENDA: TSmallintField;
    qCajasCODIGO: TSmallintField;
    qCajasESTATUS: TStringField;
    dsCajas: TDataSource;
    qCxc_Conce: TFDQuery;
    qCxc_ConceCODIGO: TSmallintField;
    qCxc_ConceNOMBRE: TStringField;
    qCxc_ConceTIPO: TStringField;
    qCxc_ConceNOMPOL: TStringField;
    qCxc_ConceCUENTA: TStringField;
    dsCxc_Conce: TDataSource;
    qTiendasOriCODIGO: TSmallintField;
    qTiendasOriNOMBRE: TStringField;
    qCxc_ConceES_PAGO: TBooleanField;
    qCxcDet: TFDQuery;
    dsCxc: TDataSource;
    qCxcDetCODCTE: TSmallintField;
    qCxcDetCODCXC: TSmallintField;
    qCxcDetDOCTO: TLargeintField;
    qCxcDetFOLIONOTA: TIntegerField;
    qCxcDetFECHA: TDateField;
    qCxcDetFECVEN: TDateField;
    qCxc_ConceM: TFDQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField1: TBooleanField;
    dsCxc_ConceM: TDataSource;
    dsCxcDet: TDataSource;
    qCxc_ConceD: TFDQuery;
    SmallintField2: TSmallintField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BooleanField2: TBooleanField;
    dsCxc_ConceD: TDataSource;
    qCxcDocs: TFDQuery;
    qCxcDocsCODCTE: TSmallintField;
    qCxcDocsCODCXC: TSmallintField;
    qCxcDocsFECHA: TDateField;
    qCxcDocsFECVEN: TDateField;
    dsCxcDocs: TDataSource;
    qCajaMovs: TFDQuery;
    qCtesPosCREDITO_DIAS: TSmallintField;
    qInveGral: TFDQuery;
    dsInveGral: TDataSource;
    qInveGralESTILO: TStringField;
    qInveGralMODELO: TStringField;
    qInveGralEXISTENCIA: TLargeintField;
    mPuntosTOTPUN: TSmallintField;
    qApartados: TFDQuery;
    qApartadosTIENDA: TSmallintField;
    qApartadosESTILO: TStringField;
    qApartadosPUNTO: TSmallintField;
    qApartadosAPARTADOS: TSmallintField;
    qInveTiendaCOSTO: TSingleField;
    qInveTiendaMENUDEO: TSingleField;
    qInveGralCOSTO: TSingleField;
    qInveGralMENUDEO: TSingleField;
    mPuntosMODELO: TStringField;
    mPuntosCOLOR: TStringField;
    mPuntosCOSTO: TSingleField;
    mPuntosPRECIO: TSingleField;
    qEmpresas: TFDQuery;
    qEmpresasNOMBRE: TStringField;
    qEmpresasRFC: TStringField;
    mInveFis: TFDMemTable;
    mInveFisTIENDA: TSmallintField;
    mInveFisESTILO: TStringField;
    mInveFisDESCRIPCION: TStringField;
    mInveFisCANTIDAD: TSmallintField;
    mInveFisCANTIDAD_ACTUAL: TSmallintField;
    mInveFisCOSTO: TCurrencyField;
    mInveFisIMPORTE: TCurrencyField;
    DsInveFis: TDataSource;
    mInveFisPUNTO: TSmallintField;
    qCorridasINCREMENTO: TSmallintField;
    qCorridasV01: TStringField;
    qCorridasV02: TStringField;
    qCorridasV03: TStringField;
    qCorridasV04: TStringField;
    qCorridasV05: TStringField;
    qCorridasV06: TStringField;
    qCorridasV07: TStringField;
    qCorridasV08: TStringField;
    qCorridasV09: TStringField;
    qCorridasV10: TStringField;
    qCorridasV11: TStringField;
    qCorridasV12: TStringField;
    qCorridasV13: TStringField;
    qCorridasV14: TStringField;
    qCorridasV15: TStringField;
    qCorridasV16: TStringField;
    qCorridasV17: TStringField;
    mBitacora: TFDMemTable;
    mBitacoraTIENDA: TSmallintField;
    mBitacoraESTILO: TStringField;
    mBitacoraERROR: TStringField;
    qInveIni: TFDQuery;
    qInveIniFOLIO: TIntegerField;
    qInveIniFECHA: TDateField;
    qInveIniEMPLEADO: TSmallintField;
    mInveFisESTATUS: TStringField;
    mInveFisESTILO2: TStringField;
    qInveIniDet: TFDQuery;
    qInveIniDetTIENDA: TIntegerField;
    qInveIniDetFOLIO: TIntegerField;
    dsInveIni: TDataSource;
    qInveIniDetESTILO: TStringField;
    dsBitacora: TDataSource;
    mVentasDetTALLA: TStringField;
    qVentaPosID: TIntegerField;
    qVentasPosDetID: TIntegerField;
    qCxcDetID: TIntegerField;
    qCxcDetUNICO: TIntegerField;
    qCxcDocsID: TIntegerField;
    qCxcDocsTIENDA: TSmallintField;
    qCxcDocsTIPO: TStringField;
    qCxcDocsFOLIO: TIntegerField;
    qCxc: TFDQuery;
    qCxcID: TIntegerField;
    qCxcCODCTE: TSmallintField;
    qCxcCODCXC: TSmallintField;
    qCxcFECHA: TDateField;
    qCxcFECVEN: TDateField;
    mVentasDetDESCRIPCION: TStringField;
    qCambios: TFDQuery;
    qCambiosID: TIntegerField;
    qCambiosTIENDA: TSmallintField;
    qCambiosFOLIO: TIntegerField;
    qCambiosDet: TFDQuery;
    qCambiosDetID: TIntegerField;
    qCambiosDetREN1: TSmallintField;
    qCxcTIPO: TStringField;
    qCxcDetTIPO: TStringField;
    qDevol: TFDQuery;
    qDevolDet: TFDQuery;
    qDevolID: TIntegerField;
    qDevolTIENDA: TSmallintField;
    qDevolFOLIO: TIntegerField;
    qDevolFECHA: TSQLTimeStampField;
    qDevolDetID: TIntegerField;
    qDevolDetREN: TSmallintField;
    qDevolDetMODELO: TStringField;
    qDevolDetESTILO: TStringField;
    qDevolDetCOLOR: TSmallintField;
    qCaja_Concep: TFDQuery;
    qCaja_ConcepCODIGO: TSmallintField;
    qCaja_ConcepNOMBRE: TStringField;
    qCaja_ConcepNATURALEZA: TStringField;
    qReq: TFDQuery;
    qReqFOLIO: TIntegerField;
    qReqCODCLI: TSmallintField;
    qReqFECHA: TDateField;
    dsReq: TDataSource;
    qReqCLIENTE: TStringField;
    qReqDet: TFDQuery;
    dsReqDet: TDataSource;
    qReqDetFOLIO: TIntegerField;
    qReqDetPARTIDA: TSmallintField;
    qReqDetESTILO: TStringField;
    qReqDetCODCORRIDA: TSmallintField;
    qReqRen: TFDQuery;
    qReqRenFOLIO: TIntegerField;
    qReqRenPARTIDA: TSmallintField;
    qReqRenPUNTO: TSmallintField;
    qReqRenCANTIDAD: TSmallintField;
    qReqRenSALIDA: TSmallintField;
    qReqDetTOTCANTIDAD: TAggregateField;
    qReqDetTOTIMPORTE: TAggregateField;
    qReqDetTOTSALIDA: TAggregateField;
    qClasElement: TFDQuery;
    qElement: TFDQuery;
    qClasElementCLAVE: TStringField;
    qClasElementNOMBRE: TStringField;
    dsClaElement: TDataSource;
    dsElement: TDataSource;
    qElementCLAVE: TStringField;
    qElementNOMBRE: TStringField;
    qElementTIPO: TStringField;
    qElementCLAVECLA: TStringField;
    qElementCLASIFICACION: TStringField;
    dsReqRen: TDataSource;
    qCorridasDEF01: TSmallintField;
    qCorridasDEF02: TSmallintField;
    qCorridasDEF03: TSmallintField;
    qCorridasDEF04: TSmallintField;
    qCorridasDEF05: TSmallintField;
    qCorridasDEF06: TSmallintField;
    qCorridasDEF07: TSmallintField;
    qCorridasDEF08: TSmallintField;
    qCorridasDEF09: TSmallintField;
    qCorridasDEF10: TSmallintField;
    qCorridasDEF11: TSmallintField;
    qCorridasDEF12: TSmallintField;
    qCorridasDEF13: TSmallintField;
    qCorridasDEF14: TSmallintField;
    qCorridasDEF15: TSmallintField;
    qCorridasDEF16: TSmallintField;
    qCorridasDEF17: TSmallintField;
    qModelosMODELO: TStringField;
    qModelosNOMBRE: TStringField;
    qModelosUNIDAD: TStringField;
    qModelosRECIO: TStringField;
    qModelosCORRIDA: TSmallintField;
    qModelosLINEA: TSmallintField;
    qModelosMARCA: TSmallintField;
    qModelosGENERO: TStringField;
    qModelosACTIVO: TBooleanField;
    qModelosFLUJO: TSmallintField;
    qModelosIMAGEN: TBlobField;
    qModelosCLASIFI: TSmallintField;
    qModelosHORMA: TSmallintField;
    qModelosCOSTO: TSingleField;
    qModelosPRECIO: TSingleField;
    dsUnidades: TDataSource;
    qUnidades: TFDQuery;
    qUnidadesCLAVE: TStringField;
    qUnidadesNOMBRE: TStringField;
    dsHormas: TDataSource;
    qHormas: TFDQuery;
    qHormasCODIGO: TSmallintField;
    qHormasCORRIDA: TSmallintField;
    qHormasNOMBRE: TStringField;
    dsDeptos: TDataSource;
    qDeptos: TFDQuery;
    qDeptosCODIGO: TSmallintField;
    qDeptosNOMBRE: TStringField;
    dsFlujos: TDataSource;
    qFlujos: TFDQuery;
    dsFlujoDet: TDataSource;
    qFlujoDet: TFDQuery;
    qFlujoDetCODIGO: TSmallintField;
    qFlujoDetORDEN: TSmallintField;
    qFlujoDetDEPTO: TSmallintField;
    qFlujoDetLK_DEPTO: TStringField;
    qFlujosCODIGO: TSmallintField;
    qFlujosNOMBRE: TStringField;
    qEstilosESTILO: TStringField;
    qEstilosMODELO: TStringField;
    qEstilosCOLOR: TSmallintField;
    qEstilosNOMBRE: TStringField;
    qEstilosCODPROV: TSmallintField;
    qEstilosES_SALDO: TBooleanField;
    qEstilosOBS: TStringField;
    qEstilosCOSTO: TSingleField;
    qEstilosMENUDEO: TSingleField;
    qEstilosMEDIO_MAYOREO: TSingleField;
    qEstilosMAYOREO: TSingleField;
    qEstilosFORANEA: TSingleField;
    qEstilosIMAGEN: TBlobField;
    qEstilosEXISTENCIA: TSmallintField;
    qEstilosACTIVO: TBooleanField;
    qFam: TFDQuery;
    qFamCLAVE: TStringField;
    qFamNOMBRE: TStringField;
    qTip: TFDQuery;
    qTipCLAVE: TStringField;
    qTipNOMBRE: TStringField;
    qTipFAMILIA: TStringField;
    qGrup: TFDQuery;
    qGrupCLAVE: TStringField;
    qGrupNOMBRE: TStringField;
    qGrupTIPO: TStringField;
    qGrupFAMILIA: TStringField;
    qIns: TFDQuery;
    qInsCLAVE: TStringField;
    qInsNOMBRE: TStringField;
    qInsNUMPARTE: TStringField;
    qInsESTATUS: TStringField;
    qInsFAMILIA: TStringField;
    qInsTIPO: TStringField;
    qInsGRUPO: TStringField;
    qInsFOTO1: TBlobField;
    qInsALTA: TDateField;
    dsFam: TDataSource;
    dsTip: TDataSource;
    dsGrup: TDataSource;
    dsIns: TDataSource;
    Exp1: TQExport4Xlsx;
    UniFileUpload1: TUniFileUpload;
    qInsUNI_ENT: TStringField;
    qInsUNI_SAL: TStringField;
    qDeptoNom: TFDQuery;
    dsDeptoNom: TDataSource;
    qDeptoNomCODIGO: TSmallintField;
    qDeptoNomNOMBRE: TStringField;
    qPuesNom: TFDQuery;
    dsPueNom: TDataSource;
    qEmpProd: TFDQuery;
    dsEmpProd: TDataSource;
    qEmpProdCLAVE: TStringField;
    qEmpProdNOMBRES: TStringField;
    qEmpProdPATERNO: TStringField;
    qEmpProdMATERNO: TStringField;
    qEmpProdCOMPLETO: TStringField;
    qEmpProdALIAS: TStringField;
    qEmpProdACTIVO: TBooleanField;
    qEmpProdDEPTO: TSmallintField;
    qEmpProdPUESTO: TSmallintField;
    qEmpProdFECALTA: TDateField;
    qEmpProdFOTO: TBlobField;
    qEmpProdOBSERVACIONES: TMemoField;
    qEmpProdDIRECCION: TStringField;
    qEmpProdCOLONIA: TStringField;
    qEmpProdCEL: TStringField;
    qPuesNomCODIGO: TSmallintField;
    qPuesNomNOMBRE: TStringField;
    qModelosCAPTURA: TStringField;
    qConsumos: TFDQuery;
    qConsumosMODELO: TStringField;
    qConsumosINSUMO: TStringField;
    qConsumosCONSUMO: TSingleField;
    qConsumosELEMENTO: TStringField;
    qConsumosDEPTO: TSmallintField;
    qConsumosTALLA: TBooleanField;
    qConsumosLK_INSUMO: TStringField;
    qModelosLK_CORRIDA: TStringField;
    dsConsumos: TDataSource;
    qConsumosLK_ELEMENTO: TStringField;
    qConsumosLK_DEPTO: TStringField;
    qConsumosLK_UNIDAD: TStringField;
    qConsumosC01: TSmallintField;
    qConsumosC02: TSmallintField;
    qConsumosC03: TSmallintField;
    qConsumosC04: TSmallintField;
    qConsumosC05: TSmallintField;
    qConsumosC06: TSmallintField;
    qConsumosC07: TSmallintField;
    qConsumosC08: TSmallintField;
    qConsumosC09: TSmallintField;
    qConsumosC10: TSmallintField;
    qConsumosC11: TSmallintField;
    qConsumosC12: TSmallintField;
    qFracc: TFDQuery;
    dsFracc: TDataSource;
    qFraccDEPTO: TSmallintField;
    qFraccCODIGO: TSmallintField;
    qFraccLK_DEPTO: TStringField;
    qFraccNOMBRE: TStringField;
    qFraccCOSTO: TSingleField;
    qFracMod: TFDQuery;
    dsFracMod: TDataSource;
    qFracModMODELO: TStringField;
    qFracModDEPTO: TSmallintField;
    qFracModFRACCION: TSmallintField;
    qFracModORDEN: TSmallintField;
    qFracModTIEMPO: TSingleField;
    qFracModCOSTO: TSingleField;
    qDeptoFrac: TFDQuery;
    qDeptoFracDEPTO: TSmallintField;
    qDeptoFracNOMBRE: TStringField;
    dsDeptoFrac: TDataSource;
    qFracDepto: TFDQuery;
    dsFracDepto: TDataSource;
    qFracModLK_DEPTO: TStringField;
    qFracModLK_FRACCION: TStringField;
    qEstConsumos: TFDQuery;
    qEstConsumosESTILO: TStringField;
    qEstConsumosINSUMO: TStringField;
    qEstConsumosCONSUMO: TSingleField;
    qEstConsumosELEMENTO: TStringField;
    qEstConsumosDEPTO: TSmallintField;
    qEstConsumosTALLA: TBooleanField;
    qEstConsumosC01: TSmallintField;
    qEstConsumosC02: TSmallintField;
    qEstConsumosC03: TSmallintField;
    qEstConsumosC04: TSmallintField;
    qEstConsumosC05: TSmallintField;
    qEstConsumosC06: TSmallintField;
    qEstConsumosC07: TSmallintField;
    qEstConsumosC08: TSmallintField;
    qEstConsumosC09: TSmallintField;
    qEstConsumosC10: TSmallintField;
    qEstConsumosC11: TSmallintField;
    qEstConsumosC12: TSmallintField;
    qEstFrac: TFDQuery;
    qEstFracESTILO: TStringField;
    qEstFracDEPTO: TSmallintField;
    qEstFracFRACCION: TSmallintField;
    qEstFracORDEN: TSmallintField;
    qEstFracTIEMPO: TSingleField;
    qEstFracCOSTO: TSingleField;
    dsEstConsumos: TDataSource;
    dsEstFrac: TDataSource;
    qEstConsumosC13: TSmallintField;
    qEstConsumosC14: TSmallintField;
    qEstConsumosC15: TSmallintField;
    qEstConsumosC16: TSmallintField;
    qEstConsumosC17: TSmallintField;
    qConsumosC13: TSmallintField;
    qConsumosC14: TSmallintField;
    qConsumosC15: TSmallintField;
    qConsumosC16: TSmallintField;
    qConsumosC17: TSmallintField;
    qEstFracLK_DEPTO: TStringField;
    qEstFracLK_FRACCION: TStringField;
    qModeloBuscarCOSTO: TSingleField;
    qModeloBuscarCORRIDA: TIntegerField;
    qModeloBuscarNOM_CORRIDA: TStringField;
    qModeloBuscarCOLOR: TSmallintField;
    qModeloBuscarNOM_COLOR: TStringField;
    qEstConsumosLK_UNIDAD: TStringField;
    qEstConsumosLK_INSUMOS: TStringField;
    qEstConsumosLK_ELEMENTO: TStringField;
    qEstConsumosLK_DEPTO: TStringField;
    qInsCOLOR: TBooleanField;
    qEstilosCORRIDA: TSmallintField;
    qProg: TFDQuery;
    qPlantas: TFDQuery;
    qPlantasCODIGO: TSmallintField;
    qPlantasNOMBRE: TStringField;
    dsPlantas: TDataSource;
    qReqRenPRSPROG: TSmallintField;
    qProgDet: TFDQuery;
    dsProg: TDataSource;
    dsProgDet: TDataSource;
    qProgDetFOLIO: TIntegerField;
    qProgDetLOTE: TIntegerField;
    qProgDetCODCLI: TSmallintField;
    qProgDetESTILO: TStringField;
    qProgDetCODCORRIDA: TSmallintField;
    qProgDetCANTIDAD: TSmallintField;
    qProgDetESTATUS: TStringField;
    qProgRen: TFDQuery;
    dsProgRen: TDataSource;
    qProgRenFOLIO: TIntegerField;
    qProgRenLOTE: TIntegerField;
    qProgRenREQ: TIntegerField;
    qProgRenREQPARTIDA: TSmallintField;
    qProgRenPUNTO: TSmallintField;
    qProgRenCANTIDAD: TSmallintField;
    qProgFOLIO: TIntegerField;
    qProgFECHA: TDateField;
    qProgPARES: TSmallintField;
    qProgPLANTA: TSmallintField;
    qProgIMPRESO: TBooleanField;
    qProgOBSERVACIONES: TStringField;
    qProgESTATUS: TStringField;
    qProgFECCAN: TDateField;
    qInveTiendaCORRIDA: TSmallintField;
    qInveTiendaNOM_CORRIDA: TStringField;
    qInveGralCORRIDA: TSmallintField;
    qInveGralNOM_CORRIDA: TStringField;
    qInveTiendaNOM_COLOR: TStringField;
    qInveGralNOM_COLOR: TStringField;
    qInveGralCOLOR: TSmallintField;
    qInveTiendaCOLOR: TSmallintField;
    qRen: TFDQuery;
    qRenTIENDA: TSmallintField;
    qRenFOLIO: TIntegerField;
    qRenPARTIDA: TSmallintField;
    qRenPUNTO: TSmallintField;
    qRenCANTIDAD: TSmallintField;
    qRenENTRADA: TSmallintField;
    mEstilosUsados: TFDMemTable;
    mEstilosUsadosMODELO: TStringField;
    mEstilosUsadosESTILO: TStringField;
    qVentaPosCLIENTE: TStringField;
    dsCajaMovs: TDataSource;
    qCajaCocep: TFDQuery;
    qCajaCocepCODIGO: TSmallintField;
    qCajaCocepNOMBRE: TStringField;
    qCajaCocepNATURALEZA: TStringField;
    qCajaMovsTIENDA: TSmallintField;
    qCajaMovsCAJA: TSmallintField;
    qCajaMovsFECHA: TSQLTimeStampField;
    qCajaMovsFECHA_CIERRE: TSQLTimeStampField;
    qCajaMovsEMPLEADO: TSmallintField;
    qCtesPosCREDITO_LIMITE: TFMTBCDField;
    qCtesPosSALDO: TFMTBCDField;
    qVentasPosDetPRECIO: TFMTBCDField;
    qVentasPosDetIMPORTE: TFMTBCDField;
    qVentasPosDetDCTO: TFMTBCDField;
    qVentasPosDetIMPORTE2: TFMTBCDField;
    qVentasPosDetTALLA: TStringField;
    qCtesCREDITO_LIMITE: TFMTBCDField;
    qCtesSALDO: TFMTBCDField;
    qVentaPosTIPO: TStringField;
    qVentaPosTOTAL: TFMTBCDField;
    qVentaPosDCTO: TFMTBCDField;
    qVentaPosIMPUESTO: TFMTBCDField;
    qVentaPosNETO: TFMTBCDField;
    qVentaPosOBS: TStringField;
    qVentaPosCODLISTAPRE: TSmallintField;
    qVentaPosFORMAPAGO: TStringField;
    qVentaPosESTATUS: TStringField;
    qVentaPosCAJA: TSmallintField;
    qVentaPosAPARTADOSALIDA: TBooleanField;
    mVentasDetPRECIO: TFMTBCDField;
    mVentasDetIMPORTE: TFMTBCDField;
    mVentasDetDCTO: TFMTBCDField;
    mVentasDetIMPORTE2: TFMTBCDField;
    qCxcCANTIDAD: TFMTBCDField;
    qCxcSALDO: TFMTBCDField;
    qCxcDetDESMON: TStringField;
    qCxcDetTIPOCAMBIO: TBCDField;
    qCxcDetMONTO: TFMTBCDField;
    qCxcDetCARGO: TFMTBCDField;
    qCxcDetABONO: TFMTBCDField;
    qCxcDetCTACHEQ: TSmallintField;
    qCxcDetORIGEN: TStringField;
    qCxcDetFOLIO1: TLargeintField;
    qCxcDetOBSERVA: TStringField;
    qCxcDocsTIPO_1: TStringField;
    qCxcDocsCANTIDAD: TFMTBCDField;
    qCxcDocsSALDO: TFMTBCDField;
    qInvenMovsCANTIDAD: TSmallintField;
    qInvenMovsEXISTENCIA: TSmallintField;
    qInvenMovsPROMEDIO: TFMTBCDField;
    qInvenMovsULTIMO: TFMTBCDField;
    qTransitoCANTIDAD: TSmallintField;
    qTransitoTOTAL: TFMTBCDField;
    qTransitoTIENDA2: TSmallintField;
    qTransitoFECHA_ENTRADA: TDateField;
    qTransitoENTRADA: TSmallintField;
    qTransitoOBS: TStringField;
    qTransitoESTATUS: TStringField;
    qTransitoDetCOSTO: TFMTBCDField;
    qTransitoDetPRECIO: TFMTBCDField;
    qTransitoDetCANTIDAD: TSmallintField;
    qTransitoDetIMPORTE: TFMTBCDField;
    qTransitoDetESTATUS: TStringField;
    qTransitoDetENTRADA: TSmallintField;
    qDevolDetPUNTO: TSmallintField;
    qDevolDetCANTIDAD: TSmallintField;
    qDevolDetCONCEPTO: TStringField;
    qReqDetCOSTO: TFMTBCDField;
    qReqDetPRECIO: TFMTBCDField;
    qReqDetCANTIDAD: TSmallintField;
    qReqDetIMPORTE: TFMTBCDField;
    qReqDetESTATUS: TStringField;
    qReqDetSALIDA: TSmallintField;
    qReqDetMUESTRAS: TBooleanField;
    qReqDetCTEPEDIDO: TStringField;
    qInveIniCANTIDAD: TSmallintField;
    qInveIniTOTAL: TFMTBCDField;
    qInveIniESTATUS: TStringField;
    qInveIniOBS: TStringField;
    qInveIniTIPO: TStringField;
    qInveIniDetPUNTO: TIntegerField;
    qInveIniDetCANTIDAD: TSmallintField;
    qInveIniDetCOSTO: TFMTBCDField;
    qInveIniDetIMPORTE: TFMTBCDField;
    qCambiosFECHA: TSQLTimeStampField;
    qCambiosTOTENTRADA: TFMTBCDField;
    qCambiosTOTSALIDA: TFMTBCDField;
    qCambiosDetESTILO1: TStringField;
    qCambiosDetTALLA1: TStringField;
    qCambiosDetPUNTO1: TSmallintField;
    qCambiosDetPRECIO1: TFMTBCDField;
    qCambiosDetCANTIDAD1: TSmallintField;
    qCambiosDetIMPORTE1: TFMTBCDField;
    qCambiosDetREN2: TSmallintField;
    qCambiosDetESTILO2: TStringField;
    qCambiosDetTALLA2: TStringField;
    qCambiosDetPUNTO2: TSmallintField;
    qCambiosDetPRECIO2: TFMTBCDField;
    qCambiosDetCANTIDAD2: TSmallintField;
    qCambiosDetIMPORTE2: TFMTBCDField;
    qReqCANTIDAD: TSmallintField;
    qReqTOTAL: TFMTBCDField;
    qReqESTATUS: TStringField;
    qReqENTREGA_INI: TDateField;
    qReqENTREGA_FIN: TDateField;
    qReqFLETE: TStringField;
    qReqOBS: TStringField;
    qReqFECSALIDA: TDateField;
    qReqSALIDA: TSmallintField;
    qReqCTEPEDIDO: TStringField;
    qHistListaPre: TFDQuery;
    qHistListaPreESTILO: TStringField;
    qHistListaPreUSUARIO: TSmallintField;
    qHistListaPreFECHA: TSQLTimeStampField;
    qHistListaPreCOSTO: TSingleField;
    qHistListaPreMENUDEO: TSingleField;
    qHistListaPreMEDIO_MAYOREO: TSingleField;
    qHistListaPreFORANEA: TSingleField;
    qHistListaPreMAYOREO: TSingleField;
    qDevolBODEGA: TSmallintField;
    qBodegasCODIGO: TSmallintField;
    qBodegasNOMBRE: TStringField;
    qDevolFORMAPAGO: TStringField;
    qUpEstilo: TFDQuery;
    qUpEstiloESTILO: TStringField;
    qUpEstiloMODELO: TStringField;
    qUpEstiloCORRIDA: TSmallintField;
    qUpEstiloCOLOR: TSmallintField;
    qUpEstiloNOMBRE: TStringField;
    qUpEstiloCODPROV: TSmallintField;
    qUpEstiloES_SALDO: TBooleanField;
    qUpEstiloOBS: TStringField;
    qUpEstiloCOSTO: TSingleField;
    qUpEstiloMENUDEO: TSingleField;
    qUpEstiloMEDIO_MAYOREO: TSingleField;
    qUpEstiloMAYOREO: TSingleField;
    qUpEstiloFORANEA: TSingleField;
    qUpEstiloIMAGEN: TBlobField;
    qUpEstiloEXISTENCIA: TSmallintField;
    qUpEstiloACTIVO: TBooleanField;
    FDScript1: TFDScript;
    qPedTOTAL: TFMTBCDField;
    qPedDetCOSTO: TFMTBCDField;
    qPedDetPRECIO: TFMTBCDField;
    qPedDetCANTIDAD: TSmallintField;
    qTrasTOTAL: TFMTBCDField;
    qTrasTIENDA2: TSmallintField;
    qTrasFECHA_ENTRADA: TDateField;
    qTrasENTRADA: TSmallintField;
    qTrasOBS: TStringField;
    qTrasESTATUS: TStringField;
    qTrasDetCOSTO: TFMTBCDField;
    qTrasDetPRECIO: TFMTBCDField;
    qTrasDetCANTIDAD: TSmallintField;
    qTrasDetIMPORTE: TFMTBCDField;
    qTrasDetESTATUS: TStringField;
    qTrasDetENTRADA: TSmallintField;
    qEmbarTOTAL: TFMTBCDField;
    qEmbarTIENDA2: TSmallintField;
    qEmbarFECHA_ENTRADA: TDateField;
    qEmbarENTRADA: TSmallintField;
    qEmbarOBS: TStringField;
    qEmbarESTATUS: TStringField;
    qEmbarDetCOSTO: TFMTBCDField;
    qEmbarDetPRECIO: TFMTBCDField;
    qEmbarDetCANTIDAD: TSmallintField;
    qEmbarDetIMPORTE: TFMTBCDField;
    qEmbarDetESTATUS: TStringField;
    qEmbarDetENTRADA: TSmallintField;
    qPedDetIMPORTE: TFMTBCDField;
    qPedDetESTATUS: TStringField;
    qPedDetENTRADA: TSmallintField;
    qPedDetTOTIMPORTE: TAggregateField;
    qEmbarDetTOTIMPORTE: TAggregateField;
    qEstilosFECCAMBIOPRE: TDateField;
    qEstilosFECCAMBIO: TDateField;
    qEstilosLINEA: TSmallintField;
    qEstilosMARCA: TSmallintField;
    qEstilosGENERO: TStringField;
    qEstilosCLASIFI: TSmallintField;
    mGeneros: TFDMemTable;
    mGenerosNOMBRE: TStringField;
    dsGeneros: TDataSource;
    mInveFisTALLA: TStringField;
    qInveIniDetTALLA: TStringField;
    qUpEstiloFECCAMBIO: TDateField;
    qUsr: TFDQuery;
    qUsrCODIGO: TSmallintField;
    qUsrNOMBRE: TStringField;
    qUsrPASS: TStringField;
    qUsrTIENDA: TStringField;
    qUsrACTIVO: TBooleanField;
    dsUsr: TDataSource;
    qUsrADMIN: TBooleanField;
    qGastos: TFDQuery;
    dsGastos: TDataSource;
    qGastosTIENDA: TSmallintField;
    qGastosCAJA: TSmallintField;
    qGastosFECHA: TSQLTimeStampField;
    qGastosCONCEPTO: TStringField;
    qGastosIMPORTE: TSingleField;
    qCajaMovsFONDO: TFMTBCDField;
    qCajaMovsVENTAS: TFMTBCDField;
    qCajaMovsPAGOS: TFMTBCDField;
    qCajaMovsGASTOS: TFMTBCDField;
    qCajaMovsARQUEO: TFMTBCDField;
    qCajaMovsCIERRE: TFMTBCDField;
    qCajaMovsDEVOLUCIONES: TFMTBCDField;
    qCajaMovsVENTAS_CREDITO: TFMTBCDField;
    qCajaMovsVENTAS_APARTADO: TFMTBCDField;
    qCajaMovsVENTAS_EFECTIVO: TFMTBCDField;
    qCajaMovsVENTAS_TARJETA: TFMTBCDField;
    qEstilosCORRIDA_DESCR: TStringField;
    qEstilosCOLOR_DESR: TStringField;
    FDQuery1: TFDQuery;
    qModEst: TFDQuery;
    qModEstMODELO: TStringField;
    qModEstEXISTENCIA: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qTiendasNewRecord(DataSet: TDataSet);
    procedure qLineasNewRecord(DataSet: TDataSet);
    procedure qMarcasNewRecord(DataSet: TDataSet);
    procedure qClasifiNewRecord(DataSet: TDataSet);
    procedure qColoresNewRecord(DataSet: TDataSet);
    procedure qCorridasNewRecord(DataSet: TDataSet);
    procedure qEstilosNewRecord(DataSet: TDataSet);
    procedure qPedNewRecord(DataSet: TDataSet);
    procedure qPedDetNewRecord(DataSet: TDataSet);
    procedure qProvsNewRecord(DataSet: TDataSet);
    procedure qCtesNewRecord(DataSet: TDataSet);
    procedure qPedRenNewRecord(DataSet: TDataSet);
    procedure qPedDetBeforePost(DataSet: TDataSet);
    procedure qPedBeforePost(DataSet: TDataSet);
    procedure qEmpleadosNewRecord(DataSet: TDataSet);
    procedure qPedESTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qTrasNewRecord(DataSet: TDataSet);
    procedure qTrasDetNewRecord(DataSet: TDataSet);
    procedure qTrasRenNewRecord(DataSet: TDataSet);
    procedure qEmbarDetNewRecord(DataSet: TDataSet);
    procedure qEmbarNewRecord(DataSet: TDataSet);
    procedure qCtesPosNewRecord(DataSet: TDataSet);
    procedure qCajasNewRecord(DataSet: TDataSet);
    procedure qCxc_ConceNewRecord(DataSet: TDataSet);
    procedure qCxcDetNewRecord(DataSet: TDataSet);
    procedure qCxcNewRecord(DataSet: TDataSet);
    procedure qCajaMovsNewRecord(DataSet: TDataSet);
    procedure qReqNewRecord(DataSet: TDataSet);
    procedure qReqDetNewRecord(DataSet: TDataSet);
    procedure qReqESTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qModelosNewRecord(DataSet: TDataSet);
    procedure qInsNewRecord(DataSet: TDataSet);
    procedure qEmpProdNewRecord(DataSet: TDataSet);
    procedure qPlantasNewRecord(DataSet: TDataSet);
    procedure qReqRenNewRecord(DataSet: TDataSet);
    procedure qProgNewRecord(DataSet: TDataSet);
    procedure qVentaPosNewRecord(DataSet: TDataSet);
    procedure qEstilosAfterOpen(DataSet: TDataSet);
    procedure qEstilosAfterClose(DataSet: TDataSet);
    procedure qEstilosBeforePost(DataSet: TDataSet);
    procedure qUsrNewRecord(DataSet: TDataSet);
    procedure qGastosNewRecord(DataSet: TDataSet);
  private
    procedure SetConsecutivo(var DataSet: TDataSet; NombreCampo: String);
    procedure SetCatalogoPreciosVenta;
    procedure SetCatalogoFormasPago;
    procedure SetCatalogoTiposPos;
    procedure SetCatalogo_CajaConceptos;
    procedure TablasProduccion;
    procedure AbreTablas;
    { Private declarations }
  public
    { Public declarations }
    procedure SetModelos_Filtro1(Campo: String; edValor: TUniComboBox);
    procedure SetEstilos_Filtro2(Campo: String; Valor: String);
    procedure SetExistenciaEstilo(NumConcepto: Byte; qCantidad: Word; clEstilo:String);
    procedure SetInventario_Filtra2(Campo: string; Valor: string);

    procedure Renglones_Llena(clForm: TUniForm; qPartidas: TFDQuery; nomtablaren:string; repite: Boolean);
    procedure SetLlenaFormaBuscarModelos(clForm: TUniForm; qDetalle: TFDQuery);
    procedure SetGuardaRenglonesPedidosEmbarques(clForm: TUniForm; qDetalle, qRen: TFDQuery);
    procedure SetGuardaEntradaconRenglones(clForm: TUniForm; qDetalle, qRen: TFDQuery);
    procedure SetGuardaSalidaconRenglones(clForm: TUniForm; qDetalle: TFDQuery; qRen: TFDQuery);
    procedure GetmPuntosRenglon(tbDetalle, tbRen: TFDQuery);

    procedure SetLlenavGetModeloTalla(clForm: TUniForm);
    procedure SetInventario(nomtabla: string; qDetalle: TFDQuery; clConcepto: Byte);
    function GetidInven_movs(qNumTienda: smallint; qEstilo: String): Word;
    procedure SetStringGridInvetarioxEstilo(qCorrida: Byte; qEstilo: string; clForm: TUniForm);
    procedure SetSg2VentasTiendasxEstilo(qCorrida: Byte; qEstilo: string; clForm: TUniForm);
    function GetCodigo(clValor: string):Word;
    procedure SetSaldoCliente(qCte: SmallInt; Cantidad: Double);
    function GetMaxId(NomTabla:String): Word;
    function GetMaxUnico(NomTabla:String): Word;
    procedure SetCreaDetalle1Cxc(qSistemaOrigen: string; qObs: String);
    procedure SetCreaDetalle2Cxc(qSistemaOrigen: string);
    procedure SetPagoVentaCxc(qFormaPago: String; Tipo: string; Apartado: Double);
    procedure SetInicializamPuntos(qCodCorrida: Byte; qPartida: Byte; qestilo: string);
    procedure SetmPuntos_InveGral;
    procedure SetmPuntos_InveTienda(clTienda: Byte);
    procedure SetNombreCamposPuntos(i: Byte; var clPunto: string; var clCantidad: string);
    procedure GetFolioPedidoxTienda(qBodega: Byte);
    procedure GetCostoPromedio(clNumTienda: Smallint; qCosto: Double; xid: Integer; var locCostprom: Double);
    procedure GetExistenciaEstilo(clNumTienda: Smallint; clEstilo:String; var totExistencia: Integer);
    procedure SetExistenciaCostoPromedioInvenMovs(clNumTienda: Smallint; qEstilo: string; xid: Integer; totExistencia: Integer; locCostprom: Double);
    function GetFiltroxTalla(xTalla: string): string;
    procedure SetExistenciaPunto(NumConcepto: Byte; qEstilo: String; qPunto: Smallint; qCantidad: Word);
    procedure SetCajaActualizo(TipoVenta:String; EsTarjeta:Boolean; clNeto: Double);
    function Set_ConsecutivoInsumo: string;
  end;

const
  // Pendiente, Entrada, Incompleto, Cancelado
  gGridPageSize = 25;
  gTotPuntos = 17;
  gIVAporcent = 16;
  gIvaFactor  = gIVAporcent/100+1;
  PedidosEstatus: Array[1..4] of string = ('P', 'E', 'I', 'C');
  // Con la tienda
  qConInventarioTienda1 = 'select i.tienda, i.estilo, e.modelo, e.corrida, ' +
    'c.nombre nom_corrida, e.color, s.nombre nom_color, e.costo, e.menudeo, ' +
    'sum(i.existencia) existencia ' +
    'from inventario i ' +
    'left outer join estilos e on e.estilo=i.estilo ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ';
  qConInventarioTienda2 = ' group by i.tienda, i.estilo, e.modelo, e.corrida, ' +
    'c.nombre, e.color, s.nombre, e.costo, e.menudeo ';
  // Sin la tienda
  qConInventarioNoTienda1 = 'select i.estilo, e.modelo, e.corrida, ' +
    'c.nombre nom_corrida, e.color, s.nombre nom_color, e.costo, e.menudeo, ' +
    'sum(i.existencia) existencia ' +
    'from inventario i ' +
    'left outer join estilos e on e.estilo=i.estilo ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ';
  qConInventarioNoTienda2 = ' group by i.estilo, e.modelo, e.corrida, ' +
    'c.nombre, e.color, s.nombre, e.costo, e.menudeo ';
  // Comun a los anteriores
  qConInventario3 = 'having sum(i.existencia) >= ';

  // qModeloBuscar1 es solo para pedidos no es necesario que traiga solo con existencia
  qModeloBuscar1 = 'select e.estilo, e.nombre, e.modelo, ' +
      'e.corrida, c.nombre nom_corrida, e.color, s.nombre nom_color, ' +
    'costo, menudeo ' +
    'from estilos e ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ' +
    'where e.modelo like :modelo ';

  qModeloBuscar2 = 'select i.estilo, e.nombre, e.modelo, e.corrida, ' +
    'c.nombre nom_corrida, e.color, s.nombre nom_color, ' +
    'e.costo, e.menudeo, ' +
    'sum(i.existencia) existencia ' +
    'from inventario i ' +
    'left outer join estilos e on e.estilo=i.estilo ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ' +
    'where i.tienda =:Tienda ' +
    '  and e.modelo like :modelo ' +
    'group by i.estilo, e.nombre, e.modelo, e.corrida, ' +
    '  c.nombre, e.color, s.nombre, e.costo, e.menudeo ' +
    'having sum(i.existencia) > 0';

  qModeloBuscar3 = 'select e.estilo, e.nombre, e.modelo, ' +
      'e.corrida, c.nombre nom_corrida, e.color, s.nombre nom_color, ' +
    'costo, menudeo ' +
    'from estilos e ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ' +
    'where e.estilo=:estilo';

  qModeloBuscar4 = 'select distinct e.estilo, e.nombre, e.modelo, ' +
      'e.corrida, c.nombre nom_corrida, e.color, s.nombre nom_color, ' +
    'costo, menudeo ' +
    'from estilos e ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ' +
    'left outer join inventario i on i.estilo=e.estilo ' +
    'where e.modelo like :modelo ' +
    '  and i.existencia > 0';

  qModeloBuscar5 = 'select distinct e.estilo, e.nombre, e.modelo, ' +
      'e.corrida, c.nombre nom_corrida, e.color, s.nombre nom_color,' +
    'costo, menudeo, e.existencia ' +
    'from estilos e ' +
    'left outer join corridas c on c.codigo=e.corrida ' +
    'left outer join colores s on s.codigo=e.color ' +
    'left outer join inventario i on i.estilo=e.estilo ' +
    'where ';

  qModeloBuscar6 = 'select e.modelo, sum(i.existencia) existencia ' +
    'from inventario i ' +
    'left outer join estilos e on e.estilo=i.estilo ' +
    'where i.tienda =:Tienda ' +
    '  and e.activo = True ' +
    'group by e.modelo ' +
    'having sum(i.existencia) > 0';

  qModeloBuscar7 = 'select e.modelo, sum(e.existencia) existencia ' +
    'from estilos e ' +
    'where e.activo = True ' +
    'group by e.modelo ';

  qEstilosBuscar1 = 'select ' +
    'estilos.estilo, ' +
    'estilos.modelo, ' +
    'estilos.corrida, ' +
    'corridas.nombre corrida_descr, ' +
    'estilos.color, ' +
    'colores.nombre color_desr, ' +
    'estilos.nombre, ' +
    'estilos.codprov, ' +
    'estilos.es_saldo, ' +
    'estilos.obs, ' +
    'estilos.costo, ' +
    'estilos.menudeo, ' +
    'estilos.medio_mayoreo, ' +
    'estilos.mayoreo, ' +
    'estilos.foranea, ' +
    'estilos.feccambiopre, ' +
    'estilos.imagen, ' +
    'estilos.existencia, ' +
    'estilos.activo, ' +
    'estilos.feccambio, ' +
    'estilos.linea, ' +
    'estilos.marca, ' +
    'estilos.genero, ' +
    'estilos.clasifi ' +
'from estilos ' +
   'left outer join corridas on (estilos.corrida = corridas.codigo) ' +
   'left outer join colores on (estilos.color = colores.codigo) ' +
   'where estilos.Modelo like :Modelo';

type
  TEmpresa = Record
    nombre: string;
    rfc: string;
  End;

type
  TUsuario = Record
    codigo: byte;
    nombre, tiendas: string;
  End;

Var
  gclTienda, gclCaja: Byte;
  gEmpresaRecord: TEmpresa;
  gUsuarioRecord: TUsuario;
  gRuta, gServer, gRutaDB: String;



function FDM: TFDM;

implementation

{$R *.dfm}

uses MainModule, UniGUIVars, uniGUIMainModule, Puntos, uniLabel, uniEdit,
  uniDBEdit,
  uniDateTimePicker,
  System.Variants,
  //VentaPagoApartadoDg,
  math;

function FDM: TFDM;
begin
  Result := TFDM(UniMainModule.GetModuleInstance(TFDM));
end;

function TFDM.GetidInven_movs(qNumTienda: smallint; qEstilo: String): Word;
begin
  Query3.SQL.Text := 'select coalesce(max(id), 0) + 1 id from inven_movs ' +
    'where tienda=:tienda ' +
    '  and estilo=:estilo';
  Query3.ParamByName('tienda').AsInteger := qNumTienda;
  Query3.ParamByName('estilo').AsString := qEstilo;
  Query3.Open();
  Result := query3.fieldbyname('id').asinteger;
end;

procedure TFDM.SetCatalogoTiposPos;
begin
  mTiposPos.Open;
  mFormasPago.Open;
  mTiposPos.Append;
  mTiposPos.FieldByName('Descripcion').Value := 'VENTA';
  mTiposPos.Post;
  mTiposPos.Append;
  mTiposPos.FieldByName('Descripcion').Value := 'APARTADO';
  mTiposPos.Post;
  mTiposPos.Append;
  mTiposPos.FieldByName('Descripcion').Value := 'CREDITO';
  mTiposPos.Post;
end;

procedure TFDM.SetCatalogoFormasPago;
begin
  mFormasPago.Open;
  mFormasPago.Append;
  mFormasPago.FieldByName('Descripcion').Value := 'EFECTIVO';
  mFormasPago.Post;
  mFormasPago.Append;
  mFormasPago.FieldByName('Descripcion').Value := 'TARJETA CREDITO';
  mFormasPago.Post;
  mFormasPago.Append;
  mFormasPago.FieldByName('Descripcion').Value := 'TARJETA DEBITO';
  mFormasPago.Post;
  mFormasPago.Append;
  mFormasPago.FieldByName('Descripcion').Value := 'MERCADO LIBRE';
  mFormasPago.Post;
  mFormasPago.Append;
  mFormasPago.FieldByName('Descripcion').Value := 'PAGINA WEB';
  mFormasPago.Post;
end;

procedure TFDM.SetInventario(nomtabla: string; qDetalle: TFDQuery; clConcepto: Byte);
var
  xid: Integer;
  totExistencia: Integer;
  locCostprom: Double;
  clNumTienda: smallint;
  esEntradaCantidad, qEstilo: String;
begin
  // en caso de ser la entrada de un traspaso o embarque
  if (nomtabla= 'Pedidos') then  // cuando es la entrada de un pedido
    esEntradaCantidad := 'Entrada'
  else begin
    esEntradaCantidad := 'Cantidad';
    if (clConcepto < 21) and ((nomtabla= 'Embarques') or (nomtabla= 'Traspasos')) then
      esEntradaCantidad := 'Entrada'
    else
      esEntradaCantidad := 'Cantidad';
  end;

  if (esEntradaCantidad = 'Cantidad') or ((nomtabla= 'Pedidos')) then
    clNumTienda := qDetalle.FieldByName('TIENDA').Value
  else begin
    // saco la tienda destino
    fdm.Query1.SQL.Text := 'Select tienda2 from ' + nomtabla +
    ' where Tienda=:Tienda ' +
      ' and Folio=:Folio';
    fdm.Query1.ParamByName('Tienda').AsInteger := qDetalle.FieldByName('Tienda').AsInteger;
    fdm.Query1.ParamByName('Folio').AsInteger := qDetalle.FieldByName('Folio').AsInteger;
    fdm.Query1.Open();
    clNumTienda := fdm.Query1.FieldByName('Tienda2').AsInteger;
  end;

  fdm.qInvenTipos.Close;
  fdm.qInvenTipos.ParamByName('codigo').AsInteger := clConcepto;
  fdm.qInvenTipos.Open();
  if fdm.qInvenTipos.IsEmpty then
    raise Exception.Create('No se encontró el concepto de inventario: ' + IntToStr(clConcepto));
  fdm.qInvenMovs.Open();
  fdm.qInvenMovsDet.Open();
  // 1. Detalle de movimientos
  fdm.qEstilos.DisableControls;
  fdm.Query1.SQL.Text := 'Select * from ' + nomtabla + 'Det where Tienda=:Tienda ' +
    ' and Folio=:Folio';
  fdm.Query1.ParamByName('Tienda').AsInteger := qDetalle.FieldByName('Tienda').AsInteger;
  fdm.Query1.ParamByName('Folio').AsInteger := qDetalle.FieldByName('FOLIO').Value;
  fdm.Query1.Open();
  while not FDM.Query1.Eof do
  begin
    qEstilo := fdm.Query1.FieldByName('Estilo').Value;
    xid := self.GetidInven_movs(clNumTienda, qEstilo);
    fdm.qinvenMovs.Append;
    fdm.qInvenMovsTIENDA.Value := clNumTienda;
    fdm.qInvenMovsESTILO.Value := qEstilo;
    fdm.qInvenMovsID.Value := xid;
    fdm.qInvenMovsFOLIO.Value := fdm.Query1.FieldByName('Folio').Value;
    fdm.qInvenMovsFECHA.Value := date;
    fdm.qInvenMovsTIPO.Value := clConcepto;
    fdm.qInvenMovsCANTIDAD.Value := fdm.Query1.FieldByName(esEntradaCantidad).Value;
    fdm.qInvenMovsEXISTENCIA.Value := 0; // para que deje continuar...
    fdm.qInvenMovsPROMEDIO.Value := qDetalle.FieldByName('COSTO').AsFloat;
    FDM.qInvenMovsULTIMO.Value := fdm.Query1.FieldByName('costo').AsFloat;
    fdm.qInvenMovs.Post;
    // PAra actualizar la existencia en el estilo*****************
    SetExistenciaEstilo(clConcepto, fdm.Query1.FieldByName(esEntradaCantidad).Value, qEstilo);
    // 2. sigo con el detalle de movimientos
    fdm.Query2.Close;
    fdm.Query2.SQL.Text := 'Select * from ' + nomtabla + 'Ren where Tienda=:Tienda ' +
    ' and Folio=:Folio and Partida=:Partida';
    fdm.Query2.ParamByName('Tienda').AsInteger := qDetalle.FieldByName('Tienda').AsInteger;
    fdm.Query2.ParamByName('Folio').AsInteger := fdm.Query1.FieldByName('Folio').Value;
    fdm.Query2.ParamByName('Partida').AsInteger := fdm.Query1.FieldByName('Partida').Value;
    fdm.Query2.Open();
    totExistencia := 0;
    while not fdm.Query2.Eof do
    begin
      if fdm.query2.FieldByName(esEntradaCantidad).Value > 0 then
      begin
        // 3. actualizo el inventario
        fdm.qInven.Close;
        fdm.qInven.ParamByName('Tienda').AsInteger := clNumTienda;
        fdm.qInven.ParamByName('Estilo').AsString := qEstilo;
        fdm.qInven.ParamByName('Punto').AsInteger := fdm.Query2.FieldByName('Punto').Value;
        fdm.qInven.Open();

        if FDM.qInven.IsEmpty then
        begin
          fdm.qInven.Append;
          fdm.qInvenTIENDA.Value := clNumTienda;
          fdm.qInvenESTILO.Value := qEstilo;
          fdm.qInvenPUNTO.Value := fdm.Query2.FieldByName('Punto').Value;
          fdm.qInvenEXISTENCIA.Value := fdm.Query2.FieldByName(esEntradaCantidad).Value;
        end else
        begin
          fdm.qInven.Edit;
          if qInvenTipos.FieldByName('Naturaleza').AsString = '+' then
          begin
            fdm.qInvenEXISTENCIA.Value := fdm.qInvenEXISTENCIA.Value +
              fdm.Query2.FieldByName(esEntradaCantidad).Value;
          end else
          begin
            fdm.qInvenEXISTENCIA.Value := fdm.qInvenEXISTENCIA.Value -
              fdm.Query2.FieldByName(esEntradaCantidad).Value;
          end;
        end;
        FDM.qInven.Post;

        fdm.qInvenMovsDet.Append;
        fdm.qInvenMovsDetTIENDA.Value := clNumTienda;
        FDM.qInvenMovsDetESTILO.Value := qEstilo;
        fdm.qInvenMovsDetID.Value := xid;
        fdm.qInvenMovsDetPUNTO.Value := fdm.Query2.FieldByName('Punto').Value;
        fdm.qInvenMovsDetCANTIDAD.Value := fdm.Query2.FieldByName(esEntradaCantidad).Value;
        fdm.qInvenMovsDetEXISTENCIA.Value := fdm.qInvenEXISTENCIA.Value;
        fdm.qInvenMovsDet.Post;
        // actualizo el total de existencia en el etilo
        //fdm.SetExistenciaEstilo(clConcepto, fdm.Query2.FieldByName(esEntradaCantidad).Value, qEstilo);
      end;
      fdm.Query2.Next;
    end;
    // Obtengo la existencia total ---------------------
    GetExistenciaEstilo(clNumTienda, qEstilo, totExistencia);
    // Actualizo costo promedio ------------------------
    GetCostoPromedio(clNumTienda, qDetalle.FieldByName('COSTO').Value, xid, locCostprom);
    // Actualizo la existencia y el costo promedio en inven_movs ------------
    SetExistenciaCostoPromedioInvenMovs(clNumTienda, qEstilo, xid, totExistencia, locCostprom);
    fdm.Query1.Next;
  end;
  fdm.qEstilos.EnableControls;
end;

procedure TFDM.SetLlenaFormaBuscarModelos(clForm: TUniForm; qDetalle: TFDQuery);
Var
  locPunt: TCodCorrida;
  i, locTotPuntos: byte;
  puntoini, puntofin: smallint;
  qPunto: String;
begin
  if self.qModeloBuscar.IsEmpty then
    raise Exception.Create('No se encontró el estilo');

  (clForm.FindComponent('edEstilo') as TUniEdit).Text := fdm.qModeloBuscarESTILO.Value;
  (clForm.FindComponent('edNombre') as TUniEdit).Text := fdm.qModeloBuscarNOMBRE.Value;
  (clForm.FindComponent('edCorrida') as TUniEdit).Text := fdm.qModeloBuscarNOM_CORRIDA.Value;
  (clForm.FindComponent('edCosto') as TUniNumberEdit).Value := fdm.qModeloBuscarCOSTO.AsFloat;

//  qDetalle.FieldByName('Estilo').AsString := fdm.qModeloBuscarESTILO.Value;
//  qDetalle.FieldByName('CodCorrida').AsInteger := fdm.qModeloBuscarCORRIDA.Value;
//  qDetalle.FieldByName('Costo').AsFloat := fdm.qModeloBuscarCOSTO.AsFloat;
//  qDetalle.FieldByName('Precio').AsFloat := fdm.qModeloBuscarMENUDEO.Value;

  //locPunt := TCodCorrida.Create(qDetalle.FieldByName('CodCorrida').AsInteger);
  locPunt := TCodCorrida.Create(fdm.qModeloBuscarCORRIDA.Value);
  locTotPuntos:= locPunt.TotalPuntos;
  // Limpio las tallas o puntos
  for I := 1 to gTotPuntos do
  begin
    (clForm.FindComponent('lb'+IntToStr(i)) as TUniLabel).Visible := False;
    (clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Visible := False;
  end;
  for I := 1 to locTotPuntos do
  begin
    (clForm.FindComponent('lb'+IntToStr(i)) as TUniLabel).Visible := True;
    (clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Visible := True;

    (clForm.FindComponent('lb'+IntToStr(i)) as TUniLabel).Caption:= LocPunt.PuntosDescr[i];
  end;
  locPunt.Free;
end;

procedure TFDM.SetLlenavGetModeloTalla(clForm: TUniForm);
Var
  i: byte;
  qPunto, qEstilo: String;
begin
  if self.qModeloBuscar.IsEmpty then
    raise Exception.Create('No se encontró el estilo');

  (clForm.FindComponent('edEstilo') as TUniEdit).Text := fdm.qModeloBuscarESTILO.Value;
  (clForm.FindComponent('edNombre') as TUniEdit).Text := fdm.qModeloBuscarNOMBRE.Value;
  (clForm.FindComponent('edCorrida') as TUniEdit).Text := fdm.qModeloBuscarNOM_CORRIDA.Value;
  (clForm.FindComponent('edPrecio') as TUniNumberEdit).Value := fdm.qModeloBuscarMENUDEO.AsFloat;
  // lleno el string-grid
  i := qModeloBuscarCORRIDA.Value;
  qEstilo := fdm.qModeloBuscarESTILO.Value;
  SetStringGridInvetarioxEstilo(i, qEstilo, clForm);
end;

procedure TFDM.GetmPuntosRenglon(tbDetalle, tbRen: TFDQuery);
var
  i, qCodCorrida: Byte;
  clpuntocantidad, qestilo: string;
  qTotPares, qPares: Word;
begin
  // Llenar tabla en memoria con la corrida y puntos por partida
  mPuntos.Close;
  mPuntos.Open;
  tbDetalle.Open;
  tbRen.Open;
  tbDetalle.First;
  while not tbDetalle.Eof do
  begin
    qCodCorrida := tbDetalle.FieldByName('CODCORRIDA').Value;
    qEstilo := tbDetalle.FieldByName('Estilo').Value;
    SetInicializamPuntos(qCodCorrida, tbDetalle.FieldByName('Partida').Value, qestilo);
    tbRen.First;
    mPuntos.Edit;
    qTotPares := 0;
    while not tbRen.Eof do
    begin
      i := tbRen.FieldByName('PUNTO').Value;
      if i < 10 then
        clpuntocantidad := 'P0' + IntToStr(i)
      else
        clpuntocantidad := 'P' + IntToStr(i);
      qPares := tbRen.FieldByName('CANTIDAD').Value;
      mPuntos.FieldByName(clpuntocantidad).Value := qPares;
      qTotPares := qTotPares + qPares;
      tbRen.Next;
    end;
    mPuntosPARES.Value := qTotPares;
    mPuntos.Post;
    tbDetalle.Next;
  end;
end;

procedure TFDM.SetCatalogoPreciosVenta;
begin
  mPrecios.Open;
  mPrecios.Append;
  mPreciosCodigo.Value := 1;
  mPreciosDESCRIPCION.Value := 'MENUDEO';
  mPrecios.Post;
  mPrecios.Append;
  mPreciosCodigo.Value := 2;
  mPreciosDESCRIPCION.Value := '1/2 MAYOREO';
  mPrecios.Post;
  mPrecios.Append;
  mPreciosCodigo.Value := 3;
  mPreciosDESCRIPCION.Value := 'MAYOREO';
  mPrecios.Post;
  mPrecios.Append;
  mPreciosCodigo.Value := 4;
  mPreciosDESCRIPCION.Value := 'FORANEA';
  mPrecios.Post;
end;

procedure TFDM.Renglones_Llena(clForm: TUniForm; qPartidas: TFDQuery; nomtablaren:string; repite: Boolean);
var
  i: byte;
  locPunt: TCodCorrida;
  nomtabla: String;
  locTotPuntos: byte;
  totCant, qPartida: Smallint;
begin
  for I := 1 to gTotPuntos do
  begin
    (clForm.FindComponent('lb'+IntToStr(i)) as TUniLabel).Visible := False;
    (clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Visible := False;
    (clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).MaxValue := 99;
  end;
  if qPartidas.State in [dsEdit, dsBrowse] then // Traigo los datos
  begin
    //if qPartidas.State in [dsBrowse] then
    //begin
      // Me posiciono en el modelo
      fdm.qModeloBuscar.SQL.Text := qModeloBuscar3;
      fdm.qModeloBuscar.ParamByName('Estilo').AsString := qPartidas.FieldByName('Estilo').Value;
      fdm.qModeloBuscar.Open();
      (clForm.FindComponent('edBuscaEstilo') as TUniEdit).Text := fdm.qModeloBuscarMODELO.Value;
    //end;
    locPunt := TCodCorrida.Create(qPartidas.FieldByName('CODCORRIDA').Value);
    locTotPuntos:= locPunt.TotalPuntos;

    (clForm.FindComponent('edCorrida') as TUniEdit).Text := locPunt.NomCorrida;
    (clForm.FindComponent('edEstilo') as TUniEdit).Text := fdm.qModeloBuscarESTILO.Value;
    (clForm.FindComponent('edNombre') as TUniEdit).Text := fdm.qModeloBuscarNOMBRE.Value;
    (clForm.FindComponent('edCosto') as TUniNumberEdit).Value := fdm.qModeloBuscarCOSTO.Value;

    for I := 1 to locTotPuntos do
    begin
      (clForm.FindComponent('lb'+IntToStr(i)) as TUniLabel).Visible := True;
      (clForm.FindComponent('lb'+IntToStr(i)) as TUniLabel).Caption:= LocPunt.PuntosDescr[i];
      (clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Visible := True;
    end;
    locPunt.Free;
  end;
  // lleno los puntos desde donde esten los ren.
  qPartida := qPartidas.FieldByName('PARTIDA').AsInteger;
  if (qPartidas.State in [dsInsert]) and (repite) then
    qPartida := qPartidas.FieldByName('PARTIDA').AsInteger - 1;

  if qPartida > 0 then
  begin
    if nomtablaren = 'ReqRen' then
      fdm.Query1.Open('Select punto, cantidad from ' + nomtablaren + ' ' +
        'where folio=' + qPartidas.FieldByName('FOLIO').AsString +
        '  and partida=' + inttostr(qPartida))
    else
      fdm.Query1.Open('Select punto, cantidad from ' + nomtablaren + ' ' +
        'where tienda=' + qPartidas.FieldByName('TIENDA').AsString +
        '  and folio=' + qPartidas.FieldByName('FOLIO').AsString +
        '  and partida=' + inttostr(qPartida));
    totCant := 0;
    while not fdm.Query1.Eof do
    begin
      // el punto es la posición
      i := fdm.Query1.FieldByName('punto').AsInteger;
      (clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value :=
        fdm.Query1.FieldByName('cantidad').AsFloat;

      totCant := totCant + fdm.Query1.FieldByName('cantidad').AsInteger;
      fdm.Query1.Next;
    end;
    (clForm.FindComponent('edTotal') as TUniNumberEdit).Value := totCant;
    fdm.Query1.Close;
  end;
end;

procedure TFDM.SetGuardaRenglonesPedidosEmbarques(clForm: TUniForm; qDetalle: TFDQuery; qRen: TFDQuery);
var
 i: byte;
 vCanti, vTotal, locTotPuntos: smallint;
 locCodCorrida: puntos.TCodCorrida;
 locBodegaTienda: String;
 vCosto: Double;
begin
  // Llenar los puntos en la tabla ren
  qRen.Open();
  vTotal := 0;
  vCanti := 0;
  locCodCorrida := TCodCorrida.Create(qDetalle.FieldByName('codcorrida').AsInteger);
  locTotPuntos := locCodCorrida.TotalPuntos;
  locCodCorrida.Free;
  if clForm.Tag = 0 then
  begin
    for i := 1 to locTotPuntos do
    begin
      vCanti := Trunc((clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value);
      if vCanti > 0 then
      begin
        vTotal := vTotal + vCanti;
        qRen.Append;
        qRen.FieldByName('TIENDA').Value := qDetalle.FieldByName('TIENDA').Value;
        qRen.FieldByName('FOLIO').Value := qDetalle.FieldByName('FOLIO').Value;
        qRen.FieldByName('PARTIDA').Value := qDetalle.FieldByName('PARTIDA').Value;
        qRen.FieldByName('PUNTO').Value := i;
        qRen.FieldByName('CANTIDAD').Value := vCanti;
        Try
          qRen.Post;
        except
          raise;
        End;
      end;
    end;
    qDetalle.Edit;
    qDetalle.FieldByName('CANTIDAD').Value := vTotal;
    vCosto := (clForm.FindComponent('edCosto') as TUniNumberEdit).Value;
    qDetalle.FieldByName('IMPORTE').Value := vTotal * vCosto;

  end else
  if clForm.Tag = 1 then // es pedido-Entrada ó Embarque-Entrada
  begin
    for i := 1 to locTotPuntos do
    begin
      vCanti := Trunc((clForm.FindComponent('en'+IntToStr(i)) as TUniNumberEdit).Value);
      if vCanti > 0 then
      begin
        vTotal := vTotal + vCanti;
        if qRen.Locate('TIENDA;FOLIO;PARTIDA;PUNTO' ,
          VarArrayOf([fdm.qPedDetTIENDA.Value,
            fdm.qPedDetFOLIO.Value,
            fdm.qPedDetPARTIDA.Value,
            i]),
            []) then
        begin
          qRen.Edit;
        end else
        begin
          qRen.Append;
          qRen.FieldByName('TIENDA').Value := qDetalle.FieldByName('TIENDA').Value;
          qRen.FieldByName('FOLIO').Value := qDetalle.FieldByName('FOLIO').Value;
          qRen.FieldByName('PARTIDA').Value := qDetalle.FieldByName('PARTIDA').Value;
          qRen.FieldByName('PUNTO').Value := i;
          qRen.FieldByName('CANTIDAD').Value := 0;
        end;
        qRen.FieldByName('ENTRADA').Value := vCanti;
        Try
          qRen.Post;
        except
          raise;
        End;
      end;
    end;
    qDetalle.Edit;
    qDetalle.FieldByName('ENTRADA').Value := vTotal;
  end;

  try
    qDetalle.Post;
  except
    raise;
  end;
end;

procedure TFDM.SetGuardaEntradaconRenglones(clForm: TUniForm; qDetalle: TFDQuery; qRen: TFDQuery);
var
 i: byte;
 vCantiCapturada, vTotEntrada, vTotOrigen, locTotPuntos: smallint;
 locCodCorrida: puntos.TCodCorrida;
 locBodegaTienda, locEstatus: String;
 vCosto: Double;
begin
  vTotEntrada := 0;
  vTotOrigen := 0;
  vCantiCapturada := 0;
  // llenar las cantidades de renglones de entrada del traspaso o del embarque
  qRen.Close;
  qRen.ParamByName('Tienda').Value := qDetalle.FieldByName('Tienda').Value;
  qRen.ParamByName('Folio').Value := qDetalle.FieldByName('Folio').Value;
  qRen.ParamByName('Partida').Value := qDetalle.FieldByName('Partida').Value;
  qRen.Open();
  locEstatus := 'E';
  // qRen viene parametrizado por tienda, folio y partida
  while not qRen.Eof do
  begin
    i := qRen.FieldByName('Punto').AsInteger;
    vCantiCapturada := Trunc((clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value);
    qRen.Edit;
    qRen.FieldByName('Entrada').AsInteger := vCantiCapturada;
    qRen.Post;
    vTotEntrada := vTotEntrada + vCantiCapturada;
    vTotOrigen := vTotOrigen + qRen.FieldByName('Cantidad').AsInteger;
    qRen.Next;
  end;
  if vTotEntrada = 0 then
    locEstatus := 'M' // Es Merma porque salio pero no se recibió...
  else
    if vTotEntrada = vTotOrigen then
      locEstatus := 'E'
    else
      locEstatus := 'I'; // Imcompleta, parcialmente merma...
  qDetalle.Edit;
  qDetalle.FieldByName('ENTRADA').Value := vTotEntrada;
  qDetalle.FieldByName('Estatus').Value := locEstatus;
  try
    qDetalle.Post;
  except
    raise;
  end;
end;

procedure TFDM.SetGuardaSalidaconRenglones(clForm: TUniForm; qDetalle: TFDQuery; qRen: TFDQuery);
var
 i: byte;
 vCantiCapturada, vTotSalida, vTotOrigen, locTotPuntos: smallint;
 locCodCorrida: puntos.TCodCorrida;
 locBodegaTienda, locEstatus: String;
 vCosto: Double;
begin
  vTotSalida := 0;
  vTotOrigen := 0;
  vCantiCapturada := 0;
  // llenar las cantidades de renglones de entrada del traspaso o del embarque
  qRen.Close;
  qRen.ParamByName('Folio').Value := qDetalle.FieldByName('Folio').Value;
  qRen.ParamByName('Partida').Value := qDetalle.FieldByName('Partida').Value;
  qRen.Open();
  locEstatus := 'S';
  // qRen viene parametrizado por folio y partida
  while not qRen.Eof do
  begin
    i := qRen.FieldByName('Punto').AsInteger;
    vCantiCapturada := Trunc((clForm.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value);
    qRen.Edit;
    qRen.FieldByName('Salida').AsInteger := vCantiCapturada;
    qRen.Post;
    vTotSalida := vTotSalida + vCantiCapturada;
    vTotOrigen := vTotOrigen + qRen.FieldByName('Cantidad').AsInteger;
    qRen.Next;
  end;
  if vTotSalida = 0 then
    locEstatus := 'M' // Es Merma porque salio pero no se recibió...
  else
    if vTotSalida = vTotOrigen then
      locEstatus := 'E'
    else
      locEstatus := 'I'; // Imcompleta, parcialmente merma...
  qDetalle.Edit;
  qDetalle.FieldByName('SALIDA').Value := vTotSalida;
  qDetalle.FieldByName('Estatus').Value := locEstatus;
  try
    qDetalle.Post;
  except
    raise;
  end;
end;

procedure TFDM.SetEstilos_Filtro2(Campo: string; Valor: String);
var
  locFiltro: string;
begin
  fdm.qEstilos.close;

  locfiltro := dm.qEstilosBuscar1 + ' and corridas.nombre like :corrida_descr ';
  locfiltro := locFiltro + ' and colores.nombre like :color_desr ';

  fdm.qestilos.sql.Text := locFiltro;
  fdm.qestilos.ParamByName('modelo').AsString := '%%';
  fdm.qestilos.ParamByName('corrida_descr').AsString := '%%';
  fdm.qestilos.ParamByName('color_desr').AsString := '%%';

  if Valor = '' then
    fdm.qEstilos.Open(dm.qEstilosBuscar1)
  else
  begin
    if Campo = 'Modelo' then
      locFiltro := 'Modelo=' + QuotedStr(trim(Valor))
    else if Campo = 'Corrida' then
      locFiltro := 'Corrida=' + Copy(Valor, 1, Pos('-', Valor) - 1)
    else if Campo = 'Color' then
      locFiltro := 'Color=' + Copy(Valor, 1, Pos('-', Valor) - 1);

    fdm.qestilos.ParamByName('modelo').AsString := '%' + Valor + '%';
    fdm.qestilos.ParamByName('corrida_descr').AsString := '%%';
    fdm.qestilos.ParamByName('color_desr').AsString := '%%';

    //fdm.qestilos.sql.SaveToFile('C:\Temp\queryEstilos.txt');
    fdm.qEstilos.Open;
  end;
end;

procedure TFDM.SetInventario_Filtra2(Campo: string; Valor: string);
var
  locWhere: string;
begin
  locWhere := '';

  if Campo = 'Tienda' then
    locWhere := ' where i.Tienda=' + Copy(Valor, 1, Pos('-', Valor) - 1)
  else if Campo = 'Modelo' then
    locWhere := ' where e.Modelo=' + Valor
  else if Campo = 'Corrida' then
    locWhere:= ' where e.CodCorrida=' + Copy(Valor, 1, Pos('-', Valor) - 1)
  else if Campo = 'Color' then
    locWhere:= ' where e.Color=' + Copy(Valor, 1, Pos('-', Valor) - 1);

  fdm.qInveTienda.SQL.Text := qConInventarioTienda1 +
    locWhere +
    qConInventarioTienda2;

  fdm.qInveTienda.Open();
end;

procedure TFDM.SetModelos_Filtro1(Campo: string; edValor: TUniComboBox);
begin
  edValor.Items.Clear;
  if Campo = 'Modelo' then
  begin
    fdm.Query1.Close;
    fdm.Query1.Open('select distinct modelo from ESTILOS ' +
      'where activo=True');
    while not fdm.Query1.Eof do
    begin
      edValor.Items.Add(fdm.Query1.FieldByName('Modelo').AsString);
      fdm.Query1.Next;
    end;
  end else
  if Campo = 'Corrida' then
  begin
    fdm.Query1.Close;
    fdm.Query1.Open('select distinct e.corrida codigo, c.nombre from ESTILOS e ' +
      'left outer join corridas c on c.codigo=e.corrida');
    while not fdm.Query1.Eof do
    begin
      edValor.Items.Add(fdm.Query1.FieldByName('Codigo').AsString + '-' +
        fdm.Query1.FieldByName('Nombre').AsString);
      fdm.Query1.Next;
    end;
  end else
  if Campo = 'Color' then
  begin
    // obtengo los colores que si están en estilos
    fdm.Query1.Close;
    fdm.Query1.Open('select distinct e.color codigo, c.nombre from estilos e ' +
      'left outer join colores c on c.codigo=e.color');
    while not fdm.Query1.Eof do
    begin
      edValor.Items.Add(fdm.Query1.FieldByName('Codigo').AsString + '-' +
        fdm.Query1.FieldByName('Nombre').AsString);
      fdm.Query1.Next;
    end;
  end;
end;

procedure TFDM.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Close;
  FDConnection1.Params.Clear;
  FDConnection1.Params.Add('DriverID=FB');
  FDConnection1.Params.Add('Server=' + gServer);
  FDConnection1.Params.Add('DataBase=' + gRutaDB);
  FDConnection1.Params.Add('User_Name=sysdba');
  FDConnection1.Params.Add('Password=SagJtr76.');

  FDConnection1.Open();
  AbreTablas;
  // tablas de inventarios ******************
  self.qFam.Open();
  self.qTip.Open();
  self.qGrup.Open();
  self.qIns.Open();
  TablasProduccion;
end;

procedure TFDM.qCajaMovsNewRecord(DataSet: TDataSet);
begin
  DataSet['Fondo'] := 0;
  DataSet['Ventas'] := 0;
  DataSet['Ventas_Efectivo'] := 0;
  DataSet['Ventas_Tarjeta'] := 0;
  DataSet['Ventas_Credito'] := 0;
  DataSet['Ventas_Apartado'] := 0;
  DataSet['Pagos'] := 0;
  DataSet['Gastos'] := 0;
  DataSet['Arqueo'] := 0;
  DataSet['Cierre'] := 0;
  DataSet['Devoluciones'] := 0;
end;

procedure TFDM.qCajasNewRecord(DataSet: TDataSet);
begin
  DataSet['Estatus'] := 'A'; // Activa o Cancelada
end;

procedure TFDM.qClasifiNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
end;

procedure TFDM.qColoresNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
end;

procedure TFDM.qCorridasNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
  DataSet['TotPun'] := 1;
  DataSet['incremento'] := 1; // despues utilizarlo para crear corridas automaticas.
end;

procedure TFDM.qCtesNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
  DataSet['Credito_dias'] := 0;
  DataSet['Credito_limite'] := 0;
  DataSet['Saldo'] := 0;
  DataSet['Empleado'] := False;
  DataSet['Tipo'] := 'MOSTRADOR';
end;

procedure TFDM.qCtesPosNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
  DataSet['Credito_dias'] := 0;
  DataSet['Credito_limite'] := 0;
  DataSet['Saldo'] := 0;
  DataSet['Empleado'] := False;
  DataSet['Tipo'] := 'MOSTRADOR';
end;

procedure TFDM.qCxcDetNewRecord(DataSet: TDataSet);
begin
  dataset['Fecha'] := Date;
  dataset['FecVen'] := Date;
end;

procedure TFDM.qCxcNewRecord(DataSet: TDataSet);
begin
  dataset['Fecha'] := Date;
  dataset['FecVen'] := Date;
  dataset['Cantidad'] := 0;
end;

procedure TFDM.qCxc_ConceNewRecord(DataSet: TDataSet);
begin
  DataSet['Es_Pago'] := False;
end;

procedure TFDM.qEmbarDetNewRecord(DataSet: TDataSet);
begin
  DataSet['Tienda'] := fdm.qEmbarTIENDA.Value;
  DataSet['Folio']  := fdm.qEmbarFOLIO.Value;
  DataSet['ENTRADA']  := 0;
  DataSet['costo']  := 0;
  DataSet['precio']  := 0;
  DataSet['importe']  := 0;
  DataSet['Estatus']  := 'T';
end;

procedure TFDM.qEmbarNewRecord(DataSet: TDataSet);
begin
  DataSet['Estatus'] := 'T'; // Tránsito
  DataSet['Fecha'] := Date;
  DataSet['Total'] := 0;
  DataSet['Cantidad'] := 0;
  DataSet['ENTRADA']  := 0;
end;

procedure TFDM.qEmpProdNewRecord(DataSet: TDataSet);
begin
  DataSet['Activo'] := True;
end;

procedure TFDM.qEmpleadosNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
  DataSet['Tienda'] := 0;
  DataSet['Fecha_Ingreso'] := Date;
end;

procedure TFDM.qEstilosAfterClose(DataSet: TDataSet);
begin
  qHistListaPre.Close;
end;

procedure TFDM.qEstilosAfterOpen(DataSet: TDataSet);
begin
  qHistListaPre.Open;
end;

procedure TFDM.qEstilosBeforePost(DataSet: TDataSet);
begin
  Dataset['FecCambio'] := Now;
end;

procedure TFDM.qEstilosNewRecord(DataSet: TDataSet);
begin
  Dataset['Es_Saldo'] := False;
  Dataset['Activo'] := True;
  Dataset['Costo'] := 0;
  Dataset['Menudeo'] := 0;
  Dataset['Medio_Mayoreo'] := 0;
  Dataset['Mayoreo'] := 0;
  Dataset['Foranea'] := 0;
  Dataset['Existencia'] := 0;
  Dataset['Modelo'] := Self.qModelosMODELO.Value;
end;

procedure TFDM.qGastosNewRecord(DataSet: TDataSet);
begin
  DataSet['Tienda'] := dm.gclTienda;
  DataSet['Caja'] := dm.gclCaja;
  DataSet['Fecha'] := Now;
end;

procedure TFDM.qInsNewRecord(DataSet: TDataSet);
begin
  DataSet['Activo'] := True;
  DataSet['Fecha'] := date;
  DataSet['Activo'] := False;
end;

procedure TFDM.SetConsecutivo(var DataSet: TDataSet; NombreCampo: String);
var
  xTablaNom: String;
begin
  xTablaNom := Copy(dataset.Name, 2, 15);
  if xTablaNom = 'CtesPos' then
    xTablaNom := 'Ctes';
  query1.Open('Select Max(' + NombreCampo + ') + 1 ' +
    'Max' + NombreCampo + ' from ' + xTablaNom);
  if query1.FieldByName('Max' + NombreCampo).IsNull then
    DataSet[NombreCampo] := 1
  else
    DataSet[NombreCampo] := query1.FieldByName('Max' + NombreCampo).AsInteger;
  Query1.Close;
end;

procedure TFDM.qLineasNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
end;

procedure TFDM.qMarcasNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
end;

procedure TFDM.qModelosNewRecord(DataSet: TDataSet);
begin
  DataSet['Activo'] := True;
  DataSet['Costo'] := 0;
  DataSet['Precio'] := 0;
end;

procedure TFDM.qPedBeforePost(DataSet: TDataSet);
var
 xrenPend, xrenEntrada, xrenIncompleto, xrenCancelado: Byte;
begin
  // Reviso estatus de partidas para obtener el estatus master
  // Si todo es entrada completa entonces ok
  // Si nada tiene entrada entonces sigue pendiente
  // si hay una sin entrada o entrada incompleta entonces Parcial
  if fdm.qPedDet.RecordCount > 0 then
  begin
    qPedDet.DisableControls;
    xrenPend  := 0;
    xrenEntrada := 0;
    xrenIncompleto := 0;
    qPedDet.First;
    while not qPedDet.Eof do
    begin
      if qPedDetESTATUS.Value = 'P' then
        Inc(xrenPend)
      else
        if qPedDetESTATUS.Value = 'E' then
          Inc(xrenEntrada)
        else
          if qPedDetESTATUS.Value = 'I' then
            Inc(xrenIncompleto)
          else
            if qPedDetEstatus.Value = 'C' then
              Inc(xrenCancelado);
      qPedDet.Next;
    end;
    if xrenPend = 0 then
    begin
      if xrenEntrada > 0 then
      begin
        DataSet['Estatus'] := dm.PedidosEstatus[2];
        if xrenIncompleto > 0 then
          self.qPedESTATUS.Value := dm.PedidosEstatus[3];
      end else
      begin
        if xrenIncompleto > 0 then
          DataSet['Estatus'] := dm.PedidosEstatus[3]
        else
          if xrenCancelado > 0 then
            DataSet['Estatus'] := dm.PedidosEstatus[4];
      end;
    end else
    begin  // si existe algun renglon pendiente no puede ser entrada completa
      if xrenEntrada > 0 then
      begin
        DataSet['Estatus'] := dm.PedidosEstatus[3];
      end else
      begin
        if xrenIncompleto > 0 then
          DataSet['Estatus'] := dm.PedidosEstatus[3];
      end;
    end;
    qPedDet.EnableControls;
    if qPedDetENTRADA.Value > 0 then
      if self.qPedFECENTRADA.IsNull then
        self.qPedFECENTRADA.Value := date;
  end;
end;

procedure TFDM.qPedDetBeforePost(DataSet: TDataSet);
begin
  if DataSet['Entrada'] = 0 then
    DataSet['Estatus']  := dm.PedidosEstatus[1]
  else
    if DataSet['Entrada'] >= dataset['Cantidad'] then
      DataSet['Estatus']  := dm.PedidosEstatus[2]
    else
      DataSet['Estatus']  := dm.PedidosEstatus[3];
end;

procedure TFDM.qPedDetNewRecord(DataSet: TDataSet);
begin
  DataSet['Tienda'] := fdm.qPedTIENDA.Value;
  DataSet['Folio']  := fdm.qPedFOLIO.Value;
  DataSet['ENTRADA']  := 0;
  DataSet['Partida']  := 1;
  DataSet['Estatus']  := dm.PedidosEstatus[1];
end;

procedure TFDM.qPedESTATUSGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := 'Pendiente';
  if sender.Value = 'E' then
    Text := 'Entrada'
  else
    if sender.Value = 'I' then
      Text := 'Incompleto'
    else
      if sender.Value = 'C' then
        Text := 'Cancelado';
end;

procedure TFDM.qPedNewRecord(DataSet: TDataSet);
begin
  DataSet['Estatus'] := PedidosEstatus[1];
  DataSet['Fecha'] := Date;
  DataSet['Entrega_ini'] := Date+1;
  DataSet['Entrega_fin'] := Date+2;
  DataSet['Total'] := 0;
  DataSet['Cantidad'] := 0;
  DataSet['ENTRADA']  := 0;
end;

procedure TFDM.qPedRenNewRecord(DataSet: TDataSet);
begin
  DataSet['ENTRADA']  := 0;
end;

procedure TFDM.qPlantasNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
end;

procedure TFDM.qProgNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Folio');
  DataSet['Fecha'] := Date;
end;

procedure TFDM.qProvsNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
  DataSet['Credito_dias'] := 0;
  DataSet['Credito_limite'] := 0;
  DataSet['Saldo'] := 0;
end;

procedure TFDM.qReqDetNewRecord(DataSet: TDataSet);
begin
  DataSet['Salida'] := 0;
  DataSet['Estatus'] := 'P';
  DataSet['Muestras'] := False;
end;

procedure TFDM.qReqESTATUSGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.Value = 'P' then
    Text := 'PENDIENTE'
  else
    if Sender.Value = 'S' then
      Text := 'ENTREGADO'
    else
      if Sender.Value = 'c' then
        Text := 'CANCELADO';
end;

procedure TFDM.qReqNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Folio');
  DataSet['Fecha'] := Date;
  DataSet['Estatus'] := 'P';
  DataSet['Entrega_ini'] := date + 5;
  DataSet['Entrega_fin'] := date + 10;
  DataSet['Cantidad'] := 0;
  DataSet['Total'] := 0;
end;

procedure TFDM.qReqRenNewRecord(DataSet: TDataSet);
begin
  DataSet['PrsProg'] := 0;
end;

procedure TFDM.qTiendasNewRecord(DataSet: TDataSet);
begin
  SetConsecutivo(DataSet, 'Codigo');
  DataSet['Es_Bodega'] := False;
  DataSet['lista'] := 0;
  DataSet['porcent_incre'] := 0;
  DataSet['NUMPEDIDO'] := 0;
end;

procedure TFDM.qTrasDetNewRecord(DataSet: TDataSet);
begin
  DataSet['Tienda'] := fdm.qTrasTIENDA.Value;
  DataSet['Folio']  := fdm.qTrasFOLIO.Value;
  DataSet['ENTRADA']  := 0;
  DataSet['costo']  := 0;
  DataSet['precio']  := 0;
  DataSet['importe']  := 0;
  DataSet['Estatus']  := 'T';
end;

procedure TFDM.qTrasNewRecord(DataSet: TDataSet);
begin
  DataSet['Estatus'] := 'T'; // Tránsito
  DataSet['Fecha'] := Date;
  DataSet['Total'] := 0;
  DataSet['Cantidad'] := 0;
  DataSet['ENTRADA']  := 0;
end;

procedure TFDM.qTrasRenNewRecord(DataSet: TDataSet);
begin
  DataSet['ENTRADA']  := 0;
end;

procedure TFDM.qUsrNewRecord(DataSet: TDataSet);
begin
  DataSet['Activo'] := True;
  DataSet['Admin'] := False;
end;

procedure TFDM.qVentaPosNewRecord(DataSet: TDataSet);
begin
  DataSet['ApartadoSalida'] := 0;
end;

function TFDM.GetCodigo(clValor: string): Word;
var
  xpos: Integer;
begin
  xpos := Pos('-', clValor);
  Result := StrToInt(Copy(clValor, 1, xpos - 1));
end;

procedure TFDM.SetSaldoCliente(qCte: SmallInt; Cantidad: Double);
begin
  fdm.Query1.SQL.Text := 'Update Ctes set Saldo=Saldo+:Cantidad ' +
    'Where Codigo=:Codigo';
  fdm.Query1.ParamByName('Cantidad').AsFloat := Cantidad;
  fdm.Query1.ParamByName('Codigo').AsInteger := qCte;
  fdm.Query1.ExecSQL;
end;

function TFDM.GetMaxId(NomTabla:String): Word;
begin
  Query3.SQL.Text := 'select coalesce(max(id), 0) id from ' + NomTabla;
  Query3.Open();
  Result := query3.fieldbyname('id').asinteger + 1;
end;

function TFDM.GetMaxUnico(NomTabla: string): Word;
begin
  Query3.SQL.Text := 'select coalesce(max(unico), 0) unico from ' + NomTabla;
  Query3.Open();
  Result := query3.fieldbyname('unico').asinteger + 1;
end;

procedure TFDM.SetCreaDetalle1Cxc(qSistemaOrigen: string; qObs: String);
begin
  // En base al master creo el detalle
  qCxcDet.Open();
  fdm.qCxcDet.Append;
  fdm.qCxcDetTIPO.Value := self.qCxcTIPO.Value;
  fdm.qCxcDetID.Value := self.qCxcID.Value;
  fdm.qCxcDetUNICO.Value :=     self.GetMaxUnico('cxc_det');
  fdm.qCxcDetCODCTE.Value := fdm.qCxcCODCTE.Value;
  fdm.qCxcDetCODCXC.Value := fdm.qCxcCODCXC.Value;
  fdm.qCxcDetDOCTO.Value :=   0;
  fdm.qCxcDetFOLIONOTA.Value := 0;
  fdm.qCxcDetFECHA.Value :=   fdm.qCxcFECHA.Value;
  fdm.qCxcDetFECVEN.Value :=  fdm.qCxcFECVEN.Value;
  fdm.qCxcDetDESMON.Value := 'M.N.';
  fdm.qCxcDetTIPOCAMBIO.Value := 1;
  fdm.qCxcDetMONTO.Value := FDM.qCxcCANTIDAD.Value;
  fdm.qCxcDetCARGO.Value := 0;
  fdm.qCxcDetABONO.Value := 0;
  if fdm.qCxcCODCXC.Value < 20 then // Cargo
    fdm.qCxcDetCARGO.Value := FDM.qCxcCANTIDAD.Value
  else
    fdm.qCxcDetABONO.Value := FDM.qCxcCANTIDAD.Value;
  fdm.qCxcDetCTACHEQ.Value := 0;
  // origen: CAZ, POS, Bancos
  fdm.qCxcDetORIGEN.Value := qSistemaOrigen;
  fdm.qCxcDetFOLIO1.Value := 0;
  fdm.qCxcDetOBSERVA.Value := qObs;
  fdm.qCxcDet.Post;
  // Actualizar Saldo del Cliente ----------------
  fdm.SetSaldoCliente(fdm.qCxcCODCTE.Value, fdm.qCxcCANTIDAD.AsFloat);
  qCxcDet.Close;
end;

procedure TFDM.SetCreaDetalle2Cxc(qSistemaOrigen: string);
var
  qSaldo: Double;
begin
  // Completo el detalle para saldar documentos
  fdm.qCxcDetTIPO.Value := self.qCxcDocsTIPO.Value;
  fdm.qCxcDetID.Value := self.qCxcDocsID.Value;
  fdm.qCxcDetUnico.Value :=     self.GetMaxUnico('cxc_det');
  fdm.qCxcDetCODCTE.Value := self.qCxcDocsCODCTE.Value;
  //fdm.qCxcDetCODCXC.Value := fdm.qCxcCODCXC.Value;
  //fdm.qCxcDetDOCTO.Value :=   0;
  fdm.qCxcDetFOLIONOTA.Value := 0;
  //fdm.qCxcDetFECHA.Value :=   fdm.qCxcFECHA.Value;
  //fdm.qCxcDetFECVEN.Value :=  fdm.qCxcFECVEN.Value;
  fdm.qCxcDetDESMON.Value := 'M.N.';
  fdm.qCxcDetTIPOCAMBIO.Value := 1;
  //fdm.qCxcDetMONTO.Value := FDM.qCxcCANTIDAD.Value;
  fdm.qCxcDetCTACHEQ.Value := 0;
  // origen: CAZ, POS, Bancos
  fdm.qCxcDetORIGEN.Value := qSistemaOrigen;
  fdm.qCxcDetFOLIO1.Value := 0;
  //fdm.qCxcDetOBSERVA.Value := qObs;
  fdm.qCxcDetCARGO.Value := 0;
  fdm.qCxcDetABONO.Value := 0;
  if fdm.qCxcDetCODCXC.Value < 20 then // es cargo
  begin
    fdm.qCxcDetCARGO.Value := fdm.qCxcDetMONTO.Value;
    qSaldo := fdm.qCxcDetMONTO.AsFloat;
  end else
  begin
    fdm.qCxcDetABONO.Value := fdm.qCxcDetMONTO.Value;
    qSaldo := fdm.qCxcDetMONTO.AsFloat * -1;
  end;

  Try
    fdm.qCxcDet.Post;
  except
    raise;
  End;
  // Actualizo el saldo del master
  fdm.qCxcDocs.Edit;
  fdm.qCxcDocsSALDO.Value := fdm.qCxcDocsSALDO.Value + qSaldo;
  fdm.qCxcDocs.Post;
  // Actualizar Saldo del Cliente ----------------
  fdm.SetSaldoCliente(fdm.qCxcDetCODCTE.Value, qSaldo);
end;

procedure TFDM.SetPagoVentaCxc(qFormaPago: string; Tipo: string; Apartado: Double);
var
  qSaldo, qMonto: Double;
  qConceptoPago: Byte;
begin
  if qFormaPago = 'Efectivo' then
      qConceptoPago := 20
  else
    qConceptoPago := 21;
    // Si no es crédito realizo el pago de la cxc.
  fdm.qCxcDet.Open();
  fdm.qCxcDet.Append;
  fdm.qCxcDetTIPO.Value := self.qCxcTIPO.Value;
  FDM.qCxcDetID.Value := qCxcID.Value;
  fdm.qCxcDetUNICO.Value :=  fdm.GetMaxUnico('cxc_det');
  fdm.qCxcDetCODCTE.Value := fdm.qCxcCODCTE.Value;
  fdm.qCxcDetCODCXC.Value := qConceptoPago;
  //fdm.qCxcDetDOCTO.Value :=   0;
  fdm.qCxcDetFOLIONOTA.Value := 0;
  fdm.qCxcDetFECHA.Value :=   date;
  fdm.qCxcDetFECVEN.Value :=  date;
  fdm.qCxcDetDESMON.Value := 'M.N.';
  fdm.qCxcDetTIPOCAMBIO.Value := 1;

  qMonto := FDM.qCxcCANTIDAD.AsFloat;
  if Tipo = 'Apartado' then
    qMonto := Apartado;

  fdm.qCxcDetMONTO.Value := qMonto;
  fdm.qCxcDetCTACHEQ.Value := 0;
  // origen: CAZ, POS, Bancos
  fdm.qCxcDetORIGEN.Value := 'V';
  fdm.qCxcDetFOLIO1.Value := 0;
  fdm.qCxcDetOBSERVA.Value := 'Pago de la venta ' + qFormaPago;
  fdm.qCxcDetCARGO.Value := 0;
  fdm.qCxcDetABONO.Value := 0;
  if fdm.qCxcDetCODCXC.Value < 20 then // es cargo
  begin
    fdm.qCxcDetCARGO.Value := qMonto;
    qSaldo := qMonto;
  end else
  begin
    fdm.qCxcDetABONO.Value := qMonto;
    qSaldo := qMonto * -1;
  end;
  fdm.qCxcDet.Post;
  // Actualizar Saldo del Cliente ----------------
  fdm.SetSaldoCliente(fdm.qCxcDetCODCTE.Value, qSaldo);
end;

procedure TFDM.SetInicializamPuntos(qCodCorrida: Byte; qPartida: Byte; qestilo: string);
var
  i: Byte;
  xCodCorrida: TCodCorrida;
  clPunto, clPuntoCantidad: String;
begin
  xCodCorrida := TCodCorrida.Create(qCodCorrida);
  mPuntos.Append;
  mPuntosPARTIDA.Value := qPartida;
  mPuntosESTILO.Value := qEstilo;
  mPuntosTOTPUN.AsInteger := xCodCorrida.TotalPuntos;
  for i := 1 to mPuntosTOTPUN.Value do
  begin
    SetNombreCamposPuntos(i, clPunto, clPuntoCantidad);
    mPuntos.FieldByName(clpunto).Value := xCodCorrida.PuntosDescr[i];
  end;
  mPuntos.Post;
  xCodCorrida.Free;
end;

procedure TFDM.SetNombreCamposPuntos(i: Byte; var clPunto: string; var clCantidad: string);
begin
  if i < 10 then
  begin
    clpunto := 'C0' + IntToStr(i);
    clCantidad := 'P0' + IntToStr(i);
  end
  else
  begin
    clpunto := 'C' + IntToStr(i);
    clCantidad := 'P' + IntToStr(i);
  end;
end;

procedure TFDM.SetStringGridInvetarioxEstilo(qCorrida: Byte; qEstilo: string; clForm: TUniForm);
var
  locPunt: TCodCorrida;
  locTotPuntos: Byte;
  Local_i, i: Byte;
begin
  locPunt := TCodCorrida.Create(qCorrida);
  locTotPuntos := locPunt.TotalPuntos;
  fdm.Query1.SQL.Text := 'select distinct tienda from inventario ' + 'where estilo=:estilo ';// '  and existencia > 0';
  fdm.Query1.ParamByName('estilo').AsString := qEstilo;
  fdm.Query1.Open;
  (clForm.FindComponent('sg1') as TUniStringGrid).ColCount := locTotPuntos + 1;
  (clForm.FindComponent('sg1') as TUniStringGrid).RowCount := fdm.Query1.RecordCount + 1;
  (clForm.FindComponent('sg1') as TUniStringGrid).Cells[0, 0] := 'Tienda';
  // recorrer tiendas e ir arreglando renglones
  i := 1;
  while not fdm.Query1.Eof do
  begin
    fdm.Query2.SQL.Text := 'select punto,existencia from inventario ' + 'where estilo=:estilo ' + '  and tienda=:tienda';
    fdm.Query2.ParamByName('estilo').AsString := qEstilo;
    fdm.Query2.ParamByName('tienda').AsInteger := fdm.Query1.FieldByName('tienda').AsInteger;
    fdm.Query2.Open;
    while not fdm.Query2.Eof do
    begin
      (clForm.FindComponent('sg1') as TUniStringGrid).Cells[fdm.Query2.FieldByName('punto').AsInteger, i] := fdm.Query2.FieldByName('existencia').AsString;
      fdm.Query2.Next;
    end;
    // muestro el codigo de la tienda en la columna cero.
    (clForm.FindComponent('sg1') as TUniStringGrid).Cells[0, i] := fdm.Query1.FieldByName('Tienda').AsString;
    Inc(i);
    fdm.Query1.Next;
  end;
  fdm.Query1.Close;
  for Local_i := 1 to locTotPuntos do
  begin
    (clForm.FindComponent('sg1') as TUniStringGrid).Cells[Local_i, 0] := LocPunt.PuntosDescr[Local_i];
  end;
  locPunt.Free;
end;

procedure TFDM.SetSg2VentasTiendasxEstilo(qCorrida: Byte; qEstilo: string; clForm: TUniForm);
var
  locPunt: TCodCorrida;
  locTotPuntos: Byte;
  Local_i, i: Byte;
begin
  locPunt := TCodCorrida.Create(qCorrida);
  locTotPuntos := locPunt.TotalPuntos;
  fdm.Query1.SQL.Text := 'select m.tienda, m.tipo from ventaspos m ' +
    'left outer join ventasposdet d on d.id=m.id ' +
    'where m.fecha between :fec1 and :fec2 ' +
    '  and d.estilo=:estilo ' +
    'group by m.tienda, m.tipo';
  fdm.Query1.ParamByName('fec1').AsDate := (clForm.FindComponent('edFec1') as TUniDateTimePicker).DateTime;
  fdm.Query1.ParamByName('fec2').AsDate := (clForm.FindComponent('edFec2') as TUniDateTimePicker).DateTime;
  fdm.Query1.ParamByName('estilo').AsString := qEstilo;
  fdm.Query1.Open;
  (clForm.FindComponent('sg2') as TUniStringGrid).ColCount := locTotPuntos + 1;
  (clForm.FindComponent('sg2') as TUniStringGrid).RowCount := fdm.Query1.RecordCount + 1;
  (clForm.FindComponent('sg2') as TUniStringGrid).Cells[0, 0] := 'Tienda';
  // recorrer tiendas e ir arreglando renglones
  i := 1;
  while not fdm.Query1.Eof do
  begin
    fdm.Query2.SQL.Text := 'select v.punto, sum(v.cantidad) cantidad from ventasposdet v ' +
      'inner join ventaspos m on m.id=v.id ' +
      'where m.fecha between :fec1 and :fec2 ' +
      '  and m.tienda=:tienda ' +
      '  and v.estilo=:estilo ' +
      'group by v.punto';
    fdm.Query2.ParamByName('fec1').AsDate := fdm.Query1.ParamByName('fec1').AsDate;
    fdm.Query2.ParamByName('fec2').AsDate := fdm.Query1.ParamByName('fec2').AsDate;
    fdm.Query2.ParamByName('estilo').AsString := qEstilo;
    fdm.Query2.ParamByName('tienda').AsInteger := fdm.Query1.FieldByName('tienda').AsInteger;
    fdm.Query2.Open;
    while not fdm.Query2.Eof do
    begin
      (clForm.FindComponent('sg2') as TUniStringGrid).Cells[fdm.Query2.FieldByName('punto').AsInteger, i] := fdm.Query2.FieldByName('cantidad').AsString;
      fdm.Query2.Next;
    end;
    // muestro el codigo de la tienda en la columna cero.
    (clForm.FindComponent('sg2') as TUniStringGrid).Cells[0, i] := fdm.Query1.FieldByName('Tienda').AsString;
    Inc(i);
    fdm.Query1.Next;
  end;
  fdm.Query1.Close;
  for Local_i := 1 to locTotPuntos do
  begin
    (clForm.FindComponent('sg2') as TUniStringGrid).Cells[Local_i, 0] := LocPunt.PuntosDescr[Local_i];
  end;
  locPunt.Free;
end;

procedure TFDM.GetFolioPedidoxTienda(qBodega: Byte);
begin
  fdm.Query1.Close;
  fdm.Query1.Open('Select Max(Folio) Folio from pedidos where Tienda=' + IntToStr(qBodega));
  if fdm.Query1.FieldByName('Folio').IsNull then
    fdm.qPedFOLIO.Value := 1
  else
    fdm.qPedFOLIO.Value := fdm.Query1.FieldByName('Folio').AsInteger + 1;
end;

procedure TFDM.GetCostoPromedio(clNumTienda: Smallint; qCosto: Double; xid: Integer; var locCostprom: Double);
var
  totCantidad: Integer;
  locImporte: Double;
begin
  // calcular el costo promedio
  if xid > 1 then
  begin
    fdm.Query3.SQL.Text := 'select sum(cantidad) totcantidad, ' + 'sum(cantidad*promedio) importe ' + 'from inven_movs ' + 'where tienda=:tienda ' + '  and estilo=:estilo ' + '  and id between :id-1 and :id';
    Query3.ParamByName('Tienda').AsInteger := clNumTienda;
    fdm.Query3.ParamByName('Estilo').AsString := Query1.FieldByName('Estilo').Value;
    fdm.Query3.ParamByName('id').AsInteger := xid;
    fdm.Query3.Open;
    totCantidad := fdm.Query3.FieldByName('totcantidad').AsInteger;
    locImporte := fdm.Query3.FieldByName('importe').AsFloat;
    locCostprom := RoundTo(locImporte / totCantidad, -2);
  end
  else
    locCostprom := qCosto;
end;

procedure TFDM.GetExistenciaEstilo(clNumTienda: Smallint; clEstilo:String; var totExistencia: Integer);
begin
  // saco la existencia por si está en otros puntos que no se consideraron del estilo
  fdm.Query3.Close;
  fdm.Query3.SQL.Text := 'select sum(existencia) existencia ' + 'from inventario ' + 'where tienda=:Tienda ' + '  and estilo=:estilo';
  fdm.Query3.ParamByName('Tienda').AsInteger := clNumTienda;
  fdm.Query3.ParamByName('Estilo').AsString := clEstilo;
  fdm.Query3.Open;
  totExistencia := fdm.Query3.FieldByName('existencia').AsInteger;
  fdm.Query3.Close;
end;

procedure TFDM.SetExistenciaCostoPromedioInvenMovs(clNumTienda: Smallint; qEstilo: string; xid: Integer; totExistencia: Integer; locCostprom: Double);
begin
  // Actualizo la existencia y el costo promedio en inven_movs ------------
  fdm.Query3.SQL.Text := 'update inven_movs set existencia=:existencia, ' +
    'promedio=:promedio ' +
    'where Tienda=:Tienda' +
    '  and Estilo=:Estilo' +
    '  and id=:id';
  fdm.Query3.ParamByName('existencia').Value := totExistencia;
  fdm.Query3.ParamByName('promedio').Value := locCostprom;
  fdm.Query3.ParamByName('Tienda').Value := clNumTienda;
  fdm.Query3.ParamByName('Estilo').Value := qEstilo;
  fdm.Query3.ParamByName('id').Value := xid;
  fdm.Query3.ExecSQL;
end;

procedure TFDM.SetExistenciaEstilo(NumConcepto: Byte; qCantidad: Word; clEstilo:String);
begin
  // Actualizo la existencia total en el estilo
//  fdm.qEstilos.First;
//  if fdm.qEstilos.Locate('Estilo', clEstilo, []) then
//  begin
//    fdm.qEstilos.Edit;
//    if NumConcepto < 21 then
//      fdm.qestilosexistencia.Value := fdm.qestilosexistencia.Value + qCantidad
//    else
//      fdm.qestilosexistencia.Value := fdm.qestilosexistencia.Value - qCantidad;
//    fdm.qEstilos.Post;
//  end;
  fdm.qupestilo.Close;
  fdm.qupEstilo.ParambyName('pEstilo').asString := clEstilo;
  fdm.qupestilo.open;

  fdm.qUpEstilo.Edit;
  if NumConcepto < 21 then
    fdm.qupEstiloexistencia.Value := fdm.qupEstiloexistencia.Value + qCantidad
  else
    fdm.qupEstiloexistencia.Value := fdm.qupEstiloexistencia.Value - qCantidad;
  fdm.qupEstilo.Post;
end;

procedure TFDM.SetExistenciaPunto(NumConcepto: Byte; qEstilo: String; qPunto: Smallint; qCantidad: Word);
var
  xid: Integer;
  totCantidad: Integer;
  locImporte: Double;
  locCostprom: Double;
  totExistencia: Integer;
begin
  // Actualizo existencias en el estilo y las tablas de inventario-----
  SetExistenciaEstilo(NumConcepto, qCantidad, qEstilo);
  xid := fdm.GetidInven_movs(dm.gclTienda,  qEstilo);
  fdm.qinvenMovs.Open();
  fdm.qinvenMovs.Append;
  fdm.qInvenMovsTIENDA.Value := dm.gclTienda;
  fdm.qInvenMovsESTILO.Value :=  qEstilo;
  fdm.qInvenMovsID.Value := xid;
  fdm.qInvenMovsFOLIO.Value := fdm.qCambiosID.Value;
  fdm.qInvenMovsFECHA.Value := date;
  fdm.qInvenMovsTIPO.Value := NumConcepto;
  fdm.qInvenMovsCANTIDAD.Value := qCantidad;
  fdm.qInvenMovsEXISTENCIA.Value := 0;
  // para que deje continuar...
  fdm.qInvenMovsPROMEDIO.Value := fdm.qEstilosCOSTO.Value;
  FDM.qInvenMovsULTIMO.Value := fdm.qEstilosCOSTO.Value;
  fdm.qInvenMovs.Post;
  // 2. sigo con el detalle de movimientos
  fdm.Query1.SQL.Text := 'update inventario set existencia=existencia ';
  if NumConcepto < 20 then // son entradas
    fdm.Query1.SQL.Text := fdm.Query1.SQL.Text + '+ '
  else
    fdm.Query1.SQL.Text := fdm.Query1.SQL.Text + '- ';

  fdm.Query1.SQL.Text := fdm.Query1.SQL.Text +
    inttostr(qCantidad) + ' ' +
    'where Tienda=' + inttostr(dm.gclTienda) +
    '  and Estilo=' + QuotedStr(qEstilo) +
    '  and punto='  + inttostr(qPunto);
  fdm.Query1.ExecSQL;
  // detalle de movimientos ----------------------------
  fdm.qInvenMovsDet.Open();
  fdm.qInvenMovsDet.Append;
  fdm.qInvenMovsDetTIENDA.Value := dm.gclTienda;
  FDM.qInvenMovsDetESTILO.Value := qEstilo;
  fdm.qInvenMovsDetID.Value := xid;
  fdm.qInvenMovsDetPUNTO.Value := qPunto;
  fdm.qInvenMovsDetCANTIDAD.Value := qCantidad;
  fdm.qInvenMovsDetEXISTENCIA.Value := fdm.qInvenEXISTENCIA.Value;
  fdm.qInvenMovsDet.Post;
  // saco el costo promedio
  if xid > 1 then
  begin
    fdm.Query3.SQL.Text := 'select sum(cantidad) totcantidad, ' +
      'sum(cantidad*promedio) importe ' + 'from inven_movs ' +
      'where tienda=:tienda ' +
      '  and estilo=:estilo ' +
      '  and id between :id-1 and :id';
    fdm.Query3.ParamByName('Tienda').AsInteger := dm.gclTienda;
    fdm.Query3.ParamByName('Estilo').AsString := qEstilo;
    fdm.Query3.ParamByName('id').AsInteger := xid;
    fdm.Query3.Open;
    totCantidad := fdm.Query3.FieldByName('totcantidad').AsInteger;
    locImporte := fdm.Query3.FieldByName('importe').AsFloat;
    locCostprom := RoundTo(locImporte / totCantidad, -2);
  end;
  fdm.Query3.SQL.Text := 'update inven_movs set existencia=:existencia, ' +
    'promedio=:promedio ' +
    'where Tienda=:Tienda' +
    '  and Estilo=:Estilo' +
    '  and id=:id';
  fdm.Query3.ParamByName('existencia').Value := totExistencia;
  fdm.Query3.ParamByName('promedio').Value := locCostprom;
  fdm.Query3.ParamByName('Tienda').Value := dm.gclTienda;
  fdm.Query3.ParamByName('Estilo').Value := qEstilo;
  fdm.Query3.ParamByName('id').Value := xid;
  fdm.Query3.ExecSQL;
end;

procedure TFDM.SetmPuntos_InveGral;
var
  clPunto, clCantidad: string;
  vTot, vCant: SmallInt;
begin
  fdm.qInveGral.First;
  // recorro cada estilo del inventario
  while not fdm.qInveGral.Eof do
  begin
    FDM.SetInicializamPuntos(fdm.qInveGralCORRIDA.Value, 0, fdm.qInveGralESTILO.Value);
    fdm.mPuntos.Edit;
    FDM.mPuntosMODELO.Value := fdm.qInveGralMODELO.Value;
    FDM.mPuntosCOLOR.Value := fdm.qInveGralNom_COLOR.Value;
    fdm.mPuntosCOSTO.Value := fdm.qInveGralCOSTO.Value;
    fdm.mPuntosPRECIO.Value := fdm.qInveGralMENUDEO.Value;
    fdm.mPuntos.Post;

    fdm.Query1.Close;
    fdm.Query1.SQL.Text := 'Select d.punto, sum(d.existencia) existencia ' +
    'from inventario d ' +
    'where d.estilo=' + QuotedStr(fdm.qInveGralESTILO.Value) + ' ' +
    'group by d.punto';
    //fdm.Query1.ParamByName('estilo').AsString := fdm.qInveGralESTILO.Value;
    fdm.Query1.Open();
    // recorro cada punto
    vTot := 0;
    while not fdm.Query1.Eof do
    begin
      fdm.SetNombreCamposPuntos(fdm.Query1.FieldByName('punto').AsInteger, clPunto, clCantidad);
      FDM.mPuntos.Edit;
      vCant := fdm.Query1.FieldByName('existencia').AsInteger;
      fdm.mPuntos.FieldByName(clCantidad).AsInteger := vCant;
      vTot := vTot + vCant;
      fdm.mPuntos.Post;
      fdm.Query1.Next;
    end;
    if vTot > 0 then
    begin
      FDM.mPuntos.Edit;
      fdm.mPuntosPARES.Value := vTot;
      fdm.mPuntos.Post;
    end;
    FDM.qInveGral.Next;
  end;
  fdm.mPuntos.First;
end;

procedure TFDM.SetmPuntos_InveTienda(clTienda: Byte);
var
  clPunto, clCantidad: string;
  vTot, vCant: SmallInt;
begin
  fdm.qInveTienda.First;
  // recorro cada estilo del inventario
  while not fdm.qInveTienda.Eof do
  begin
    FDM.SetInicializamPuntos(fdm.qInveTiendaCORRIDA.Value, 0, fdm.qInveTiendaESTILO.Value);
    fdm.mPuntos.Edit;
    fdm.mPuntosPARTIDA.Value := fdm.qInveTiendaTIENDA.Value;
    FDM.mPuntosMODELO.Value := fdm.qInveTiendaMODELO.Value;
    FDM.mPuntosCOLOR.Value := fdm.qInveTiendaNom_COLOR.Value;
    fdm.mPuntosCOSTO.Value := fdm.qInveTiendaCOSTO.Value;
    fdm.mPuntosPRECIO.Value := fdm.qInveTiendaMENUDEO.Value;
    fdm.mPuntos.Post;

    fdm.Query1.Close;
    fdm.Query1.SQL.Text := 'Select d.punto, sum(d.existencia) existencia ' +
    'from inventario d ' +
    'where d.estilo=' + QuotedStr(fdm.qInveTiendaESTILO.Value) + ' ' +
    '  and d.Tienda=' + IntToStr(clTienda) + ' ' +
    'group by d.punto';
    //fdm.Query1.ParamByName('estilo').AsString := fdm.qInveGralESTILO.Value;
    fdm.Query1.Open();
    // recorro cada punto
    vTot := 0;
    while not fdm.Query1.Eof do
    begin
      fdm.SetNombreCamposPuntos(fdm.Query1.FieldByName('punto').AsInteger, clPunto, clCantidad);
      FDM.mPuntos.Edit;
      vCant := fdm.Query1.FieldByName('existencia').AsInteger;
      fdm.mPuntos.FieldByName(clCantidad).AsInteger := vCant;
      vTot := vTot + vCant;
      fdm.mPuntos.Post;
      fdm.Query1.Next;
    end;
    if vTot > 0 then
    begin
      FDM.mPuntos.Edit;
      fdm.mPuntosPARES.Value := vTot;
      fdm.mPuntos.Post;
    end;
    FDM.qInveTienda.Next;
  end;
end;

function TFDM.GetFiltroxTalla(xTalla: string): String;
var
  locFiltro, locTalla: String;
  loci: Byte;
begin
  fdm.Query1.SQL.Text := 'select c.codigo,c.totpun,'+
  'c.desc01,c.desc02,c.desc03,c.desc04,c.desc05,c.desc06,c.desc07,c.desc08,'+
  'c.desc09,c.desc10,c.desc11,c.desc12,c.desc13,c.desc14,c.desc15,c.desc16,c.desc17'+
  ' from corridas c ' +
  'where c.desc01=:qtalla or ' +
      'c.desc02=:qtalla or ' +
      'c.desc03=:qtalla or ' +
      'c.desc04=:qtalla or ' +
      'c.desc05=:qtalla or ' +
      'c.desc06=:qtalla or ' +
      'c.desc07=:qtalla or ' +
      'c.desc08=:qtalla or ' +
      'c.desc09=:qtalla or ' +
      'c.desc10=:qtalla or ' +
      'c.desc11=:qtalla or ' +
      'c.desc12=:qtalla or ' +
      'c.desc13=:qtalla or ' +
      'c.desc14=:qtalla or ' +
      'c.desc15=:qtalla or ' +
      'c.desc16=:qtalla or ' +
      'c.desc17=:qtalla';
  Query1.ParamByName('qTalla').AsString := xTalla;
  Query1.Open();
  locFiltro := '';
  while not Query1.Eof do
  begin
    for loci := 1 to Query1.FieldByName('TotPun').AsInteger do
    begin
      if loci < 10 then
        locTalla := 'Desc0' + IntToStr(loci)
      else
        locTalla := 'Desc' + IntToStr(loci);

      if xTalla = Query1.FieldByName(locTalla).AsString then
      begin
        if locFiltro = '' then
          locFiltro := '(e.Corrida=' + Query1.FieldByName('codigo').AsString +
            ' and i.Punto=' + IntToStr(loci) +  ' and i.existencia > 0)'
        else
          locFiltro := locFiltro + ' or (e.Corrida=' + Query1.FieldByName('codigo').AsString +
          ' and i.Punto=' + IntToStr(loci) +  ' and i.existencia > 0)';
      end;
    end;
    Query1.Next;
  end;
  Query1.Close;
  Result := locFiltro;
end;

procedure TFDM.SetCajaActualizo(TipoVenta:String; EsTarjeta:Boolean; clNeto: Double);
begin
  fdm.qCajaMovs.Open;
  fdm.qCajaMovs.Edit;
  if TipoVenta = 'CREDITO' then
    fdm.qCajaMovsVENTAS_CREDITO.Value := fdm.qCajaMovsVENTAS_CREDITO.Value + clNeto
  else if TipoVenta = 'APARTADO' then
    fdm.qCajaMovsVENTAS_APARTADO.Value := fdm.qCajaMovsVENTAS_APARTADO.Value + clNeto
  else if TipoVenta = 'VENTA' then
  begin
    if not EsTarjeta then
      fdm.qCajaMovsVENTAS_EFECTIVO.Value := fdm.qCajaMovsVENTAS_EFECTIVO.Value + clNeto
    else
      fdm.qCajaMovsVENTAS_TARJETA.Value := fdm.qCajaMovsVENTAS_TARJETA.Value + clNeto;
  end else
  if TipoVenta = 'DEVOLUCION' then
    FDM.qCajaMovsDEVOLUCIONES.Value := FDM.qCajaMovsDEVOLUCIONES.Value + clNeto;

  fdm.qCajaMovs.Post;
  fdm.qCajaMovs.Close;
end;

procedure TFDM.SetCatalogo_CajaConceptos;
begin
  // Conceptos de caja
  self.qCaja_Concep.Open;
  if not qCaja_Concep.Locate('codigo', 1, []) then
  begin
    self.qCaja_Concep.Append;
    self.qCaja_ConcepCODIGO.Value := 1;
    self.qCaja_ConcepNombre.Value := 'Ventas Efectivo';
    self.qCaja_ConcepNATURALEZA.Value := '+';
    self.qCaja_Concep.Post;
  end;
  if not qCaja_Concep.Locate('codigo', 2, []) then
  begin
  self.qCaja_Concep.Append;
  self.qCaja_ConcepCODIGO.Value := 2;
  self.qCaja_ConcepNombre.Value := 'Ventas Tarjeta';
  self.qCaja_ConcepNATURALEZA.Value := '+';
  self.qCaja_Concep.Post;
  end;
  if not qCaja_Concep.Locate('codigo', 3, []) then
  begin
  self.qCaja_Concep.Append;
  self.qCaja_ConcepCODIGO.Value := 3;
  self.qCaja_ConcepNombre.Value := 'Ventas Crédito';
  self.qCaja_ConcepNATURALEZA.Value := '+';
  self.qCaja_Concep.Post;
  end;
  if not qCaja_Concep.Locate('codigo', 4, []) then
  begin
  self.qCaja_Concep.Append;
  self.qCaja_ConcepCODIGO.Value := 4;
  self.qCaja_ConcepNombre.Value := 'Ventas Apartado';
  self.qCaja_ConcepNATURALEZA.Value := '+';
  self.qCaja_Concep.Post;
  end;
  if not qCaja_Concep.Locate('codigo', 5, []) then
  begin
  self.qCaja_Concep.Append;
  self.qCaja_ConcepCODIGO.Value := 5;
  self.qCaja_ConcepNombre.Value := 'Devoluciones Venta';
  self.qCaja_ConcepNATURALEZA.Value := '-';
  self.qCaja_Concep.Post;
  end;
  if not qCaja_Concep.Locate('codigo', 6, []) then
  begin
  self.qCaja_Concep.Append;
  self.qCaja_ConcepCODIGO.Value := 6;
  self.qCaja_ConcepNombre.Value := 'Cambios Entrada';
  self.qCaja_ConcepNATURALEZA.Value := '-';
  self.qCaja_Concep.Post;
  end;
  if not qCaja_Concep.Locate('codigo', 7, []) then
  begin
  self.qCaja_Concep.Append;
  self.qCaja_ConcepCODIGO.Value := 7;
  self.qCaja_ConcepNombre.Value := 'Cambios Salida';
  self.qCaja_ConcepNATURALEZA.Value := '+';
  self.qCaja_Concep.Post;
  end;
end;

function Tfdm.Set_ConsecutivoInsumo: string;
var
  qFol: Word;
begin
  fdm.Query1.Close;
  fdm.Query1.sql.Text := 'Select MAX(Clave) CLAVE from Insumos where Familia=:Familia '
    + 'and Tipo=:Tipo and Grupo=:Grupo';
  fdm.Query1.ParamByName('Familia').AsString := fdm.qFamCLAVE.Value;
  fdm.Query1.ParamByName('Tipo').AsString := fdm.qTipCLAVE.Value;
  fdm.Query1.ParamByName('Grupo').AsString := fdm.qGrupCLAVE.Value;
  fdm.Query1.Open;
  if fdm.Query1.FieldByName('Clave').AsString = '' then
    qFol := 1
  else
  begin
    Result := fdm.Query1.FieldByName('Clave').AsString;
    Result := Copy(Result, 11, 4);
    qFol := StrToInt(Result);
    Inc(qFol);
  end;
  Result := Format('%.*d', [4, qFol]);
end;

procedure TFDM.AbreTablas;
begin
  self.qTiendas.Open('Select * from Tiendas');
  self.qLineas.Open('Select * from Lineas');
  self.qClasifi.Open('Select * from Clasifi');
  self.qColores.Open('Select * from Colores');
  self.qMarcas.Open('Select * from Marcas');
  self.qCorridas.Open('Select * from Corridas');
  // creo tabla memoria de generos ...
  self.mGeneros.Open;
  self.mGeneros.Append;
  self.mGenerosNOMBRE.Value := 'Caballero';
  self.mGeneros.Post;
  self.mGeneros.Append;
  self.mGenerosNOMBRE.Value := 'Dama';
  self.mGeneros.Post;
  self.mGeneros.Append;
  self.mGenerosNOMBRE.Value := 'Joven';
  self.mGeneros.Post;
  self.mGeneros.Append;
  self.mGenerosNOMBRE.Value := 'Niño';
  self.mGeneros.Post;
  self.mGeneros.Append;
  self.mGenerosNOMBRE.Value := 'Accesorios';
  self.mGeneros.Post;
  self.mGeneros.Append;
  self.mGenerosNOMBRE.Value := 'CQ';
  self.mGeneros.Post;
  self.qEstilos.Open;
  self.qModelos.Open;
  self.qProvs.Open;
  qBodegas.Open;
  self.qUsr.Open;
  SetCatalogoPreciosVenta;
  // precios de venta
  SetCatalogoFormasPago;
  // formas de pago en memoria
  SetCatalogoTiposPos;
  // tipos
  SetCatalogo_CajaConceptos;
  // TABLAS DEL POS
  self.qCtesPos.Open;
  self.qCtes.Open;
  // Empresa
  //fdm.Query1.SQL.Text := 'Select nombre, rfc from Empresas  ';
  qEmpresas.Open;
  gEmpresaRecord.nombre := qEmpresas.FieldByName('nombre').AsString;
  gEmpresaRecord.rfc := qEmpresas.FieldByName('rfc').AsString;
  qEmpresas.Close;
end;

procedure TFDM.TablasProduccion;
begin
  // tablas de producción ******************+
  self.qPlantas.Open;
  self.qClasElement.Open;
  self.qElement.Open;
  SELF.qDeptos.Open;
  self.qFlujos.Open;
  self.qFlujoDet.Open;
  self.qHormas.Open;
  self.qUnidades.Open;
  self.qConsumos.Open;
  self.qEstConsumos.Open;
  // tablas destajos ************************
  self.qDeptoNom.Open;
  self.qPuesNom.Open;
  self.qEmpProd.Open;
  self.qFracc.Open;
  self.qFracMod.Open;
  self.qEstFrac.Open;
end;

initialization
  RegisterModuleClass(TFDM);

end.
