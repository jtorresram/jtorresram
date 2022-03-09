object FModeloCopia: TFModeloCopia
  Left = 0
  Top = 0
  ClientHeight = 306
  ClientWidth = 645
  Caption = 'Copia de Modelo'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 38
    Width = 645
    Height = 25
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = 'Modelo Origen'
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 63
    Width = 645
    Height = 144
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = 'UniPanel2'
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 1
      Width = 497
      Height = 142
      Hint = ''
      DataSource = FDM.dsModelos
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
      OnSelectionChange = UniDBGrid1SelectionChange
      Columns = <
        item
          FieldName = 'MODELO'
          Title.Caption = 'MODELO'
          Width = 79
        end
        item
          FieldName = 'NOMBRE'
          Title.Caption = 'NOMBRE'
          Width = 184
        end
        item
          FieldName = 'UNIDAD'
          Title.Caption = 'UNIDAD'
          Width = 43
        end
        item
          FieldName = 'RECIO'
          Title.Caption = 'RECIO'
          Width = 36
        end
        item
          FieldName = 'LK_CORRIDA'
          Title.Caption = 'CORRIDA'
          Width = 79
        end
        item
          FieldName = 'LINEA'
          Title.Caption = 'LINEA'
          Width = 64
        end
        item
          FieldName = 'MARCA'
          Title.Caption = 'MARCA'
          Width = 64
        end
        item
          FieldName = 'GENERO'
          Title.Caption = 'GENERO'
          Width = 64
        end
        item
          FieldName = 'ACTIVO'
          Title.Caption = 'ACTIVO'
          Width = 42
        end>
    end
    object UniPanel3: TUniPanel
      Left = 498
      Top = 1
      Width = 146
      Height = 142
      Hint = ''
      Align = alRight
      TabOrder = 2
      TabStop = False
      BorderStyle = ubsFrameLowered
      Caption = ''
      object UniDBImage1: TUniDBImage
        Left = 2
        Top = 2
        Width = 142
        Height = 138
        Hint = ''
        DataField = 'IMAGEN'
        DataSource = FDM.dsModelos
        Stretch = True
        Proportional = True
        Align = alClient
        Draggable.Enabled = True
      end
    end
  end
  object UniPanel4: TUniPanel
    Left = 0
    Top = 207
    Width = 645
    Height = 104
    Hint = ''
    Align = alTop
    TabOrder = 2
    Caption = ''
    ExplicitTop = 169
    ExplicitWidth = 635
    object UniLabel1: TUniLabel
      Left = 16
      Top = 5
      Width = 68
      Height = 13
      Hint = ''
      Caption = 'Nuevo Modelo'
      TabOrder = 3
    end
    object edModelo: TUniEdit
      Left = 16
      Top = 23
      Width = 97
      Hint = ''
      Text = ''
      TabOrder = 4
      TabStop = False
      Color = clInactiveCaption
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 119
      Top = 5
      Width = 35
      Height = 13
      Hint = ''
      Caption = 'Corrida'
      TabOrder = 1
    end
    object edCorrida: TUniDBLookupComboBox
      Left = 119
      Top = 25
      Width = 186
      Hint = ''
      ListField = 'CODIGO;NOMBRE'
      ListSource = FDM.dsCorridas
      KeyField = 'CODIGO'
      ListFieldIndex = 0
      TabOrder = 5
      Color = clWindow
      OnCloseUp = edCorridaCloseUp
    end
    object UniButton1: TUniButton
      Left = 319
      Top = 65
      Width = 161
      Height = 25
      Hint = ''
      Caption = 'Generar Nuevo Modelo'
      TabOrder = 8
      OnClick = UniButton1Click
    end
    object UniLabel3: TUniLabel
      Left = 319
      Top = 5
      Width = 31
      Height = 13
      Hint = ''
      Caption = 'Horma'
      TabOrder = 2
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Left = 319
      Top = 25
      Width = 266
      Hint = ''
      ListField = 'CODIGO;CORRIDA;NOMBRE'
      ListSource = FDM.dsHormas
      KeyField = 'CODIGO'
      ListFieldIndex = 0
      TabOrder = 6
      Color = clWindow
    end
    object ckFracciones: TUniCheckBox
      Left = 152
      Top = 65
      Width = 113
      Height = 17
      Hint = ''
      Checked = True
      Caption = 'Copiar Fracciones'
      TabOrder = 7
    end
  end
  object ckConsumos: TUniCheckBox
    Left = 8
    Top = 272
    Width = 113
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Copiar Consumos'
    TabOrder = 3
  end
  object UniPanel5: TUniPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 38
    Hint = ''
    Align = alTop
    TabOrder = 4
    Caption = ''
    object UniLabel4: TUniLabel
      Left = 8
      Top = 17
      Width = 51
      Height = 13
      Hint = ''
      Caption = 'Buscar por'
      TabOrder = 1
    end
    object edBuscar: TUniComboBox
      Left = 65
      Top = 8
      Width = 104
      Hint = ''
      Text = ''
      Items.Strings = (
        'Modelo'
        'Corrida'
        'Color')
      TabOrder = 2
      IconItems = <>
    end
    object UniLabel5: TUniLabel
      Left = 175
      Top = 17
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Valor'
      TabOrder = 3
    end
    object edValor: TUniComboBox
      Left = 205
      Top = 8
      Width = 91
      Hint = ''
      Text = ''
      TabOrder = 4
      IconItems = <>
    end
    object bBuscar: TUniButton
      Left = 305
      Top = 5
      Width = 72
      Height = 25
      Hint = ''
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = bBuscarClick
    end
  end
  object mModelo: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 80
    Top = 97
    object mModeloMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object mModeloNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 30
    end
    object mModeloUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object mModeloRECIO: TStringField
      FieldName = 'RECIO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object mModeloCORRIDA: TSmallintField
      FieldName = 'CORRIDA'
      Required = True
    end
    object mModeloLINEA: TSmallintField
      FieldName = 'LINEA'
      Required = True
    end
    object mModeloMARCA: TSmallintField
      FieldName = 'MARCA'
      Required = True
    end
    object mModeloGENERO: TStringField
      FieldName = 'GENERO'
      Required = True
      Size = 10
    end
    object mModeloACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Required = True
    end
    object mModeloFLUJO: TSmallintField
      FieldName = 'FLUJO'
      Required = True
    end
    object mModeloIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object mModeloCLASIFI: TSmallintField
      FieldName = 'CLASIFI'
      Required = True
    end
    object mModeloHORMA: TSmallintField
      FieldName = 'HORMA'
      Required = True
    end
    object mModeloCOSTO: TSingleField
      FieldName = 'COSTO'
      Required = True
    end
    object mModeloPRECIO: TSingleField
      FieldName = 'PRECIO'
      Required = True
    end
    object mModeloCAPTURA: TStringField
      FieldName = 'CAPTURA'
      Required = True
      FixedChar = True
      Size = 6
    end
  end
  object mFracciones: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 264
    Top = 97
    object mFraccionesMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object mFraccionesDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Required = True
    end
    object mFraccionesFRACCION: TSmallintField
      FieldName = 'FRACCION'
      Required = True
    end
    object mFraccionesORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object mFraccionesTIEMPO: TSingleField
      FieldName = 'TIEMPO'
    end
    object mFraccionesCOSTO: TSingleField
      FieldName = 'COSTO'
      Required = True
    end
  end
  object mConsumos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 168
    Top = 97
    object mConsumosMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object mConsumosINSUMO: TStringField
      FieldName = 'INSUMO'
      Required = True
      Size = 18
    end
    object mConsumosCONSUMO: TSingleField
      FieldName = 'CONSUMO'
      Required = True
    end
    object mConsumosELEMENTO: TStringField
      FieldName = 'ELEMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object mConsumosDEPTO: TSmallintField
      FieldName = 'DEPTO'
      Required = True
    end
    object mConsumosTALLA: TBooleanField
      FieldName = 'TALLA'
      Required = True
    end
    object mConsumosC01: TSmallintField
      FieldName = 'C01'
    end
    object mConsumosC02: TSmallintField
      FieldName = 'C02'
    end
    object mConsumosC03: TSmallintField
      FieldName = 'C03'
    end
    object mConsumosC04: TSmallintField
      FieldName = 'C04'
    end
    object mConsumosC05: TSmallintField
      FieldName = 'C05'
    end
    object mConsumosC06: TSmallintField
      FieldName = 'C06'
    end
    object mConsumosC07: TSmallintField
      FieldName = 'C07'
    end
    object mConsumosC08: TSmallintField
      FieldName = 'C08'
    end
    object mConsumosC09: TSmallintField
      FieldName = 'C09'
    end
    object mConsumosC10: TSmallintField
      FieldName = 'C10'
    end
    object mConsumosC11: TSmallintField
      FieldName = 'C11'
    end
    object mConsumosC12: TSmallintField
      FieldName = 'C12'
    end
    object mConsumosC13: TSmallintField
      FieldName = 'C13'
    end
    object mConsumosC14: TSmallintField
      FieldName = 'C14'
    end
    object mConsumosC15: TSmallintField
      FieldName = 'C15'
    end
    object mConsumosC16: TSmallintField
      FieldName = 'C16'
    end
    object mConsumosC17: TSmallintField
      FieldName = 'C17'
    end
  end
end
