unit Reporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame,
  ServerModule, uniButton;

type
  TFReporte = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Folio: string;
    { Public declarations }
  end;

function FReporte: TFReporte;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DM;

function FReporte: TFReporte;
begin
  Result := TFReporte(UniMainModule.GetFormInstance(TFReporte));
end;



procedure TFReporte.UniButton1Click(Sender: TObject);
begin
  close;
end;

end.
