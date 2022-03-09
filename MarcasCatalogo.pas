unit MarcasCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniEdit, uniDBEdit,
  uniLabel;

type
  TFMarcasCatalogo = class(TUniForm)
    bAceptar: TUniButton;
    bCancelar: TUniButton;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    procedure bAceptarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FMarcasCatalogo: TFMarcasCatalogo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FMarcasCatalogo: TFMarcasCatalogo;
begin
  Result := TFMarcasCatalogo(UniMainModule.GetFormInstance(TFMarcasCatalogo));
end;

procedure TFMarcasCatalogo.bAceptarClick(Sender: TObject);
begin
  Try
    fdm.qMarcas.Post;
  except
    raise;
  End;
  fdm.FDConnection1.CommitRetaining;
  ModalResult := mrOk;
end;

procedure TFMarcasCatalogo.bCancelarClick(Sender: TObject);
begin
  Try
    fdm.qMarcas.Cancel;
  except
    raise;
  End;
  fdm.FDConnection1.RollbackRetaining;
  ModalResult := mrCancel;
end;

end.
