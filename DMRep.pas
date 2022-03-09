unit DMRep;

interface

uses
  SysUtils, Classes, ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo,
  ppCtrls, Vcl.Imaging.pngimage, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppPDFDevice, daDataView, daQueryDataView,
  daFireDAC, ppModule, daDataModule, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB;

type
  TFDMRep = class(TDataModule)
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppParameterList1: TppParameterList;
    db1: TFDConnection;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    daDataModule1: TdaDataModule;
    daFireDACQueryDataView1: TdaFireDACQueryDataView;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure DataModuleCreate(Sender: TObject);
  private
    pFolio: String;
    { Private declarations }
  public
    { Public declarations }
    function GenRep(FileRtm: string; const FolioNum: string): string;
  end;

implementation

uses
  MainModule, ServerModule, dm;

{$R *.dfm}


{ TFDMRep }

procedure TFDMRep.DataModuleCreate(Sender: TObject);
begin
  db1.Params := fdm.FDConnection1.Params;
  db1.Open;
end;

function TFDMRep.GenRep(FileRtm: string; const FolioNum: string): string;
var
 lPDFDevice:  TppPDFDevice;
begin
  // pFolio usar como parameter [0].
  pFolio := FolioNum;
  //OpenDS();
  lPDFDevice    := TppPDFDevice.Create(nil);
  try
    ppReport1.Template.FileName := dm.gRuta + 'Reportes\' + FileRtm + '.rtm';
    ppReport1.Template.LoadFromFile;
    ppReport1.ShowAutoSearchDialog := False;
    ppReport1.AutoSearchFields[0].SearchExpression:= '0';
    ppReport1.AutoSearchFields[1].SearchExpression:= '1';

    lPDFDevice.PDFSettings := ppReport1.PDFSettings;
    lPDFDevice.FileName    := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', Result, True);
    lPDFDevice.Publisher   := ppReport1.Publisher;

    // generate the report

    ppReport1.PrintToDevices;
  finally
    lPDFDevice.Free;
    //CloseDS;
  end;
end;

end.
