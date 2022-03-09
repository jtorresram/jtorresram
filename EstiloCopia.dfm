object FEstiloCopia: TFEstiloCopia
  Left = 0
  Top = 0
  ClientHeight = 396
  ClientWidth = 645
  Caption = 'Copia de Estilo'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 127
    Width = 645
    Height = 25
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = 'Estilo Origen'
    ExplicitTop = 38
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 152
    Width = 645
    Height = 144
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = 'UniPanel2'
    ExplicitTop = 63
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 1
      Width = 497
      Height = 142
      Hint = ''
      DataSource = FDM.dsEstilos
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
      OnSelectionChange = UniDBGrid1SelectionChange
      Columns = <
        item
          FieldName = 'ESTILO'
          Title.Caption = 'ESTILO'
          Width = 110
        end
        item
          FieldName = 'NOMBRE'
          Title.Caption = 'NOMBRE'
          Width = 210
        end
        item
          FieldName = 'LK_CORRIDA'
          Title.Caption = 'CORRIDA'
          Width = 124
        end
        item
          FieldName = 'LK_COLOR'
          Title.Caption = 'COLOR'
          Width = 244
        end
        item
          FieldName = 'CODPROV'
          Title.Caption = 'CODPROV'
          Width = 64
        end
        item
          FieldName = 'ES_SALDO'
          Title.Caption = 'ES_SALDO'
          Width = 55
        end
        item
          FieldName = 'OBS'
          Title.Caption = 'OBS'
          Width = 304
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
        DataSource = FDM.dsEstilos
        Stretch = True
        Proportional = True
        Align = alClient
        Draggable.Enabled = True
      end
    end
  end
  object UniPanel4: TUniPanel
    Left = 0
    Top = 296
    Width = 645
    Height = 104
    Hint = ''
    Align = alTop
    TabOrder = 2
    Caption = ''
    ExplicitTop = 169
    ExplicitWidth = 635
    object UniLabel1: TUniLabel
      Left = 12
      Top = 5
      Width = 59
      Height = 13
      Hint = ''
      Caption = 'Nuevo Estilo'
      TabOrder = 8
    end
    object edEstilo: TUniEdit
      Left = 12
      Top = 25
      Width = 126
      Hint = ''
      Text = ''
      TabOrder = 0
      TabStop = False
      Color = clInactiveCaption
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 148
      Top = 5
      Width = 51
      Height = 13
      Hint = ''
      Caption = 'Color - Piel'
      TabOrder = 6
    end
    object edColor: TUniDBLookupComboBox
      Left = 144
      Top = 24
      Width = 186
      Hint = ''
      ListField = 'CODIGO;NOMBRE'
      ListSource = FDM.dsColores
      KeyField = 'CODIGO'
      ListFieldIndex = 0
      TabOrder = 1
      Color = clWindow
      OnCloseUp = edColorCloseUp
    end
    object UniButton1: TUniButton
      Left = 319
      Top = 65
      Width = 161
      Height = 25
      Hint = ''
      Caption = 'Generar Nuevo Estilo'
      TabOrder = 5
      OnClick = UniButton1Click
    end
    object UniLabel3: TUniLabel
      Left = 336
      Top = 5
      Width = 71
      Height = 13
      Hint = ''
      Caption = 'Nombre Nuevo'
      TabOrder = 7
    end
    object ckFracciones: TUniCheckBox
      Left = 152
      Top = 65
      Width = 113
      Height = 17
      Hint = ''
      Checked = True
      Caption = 'Copiar Fracciones'
      TabOrder = 4
    end
    object edNombre: TUniEdit
      Left = 336
      Top = 24
      Width = 306
      Hint = ''
      Text = ''
      TabOrder = 2
    end
  end
  object ckConsumos: TUniCheckBox
    Left = 12
    Top = 361
    Width = 113
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Copiar Consumos'
    TabOrder = 3
  end
  object g1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 645
    Height = 127
    Hint = ''
    DataSource = FDM.dsModelos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Align = alTop
    TabOrder = 4
    Columns = <
      item
        FieldName = 'MODELO'
        Title.Caption = 'MODELO'
        Width = 99
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
        FieldName = 'CORRIDA'
        Title.Caption = 'CORRIDA'
        Width = 64
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
      end
      item
        FieldName = 'FLUJO'
        Title.Caption = 'FLUJO'
        Width = 64
      end
      item
        FieldName = 'IMAGEN'
        Title.Caption = 'IMAGEN'
        Width = 64
      end
      item
        FieldName = 'CLASIFI'
        Title.Caption = 'CLASIFI'
        Width = 64
      end
      item
        FieldName = 'HORMA'
        Title.Caption = 'HORMA'
        Width = 64
      end
      item
        FieldName = 'COSTO'
        Title.Caption = 'COSTO'
        Width = 64
      end
      item
        FieldName = 'PRECIO'
        Title.Caption = 'PRECIO'
        Width = 64
      end>
  end
  object mEstilo: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ESTILO'
        Attributes = [faRequired, faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'MODELO'
        Attributes = [faRequired, faFixed]
        DataType = ftFixedChar
        Size = 11
      end
      item
        Name = 'CORRIDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COLOR'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'NOMBRE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODPROV'
        DataType = ftSmallint
      end
      item
        Name = 'ES_SALDO'
        Attributes = [faRequired]
        DataType = ftBoolean
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'COSTO'
        DataType = ftSingle
        Precision = 8
      end
      item
        Name = 'MENUDEO'
        DataType = ftSingle
        Precision = 8
      end
      item
        Name = 'MEDIO_MAYOREO'
        DataType = ftSingle
        Precision = 8
      end
      item
        Name = 'MAYOREO'
        DataType = ftSingle
        Precision = 8
      end
      item
        Name = 'FORANEA'
        DataType = ftSingle
        Precision = 8
      end
      item
        Name = 'IMAGEN'
        DataType = ftBlob
      end
      item
        Name = 'EXISTENCIA'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'ACTIVO'
        Attributes = [faRequired]
        DataType = ftBoolean
      end>
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
    Content = {
      414442530F00C13346060000FF00010001FF02FF0304000E0000006D00450073
      00740069006C006F0005000A0000005400610062006C00650006000000000007
      0000080032000000090000FF0AFF0B04000C00000045005300540049004C004F
      0005000C00000045005300540049004C004F000C00010000000E000D000F0010
      00000010000111000112000113000114000115000C0000004500530054004900
      4C004F00160010000000FEFF0B04000C0000004D004F00440045004C004F0005
      000C0000004D004F00440045004C004F000C00020000000E000D000F000B0000
      0010000111000112000113000114000115000C0000004D004F00440045004C00
      4F0016000B000000FEFF0B04000E00000043004F005200520049004400410005
      000E00000043004F00520052004900440041000C00030000000E001700100001
      12000113000114000115000E00000043004F0052005200490044004100FEFF0B
      04000A00000043004F004C004F00520005000A00000043004F004C004F005200
      0C00040000000E00180010000112000113000114000115000A00000043004F00
      4C004F005200FEFF0B04000C0000004E004F004D0042005200450005000C0000
      004E004F004D004200520045000C00050000000E000D000F0032000000100001
      12000113000114000115000C0000004E004F004D004200520045001600320000
      00FEFF0B04000E00000043004F004400500052004F00560005000E0000004300
      4F004400500052004F0056000C00060000000E0018001000011900011200011A
      000113000114000115000E00000043004F004400500052004F005600FEFF0B04
      0010000000450053005F00530041004C0044004F00050010000000450053005F
      00530041004C0044004F000C00070000000E001B001000011200011300011400
      01150010000000450053005F00530041004C0044004F00FEFF0B040006000000
      4F00420053000500060000004F00420053000C00080000000E000D000F003200
      00001000011900011200011A00011300011400011500060000004F0042005300
      160032000000FEFF0B04000A00000043004F00530054004F0005000A00000043
      004F00530054004F000C00090000000E001C001D000800000010000119000112
      00011A000113000114000115000A00000043004F00530054004F001E00080000
      00FEFF0B04000E0000004D0045004E005500440045004F0005000E0000004D00
      45004E005500440045004F000C000A0000000E001C001D000800000010000119
      00011200011A000113000114000115000E0000004D0045004E00550044004500
      4F001E0008000000FEFF0B04001A0000004D004500440049004F005F004D0041
      0059004F00520045004F0005001A0000004D004500440049004F005F004D0041
      0059004F00520045004F000C000B0000000E001C001D00080000001000011900
      011200011A000113000114000115001A0000004D004500440049004F005F004D
      00410059004F00520045004F001E0008000000FEFF0B04000E0000004D004100
      59004F00520045004F0005000E0000004D00410059004F00520045004F000C00
      0C0000000E001C001D00080000001000011900011200011A0001130001140001
      15000E0000004D00410059004F00520045004F001E0008000000FEFF0B04000E
      00000046004F00520041004E004500410005000E00000046004F00520041004E
      00450041000C000D0000000E001C001D00080000001000011900011200011A00
      0113000114000115000E00000046004F00520041004E00450041001E00080000
      00FEFF0B04000C00000049004D004100470045004E0005000C00000049004D00
      4100470045004E000C000E0000000E001F001000011900012000011200011A00
      0113000114000115000C00000049004D004100470045004E00FEFF0B04001400
      00004500580049005300540045004E0043004900410005001400000045005800
      49005300540045004E004300490041000C000F0000000E001800100001120001
      1300011400011500140000004500580049005300540045004E00430049004100
      FEFF0B04000C000000410043005400490056004F0005000C0000004100430054
      00490056004F000C00100000000E001B0010000112000113000114000115000C
      000000410043005400490056004F00FEFEFF21FEFF22FEFF23FEFEFEFF24FEFF
      25FF26FEFEFE0E004D0061006E0061006700650072001E005500700064006100
      7400650073005200650067006900730074007200790012005400610062006C00
      65004C006900730074000A005400610062006C00650008004E0061006D006500
      140053006F0075007200630065004E0061006D0065000A005400610062004900
      4400240045006E0066006F0072006300650043006F006E007300740072006100
      69006E00740073001E004D0069006E0069006D0075006D004300610070006100
      6300690074007900180043006800650063006B004E006F0074004E0075006C00
      6C00140043006F006C0075006D006E004C006900730074000C0043006F006C00
      75006D006E00100053006F007500720063006500490044001800640074004100
      6E007300690053007400720069006E0067001000440061007400610054007900
      700065000800530069007A006500140053006500610072006300680061006200
      6C0065001000460069007800650064004C0065006E0008004200610073006500
      12004F0049006E0055007000640061007400650010004F0049006E0057006800
      6500720065001A004F0072006900670069006E0043006F006C004E0061006D00
      6500140053006F007500720063006500530069007A0065000E00640074004900
      6E007400330032000E006400740049006E00740031003600120041006C006C00
      6F0077004E0075006C006C0014004F0041006C006C006F0077004E0075006C00
      6C0012006400740042006F006F006C00650061006E0010006400740053006900
      6E0067006C006500120050007200650063006900730069006F006E001E005300
      6F00750072006300650050007200650063006900730069006F006E000C006400
      740042006C006F006200100042006C006F00620044006100740061001C004300
      6F006E00730074007200610069006E0074004C00690073007400100056006900
      650077004C006900730074000E0052006F0077004C0069007300740018005200
      65006C006100740069006F006E004C006900730074001C005500700064006100
      7400650073004A006F00750072006E0061006C000E004300680061006E006700
      65007300}
    object mEstiloESTILO: TStringField
      FieldName = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object mEstiloMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      FixedChar = True
      Size = 11
    end
    object mEstiloCORRIDA: TIntegerField
      FieldName = 'CORRIDA'
      Required = True
    end
    object mEstiloCOLOR: TSmallintField
      FieldName = 'COLOR'
      Required = True
    end
    object mEstiloNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 50
    end
    object mEstiloCODPROV: TSmallintField
      FieldName = 'CODPROV'
    end
    object mEstiloES_SALDO: TBooleanField
      FieldName = 'ES_SALDO'
      Required = True
    end
    object mEstiloOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object mEstiloCOSTO: TSingleField
      FieldName = 'COSTO'
    end
    object mEstiloMENUDEO: TSingleField
      FieldName = 'MENUDEO'
    end
    object mEstiloMEDIO_MAYOREO: TSingleField
      FieldName = 'MEDIO_MAYOREO'
    end
    object mEstiloMAYOREO: TSingleField
      FieldName = 'MAYOREO'
    end
    object mEstiloFORANEA: TSingleField
      FieldName = 'FORANEA'
    end
    object mEstiloIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object mEstiloEXISTENCIA: TSmallintField
      FieldName = 'EXISTENCIA'
      Required = True
    end
    object mEstiloACTIVO: TBooleanField
      FieldName = 'ACTIVO'
      Required = True
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
    object mFraccionesESTILO: TStringField
      FieldName = 'ESTILO'
      Required = True
      FixedChar = True
      Size = 16
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
    object mConsumosEstilo: TStringField
      DisplayLabel = 'ESTILO'
      FieldName = 'Estilo'
      Required = True
      FixedChar = True
      Size = 16
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
