object FDlgModelos: TFDlgModelos
  Left = 0
  Top = 0
  ClientHeight = 308
  ClientWidth = 183
  Caption = 'Modelos'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object bAceptar: TUniButton
    Left = 8
    Top = 273
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Aceptar'
    ModalResult = 1
    TabOrder = 1
    Default = True
  end
  object bCancelar: TUniButton
    Left = 100
    Top = 273
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Cancelar'
    Cancel = True
    ModalResult = 2
    TabOrder = 2
  end
  object UniDBLookupListBox1: TUniDBLookupListBox
    Left = 8
    Top = 8
    Width = 167
    Height = 259
    Hint = ''
    ListField = 'MODELO;EXISTENCIA'
    ListSource = dsModEst
    KeyField = 'MODELO'
    ListFieldIndex = 0
    TabOrder = 0
  end
  object dsModEst: TDataSource
    AutoEdit = False
    DataSet = FDM.qModEst
    Left = 72
    Top = 40
  end
end
