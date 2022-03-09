unit ModeloCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniEdit, uniDBEdit,
  uniLabel, Data.DB, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniListBox, uniDBListBox, uniDBLookupListBox,
  uniCheckBox, uniDBCheckBox, uniImage, uniDBImage, uniFileUpload, uniPanel,
  uniBitBtn;

type
  TFModeloCatalogo = class(TUniForm)
    bAceptar: TUniButton;
    bCancelar: TUniButton;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniLabel9: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniDBNumberEdit1: TUniDBNumberEdit;
    UniLabel13: TUniLabel;
    UniButton4: TUniButton;
    UniPanel1: TUniPanel;
    UniDBImage1: TUniDBImage;
    UniLabel14: TUniLabel;
    UniDBNumberEdit2: TUniDBNumberEdit;
    bCatCorrida: TUniBitBtn;
    bCatLinea: TUniBitBtn;
    bCatClasifi: TUniBitBtn;
    bCatMarca: TUniBitBtn;
    UniFileUpload1: TUniFileUpload;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel12: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    procedure bAceptarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniButton4Click(Sender: TObject);
    procedure bCatCorridaClick(Sender: TObject);
    procedure bCatColorClick(Sender: TObject);
    procedure bCatLineaClick(Sender: TObject);
    procedure bCatClasifiClick(Sender: TObject);
    procedure bCatMarcaClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBLookupComboBox2CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FModeloCatalogo: TFModeloCatalogo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication,
  dm,
  CorridasCatalogo,
  ColoresCatalogo,
  LineasCatalogo,
  ClasifiCatalogo,
  MarcasCatalogo;

function FModeloCatalogo: TFModeloCatalogo;
begin
  Result := TFModeloCatalogo(UniMainModule.GetFormInstance(TFModeloCatalogo));
end;

procedure TFModeloCatalogo.bAceptarClick(Sender: TObject);
begin
  if FDM.qModelos.State in dsEditModes then
    try
      fdm.qModelos.Post;
    except
      raise;
    end;
  if fdm.FDConnection1.InTransaction then
    fdm.FDConnection1.CommitRetaining;
  ModalResult := mrOk;
end;

procedure TFModeloCatalogo.bCancelarClick(Sender: TObject);
begin
  if FDM.qModelos.State in dsEditModes then
    try
      fdm.qModelos.Cancel;
    except
      raise;
    end;
  if fdm.FDConnection1.InTransaction then
    fdm.FDConnection1.RollbackRetaining;
  ModalResult := mrCancel;
end;

procedure TFModeloCatalogo.bCatCorridaClick(Sender: TObject);
begin
  fdm.qCorridas.Append;
  FCorridasCatalogo.ShowModal();
end;

procedure TFModeloCatalogo.bCatLineaClick(Sender: TObject);
begin
  fdm.qLineas.Append;
  FLineasCatalogo.ShowModal();
end;

procedure TFModeloCatalogo.bCatMarcaClick(Sender: TObject);
begin
  fdm.qMarcas.Append;
  FMarcasCatalogo.ShowModal();
end;

procedure TFModeloCatalogo.bCatClasifiClick(Sender: TObject);
begin
  fdm.qClasifi.Append;
  FClasifiCatalogo.ShowModal();
end;

procedure TFModeloCatalogo.bCatColorClick(Sender: TObject);
begin
  FDM.qColores.Append;
  FColoresCatalogo.Show();
end;

procedure TFModeloCatalogo.UniButton4Click(Sender: TObject);
begin
  self.UniFileUpload1.Execute;
end;

procedure TFModeloCatalogo.UniDBLookupComboBox2CloseUp(Sender: TObject);
begin
  // agrego la corrida al modelo de 6 chars
  fdm.qModelosMODELO.Value := fdm.qmodeloscaptura.Value +
    Format('%.*d',[5, fdm.qModelosCORRIDA.Value]);
end;

procedure TFModeloCatalogo.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  UnidbImage1.Picture.LoadFromFile(AStream.FileName);
  fdm.qModelosIMAGEN.LoadFromStream(AStream);
end;

procedure TFModeloCatalogo.UniFormCreate(Sender: TObject);
begin
  self.UniFileUpload1.Messages:= fdm.UniFileUpload1.Messages;
end;

end.
