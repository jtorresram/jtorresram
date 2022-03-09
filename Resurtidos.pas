unit Resurtidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniSplitter, uniEdit,
  uniLabel, uniButton, uniBasicGrid, uniStringGrid, uniDateTimePicker, Data.DB,
  uniDBGrid, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniSpinEdit;

type
  TFResurtidos = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    edCorrida: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    edNombre: TUniEdit;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    edEstilo: TUniEdit;
    edCosto: TUniNumberEdit;
    bAnterior: TUniButton;
    bSiguiente: TUniButton;
    edColor: TUniEdit;
    UniLabel1: TUniLabel;
    UniPanel4: TUniPanel;
    sg1: TUniStringGrid;
    UniPanel5: TUniPanel;
    UniPanel6: TUniPanel;
    UniLabel2: TUniLabel;
    edfec1: TUniDateTimePicker;
    edFec2: TUniDateTimePicker;
    UniLabel5: TUniLabel;
    bVentas: TUniButton;
    sg2: TUniStringGrid;
    UniLabel6: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    ed1: TUniNumberEdit;
    lb1: TUniLabel;
    lb2: TUniLabel;
    ed2: TUniNumberEdit;
    lb3: TUniLabel;
    ed3: TUniNumberEdit;
    ed4: TUniNumberEdit;
    lb4: TUniLabel;
    ed5: TUniNumberEdit;
    lb5: TUniLabel;
    ed6: TUniNumberEdit;
    lb6: TUniLabel;
    ed7: TUniNumberEdit;
    lb7: TUniLabel;
    ed8: TUniNumberEdit;
    lb8: TUniLabel;
    ed9: TUniNumberEdit;
    lb9: TUniLabel;
    ed10: TUniNumberEdit;
    lb10: TUniLabel;
    ed11: TUniNumberEdit;
    lb11: TUniLabel;
    ed12: TUniNumberEdit;
    lb12: TUniLabel;
    ed13: TUniNumberEdit;
    lb13: TUniLabel;
    ed14: TUniNumberEdit;
    lb14: TUniLabel;
    ed15: TUniNumberEdit;
    lb15: TUniLabel;
    ed16: TUniNumberEdit;
    lb16: TUniLabel;
    ed17: TUniNumberEdit;
    lb17: TUniLabel;
    edTotal: TUniNumberEdit;
    UniLabel11: TUniLabel;
    bGuardar: TUniButton;
    UniLabel12: TUniLabel;
    edTotEstilos: TUniNumberEdit;
    bPedido: TUniButton;
    edProv: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;
    edTienda: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    edRegs: TUniSpinEdit;
    UniLabel15: TUniLabel;
    procedure bSiguienteClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
    procedure bVentasClick(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure ed1Change(Sender: TObject);
    procedure ed2Change(Sender: TObject);
    procedure ed3Change(Sender: TObject);
    procedure ed4Change(Sender: TObject);
    procedure ed5Change(Sender: TObject);
    procedure ed6Change(Sender: TObject);
    procedure ed7Change(Sender: TObject);
    procedure ed8Change(Sender: TObject);
    procedure ed9Change(Sender: TObject);
    procedure ed10Change(Sender: TObject);
    procedure ed11Change(Sender: TObject);
    procedure ed12Change(Sender: TObject);
    procedure ed13Change(Sender: TObject);
    procedure ed14Change(Sender: TObject);
    procedure ed15Change(Sender: TObject);
    procedure ed16Change(Sender: TObject);
    procedure ed17Change(Sender: TObject);
    procedure bPedidoClick(Sender: TObject);
  private
    procedure EstiloCargaDatos;
    procedure SumaPuntos;
    { Private declarations }
  public
    { Public declarations }
  end;

Var
  vTotPuntos: Byte;

function FResurtidos: TFResurtidos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication,
  dm, Puntos;

function FResurtidos: TFResurtidos;
begin
  Result := TFResurtidos(UniMainModule.GetFormInstance(TFResurtidos));
end;

procedure TFResurtidos.bAnteriorClick(Sender: TObject);
begin
  fdm.qEstilos.MoveBy(edRegs.Value*-1);
  fdm.qEstilos.Prior;
  EstiloCargaDatos;
end;

procedure TFResurtidos.bSiguienteClick(Sender: TObject);
begin
  fdm.qEstilos.MoveBy(edRegs.Value);
  fdm.qEstilos.Next;
  EstiloCargaDatos;
end;

procedure TFResurtidos.bVentasClick(Sender: TObject);
begin
  // mostrar las ventas por fecha del pedido seleccionado
  fdm.SetSg2VentasTiendasxEstilo(fdm.qEstilosCORRIDA.Value, fdm.qEstilosESTILO.Value, self);
  //fdm.VentasTiendasxEstilo(fdm.qEstilosCODCORRIDA.Value, fdm.qEstilosESTILO.Value, self);
end;

procedure TFResurtidos.ed10Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed11Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed12Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed13Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed14Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed15Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed16Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed17Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed1Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed2Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed3Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed4Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed5Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed6Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed7Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed8Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.ed9Change(Sender: TObject);
begin
  SumaPuntos;
end;

procedure TFResurtidos.EstiloCargaDatos;
var
  i, numpuntos: Byte;
  clPunto, clCantidad: String;
  xCodCorrida: TCodCorrida;
begin
  for i := 1 to gTotPuntos do
  begin
    (self.FindComponent('lb'+IntToStr(i)) as TUniLabel).Visible := False;
    (self.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Visible := False;
    (self.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value := 0;
  end;
  edEstilo.Text := fdm.qEstilosESTILO.Value;
  edNombre.Text := fdm.qEstilosNOMBRE.Value;
  //edCorrida.Text := fdm.qEstilosLK_CORRIDA.Value;
  edCorrida.Text := fdm.qEstiloscorrida_descr.Value;
  //edColor.Text := fdm.qEstilosLK_COLOR.Value;
  edColor.Text := fdm.qEstilosCOLOR_DESR.Value;
  edCosto.Value := fdm.qEstilosCOSTO.Value;
  // actualiza string grid para poner las existencias de las tiendas y bodegas
  //fdm.InventariosxEstilo_sg1(fdm.qEstilosCODCORRIDA.Value,
  //  fdm.qEstilosESTILO.Value, self);
  fdm.SetStringGridInvetarioxEstilo(fdm.qEstilosCORRIDA.Value,
    fdm.qEstilosESTILO.Value, self);
  // mostrar las ventas por fecha
  //fdm.VentasTiendasxEstilo(fdm.qEstilosCODCORRIDA.Value, fdm.qEstilosESTILO.Value, self);
  fdm.SetSg2VentasTiendasxEstilo(fdm.qEstilosCORRIDA.Value, fdm.qEstilosESTILO.Value, self);
  // Mostrar corrida si el usuario capturo o no.
  xCodCorrida := TCodCorrida.Create(fdm.qEstilosCORRIDA.Value);
  vTotPuntos:= xCodCorrida.TotalPuntos;
  for i := 1 to vTotPuntos do
  begin
    //fdm.PuntosNombresCampos(i, clPunto, clCantidad);
    fdm.SetNombreCamposPuntos(i, clPunto, clCantidad);

    (self.FindComponent('lb'+IntToStr(i)) as TUniLabel).Visible := True;
    (self.FindComponent('lb'+IntToStr(i)) as TUniLabel).Caption:=
      xCodCorrida.PuntosDescr[i];

    (self.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Visible := True;
    if fdm.mPuntos.Locate('ESTILO', fdm.qEstilosestilo.Value, []) then
      (self.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value :=
        fdm.mPuntos.FieldByName(clCantidad).AsFloat
    else
      (self.FindComponent('ed'+IntToStr(i)) as TUniNumberEdit).Value := 0;
  end;
  xCodCorrida.Free;
end;

procedure TFResurtidos.bGuardarClick(Sender: TObject);
var
  i: Byte;
  clPunto, clPuntoCantidad: String;
  qPares, qTotPares: Word;
begin
  if edTotal.Value = 0 then
    raise Exception.Create('Debes capturar algún punto para continuar');
  // creo los nombres de los puntos del estilo seleccionado
  if not fdm.mPuntos.Locate('ESTILO', fdm.qEstilosESTILO.Value, [])  then
  begin
    //fdm.mPuntos_Inicializa(fdm.qEstilosCODCORRIDA.Value, 0, fdm.qEstilosESTILO.Value);
    fdm.SetInicializamPuntos(fdm.qEstilosCORRIDA.Value, 0, fdm.qEstilosESTILO.Value);
  end;
  fdm.mPuntos.Edit;
  for i := 1 to fdm.mPuntosTOTPUN.Value do
  begin
    //fdm.PuntosNombresCampos(i, clPunto, clPuntoCantidad);
    fdm.SetNombreCamposPuntos(i, clPunto, clPuntoCantidad);
    qPares := Trunc((FindComponent('ed' + IntToStr(i)) as TUniNumberEdit).Value);
    fdm.mPuntos.FieldByName(clpuntocantidad).AsInteger := qPares;
    qTotPares := qTotPares + qPares;
  end;
  FDM.mPuntosPARES.Value := qTotPares;
  fdm.mPuntos.Post;
  edTotEstilos.Value := fdm.mPuntos.RecordCount;
end;

procedure TFResurtidos.bPedidoClick(Sender: TObject);
var
  qCodProv, qBodega, qFolio: Word;
  i: Byte;
  vCanti, vTotal: SmallInt;
  vTotCosto: Double;
  qPunto: string;
begin
  if edTienda.Text = '' then
    raise Exception.Create('Debes seleccionar una bodega');

  if edProv.Text = '' then
    raise Exception.Create('Debes seleccionar un proveedor');

  qCodProv := fdm.qProvsProdCODIGO.Value;
  qBodega := fdm.qBodegas.FieldByName('Codigo').AsInteger;

  fdm.qPed.Open();
  fdm.qPedDet.Open();
  fdm.qPedRen.Open();
  fdm.qPed.Append;
  fdm.qPedTIENDA.Value := 0;
  //fdm.PedidoNuevoFolioxBodega(qBodega);
  fdm.GetFolioPedidoxTienda(qBodega);
  fdm.qPedCODPROV.Value := qCodProv;
  FDM.qPedOBS.Value := 'Generado desde Resurtidos';
  fdm.qped.Post;
  // agrego el detalle
  fdm.mPuntos.First;
  qCodProv := 1;
  vTotal := 0;
  while not fdm.mPuntos.Eof do
  begin
    fdm.qPedDet.Append;
    fdm.qPedDetPARTIDA.Value := qCodProv;
    fdm.qPedDetESTILO.Value := fdm.mPuntosESTILO.Value;
    fdm.qPedDetCANTIDAD.Value := fdm.mPuntosPARES.Value;
    // posicionarme en el estilo para traer datos
    fdm.qEstilos.Locate('ESTILO', fdm.mPuntosESTILO.Value, []);
    fdm.qPedDetCODCORRIDA.Value := fdm.qEstilosCORRIDA.Value;
    fdm.qPedDetCOSTO.Value := fdm.qEstilosCOSTO.Value;
    fdm.qPedDetPRECIO.Value := fdm.qEstilosMENUDEO.Value;
    fdm.qPedDetIMPORTE.Value := fdm.qEstilosCOSTO.Value * FDM.mPuntosPARES.Value;
    fdm.qPedDet.Post;
    vTotal := vTotal + FDM.mPuntosPARES.Value;
    vTotCosto := vTotCosto + fdm.qPedDetIMPORTE.AsFloat;
    // agreglo los renglones, cada punto.
    for i := 1 to FDM.mPuntosTOTPUN.Value do
    begin
      if i < 10  then
        qPunto := 'P0' + IntToStr(i)
      else
        qPunto := 'P' + IntToStr(i);

      vCanti := fdm.mPuntos.FieldByName(qPunto).AsInteger;
      if vCanti > 0 then
      begin
        fdm.qPedRen.Append;
        fdm.qPedRen.FieldByName('TIENDA').Value := fdm.qPedTIENDA.Value;
        fdm.qPedRen.FieldByName('FOLIO').Value := fdm.qPedFOLIO.Value;
        fdm.qPedRen.FieldByName('PARTIDA').Value := qCodProv;
        fdm.qPedRen.FieldByName('PUNTO').Value := i;
        fdm.qPedRen.FieldByName('CANTIDAD').Value := vCanti;
        Try
          fdm.qPedRen.Post;
        except
          raise;
        End;
      end;
    end;
    Inc(qCodProv);
    fdm.mPuntos.Next;
  end;
  fdm.qPed.Edit;
  fdm.qPedCANTIDAD.Value := vTotal;
  fdm.qPedTOTAL.Value := vTotCosto;
  fdm.qPed.Post;
  qFolio := fdm.qPedFOLIO.AsInteger;
  // Termina y guardo
  fdm.FDConnection1.CommitRetaining;
  fdm.qPed.Refresh;
  ShowMessage('Pedido Generado: ' + IntToStr(qBodega) + '-' +
    IntToStr(qFolio));
end;

procedure TFResurtidos.UniFormBeforeShow(Sender: TObject);
begin
  fdm.dsBodegas.DataSet.Open;
  FDM.dsqProvsProd.DataSet.Open;
  fdm.mPuntos.Close;
  fdm.mPuntos.Open;
  edFec1.DateTime := Now - 7;
  edFec2.DateTime := Now;
  fdm.qEstilos.First;
  //FDM.qEstilos.Locate('estilo', 'ZL00990000300097', []);
  EstiloCargaDatos;
end;

procedure TFResurtidos.SumaPuntos;
var
  i: Byte;
begin
  edTotal.Value := 0;
  for i := 1 to vTotPuntos do
  begin
    edTotal.Value := edTotal.Value + (FindComponent('ed' + IntToStr(i)) as TUniNumberEdit).Value;
  end;
end;

end.
