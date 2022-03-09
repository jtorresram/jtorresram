object FResurtidos: TFResurtidos
  Left = 0
  Top = 0
  ClientHeight = 434
  ClientWidth = 866
  Caption = 'Resurtidos'
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 77
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    ExplicitWidth = 829
    object edCorrida: TUniEdit
      Left = 367
      Top = 23
      Width = 76
      Hint = ''
      Text = ''
      TabOrder = 9
      TabStop = False
      ReadOnly = True
    end
    object UniLabel3: TUniLabel
      Left = 367
      Top = 4
      Width = 35
      Height = 13
      Hint = ''
      Caption = 'Corrida'
      TabOrder = 3
    end
    object UniLabel4: TUniLabel
      Left = 135
      Top = 4
      Width = 80
      Height = 13
      Hint = ''
      Caption = 'Nombre de Estilo'
      TabOrder = 2
    end
    object edNombre: TUniEdit
      Left = 135
      Top = 23
      Width = 226
      Hint = ''
      Text = ''
      TabOrder = 8
      TabStop = False
      ReadOnly = True
    end
    object UniLabel7: TUniLabel
      Left = 627
      Top = 4
      Width = 28
      Height = 13
      Hint = ''
      Caption = 'Costo'
      TabOrder = 5
    end
    object UniLabel8: TUniLabel
      Left = 3
      Top = 4
      Width = 25
      Height = 13
      Hint = ''
      Caption = 'Estilo'
      TabOrder = 1
    end
    object edEstilo: TUniEdit
      Left = 3
      Top = 23
      Width = 126
      Hint = ''
      Text = ''
      TabOrder = 7
      TabStop = False
      ReadOnly = True
    end
    object edCosto: TUniNumberEdit
      Left = 628
      Top = 23
      Width = 67
      Hint = ''
      TabOrder = 11
      TabStop = False
      ReadOnly = True
      DecimalSeparator = '.'
    end
    object bAnterior: TUniButton
      Left = 781
      Top = 23
      Width = 36
      Height = 22
      Hint = ''
      Caption = 'Ant'
      TabOrder = 13
      OnClick = bAnteriorClick
    end
    object bSiguiente: TUniButton
      Left = 823
      Top = 23
      Width = 36
      Height = 22
      Hint = ''
      Caption = 'Sig'
      TabOrder = 14
      OnClick = bSiguienteClick
    end
    object edColor: TUniEdit
      Left = 449
      Top = 23
      Width = 172
      Hint = ''
      Text = ''
      TabOrder = 10
      TabStop = False
      ReadOnly = True
    end
    object UniLabel1: TUniLabel
      Left = 449
      Top = 4
      Width = 25
      Height = 13
      Hint = ''
      Caption = 'Color'
      TabOrder = 4
    end
    object UniLabel6: TUniLabel
      Left = 3
      Top = 57
      Width = 60
      Height = 13
      Hint = ''
      Caption = 'Inventario'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 15
    end
    object edRegs: TUniSpinEdit
      Left = 720
      Top = 23
      Width = 41
      Hint = ''
      Value = 1
      MaxValue = 50
      MinValue = 1
      TabOrder = 12
    end
    object UniLabel15: TUniLabel
      Left = 701
      Top = 4
      Width = 67
      Height = 13
      Hint = ''
      Caption = 'Avance Regs.'
      TabOrder = 6
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 77
    Width = 866
    Height = 320
    Hint = ''
    Align = alClient
    TabOrder = 1
    Caption = ''
    object UniPanel4: TUniPanel
      Left = 1
      Top = 1
      Width = 864
      Height = 318
      Hint = ''
      Align = alClient
      TabOrder = 1
      Caption = ''
      object sg1: TUniStringGrid
        Left = 1
        Top = 1
        Width = 862
        Height = 104
        Hint = ''
        RowCount = 1
        ColCount = 8
        DefaultColWidth = 45
        Columns = <>
        Align = alTop
        TabOrder = 1
        ExplicitLeft = -1
        ExplicitTop = 0
        ExplicitWidth = 967
      end
      object UniPanel5: TUniPanel
        Left = 1
        Top = 105
        Width = 862
        Height = 152
        Hint = ''
        Align = alTop
        TabOrder = 2
        Caption = ''
        object UniPanel6: TUniPanel
          Left = 1
          Top = 1
          Width = 860
          Height = 48
          Hint = ''
          Align = alTop
          TabOrder = 1
          Caption = ''
          object UniLabel2: TUniLabel
            Left = 5
            Top = 12
            Width = 13
            Height = 13
            Hint = ''
            Caption = 'De'
            TabOrder = 4
          end
          object edfec1: TUniDateTimePicker
            Left = 24
            Top = 3
            Width = 97
            Hint = ''
            DateTime = 43904.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 1
          end
          object edFec2: TUniDateTimePicker
            Left = 146
            Top = 4
            Width = 97
            Hint = ''
            DateTime = 43904.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 2
          end
          object UniLabel5: TUniLabel
            Left = 133
            Top = 12
            Width = 7
            Height = 13
            Hint = ''
            Caption = 'A'
            TabOrder = 5
          end
          object bVentas: TUniButton
            Left = 264
            Top = 4
            Width = 75
            Height = 22
            Hint = ''
            Caption = 'Buscar'
            TabOrder = 3
            OnClick = bVentasClick
          end
          object UniLabel9: TUniLabel
            Left = 3
            Top = 32
            Width = 39
            Height = 13
            Hint = ''
            Caption = 'Ventas'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
          end
        end
        object sg2: TUniStringGrid
          Left = 1
          Top = 49
          Width = 860
          Height = 102
          Hint = ''
          RowCount = 1
          ColCount = 8
          DefaultColWidth = 45
          Columns = <>
          Align = alClient
          TabOrder = 2
          ExplicitWidth = 823
        end
      end
      object UniLabel10: TUniLabel
        Left = 12
        Top = 268
        Width = 43
        Height = 41
        Hint = ''
        AutoSize = False
        Caption = 'Cantidad por Punto'
        TabOrder = 3
      end
      object ed1: TUniNumberEdit
        Left = 61
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 22
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed1Change
      end
      object lb1: TUniLabel
        Left = 62
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'P01'
        TabOrder = 4
      end
      object lb2: TUniLabel
        Left = 90
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p02'
        TabOrder = 5
      end
      object ed2: TUniNumberEdit
        Left = 90
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 23
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed2Change
      end
      object lb3: TUniLabel
        Left = 119
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p03'
        TabOrder = 6
      end
      object ed3: TUniNumberEdit
        Left = 119
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 24
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed3Change
      end
      object ed4: TUniNumberEdit
        Left = 148
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 25
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed4Change
      end
      object lb4: TUniLabel
        Left = 148
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p04'
        TabOrder = 7
      end
      object ed5: TUniNumberEdit
        Left = 177
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 26
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed5Change
      end
      object lb5: TUniLabel
        Left = 177
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p05'
        TabOrder = 8
      end
      object ed6: TUniNumberEdit
        Left = 206
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 27
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed6Change
      end
      object lb6: TUniLabel
        Left = 206
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p06'
        TabOrder = 9
      end
      object ed7: TUniNumberEdit
        Left = 235
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 28
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed7Change
      end
      object lb7: TUniLabel
        Left = 235
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p07'
        TabOrder = 10
      end
      object ed8: TUniNumberEdit
        Left = 264
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 29
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed8Change
      end
      object lb8: TUniLabel
        Left = 264
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p08'
        TabOrder = 11
      end
      object ed9: TUniNumberEdit
        Left = 293
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 30
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed9Change
      end
      object lb9: TUniLabel
        Left = 293
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p09'
        TabOrder = 12
      end
      object ed10: TUniNumberEdit
        Left = 322
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 31
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed10Change
      end
      object lb10: TUniLabel
        Left = 322
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p10'
        TabOrder = 13
      end
      object ed11: TUniNumberEdit
        Left = 351
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 32
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed11Change
      end
      object lb11: TUniLabel
        Left = 351
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p11'
        TabOrder = 14
      end
      object ed12: TUniNumberEdit
        Left = 380
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 33
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed12Change
      end
      object lb12: TUniLabel
        Left = 380
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p12'
        TabOrder = 15
      end
      object ed13: TUniNumberEdit
        Left = 409
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 34
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed13Change
      end
      object lb13: TUniLabel
        Left = 409
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p13'
        TabOrder = 16
      end
      object ed14: TUniNumberEdit
        Left = 438
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 35
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed14Change
      end
      object lb14: TUniLabel
        Left = 438
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p14'
        TabOrder = 17
      end
      object ed15: TUniNumberEdit
        Left = 467
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 36
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed15Change
      end
      object lb15: TUniLabel
        Left = 467
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p15'
        TabOrder = 18
      end
      object ed16: TUniNumberEdit
        Left = 496
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 37
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed16Change
      end
      object lb16: TUniLabel
        Left = 496
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p16'
        TabOrder = 19
      end
      object ed17: TUniNumberEdit
        Left = 525
        Top = 287
        Width = 23
        Hint = ''
        TabOrder = 38
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
        OnChange = ed17Change
      end
      object lb17: TUniLabel
        Left = 525
        Top = 268
        Width = 18
        Height = 13
        Hint = ''
        Caption = 'p17'
        TabOrder = 20
      end
      object edTotal: TUniNumberEdit
        Left = 570
        Top = 287
        Width = 52
        Hint = ''
        TabOrder = 39
        TabStop = False
        ReadOnly = True
        MaxValue = 99.000000000000000000
        SelectOnFocus = True
        DecimalPrecision = 0
        DecimalSeparator = '.'
      end
      object UniLabel11: TUniLabel
        Left = 570
        Top = 268
        Width = 60
        Height = 13
        Hint = ''
        Caption = 'Total Puntos'
        TabOrder = 21
      end
      object bGuardar: TUniButton
        Left = 636
        Top = 287
        Width = 75
        Height = 22
        Hint = ''
        Caption = '&Guardar'
        TabOrder = 40
        OnClick = bGuardarClick
      end
    end
  end
  object UniPanel3: TUniPanel
    Left = 0
    Top = 397
    Width = 866
    Height = 37
    Hint = ''
    Align = alBottom
    TabOrder = 2
    Caption = ''
    ExplicitTop = 396
    object UniLabel12: TUniLabel
      Left = 13
      Top = 16
      Width = 93
      Height = 13
      Hint = ''
      Caption = 'Estilos Actualizados'
      TabOrder = 6
    end
    object edTotEstilos: TUniNumberEdit
      Left = 112
      Top = 6
      Width = 49
      Hint = ''
      TabOrder = 1
      TabStop = False
      ReadOnly = True
      DecimalSeparator = '.'
    end
    object bPedido: TUniButton
      Left = 549
      Top = 6
      Width = 128
      Height = 23
      Hint = ''
      Caption = 'Generar Pedido'
      TabOrder = 4
      OnClick = bPedidoClick
    end
    object edProv: TUniDBLookupComboBox
      Left = 393
      Top = 6
      Width = 122
      Hint = ''
      ListField = 'CODIGO;NOMBRE'
      ListSource = FDM.dsqProvsProd
      KeyField = 'CODIGO'
      ListFieldIndex = 0
      TabOrder = 3
      Color = clWindow
    end
    object UniLabel13: TUniLabel
      Left = 337
      Top = 13
      Width = 50
      Height = 13
      Hint = ''
      Caption = 'Proveedor'
      TabOrder = 5
    end
    object edTienda: TUniDBLookupComboBox
      Left = 220
      Top = 6
      Width = 96
      Hint = ''
      ListField = 'CODIGO;NOMBRE'
      ListSource = FDM.dsBodegas
      KeyField = 'CODIGO'
      ListFieldIndex = 0
      TabOrder = 2
      Color = clWindow
    end
    object UniLabel14: TUniLabel
      Left = 178
      Top = 16
      Width = 36
      Height = 13
      Hint = ''
      Caption = 'Bodega'
      TabOrder = 7
    end
  end
end
