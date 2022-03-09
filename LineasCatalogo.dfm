object FLineasCatalogo: TFLineasCatalogo
  Left = 0
  Top = 0
  ClientHeight = 115
  ClientWidth = 447
  Caption = 'L'#237'nea'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object bAceptar: TUniButton
    Left = 136
    Top = 80
    Width = 75
    Height = 25
    Hint = ''
    Caption = '&Aceptar'
    TabOrder = 4
    OnClick = bAceptarClick
  end
  object bCancelar: TUniButton
    Left = 247
    Top = 80
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
    Width = 33
    Height = 13
    Hint = ''
    Caption = 'C'#243'digo'
    TabOrder = 0
  end
  object UniDBEdit1: TUniDBEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 22
    Hint = ''
    DataField = 'CODIGO'
    DataSource = FDM.dsLineas
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 144
    Top = 8
    Width = 37
    Height = 13
    Hint = ''
    Caption = 'Nombre'
    TabOrder = 2
  end
  object UniDBEdit2: TUniDBEdit
    Left = 144
    Top = 27
    Width = 295
    Height = 22
    Hint = ''
    DataField = 'NOMBRE'
    DataSource = FDM.dsLineas
    TabOrder = 3
  end
end
