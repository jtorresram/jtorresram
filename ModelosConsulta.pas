unit ModelosConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniToolBar, uniPanel, uniButton,
  uniBasicGrid, uniDBGrid, Data.DB, uniMultiItem, uniComboBox, uniLabel, uniEdit;

type
  TFModelosConsulta = class(TUniForm)
    UniPanel1: TUniPanel;
    bNuevo: TUniButton;
    bModificar: TUniButton;
    bEliminar: TUniButton;
    g1: TUniDBGrid;
    UniLabel1: TUniLabel;
    edBuscar: TUniComboBox;
    UniLabel2: TUniLabel;
    edValor: TUniComboBox;
    bBuscar: TUniButton;
    bConsumos: TUniButton;
    bFracc: TUniButton;
    procedure UniFormBeforeShow(Sender: TObject);
    procedure bNuevoClick(Sender: TObject);
    procedure bModificarClick(Sender: TObject);
    procedure bEliminarClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure edBuscarCloseUp(Sender: TObject);
    procedure bConsumosClick(Sender: TObject);
    procedure bFraccClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FModelosConsulta: TFModelosConsulta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main,
  DM, ModeloCatalogo,
  ConsumosCatalogo,
  FracModCatalogo;

function FModelosConsulta: TFModelosConsulta;
begin
  Result := TFModelosConsulta(UniMainModule.GetFormInstance(TFModelosConsulta));
end;

procedure TFModelosConsulta.bBuscarClick(Sender: TObject);
begin
  fdm.SetEstilos_Filtro2(edBuscar.Text, edValor.Text);
end;

procedure TFModelosConsulta.bConsumosClick(Sender: TObject);
begin
  FConsumosCatalogo.ShowModal();
end;

procedure TFModelosConsulta.bEliminarClick(Sender: TObject);
begin
  MessageDlg('Se borrará el registro actual, continuar?', mtConfirmation, mbYesNo,
    procedure(Sender: TComponent; Res: Integer)
    begin
      if Res = mrYes then
      begin
        Try
          g1.DataSource.DataSet.Delete;
        except
          raise;
        End;
        fdm.FDConnection1.CommitRetaining;
      end;
    end
    );
end;

procedure TFModelosConsulta.bFraccClick(Sender: TObject);
begin
  FFracModCatalogo.ShowModal();
end;

procedure TFModelosConsulta.bModificarClick(Sender: TObject);
begin
  g1.DataSource.DataSet.Edit;
  fModeloCatalogo.ShowModal();
end;

procedure TFModelosConsulta.bNuevoClick(Sender: TObject);
begin
  g1.DataSource.DataSet.Append;
  fModeloCatalogo.ShowModal();
end;

procedure TFModelosConsulta.edBuscarCloseUp(Sender: TObject);
begin
  fdm.SetModelos_Filtro1(edBuscar.Text, edValor);
end;

procedure TFModelosConsulta.UniFormBeforeShow(Sender: TObject);
begin
  g1.DataSource.DataSet.Refresh;
end;

end.
