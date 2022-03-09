unit MarcasConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniToolBar, uniPanel, uniButton,
  uniBasicGrid, uniDBGrid, Data.DB;

type
  TFMarcasConsulta = class(TUniForm)
    UniPanel1: TUniPanel;
    bNuevo: TUniButton;
    bModificar: TUniButton;
    bEliminar: TUniButton;
    g1: TUniDBGrid;
    procedure UniFormBeforeShow(Sender: TObject);
    procedure bNuevoClick(Sender: TObject);
    procedure bModificarClick(Sender: TObject);
    procedure bEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FMarcasConsulta: TFMarcasConsulta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, DM, MarcasCatalogo;

function FMarcasConsulta: TFMarcasConsulta;
begin
  Result := TFMarcasConsulta(UniMainModule.GetFormInstance(TFMarcasConsulta));
end;

procedure TFMarcasConsulta.bEliminarClick(Sender: TObject);
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

procedure TFMarcasConsulta.bModificarClick(Sender: TObject);
begin
  g1.DataSource.DataSet.Edit;
  fMarcasCatalogo.ShowModal();
end;

procedure TFMarcasConsulta.bNuevoClick(Sender: TObject);
begin
  g1.DataSource.DataSet.Append;
  fMarcasCatalogo.ShowModal();
end;

procedure TFMarcasConsulta.UniFormBeforeShow(Sender: TObject);
begin
  g1.DataSource.DataSet.Refresh;
end;

end.
