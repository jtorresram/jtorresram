unit GruposCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniEdit, uniDBEdit,
  uniLabel, uniMultiItem, uniComboBox, uniDBComboBox, uniSpinEdit,
  uniDateTimePicker, uniDBDateTimePicker;

type
  TFGruposCatalogo = class(TUniForm)
    bAceptar: TUniButton;
    bCancelar: TUniButton;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    procedure bAceptarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FGruposCatalogo: TFGruposCatalogo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FGruposCatalogo: TFGruposCatalogo;
begin
  Result := TFGruposCatalogo(UniMainModule.GetFormInstance(TFGruposCatalogo));
end;

procedure TFGruposCatalogo.bAceptarClick(Sender: TObject);
begin
  if Length(fdm.qGrupCLAVE.Value) < 3 then
    raise Exception.Create('El largo de la clave de ser de 3');
  Try
    fdm.qGrup.Post;
  except
    raise;
  End;
  fdm.FDConnection1.CommitRetaining;
  ModalResult := mrOk;
end;

procedure TFGruposCatalogo.bCancelarClick(Sender: TObject);
begin
  Try
    fdm.qGrup.Cancel;
  except
    raise;
  End;
  fdm.FDConnection1.CommitRetaining;
  ModalResult := mrCancel;
end;

procedure TFGruposCatalogo.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  bCancelar.Click;
end;

end.
