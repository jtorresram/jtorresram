object FLineasConsulta: TFLineasConsulta
  Left = 0
  Top = 0
  ClientHeight = 259
  ClientWidth = 365
  Caption = 'Consulta de Lineas'
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
    Width = 365
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object bNuevo: TUniButton
      Left = 3
      Top = 5
      Width = 94
      Height = 25
      Hint = ''
      Caption = '&Nuevo'
      TabOrder = 1
      ImageIndex = 0
      IconCls = 'add'
      OnClick = bNuevoClick
    end
    object bModificar: TUniButton
      Left = 115
      Top = 5
      Width = 94
      Height = 25
      Hint = ''
      Caption = '&Modificar'
      TabOrder = 2
      ImageIndex = 1
      IconCls = 'arrow_up'
      OnClick = bModificarClick
    end
    object bEliminar: TUniButton
      Left = 227
      Top = 5
      Width = 94
      Height = 25
      Hint = ''
      Caption = '&Eliminar'
      TabOrder = 3
      ImageIndex = 2
      IconCls = 'delete'
      OnClick = bEliminarClick
    end
  end
  object g1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 365
    Height = 226
    Hint = ''
    DataSource = FDM.dsLineas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'CODIGO'
        Title.Caption = 'CODIGO'
        Width = 64
      end
      item
        FieldName = 'NOMBRE'
        Title.Caption = 'NOMBRE'
        Width = 184
      end>
  end
end
