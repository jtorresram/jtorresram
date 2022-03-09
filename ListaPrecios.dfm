object FListaPrecios: TFListaPrecios
  Left = 0
  Top = 0
  ClientHeight = 454
  ClientWidth = 870
  Caption = 'Lista de Precios'
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object g1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 870
    Height = 362
    Hint = ''
    RowEditor = True
    DataSource = dsEstilos
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    OnClearFilters = g1ClearFilters
    OnColumnFilter = g1ColumnFilter
    Columns = <
      item
        FieldName = 'ESTILO'
        Title.Caption = 'ESTILO'
        Width = 87
        ReadOnly = True
      end
      item
        FieldName = 'MODELO'
        Title.Caption = 'MODELO'
        Width = 62
        ReadOnly = True
      end
      item
        FieldName = 'CORRIDA_DESCR'
        Filtering.Enabled = True
        Filtering.Editor = edCorridaFilter
        Title.Caption = 'CORRIDA_DESCR'
        Width = 124
        ReadOnly = True
      end
      item
        FieldName = 'COLOR_DESR'
        Filtering.Enabled = True
        Filtering.Editor = edColorFiltro
        Title.Caption = 'COLOR_DESR'
        Width = 179
        ReadOnly = True
      end
      item
        FieldName = 'NOMBRE'
        Title.Caption = 'NOMBRE'
        Width = 149
        ReadOnly = True
      end
      item
        FieldName = 'COSTO'
        Title.Caption = 'COSTO'
        Width = 64
      end
      item
        FieldName = 'MENUDEO'
        Title.Caption = 'MENUDEO'
        Width = 57
      end
      item
        FieldName = 'MEDIO_MAYOREO'
        Title.Caption = 'MEDIO_MAYOREO'
        Width = 93
      end
      item
        FieldName = 'MAYOREO'
        Title.Caption = 'MAYOREO'
        Width = 64
      end
      item
        FieldName = 'FORANEA'
        Title.Caption = 'FORANEA'
        Width = 64
      end>
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 395
    Width = 870
    Height = 59
    Hint = ''
    Align = alBottom
    TabOrder = 2
    Caption = ''
    object UniLabel1: TUniLabel
      Left = 3
      Top = 6
      Width = 71
      Height = 13
      Hint = ''
      Caption = 'Observaciones'
      TabOrder = 1
    end
    object UniDBEdit1: TUniDBEdit
      Left = 3
      Top = 25
      Width = 502
      Height = 22
      Hint = ''
      DataField = 'OBS'
      DataSource = FDM.dsEstilos
      TabOrder = 2
    end
    object bUpdate: TUniButton
      Left = 536
      Top = 24
      Width = 129
      Height = 25
      Hint = ''
      Caption = 'Actualizar Cambios'
      TabOrder = 3
      OnClick = bUpdateClick
    end
    object bCancel: TUniButton
      Left = 696
      Top = 24
      Width = 129
      Height = 25
      Hint = ''
      Caption = 'Cancelar Cambios'
      TabOrder = 4
      OnClick = bCancelClick
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object UniLabel2: TUniLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Hint = ''
      Caption = 'Buscar por'
      TabOrder = 4
    end
    object edBuscar: TUniComboBox
      Left = 65
      Top = 7
      Width = 96
      Hint = ''
      Text = ''
      Items.Strings = (
        'Modelo')
      TabOrder = 1
      IconItems = <>
      OnCloseUp = edBuscarCloseUp
    end
    object UniLabel3: TUniLabel
      Left = 183
      Top = 16
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Valor'
      TabOrder = 5
    end
    object edValor: TUniComboBox
      Left = 213
      Top = 7
      Width = 220
      Hint = ''
      Text = ''
      TabOrder = 2
      IconItems = <>
    end
    object bBuscar: TUniButton
      Left = 454
      Top = 5
      Width = 72
      Height = 22
      Hint = ''
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = bBuscarClick
    end
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 65
    Top = 128
    Width = 160
    Height = 129
    Hint = ''
    Visible = True
    object edCorridaFilter: TUniEdit
      Left = 24
      Top = 24
      Width = 121
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 1
    end
    object edColorFiltro: TUniEdit
      Left = 24
      Top = 72
      Width = 121
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 2
    end
  end
  object qEstilos: TFDQuery
    MasterFields = 'MODELO'
    DetailFields = 'MODELO'
    Connection = FDM.FDConnection1
    Transaction = FDM.FDTransaction1
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
      'where estilos.Modelo like :Modelo'
      '  and corridas.nombre like :corrida_descr  '
      '  and colores.nombre like :color_desr ')
    Left = 344
    Top = 72
    ParamData = <
      item
        Name = 'MODELO'
        DataType = ftString
        ParamType = ptInput
        Size = 11
        Value = '%%'
      end
      item
        Name = 'CORRIDA_DESCR'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'COLOR_DESR'
        DataType = ftString
        ParamType = ptInput
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
  object dsEstilos: TDataSource
    AutoEdit = False
    DataSet = qEstilos
    Left = 344
    Top = 128
  end
end
