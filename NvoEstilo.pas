unit NvoEstilo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel;

type
  TFNvoEstilo = class(TUniForm)
    UniPanel1: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FNvoEstilo: TFNvoEstilo;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FNvoEstilo: TFNvoEstilo;
begin
  Result := TFNvoEstilo(UniMainModule.GetFormInstance(TFNvoEstilo));
end;

end.
