object FReporte: TFReporte
  Left = 0
  Top = 0
  ClientHeight = 531
  ClientWidth = 652
  Caption = 'FReporte'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 0
    Width = 652
    Height = 506
    Hint = ''
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
  end
  object UniButton1: TUniButton
    Left = 0
    Top = 506
    Width = 652
    Height = 25
    Hint = ''
    Caption = 'Cerrar'
    Align = alBottom
    TabOrder = 1
    OnClick = UniButton1Click
  end
end
