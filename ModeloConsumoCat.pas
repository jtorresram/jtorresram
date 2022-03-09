unit ModeloConsumoCat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm;

type
  TFModeloConsumoCat = class(TUniForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FModeloConsumoCat: TFModeloConsumoCat;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FModeloConsumoCat: TFModeloConsumoCat;
begin
  Result := TFModeloConsumoCat(UniMainModule.GetFormInstance(TFModeloConsumoCat));
end;

end.
