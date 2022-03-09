object FExplosionConsulta: TFExplosionConsulta
  Left = 0
  Top = 0
  ClientHeight = 578
  ClientWidth = 1037
  Caption = 'Explosi'#243'n de insumos'
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 52
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object UniLabel1: TUniLabel
      Left = 3
      Top = 3
      Width = 64
      Height = 13
      Hint = ''
      Caption = 'Del programa'
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 123
      Top = 3
      Width = 58
      Height = 13
      Hint = ''
      Caption = 'Al programa'
      TabOrder = 2
    end
    object edprogini: TUniSpinEdit
      Left = 3
      Top = 22
      Width = 86
      Hint = ''
      TabOrder = 3
      OnChangeValue = edproginiChangeValue
    end
    object edprogfin: TUniSpinEdit
      Left = 123
      Top = 22
      Width = 86
      Hint = ''
      TabOrder = 4
    end
    object bBuscar: TUniButton
      Left = 240
      Top = 19
      Width = 75
      Height = 25
      Hint = ''
      Caption = '&Buscar'
      TabOrder = 5
      OnClick = bBuscarClick
    end
  end
  object g1: TUniDBGrid
    Left = 0
    Top = 52
    Width = 1037
    Height = 526
    Hint = ''
    DataSource = dsExp
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
  end
  object dsExp: TDataSource
    AutoEdit = False
    DataSet = FDMCons.qExpEstilo
    Left = 144
    Top = 120
  end
end
