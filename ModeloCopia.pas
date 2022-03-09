unit ModeloCopia;

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
  TFModeloCopia = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel3: TUniPanel;
    UniDBImage1: TUniDBImage;
    UniPanel4: TUniPanel;
    UniLabel1: TUniLabel;
    edModelo: TUniEdit;
    UniLabel2: TUniLabel;
    edCorrida: TUniDBLookupComboBox;
    UniButton1: TUniButton;
    mModelo: TFDMemTable;
    mModeloMODELO: TStringField;
    mModeloNOMBRE: TStringField;
    mModeloUNIDAD: TStringField;
    mModeloRECIO: TStringField;
    mModeloCORRIDA: TSmallintField;
    mModeloLINEA: TSmallintField;
    mModeloMARCA: TSmallintField;
    mModeloGENERO: TStringField;
    mModeloACTIVO: TBooleanField;
    mModeloFLUJO: TSmallintField;
    mModeloIMAGEN: TBlobField;
    mModeloCLASIFI: TSmallintField;
    mModeloHORMA: TSmallintField;
    mModeloCOSTO: TSingleField;
    mModeloPRECIO: TSingleField;
    mModeloCAPTURA: TStringField;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    ckConsumos: TUniCheckBox;
    ckFracciones: TUniCheckBox;
    mFracciones: TFDMemTable;
    mConsumos: TFDMemTable;
    mFraccionesMODELO: TStringField;
    mFraccionesDEPTO: TSmallintField;
    mFraccionesFRACCION: TSmallintField;
    mFraccionesORDEN: TSmallintField;
    mFraccionesTIEMPO: TSingleField;
    mFraccionesCOSTO: TSingleField;
    mConsumosMODELO: TStringField;
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
    UniPanel5: TUniPanel;
    UniLabel4: TUniLabel;
    edBuscar: TUniComboBox;
    UniLabel5: TUniLabel;
    edValor: TUniComboBox;
    bBuscar: TUniButton;
    procedure UniDBGrid1SelectionChange(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure edCorridaCloseUp(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FModeloCopia: TFModeloCopia;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FModeloCopia: TFModeloCopia;
begin
  Result := TFModeloCopia(UniMainModule.GetFormInstance(TFModeloCopia));
end;

procedure TFModeloCopia.bBuscarClick(Sender: TObject);
begin
  fdm.SetEstilos_Filtro2(edBuscar.Text, edValor.Text);
end;

procedure TFModeloCopia.edCorridaCloseUp(Sender: TObject);
begin
  // actualizo el nombre del modelo
  edModelo.Text := FDM.qModelosCAPTURA.Value +
    Format('%.*d',[5, fdm.qCorridasCODIGO.Value]);
end;

procedure TFModeloCopia.UniButton1Click(Sender: TObject);
var
  xModelo: String;
begin
  // 1. Validar modelo que no exista
  fdm.Query1.Open('Select Modelo from Modelos where Modelo=' +
    QuotedStr(edModelo.Text));
  if not fdm.Query1.IsEmpty then
  begin
    raise Exception.Create('El modelo ya existe!');
  end;
  // 2. Copiar el modelo en la misma tabla modelo
  xModelo := fdm.qModelosMODELO.Value;
  mModelo.Open;
  mModelo.Append;
  mModelo.CopyRecord(fdm.qModelos);
  //mModelo.Edit;
  Self.mModeloMODELO.Value := edModelo.Text;
  self.mModeloCORRIDA.Value := fdm.qCorridasCODIGO.Value;
  self.mModeloHORMA.Value := fdm.qHormasCODIGO.Value;
  mModelo.Post;
  fdm.qModelos.Append;
  fdm.qModelos.CopyRecord(self.mModelo);
  fdm.qModelos.Post;
  // regreso al modelo origen para copiar consumos y fracciones
  fdm.qModelos.Locate('Modelo', xModelo, []);
  if ckConsumos.Checked then
  begin
    mConsumos.Open;
    while not fdm.qConsumos.Eof do
    begin
      mConsumos.Append;
      mConsumos.CopyRecord(fdm.qConsumos);
      self.mConsumosMODELO.Value := edModelo.Text;
      mConsumos.Post;
      fdm.qConsumos.Append;
      fdm.qConsumos.CopyRecord(mConsumos);
      fdm.qConsumos.Post;
      fdm.qConsumos.Next;
    end;
  end;
  if ckFracciones.Checked then
  begin
    mFracciones.Open;
    fdm.qFracMod.First;
    while not fdm.qFracMod.Eof do
    begin
      mFracciones.Append;
      mFracciones.CopyRecord(fdm.qFracMod);
      self.mFraccionesMODELO.Value := edModelo.Text;
      mFracciones.Post;
      fdm.qFracMod.Append;
      fdm.qFracMod.CopyRecord(mFracciones);
      fdm.qFracMod.Post;
      fdm.qFracMod.Next;
    end;
  end;
  if fdm.FDConnection1.InTransaction then
    fdm.FDConnection1.CommitRetaining;
  mModelo.Close;
  mConsumos.Close;
  mFracciones.Close;
  ShowMessage('Nuevo Modelo Generado!');
end;

procedure TFModeloCopia.UniDBGrid1SelectionChange(Sender: TObject);
begin
  edModelo.Text := FDM.qModelosCAPTURA.Value;
end;

end.
