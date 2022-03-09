object FModeloCatalogo: TFModeloCatalogo
  Left = 0
  Top = 0
  ClientHeight = 331
  ClientWidth = 603
  Caption = 'Modelo'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bAceptar: TUniButton
    Left = 213
    Top = 288
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Aceptar'
    TabOrder = 36
    OnClick = bAceptarClick
  end
  object bCancelar: TUniButton
    Left = 324
    Top = 288
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Cancelar'
    TabOrder = 37
    OnClick = bCancelarClick
  end
  object UniLabel2: TUniLabel
    Left = 93
    Top = 6
    Width = 37
    Height = 13
    Hint = ''
    Caption = 'Nombre'
    TabOrder = 1
  end
  object UniDBEdit2: TUniDBEdit
    Left = 93
    Top = 25
    Width = 295
    Height = 22
    Hint = ''
    DataField = 'NOMBRE'
    DataSource = FDM.dsModelos
    TabOrder = 4
  end
  object UniLabel3: TUniLabel
    Left = 11
    Top = 6
    Width = 34
    Height = 13
    Hint = ''
    Caption = 'Modelo'
    TabOrder = 0
  end
  object UniLabel5: TUniLabel
    Left = 8
    Top = 60
    Width = 35
    Height = 13
    Hint = ''
    Caption = 'Corrida'
    TabOrder = 6
  end
  object UniDBLookupComboBox2: TUniDBLookupComboBox
    Left = 8
    Top = 79
    Width = 182
    Hint = ''
    ListField = 'CODIGO;NOMBRE'
    ListSource = FDM.dsCorridas
    KeyField = 'CODIGO'
    ListFieldIndex = 0
    DataField = 'CORRIDA'
    DataSource = FDM.dsModelos
    TabOrder = 8
    Color = clWindow
    OnCloseUp = UniDBLookupComboBox2CloseUp
  end
  object UniDBLookupComboBox4: TUniDBLookupComboBox
    Left = 196
    Top = 145
    Width = 182
    Hint = ''
    ListField = 'CODIGO;NOMBRE'
    ListSource = FDM.dsLineas
    KeyField = 'CODIGO'
    ListFieldIndex = 0
    DataField = 'LINEA'
    DataSource = FDM.dsModelos
    TabOrder = 15
    Color = clWindow
  end
  object UniDBLookupComboBox5: TUniDBLookupComboBox
    Left = 8
    Top = 192
    Width = 136
    Hint = ''
    ListField = 'CODIGO;NOMBRE'
    ListSource = FDM.dsClasi
    KeyField = 'CODIGO'
    ListFieldIndex = 0
    DataField = 'CLASIFI'
    DataSource = FDM.dsModelos
    TabOrder = 21
    Color = clWindow
  end
  object UniLabel7: TUniLabel
    Left = 196
    Top = 126
    Width = 25
    Height = 13
    Hint = ''
    Caption = 'Linea'
    TabOrder = 12
  end
  object UniLabel8: TUniLabel
    Left = 8
    Top = 173
    Width = 58
    Height = 13
    Hint = ''
    Caption = 'Clasificaci'#243'n'
    TabOrder = 17
  end
  object UniDBLookupComboBox6: TUniDBLookupComboBox
    Left = 213
    Top = 192
    Width = 132
    Hint = ''
    ListField = 'CODIGO;NOMBRE'
    ListSource = FDM.dsMarcas
    KeyField = 'CODIGO'
    ListFieldIndex = 0
    DataField = 'MARCA'
    DataSource = FDM.dsModelos
    TabOrder = 23
    Color = clWindow
  end
  object UniLabel9: TUniLabel
    Left = 213
    Top = 173
    Width = 29
    Height = 13
    Hint = ''
    Caption = 'Marca'
    TabOrder = 18
  end
  object UniDBComboBox1: TUniDBComboBox
    Left = 380
    Top = 192
    Width = 105
    Hint = ''
    DataField = 'GENERO'
    DataSource = FDM.dsModelos
    Items.Strings = (
      'Accesorios'
      'Caballero'
      'Dama'
      'Joven'
      'Ni'#241'o')
    TabOrder = 25
    IconItems = <>
  end
  object UniLabel10: TUniLabel
    Left = 380
    Top = 173
    Width = 35
    Height = 13
    Hint = ''
    Caption = 'G'#233'nero'
    TabOrder = 19
  end
  object UniLabel11: TUniLabel
    Left = 386
    Top = 220
    Width = 28
    Height = 13
    Hint = ''
    Caption = 'Costo'
    TabOrder = 29
  end
  object UniDBNumberEdit1: TUniDBNumberEdit
    Left = 386
    Top = 239
    Width = 50
    Height = 22
    Hint = ''
    DataField = 'COSTO'
    DataSource = FDM.dsModelos
    TabOrder = 33
    DecimalSeparator = '.'
  end
  object UniLabel13: TUniLabel
    Left = 460
    Top = 8
    Width = 36
    Height = 13
    Hint = ''
    Caption = 'Imagen'
    TabOrder = 2
  end
  object UniButton4: TUniButton
    Left = 485
    Top = 126
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'subir imagen'
    TabOrder = 13
    OnClick = UniButton4Click
  end
  object UniPanel1: TUniPanel
    Left = 458
    Top = 25
    Width = 124
    Height = 97
    Hint = ''
    TabOrder = 5
    TabStop = False
    BorderStyle = ubsFrameLowered
    Caption = ''
    object UniDBImage1: TUniDBImage
      Left = 2
      Top = 2
      Width = 120
      Height = 93
      Hint = ''
      DataField = 'IMAGEN'
      DataSource = FDM.dsModelos
      Stretch = True
      Proportional = True
      Align = alClient
      Draggable.Enabled = True
    end
  end
  object UniLabel14: TUniLabel
    Left = 442
    Top = 220
    Width = 29
    Height = 13
    Hint = ''
    Caption = 'Precio'
    TabOrder = 30
  end
  object UniDBNumberEdit2: TUniDBNumberEdit
    Left = 442
    Top = 239
    Width = 50
    Height = 22
    Hint = ''
    DataField = 'PRECIO'
    DataSource = FDM.dsModelos
    TabOrder = 34
    DecimalSeparator = '.'
  end
  object bCatCorrida: TUniBitBtn
    Left = 196
    Top = 79
    Width = 17
    Height = 22
    Hint = 'Nueva Corrida'
    ShowHint = True
    ParentShowHint = False
    Caption = '...'
    TabOrder = 9
    OnClick = bCatCorridaClick
  end
  object bCatLinea: TUniBitBtn
    Left = 384
    Top = 145
    Width = 18
    Height = 22
    Hint = 'Nueva Linea'
    ShowHint = True
    ParentShowHint = False
    Caption = '...'
    TabOrder = 16
    OnClick = bCatLineaClick
  end
  object bCatClasifi: TUniBitBtn
    Left = 150
    Top = 192
    Width = 18
    Height = 22
    Hint = 'Nueva Clasificaci'#243'n'
    ShowHint = True
    ParentShowHint = False
    Caption = '...'
    TabOrder = 22
    OnClick = bCatClasifiClick
  end
  object bCatMarca: TUniBitBtn
    Left = 351
    Top = 192
    Width = 18
    Height = 22
    Hint = 'Nueva Marca'
    ShowHint = True
    ParentShowHint = False
    Caption = '...'
    TabOrder = 24
    OnClick = bCatMarcaClick
  end
  object UniDBEdit1: TUniDBEdit
    Left = 8
    Top = 25
    Width = 66
    Height = 22
    Hint = ''
    DataField = 'CAPTURA'
    DataSource = FDM.dsModelos
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object UniLabel1: TUniLabel
    Left = 494
    Top = 173
    Width = 26
    Height = 13
    Hint = ''
    Caption = 'Recio'
    TabOrder = 20
  end
  object UniDBEdit4: TUniDBEdit
    Left = 494
    Top = 192
    Width = 71
    Height = 22
    Hint = ''
    DataField = 'RECIO'
    DataSource = FDM.dsModelos
    TabOrder = 26
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 8
    Top = 239
    Width = 217
    Hint = ''
    ListField = 'CODIGO;CORRIDA;NOMBRE'
    ListSource = FDM.dsHormas
    KeyField = 'CODIGO'
    ListFieldIndex = 0
    DataField = 'HORMA'
    DataSource = FDM.dsModelos
    TabOrder = 31
    Color = clWindow
  end
  object UniLabel4: TUniLabel
    Left = 12
    Top = 220
    Width = 31
    Height = 13
    Hint = ''
    Caption = 'Horma'
    TabOrder = 27
  end
  object UniDBLookupComboBox3: TUniDBLookupComboBox
    Left = 242
    Top = 239
    Width = 125
    Hint = ''
    ListField = 'CODIGO;NOMBRE'
    ListSource = FDM.dsFlujos
    KeyField = 'CODIGO'
    ListFieldIndex = 0
    DataField = 'FLUJO'
    DataSource = FDM.dsModelos
    TabOrder = 32
    Color = clWindow
  end
  object UniLabel18: TUniLabel
    Left = 244
    Top = 220
    Width = 23
    Height = 13
    Hint = ''
    Caption = 'Flujo'
    TabOrder = 28
  end
  object UniLabel6: TUniLabel
    Left = 8
    Top = 126
    Width = 33
    Height = 13
    Hint = ''
    Caption = 'Unidad'
    TabOrder = 11
  end
  object UniDBLookupComboBox7: TUniDBLookupComboBox
    Left = 8
    Top = 145
    Width = 145
    Hint = ''
    ListField = 'CLAVE;NOMBRE'
    ListSource = FDM.dsUnidades
    KeyField = 'CLAVE'
    ListFieldIndex = 0
    DataField = 'UNIDAD'
    DataSource = FDM.dsModelos
    TabOrder = 14
    Color = clWindow
  end
  object UniDBCheckBox1: TUniDBCheckBox
    Left = 511
    Top = 239
    Width = 56
    Height = 17
    Hint = ''
    DataField = 'ACTIVO'
    DataSource = FDM.dsModelos
    Caption = 'Activo'
    TabOrder = 35
    ParentColor = False
    Color = clBtnFace
  end
  object UniLabel12: TUniLabel
    Left = 235
    Top = 60
    Width = 83
    Height = 13
    Hint = ''
    Caption = 'Modelo + Corrida'
    TabOrder = 7
  end
  object UniDBEdit3: TUniDBEdit
    Left = 232
    Top = 79
    Width = 137
    Height = 22
    Hint = ''
    DataField = 'MODELO'
    DataSource = FDM.dsModelos
    CharCase = ecUpperCase
    TabOrder = 10
    TabStop = False
    Color = clInactiveCaption
    ReadOnly = True
  end
  object UniFileUpload1: TUniFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please select a file'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    OnCompleted = UniFileUpload1Completed
    Left = 517
    Top = 46
  end
end
