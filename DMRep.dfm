object FDMRep: TFDMRep
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 226
  Width = 188
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = daFireDACQueryDataView1.PEDIDOS
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\PROYECTOS\CAZ\Reportes\PedidoxTienda.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.OAuth2 = {0E010C5265646972656374506F727402000000}
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowAutoSearchDialog = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 40
    Top = 72
    Version = '21.0'
    mmColumnWidth = 0
    DataPipelineName = 'PEDIDOS'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TIENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 6879
        mmWidth = 13225
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'TIENDA'
        DataPipeline = daFireDACQueryDataView1.PEDIDOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PEDIDOS'
        mmHeight = 3969
        mmLeft = 15606
        mmTop = 6879
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FOLIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 11642
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FOLIO'
        DataPipeline = daFireDACQueryDataView1.PEDIDOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PEDIDOS'
        mmHeight = 3969
        mmLeft = 15610
        mmTop = 11642
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CODPROV'
        DataPipeline = daFireDACQueryDataView1.PEDIDOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PEDIDOS'
        mmHeight = 3969
        mmLeft = -22490
        mmTop = -6350
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Prov:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = -42863
        mmTop = -6350
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Prov'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 17198
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CODPROV'
        DataPipeline = daFireDACQueryDataView1.PEDIDOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PEDIDOS'
        mmHeight = 3969
        mmLeft = 15610
        mmTop = 17198
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
      object daFireDACQueryDataView1: TdaFireDACQueryDataView
        UserName = 'Query_TdaFireDACQueryDataView'
        Height = 284
        Left = 10
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 10
        TypeColumnWidth = 52
        Width = 224
        AutoSearchTabOrder = 0
        object PEDIDOS: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'PEDIDOS'
          object ppField1: TppField
            FieldAlias = 'TIENDA'
            FieldName = 'TIENDA'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 0
            TableName = 'PEDIDOS_1'
          end
          object ppField2: TppField
            FieldAlias = 'FOLIO'
            FieldName = 'FOLIO'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 1
            TableName = 'PEDIDOS_1'
          end
          object ppField3: TppField
            FieldAlias = 'FECHA'
            FieldName = 'FECHA'
            FieldLength = 0
            DataType = dtDate
            DisplayWidth = 10
            Position = 2
            TableName = 'PEDIDOS_1'
          end
          object ppField4: TppField
            FieldAlias = 'CODPROV'
            FieldName = 'CODPROV'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 3
            TableName = 'PEDIDOS_1'
          end
          object ppField5: TppField
            FieldAlias = 'CANTIDAD'
            FieldName = 'CANTIDAD'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 4
            TableName = 'PEDIDOS_1'
          end
          object ppField6: TppField
            FieldAlias = 'TOTAL'
            FieldName = 'TOTAL'
            FieldLength = 2
            DataType = dtDouble
            DisplayWidth = 19
            Position = 5
            TableName = 'PEDIDOS_1'
          end
          object ppField7: TppField
            FieldAlias = 'ESTATUS'
            FieldName = 'ESTATUS'
            FieldLength = 1
            DisplayWidth = 1
            Position = 6
            TableName = 'PEDIDOS_1'
          end
          object ppField8: TppField
            FieldAlias = 'ENTREGA_INI'
            FieldName = 'ENTREGA_INI'
            FieldLength = 0
            DataType = dtDate
            DisplayWidth = 10
            Position = 7
            TableName = 'PEDIDOS_1'
          end
          object ppField9: TppField
            FieldAlias = 'ENTREGA_FIN'
            FieldName = 'ENTREGA_FIN'
            FieldLength = 0
            DataType = dtDate
            DisplayWidth = 10
            Position = 8
            TableName = 'PEDIDOS_1'
          end
          object ppField10: TppField
            FieldAlias = 'FLETE'
            FieldName = 'FLETE'
            FieldLength = 40
            DisplayWidth = 40
            Position = 9
            TableName = 'PEDIDOS_1'
          end
          object ppField11: TppField
            FieldAlias = 'OBS'
            FieldName = 'OBS'
            FieldLength = 50
            DisplayWidth = 50
            Position = 10
            TableName = 'PEDIDOS_1'
          end
        end
        object daSQL1: TdaSQL
          CollationType = ctASCII
          DatabaseName = 'db1'
          DatabaseType = dtFirebird
          DataPipelineName = 'PEDIDOS'
          LinkColor = clMaroon
          LinkType = ltMagicSQL
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT PEDIDOS_1.TIENDA, PEDIDOS_1.FOLIO, '
            '       PEDIDOS_1.FECHA, PEDIDOS_1.CODPROV, '
            '       PEDIDOS_1.CANTIDAD, PEDIDOS_1.TOTAL, '
            '       PEDIDOS_1.ESTATUS, PEDIDOS_1.ENTREGA_INI, '
            '       PEDIDOS_1.ENTREGA_FIN, PEDIDOS_1.FLETE, '
            '       PEDIDOS_1.OBS'
            'FROM PEDIDOS PEDIDOS_1'
            'WHERE ( PEDIDOS_1.TIENDA = 0 )'
            '       AND ( PEDIDOS_1.FOLIO = 1 )')
          SQLType = sqSQL2
          object daCriteria1: TdaCriteria
            ChildType = 7
            Level = 0
            Value = '0'
            object TdaField
              Alias = 'TIENDA'
              AutoSearch = True
              DataType = dtInteger
              DisplayWidth = 10
              FieldAlias = 'TIENDA'
              FieldLength = 0
              FieldName = 'TIENDA'
              SQLFieldName = 'TIENDA'
              TableAlias = 'PEDIDOS'
              TableName = 'PEDIDOS'
              TableSQLAlias = 'PEDIDOS_1'
            end
            object TdaNumericValue
            end
          end
          object daCriteria2: TdaCriteria
            ChildType = 7
            Level = 0
            Value = '1'
            object TdaField
              Alias = 'FOLIO'
              AutoSearch = True
              DataType = dtInteger
              DisplayWidth = 10
              FieldAlias = 'FOLIO'
              FieldLength = 0
              FieldName = 'FOLIO'
              SQLFieldName = 'FOLIO'
              TableAlias = 'PEDIDOS'
              TableName = 'PEDIDOS'
              TableSQLAlias = 'PEDIDOS_1'
            end
            object TdaNumericValue
              Value = 1.000000000000000000
            end
          end
          object daField1: TdaField
            Alias = 'TIENDA'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'TIENDA'
            FieldLength = 0
            FieldName = 'TIENDA'
            SQLFieldName = 'TIENDA'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField2: TdaField
            Alias = 'FOLIO'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'FOLIO'
            FieldLength = 0
            FieldName = 'FOLIO'
            SQLFieldName = 'FOLIO'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField3: TdaField
            Alias = 'FECHA'
            DataType = dtDate
            DisplayWidth = 10
            FieldAlias = 'FECHA'
            FieldLength = 0
            FieldName = 'FECHA'
            SQLFieldName = 'FECHA'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField4: TdaField
            Alias = 'CODPROV'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'CODPROV'
            FieldLength = 0
            FieldName = 'CODPROV'
            SQLFieldName = 'CODPROV'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField5: TdaField
            Alias = 'CANTIDAD'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'CANTIDAD'
            FieldLength = 0
            FieldName = 'CANTIDAD'
            SQLFieldName = 'CANTIDAD'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField6: TdaField
            Alias = 'TOTAL'
            DataType = dtDouble
            DisplayWidth = 19
            FieldAlias = 'TOTAL'
            FieldLength = 2
            FieldName = 'TOTAL'
            SQLFieldName = 'TOTAL'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField7: TdaField
            Alias = 'ESTATUS'
            DisplayWidth = 1
            FieldAlias = 'ESTATUS'
            FieldLength = 1
            FieldName = 'ESTATUS'
            SQLFieldName = 'ESTATUS'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField8: TdaField
            Alias = 'ENTREGA_INI'
            DataType = dtDate
            DisplayWidth = 10
            FieldAlias = 'ENTREGA_INI'
            FieldLength = 0
            FieldName = 'ENTREGA_INI'
            SQLFieldName = 'ENTREGA_INI'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField9: TdaField
            Alias = 'ENTREGA_FIN'
            DataType = dtDate
            DisplayWidth = 10
            FieldAlias = 'ENTREGA_FIN'
            FieldLength = 0
            FieldName = 'ENTREGA_FIN'
            SQLFieldName = 'ENTREGA_FIN'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField10: TdaField
            Alias = 'FLETE'
            DisplayWidth = 40
            FieldAlias = 'FLETE'
            FieldLength = 40
            FieldName = 'FLETE'
            SQLFieldName = 'FLETE'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daField11: TdaField
            Alias = 'OBS'
            DisplayWidth = 50
            FieldAlias = 'OBS'
            FieldLength = 50
            FieldName = 'OBS'
            SQLFieldName = 'OBS'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
            TableSQLAlias = 'PEDIDOS_1'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'PEDIDOS'
            JoinType = dajtNone
            SQLAlias = 'PEDIDOS_1'
            TableAlias = 'PEDIDOS'
            TableName = 'PEDIDOS'
          end
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    UserName = 'DBPipeline1'
    Left = 40
    Top = 144
  end
  object db1: TFDConnection
    Params.Strings = (
      'Database=C:\ProyWEB\CAZ\CAZ.FDB'
      'User_Name=SYSDBA'
      'Password=SagJtr76.'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 8
  end
end
