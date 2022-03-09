object FModelosConsulta: TFModelosConsulta
  Left = 0
  Top = 0
  ClientHeight = 474
  ClientWidth = 768
  Caption = 'Modelos'
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
    Width = 768
    Height = 37
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object bNuevo: TUniButton
      Left = 398
      Top = 5
      Width = 62
      Height = 25
      Hint = ''
      Caption = '&Nuevo'
      TabOrder = 3
      ImageIndex = 0
      IconCls = 'add'
      OnClick = bNuevoClick
    end
    object bModificar: TUniButton
      Left = 474
      Top = 5
      Width = 66
      Height = 25
      Hint = ''
      Caption = '&Modificar'
      TabOrder = 4
      ImageIndex = 1
      IconCls = 'arrow_up'
      OnClick = bModificarClick
    end
    object bEliminar: TUniButton
      Left = 557
      Top = 5
      Width = 62
      Height = 25
      Hint = ''
      Caption = '&Eliminar'
      TabOrder = 6
      ImageIndex = 2
      IconCls = 'delete'
      OnClick = bEliminarClick
    end
    object UniLabel1: TUniLabel
      Left = 8
      Top = 17
      Width = 51
      Height = 13
      Hint = ''
      Caption = 'Buscar por'
      TabOrder = 9
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
      TabOrder = 7
      IconItems = <>
      OnCloseUp = edBuscarCloseUp
    end
    object UniLabel2: TUniLabel
      Left = 175
      Top = 17
      Width = 24
      Height = 13
      Hint = ''
      Caption = 'Valor'
      TabOrder = 10
    end
    object edValor: TUniComboBox
      Left = 205
      Top = 8
      Width = 91
      Hint = ''
      Text = ''
      TabOrder = 8
      IconItems = <>
    end
    object bBuscar: TUniButton
      Left = 302
      Top = 5
      Width = 72
      Height = 25
      Hint = ''
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = bBuscarClick
    end
    object bConsumos: TUniButton
      Left = 376
      Top = 5
      Width = 96
      Height = 25
      Hint = ''
      Caption = 'Cons&umos'
      TabOrder = 2
      ImageIndex = 2
      IconCls = 'more'
      OnClick = bConsumosClick
    end
    object bFracc: TUniButton
      Left = 511
      Top = 5
      Width = 96
      Height = 25
      Hint = ''
      Caption = 'Fracciones'
      TabOrder = 5
      ImageIndex = 2
      IconCls = 'organize'
      OnClick = bFraccClick
    end
  end
  object g1: TUniDBGrid
    Left = 0
    Top = 37
    Width = 768
    Height = 437
    Hint = ''
    DataSource = FDM.dsModelos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'MODELO'
        Title.Caption = 'MODELO'
        Width = 100
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
      end
      item
        Title.Caption = ' '
        Width = 64
      end>
  end
end
