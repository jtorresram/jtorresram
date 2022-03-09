unit DlgModelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, uniGUIBaseClasses, uniMultiItem,
  uniListBox, uniDBListBox, uniButton, uniDBLookupListBox;

type
  TFDlgModelos = class(TUniForm)
    dsModEst: TDataSource;
    bAceptar: TUniButton;
    bCancelar: TUniButton;
    UniDBLookupListBox1: TUniDBLookupListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FDlgModelos: TFDlgModelos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FDlgModelos: TFDlgModelos;
begin
  Result := TFDlgModelos(UniMainModule.GetFormInstance(TFDlgModelos));
end;

end.
