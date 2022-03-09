unit EstiloCopia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniGUIBaseClasses, uniLabel, uniPanel, uniBasicGrid,
  uniDBGrid, uniImage, uniDBImage, uniEdit, uniButton, uniMemo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin,
  uniCheckBox;

type
  TFEstiloCopia = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel3: TUniPanel;
    UniDBImage1: TUniDBImage;
    UniPanel4: TUniPanel;
    UniLabel1: TUniLabel;
    edEstilo: TUniEdit;
    UniLabel2: TUniLabel;
    edColor: TUniDBLookupComboBox;
    UniButton1: TUniButton;
    mEstilo: TFDMemTable;
    UniLabel3: TUniLabel;
    ckConsumos: TUniCheckBox;
    ckFracciones: TUniCheckBox;
    mFracciones: TFDMemTable;
    mConsumos: TFDMemTable;
    mConsumosEstilo: TStringField;
    mConsumosINSUMO: TStringField;
    mConsumosCONSUMO: TSingleField;
    mConsumosELEMENTO: TStringField;
    mConsumosDEPTO: TSmallintField;
    mConsumosTALLA: TBooleanField;
    mConsumosC01: TSmallintField;
    mConsumosC02: TSmallintField;
    mConsumosC03: TSmallintField;
    mConsumosC04: TSmallintField;
    mConsumosC05: TSmallintField;
    mConsumosC06: TSmallintField;
    mConsumosC07: TSmallintField;
    mConsumosC08: TSmallintField;
    mConsumosC09: TSmallintField;
    mConsumosC10: TSmallintField;
    mConsumosC11: TSmallintField;
    mConsumosC12: TSmallintField;
    mConsumosC13: TSmallintField;
    mConsumosC14: TSmallintField;
    mConsumosC15: TSmallintField;
    mConsumosC16: TSmallintField;
    mConsumosC17: TSmallintField;
    g1: TUniDBGrid;
    edNombre: TUniEdit;
    mEstiloESTILO: TStringField;
    mEstiloMODELO: TStringField;
    mEstiloCORRIDA: TIntegerField;
    mEstiloCOLOR: TSmallintField;
    mEstiloNOMBRE: TStringField;
    mEstiloCODPROV: TSmallintField;
    mEstiloES_SALDO: TBooleanField;
    mEstiloOBS: TStringField;
    mEstiloCOSTO: TSingleField;
    mEstiloMENUDEO: TSingleField;
    mEstiloMEDIO_MAYOREO: TSingleField;
    mEstiloMAYOREO: TSingleField;
    mEstiloFORANEA: TSingleField;
    mEstiloIMAGEN: TBlobField;
    mEstiloEXISTENCIA: TSmallintField;
    mEstiloACTIVO: TBooleanField;
    mFraccionesESTILO: TStringField;
    mFraccionesDEPTO: TSmallintField;
    mFraccionesFRACCION: TSmallintField;
    mFraccionesORDEN: TSmallintField;
    mFraccionesTIEMPO: TSingleField;
    mFraccionesCOSTO: TSingleField;
    procedure UniDBGrid1SelectionChange(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure edColorCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure armaCadenas;
  public
    { Public declarations }
  end;

function FEstiloCopia: TFEstiloCopia;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FEstiloCopia: TFEstiloCopia;
begin
  Result := TFEstiloCopia(UniMainModule.GetFormInstance(TFEstiloCopia));
end;

procedure TFEstiloCopia.armaCadenas;
begin
  if edColor.Text = '' then
    edEstilo.Text := fdm.qEstilosMODELO.Value
  else
    edEstilo.Text := fdm.qEstilosMODELO.Value +
      Format('%.*d',[5, fdm.qColoresCODIGO.Value]);

  edNombre.Text := FDM.qModelosNOMBRE.Value + ' ' +
    fdm.qColoresNombre.Value;
end;

procedure TFEstiloCopia.edColorCloseUp(Sender: TObject);
begin
  armaCadenas;
end;

procedure TFEstiloCopia.UniButton1Click(Sender: TObject);
var
  xEstilo: String;
begin
  // 1. Validar Estilo que no exista
  fdm.Query1.Open('Select Estilo from Estilos where Estilo=' +
    QuotedStr(edEstilo.Text));
  if not fdm.Query1.IsEmpty then
  begin
    raise Exception.Create('El Estilo ya existe!');
  end;
  // 2. Copiar el Estilo en la misma tabla Estilo
  xEstilo := fdm.qEstilosEstilo.Value;
  mEstilo.Open;
  mEstilo.Append;
  mEstilo.CopyRecord(fdm.qEstilos);
  //mEstilo.Edit;
  Self.mEstiloEstilo.Value := edEstilo.Text;
  self.mEstiloNOMBRE.Value := edNombre.Text;
  self.mEstiloColor.Value := fdm.qColoresCODIGO.Value;
  self.mEstiloEXISTENCIA.Value := 0;
  self.mEstiloACTIVO.Value := True;
  mEstilo.Post;
  fdm.qEstilos.Append;
  fdm.qEstilos.CopyRecord(self.mEstilo);
  fdm.qEstilos.Post;
  // regreso al Estilo origen para copiar consumos y fracciones
  fdm.qEstilos.First;
  fdm.qEstilos.Locate('Estilo', xEstilo, []);
  if ckConsumos.Checked then
  begin
    mConsumos.Open;
    fdm.qEstConsumos.First;
    while not fdm.qEstConsumos.Eof do
    begin
      mConsumos.Append;
      mConsumos.CopyRecord(fdm.qEstConsumos);
      mConsumosEstilo.Value := edEstilo.Text;
      mConsumos.Post;
      fdm.qEstConsumos.Next;
    end;
    fdm.qEstConsumos.CopyDataSet(mConsumos, [coAppend]);
  end;
  if ckFracciones.Checked then
  begin
    mFracciones.Open;
    fdm.qEstFrac.First;
    while not fdm.qEstFrac.Eof do
    begin
      mFracciones.Append;
      mFracciones.CopyRecord(fdm.qEstFrac);
      mFraccionesEstilo.Value := edEstilo.Text;
      mFracciones.Post;
      fdm.qEstFrac.Next;
    end;
    fdm.qEstFrac.CopyDataSet(mFracciones, [coAppend]);
  end;
  if fdm.FDConnection1.InTransaction then
    fdm.FDConnection1.CommitRetaining;
  mEstilo.Close;
  mConsumos.Close;
  mFracciones.Close;
  ShowMessage('Nuevo Estilo Generado!');
end;

procedure TFEstiloCopia.UniDBGrid1SelectionChange(Sender: TObject);
begin
  armaCadenas;
end;

end.
