unit ExplosionConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniSpinEdit, uniLabel, uniGUIBaseClasses, uniPanel,
  uniButton, uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFExplosionConsulta = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    edprogini: TUniSpinEdit;
    edprogfin: TUniSpinEdit;
    bBuscar: TUniButton;
    g1: TUniDBGrid;
    dsExp: TDataSource;
    procedure edproginiChangeValue(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FExplosionConsulta: TFExplosionConsulta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication,
  dmCons;

function FExplosionConsulta: TFExplosionConsulta;
begin
  Result := TFExplosionConsulta(UniMainModule.GetFormInstance(TFExplosionConsulta));
end;

procedure TFExplosionConsulta.bBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  case self.Tag of
    1: self.dsExp.DataSet := fdmCons.qExpEstilo;
    2: self.dsExp.DataSet := fdmCons.qExpIns;
  end;
  self.dsExp.DataSet.Close;
  (self.dsExp.DataSet as TFDQuery).Params.ParamByName('pFolini').AsInteger := edprogini.Value;
  (self.dsExp.DataSet as TFDQuery).Params.ParamByName('pFolfin').AsInteger := edprogfin.Value;
  self.dsExp.DataSet.Open;
  g1.Columns.Clear;
  for I := 0 to self.dsExp.DataSet.FieldCount -1 do
  begin
    g1.Columns.Add;
    g1.Columns.Add.FieldName := self.dsExp.DataSet.Fields.Fields[i].FieldName;
  end;


end;

procedure TFExplosionConsulta.edproginiChangeValue(Sender: TObject);
begin
  edprogfin.Value := edprogini.Value;
end;

end.
