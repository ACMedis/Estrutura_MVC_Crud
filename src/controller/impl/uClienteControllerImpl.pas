unit uClienteControllerImpl;

interface

uses
  uClienteController,
  uClienteDTO,
  uClienteService,
  Datasnap.DBClient,
  Data.DB;


type

  TClienteControllerImpl = class(TInterfacedObject, iClienteController)
    private
      FClienteService: iClienteService;
      FDataSet : TClientDataSet;

    public
      constructor Create;
      destructor Destroy;override;
      class function New: iClienteController;

      function SalvarCliente(aCliente: iClienteDto): iClienteController;
      function FindAll(aDataSource: TDataSource): iClienteController;
  end;


implementation

uses
  uServiceFactoryImpl;

{ TClienteControllerImpl }

constructor TClienteControllerImpl.Create;
begin
  FClienteService := TServiceFactoryImpl.New.GetClienteService;

  FDataSet := TClientDataSet.Create(nil);
  FDataSet.FieldDefs.Add('ID', ftInteger);
  FDataSet.FieldDefs.Add('Nome', ftString, 200, False);
  FDataSet.FieldDefs.Add('Documento', ftString, 30, False);
  FDataSet.FieldDefs.Add('Cidade', ftString, 200, False);
  FDataSet.CreateDataSet;

end;

destructor TClienteControllerImpl.Destroy;
begin
  FDataSet.Free;
  inherited;
end;

function TClienteControllerImpl.FindAll(aDataSource: TDataSource): iClienteController;
var
  vDataSet: TDataSet;
begin
  Result := Self;
  FDataSet.EmptyDataSet;
  aDataSource.DataSet := FDataSet;
  vDataSet := FClienteService.FindAll;
  vDataSet.First;
  while not vDataSet.Eof do
  begin
    FDataSet.Append;
    FDataSet.FieldByName('Id').AsString := vDataSet.FieldByName('Id').AsString;
    FDataSet.FieldByName('Nome').AsString := vDataSet.FieldByName('Nome').AsString;
    FDataSet.FieldByName('Documento').AsString := vDataSet.FieldByName('Documento').AsString;
    FDataSet.FieldByName('Cidade').AsString := vDataSet.FieldByName('CidadeNome').AsString;

    vDataSet.Next;
  end;
end;

class function TClienteControllerImpl.New: iClienteController;
begin
  Result := Self.Create;
end;

function TClienteControllerImpl.SalvarCliente(aCliente: iClienteDto): iClienteController;
begin
  Result := Self;
  try
    FClienteService.SalvarCliente(aCliente);
  except

  end;

end;

end.
