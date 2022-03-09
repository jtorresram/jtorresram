object FGruposCatalogo: TFGruposCatalogo
  Left = 0
  Top = 0
  ClientHeight = 105
  ClientWidth = 384
  Caption = 'Grupos'
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBEdit1
  PixelsPerInch = 96
  TextHeight = 13
  object bAceptar: TUniButton
    Left = 97
    Top = 69
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Aceptar'
    TabOrder = 4
    OnClick = bAceptarClick
  end
  object bCancelar: TUniButton
    Left = 216
    Top = 68
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = bCancelarClick
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Hint = ''
    Caption = 'Clave'
    TabOrder = 0
  end
  object UniDBEdit1: TUniDBEdit
    Left = 8
    Top = 27
    Width = 57
    Height = 22
    Hint = ''
    DataField = 'CLAVE'
    DataSource = fdm.dsGrup
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object UniLabel2: TUniLabel
    Left = 79
    Top = 8
    Width = 37
    Height = 13
    Hint = ''
    Caption = 'Nombre'
    TabOrder = 1
  end
  object UniDBEdit2: TUniDBEdit
    Left = 79
    Top = 27
    Width = 295
    Height = 22
    Hint = ''
    DataField = 'NOMBRE'
    DataSource = fdm.dsGrup
    CharCase = ecUpperCase
    TabOrder = 3
  end
end
