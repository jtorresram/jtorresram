unit PartidaCat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniEdit, uniDBEdit,
  uniLabel, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniBasicGrid, uniStringGrid, uniButton, data.db, uniDBGrid, uniCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBitBtn;

type
  TFPartidaCat = class(TUniForm)
    edCorrida: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    bAceptar: TUniButton;
    bCancelar: TUniButton;
    UniLabel4: TUniLabel;
    edNombre: TUniEdit;
    UniLabel7: TUniLabel;
    edBuscaEstilo: TUniEdit;
    g1: TUniDBGrid;
    UniLabel8: TUniLabel;
    edEstilo: TUniEdit;
    edCosto: TUniNumberEdit;
    edPedidoCte: TUniEdit;
    lbPedidoCte: TUniLabel;
    edMuestra: TUniCheckBox;
    panPuntos: TUniPanel;
    UniLabel5: TUniLabel;
    ed1: TUniNumberEdit;
    ed2: TUniNumberEdit;
    ed3: TUniNumberEdit;
    ed4: TUniNumberEdit;
    ed5: TUniNumberEdit;
    ed6: TUniNumberEdit;
    ed7: TUniNumberEdit;
    ed8: TUniNumberEdit;
    ed9: TUniNumberEdit;
    ed10: TUniNumberEdit;
    ed11: TUniNumberEdit;
    ed12: TUniNumberEdit;
    ed13: TUniNumberEdit;
    ed14: TUniNumberEdit;
    ed15: TUniNumberEdit;
    ed16: TUniNumberEdit;
    ed17: TUniNumberEdit;
    edTotal: TUniNumberEdit;
    lb1: TUniLabel;
    lb2: TUniLabel;
    lb3: TUniLabel;
    lb4: TUniLabel;
    lb5: TUniLabel;
    lb6: TUniLabel;
    lb7: TUniLabel;
    lb8: TUniLabel;
    lb9: TUniLabel;
    lb10: TUniLabel;
    lb11: TUniLabel;
    lb12: TUniLabel;
    lb13: TUniLabel;
    lb14: TUniLabel;
    lb15: TUniLabel;
    lb16: TUniLabel;
    lb17: TUniLabel;
    UniLabel6: TUniLabel;
    bModelos: TUniBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FPartidaCat: TFPartidaCat;


implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm, Puntos;

function FPartidaCat: TFPartidaCat;
begin
  Result := TFPartidaCat(UniMainModule.GetFormInstance(TFPartidaCat));
end;


end.
