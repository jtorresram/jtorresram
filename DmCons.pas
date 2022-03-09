unit DmCons;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFDMCons = class(TDataModule)
    qExpEstilo: TFDQuery;
    qExpIns: TFDQuery;
    qExpInsCANTIDAD: TLargeintField;
    qExpInsINSUMO: TStringField;
    qExpInsINSUMO_NOMBRE: TStringField;
    qExpInsCONSUMO: TSingleField;
    qExpInsCONSUMO_TOTAL: TFloatField;
    qExpInsUNI_SAL: TStringField;
    qExpEstiloESTILO: TStringField;
    qExpEstiloCANTIDAD: TLargeintField;
    qExpEstiloINSUMO: TStringField;
    qExpEstiloINSUMO_NOMBRE: TStringField;
    qExpEstiloCONSUMO: TSingleField;
    qExpEstiloCONSUMO_TOTAL: TFloatField;
    qExpEstiloUNI_SAL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FDMCons: TFDMCons;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule,
  dm;

function FDMCons: TFDMCons;
begin
  Result := TFDMCons(UniMainModule.GetModuleInstance(TFDMCons));
end;

initialization
  RegisterModuleClass(TFDMCons);

end.
