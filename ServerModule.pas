unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, System.IniFiles;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, dm, Vcl.Forms;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
var
  arcini: Tinifile;
begin
  gRuta := ExtractFilePath(Application.ExeName);
  Arcini:= TIniFile.Create(gRuta + '\Params.ini');
  gServer := Arcini.ReadString('DataBase', 'Server', 'localhost');
  gRutaDB := Arcini.ReadString('DataBase', 'Ruta', 'C:\') + 'CAZ.fdb';
  Arcini.Free;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
