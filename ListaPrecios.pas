unit ListaPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniCheckBox, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, uniEdit, uniDBEdit, uniLabel, uniButton,
  uniMultiItem, uniComboBox, data.db, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFListaPrecios = class(TUniForm)
    g1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    edBuscar: TUniComboBox;
    UniLabel3: TUniLabel;
    edValor: TUniComboBox;
    bBuscar: TUniButton;
    bUpdate: TUniButton;
    bCancel: TUniButton;
    UniHiddenPanel1: TUniHiddenPanel;
    edCorridaFilter: TUniEdit;
    edColorFiltro: TUniEdit;
    qEstilos: TFDQuery;
    qEstilosESTILO: TStringField;
    qEstilosMODELO: TStringField;
    qEstilosCORRIDA: TSmallintField;
    qEstilosCORRIDA_DESCR: TStringField;
    qEstilosCOLOR: TSmallintField;
    qEstilosCOLOR_DESR: TStringField;
    qEstilosNOMBRE: TStringField;
    qEstilosCODPROV: TSmallintField;
    qEstilosES_SALDO: TBooleanField;
    qEstilosOBS: TStringField;
    qEstilosCOSTO: TSingleField;
    qEstilosMENUDEO: TSingleField;
    qEstilosMEDIO_MAYOREO: TSingleField;
    qEstilosMAYOREO: TSingleField;
    qEstilosFORANEA: TSingleField;
    qEstilosIMAGEN: TBlobField;
    qEstilosEXISTENCIA: TSmallintField;
    qEstilosACTIVO: TBooleanField;
    qEstilosFECCAMBIOPRE: TDateField;
    qEstilosFECCAMBIO: TDateField;
    qEstilosLINEA: TSmallintField;
    qEstilosMARCA: TSmallintField;
    qEstilosGENERO: TStringField;
    qEstilosCLASIFI: TSmallintField;
    dsEstilos: TDataSource;
    procedure edBuscarCloseUp(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure g1ColumnFilter(Sender: TUniDBGrid; const Column: TUniDBGridColumn;
      const Value: Variant);
    procedure g1ClearFilters(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FListaPrecios: TFListaPrecios;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, dm;

function FListaPrecios: TFListaPrecios;
begin
  Result := TFListaPrecios(UniMainModule.GetFormInstance(TFListaPrecios));
end;

procedure TFListaPrecios.bBuscarClick(Sender: TObject);
begin
//  fdm.SetEstilos_Filtro2(edBuscar.Text, edValor.Text);
  self.qEstilos.close;
  if edValor.Text <> '' then
  begin
//    if edBuscar.Text = 'Modelo' then
//      locFiltro := 'Modelo=' + QuotedStr(trim(Valor))
//    else if edBuscar.Text = 'Corrida' then
//      locFiltro := 'Corrida=' + Copy(Valor, 1, Pos('-', Valor) - 1)
//    else if edBuscar.Text = 'Color' then
//      locFiltro := 'Color=' + Copy(Valor, 1, Pos('-', Valor) - 1);

    self.qestilos.ParamByName('modelo').Value := '%' + trim(edValor.Text) + '%';
 //   fdm.qestilos.ParamByName('corrida_descr').AsString := '%%';
 //   fdm.qestilos.ParamByName('color_desr').AsString := '%%';

    //fdm.qestilos.sql.SaveToFile('C:\Temp\queryEstilos.txt');
  end;
  self.qEstilos.Open;
end;

procedure TFListaPrecios.bCancelClick(Sender: TObject);
begin
  Try
    if self.qEstilos.State in [dsEdit] then
    self.qEstilos.Cancel;
  Except
    raise;
  End;
  Try
    fdm.FDConnection1.RollbackRetaining;
  except
    raise;
  End;
end;

procedure TFListaPrecios.bUpdateClick(Sender: TObject);
begin
  Try
    if self.qEstilos.State in [dsEdit] then
      self.qEstilos.Post;
  Except
    raise;
  End;
  Try
    fdm.FDConnection1.CommitRetaining;
  except
    raise;
  End;
//  bbuscar.Click;
 // actualizar historico de precios.
  fdm.Query1.Close;
  fdm.Query1.sql.Text := 'Select * from Estilos where cast(fecCambio as date)=' +
    quotedstr(FormatDateTime('yyyy/mm/dd',Date));
  fdm.Query1.Open;
  while not fdm.Query1.Eof do
  begin
    fdm.qHistListaPre.Append;
    fdm.qHistListaPreEstilo.Value := fdm.Query1.FieldByName('Estilo').Value;
    fdm.qHistListaPreFECHA.AsDateTime := Now;
    fdm.qHistListaPreUSUARIO.Value := gUsuarioRecord.codigo;
    fdm.qHistListaPreCOSTO.Value := fdm.Query1.FieldByName('Costo').Value;
    fdm.qHistListaPreMENUDEO.Value := fdm.Query1.FieldByName('Menudeo').Value;
    fdm.qHistListaPreMEDIO_MAYOREO.Value := fdm.Query1.FieldByName('Medio_Mayoreo').Value;
    fdm.qHistListaPreMAYOREO.Value := fdm.Query1.FieldByName('Mayoreo').Value;
    fdm.qHistListaPreFORANEA.Value := fdm.Query1.FieldByName('Foranea').Value;
    fdm.qHistListaPre.Post;
    fdm.Query1.Next;
  end;
  Try
    fdm.FDConnection1.CommitRetaining;
  except
    raise;
  End;
end;

procedure TFListaPrecios.edBuscarCloseUp(Sender: TObject);
begin
  fdm.SetModelos_Filtro1(edBuscar.Text, edValor);
end;

procedure TFListaPrecios.g1ClearFilters(Sender: TObject);
var
  i: integer;
begin
   if self.qEstilos.Active then
   begin
     for I := 0 to self.qestilos.ParamCount - 1 do
     begin
       self.qestilos.Params[i].Value := '%%';
       self.qestilos.Refresh;
     end;
   end;
end;

procedure TFListaPrecios.g1ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
  if self.qEstilos.Active then
  begin
    self.qestilos.ParamByName(column.FieldName).Value := '%' + Value + '%';
    self.qestilos.Refresh;
  end;

end;

procedure TFListaPrecios.UniFormBeforeShow(Sender: TObject);
begin
  // solo lectura cuando se lea del pv
  g1.ReadOnly := self.Tag = 1;
end;

end.

