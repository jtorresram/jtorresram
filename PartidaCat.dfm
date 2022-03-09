object FPartidaCat: TFPartidaCat
  Left = 0
  Top = 0
  ClientHeight = 333
  ClientWidth = 644
  Caption = 'Partida'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object edCorrida: TUniEdit
    Left = 433
    Top = 211
    Width = 121
    Hint = ''
    Text = ''
    TabOrder = 12
    TabStop = False
    ReadOnly = True
  end
  object UniLabel2: TUniLabel
    Left = 8
    Top = 1
    Width = 34
    Height = 13
    Hint = ''
    Caption = 'Modelo'
    TabOrder = 0
  end
  object UniLabel3: TUniLabel
    Left = 434
    Top = 192
    Width = 35
    Height = 13
    Hint = ''
    Caption = 'Corrida'
    TabOrder = 8
  end
  object bAceptar: TUniButton
    Left = 229
    Top = 303
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Aceptar'
    TabOrder = 14
  end
  object bCancelar: TUniButton
    Left = 344
    Top = 303
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Cancelar'
    TabOrder = 15
  end
  object UniLabel4: TUniLabel
    Left = 173
    Top = 192
    Width = 80
    Height = 13
    Hint = ''
    Caption = 'Nombre de Estilo'
    TabOrder = 7
  end
  object edNombre: TUniEdit
    Left = 173
    Top = 211
    Width = 255
    Hint = ''
    Text = ''
    TabOrder = 11
    TabStop = False
    ReadOnly = True
  end
  object UniLabel7: TUniLabel
    Left = 560
    Top = 192
    Width = 28
    Height = 13
    Hint = ''
    Caption = 'Costo'
    TabOrder = 9
  end
  object edBuscaEstilo: TUniEdit
    Left = 8
    Top = 20
    Width = 80
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 2
    EmptyText = 'Search...'
    CheckChangeDelay = 500
    ClearButton = True
  end
  object g1: TUniDBGrid
    Left = 8
    Top = 48
    Width = 618
    Height = 138
    Hint = ''
    DataSource = FDM.dsModeloBuscar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    ReadOnly = True
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    LoadMask.Message = 'Loading data...'
    TabOrder = 5
    Columns = <
      item
        FieldName = 'MODELO'
        Title.Caption = 'MODELO'
        Width = 80
      end
      item
        FieldName = 'ESTILO'
        Title.Caption = 'ESTILO'
        Width = 119
      end
      item
        FieldName = 'CORRIDA'
        Title.Caption = 'CORRIDA'
        Width = 73
        ReadOnly = True
      end
      item
        FieldName = 'COLOR'
        Title.Caption = 'COLOR'
        Width = 191
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
        Width = 64
      end>
  end
  object UniLabel8: TUniLabel
    Left = 8
    Top = 192
    Width = 25
    Height = 13
    Hint = ''
    Caption = 'Estilo'
    TabOrder = 6
  end
  object edEstilo: TUniEdit
    Left = 8
    Top = 211
    Width = 159
    Hint = ''
    Text = ''
    TabOrder = 10
    TabStop = False
    ReadOnly = True
  end
  object edCosto: TUniNumberEdit
    Left = 560
    Top = 211
    Width = 67
    Hint = ''
    TabOrder = 13
    TabStop = False
    ReadOnly = True
    DecimalSeparator = '.'
  end
  object edPedidoCte: TUniEdit
    Left = 193
    Top = 20
    Width = 98
    Hint = ''
    Visible = False
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 3
    EmptyText = 'Search...'
    CheckChangeDelay = 500
    ClearButton = True
  end
  object lbPedidoCte: TUniLabel
    Left = 193
    Top = 1
    Width = 68
    Height = 13
    Hint = ''
    Visible = False
    Caption = 'Pedido Cliente'
    TabOrder = 1
  end
  object edMuestra: TUniCheckBox
    Left = 321
    Top = 20
    Width = 97
    Height = 17
    Hint = ''
    Visible = False
    Caption = 'Es Muestra?'
    TabOrder = 4
  end
  object panPuntos: TUniPanel
    Left = 8
    Top = 239
    Width = 628
    Height = 58
    Hint = ''
    TabOrder = 16
    Caption = ''
    object UniLabel5: TUniLabel
      Left = 8
      Top = 7
      Width = 43
      Height = 41
      Hint = ''
      AutoSize = False
      Caption = 'Cantidad por Punto'
      TabOrder = 1
    end
    object ed1: TUniNumberEdit
      Left = 57
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 2
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed2: TUniNumberEdit
      Left = 86
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 3
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed3: TUniNumberEdit
      Left = 115
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 4
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed4: TUniNumberEdit
      Left = 144
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 5
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed5: TUniNumberEdit
      Left = 173
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 6
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed6: TUniNumberEdit
      Left = 202
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 7
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed7: TUniNumberEdit
      Left = 231
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 8
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed8: TUniNumberEdit
      Left = 260
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 9
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed9: TUniNumberEdit
      Left = 289
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 10
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed10: TUniNumberEdit
      Left = 318
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 11
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed11: TUniNumberEdit
      Left = 347
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 12
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed12: TUniNumberEdit
      Left = 376
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 13
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed13: TUniNumberEdit
      Left = 405
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 14
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed14: TUniNumberEdit
      Left = 434
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 15
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed15: TUniNumberEdit
      Left = 463
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 16
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed16: TUniNumberEdit
      Left = 492
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 17
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ed17: TUniNumberEdit
      Left = 521
      Top = 26
      Width = 23
      Hint = ''
      TabOrder = 18
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object edTotal: TUniNumberEdit
      Left = 560
      Top = 26
      Width = 52
      Hint = ''
      TabOrder = 19
      ReadOnly = True
      MaxValue = 99.000000000000000000
      SelectOnFocus = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object lb1: TUniLabel
      Left = 58
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'P01'
      TabOrder = 20
    end
    object lb2: TUniLabel
      Left = 86
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p02'
      TabOrder = 21
    end
    object lb3: TUniLabel
      Left = 115
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p03'
      TabOrder = 22
    end
    object lb4: TUniLabel
      Left = 144
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p04'
      TabOrder = 23
    end
    object lb5: TUniLabel
      Left = 173
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p05'
      TabOrder = 24
    end
    object lb6: TUniLabel
      Left = 202
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p06'
      TabOrder = 25
    end
    object lb7: TUniLabel
      Left = 231
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p07'
      TabOrder = 26
    end
    object lb8: TUniLabel
      Left = 260
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p08'
      TabOrder = 27
    end
    object lb9: TUniLabel
      Left = 289
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p09'
      TabOrder = 28
    end
    object lb10: TUniLabel
      Left = 318
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p10'
      TabOrder = 29
    end
    object lb11: TUniLabel
      Left = 347
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p11'
      TabOrder = 30
    end
    object lb12: TUniLabel
      Left = 376
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p12'
      TabOrder = 31
    end
    object lb13: TUniLabel
      Left = 405
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p13'
      TabOrder = 32
    end
    object lb14: TUniLabel
      Left = 434
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p14'
      TabOrder = 33
    end
    object lb15: TUniLabel
      Left = 463
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p15'
      TabOrder = 34
    end
    object lb16: TUniLabel
      Left = 492
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p16'
      TabOrder = 35
    end
    object lb17: TUniLabel
      Left = 521
      Top = 7
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'p17'
      TabOrder = 36
    end
    object UniLabel6: TUniLabel
      Left = 560
      Top = 7
      Width = 60
      Height = 13
      Hint = ''
      Caption = 'Total Puntos'
      TabOrder = 37
    end
  end
  object bModelos: TUniBitBtn
    Left = 94
    Top = 17
    Width = 23
    Height = 25
    Hint = 'Mostrar Modelos'
    ShowHint = True
    ParentShowHint = False
    Caption = '...'
    TabOrder = 17
  end
end
