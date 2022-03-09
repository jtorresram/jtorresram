unit LineasCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniEdit, uniDBEdit,
  uniLabel;

type
  TFLineasCatalogo = class(TUniForm)
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

function FLineasCatalogo: TFLineasCatalogo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FLineasCatalogo: TFLineasCatalogo;
begin
  Result := TFLineasCatalogo(UniMainModule.GetFormInstance(TFLineasCatalogo));
end;

procedure TFLineasCatalogo.bAceptarClick(Sender: TObject);
begin
  Try
    fdm.qLineas.Post;
  except
    raise;
  End;
  fdm.FDConnection1.CommitRetaining;
  ModalResult := mrOk;
end;

procedure TFLineasCatalogo.bCancelarClick(Sender: TObject);
begin
  Try
    fdm.qLineas.Cancel;
  except
    raise;
  End;
  fdm.FDConnection1.RollbackRetaining;
  ModalResult := mrCancel;
end;

end.
