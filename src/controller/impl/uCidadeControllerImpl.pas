unit uCidadeControllerImpl;

interface

uses
  Data.DB,
  Datasnap.DBClient,
  uCidadeController,
  uCidadeService,
  uCidadeEntity;


type

  TCidadeControllerImpl = class(TInterfacedObject, iCidadeController)
    private
      FDataSet: TClientDataSet;
      FCidadeService : iCidadeService;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iCidadeController;

      function FindAll: iCidadeController;
      function DataSet: TDataSet;
      function findById(aID: Variant): iCidadeEntity;
  end;


implementation

uses
  uServiceFactoryImpl, System.SysUtils;

{ TCidadeControllerImpl }

constructor TCidadeControllerImpl.Create;
begin
  FCidadeService := TServiceFactoryImpl.New.GetCidadeService ;

  FDataSet := TClientDataSet.Create(nil);
  FDataSet.FieldDefs.Add('ID', ftInteger);
  FDataSet.FieldDefs.Add('Nome', ftString, 200, False);
  FDataSet.FieldDefs.Add('DDD', ftInteger, 0, False);
  FDataSet.FieldDefs.Add('Estado', ftString, 200, False);
  FDataSet.CreateDataSet;
end;

function TCidadeControllerImpl.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

destructor TCidadeControllerImpl.Destroy;
begin
  FDataSet.DisposeOf;
  inherited;
end;

function TCidadeControllerImpl.FindAll: iCidadeController;
var
  vDataSet: TDataSet;
begin
  Result := Self;
  vDataSet := FCidadeService.FindAll;
  vDataSet.First;
  while not vDataSet.Eof do
  begin
    FDataSet.Append;
    FDataSet.FieldByName('Id').AsString := vDataSet.FieldByName('Id').AsString;
    FDataSet.FieldByName('Nome').AsString := vDataSet.FieldByName('Nome').AsString;
    FDataSet.FieldByName('Estado').AsString := vDataSet.FieldByName('Estado').AsString;
    FDataSet.FieldByName('DDD').AsString := vDataSet.FieldByName('DDD').AsString;

    vDataSet.Next;
  end;


end;

function TCidadeControllerImpl.findById(aID: Variant): iCidadeEntity;
begin
  Result := FCidadeService.findById(aID);
end;

class function TCidadeControllerImpl.New: iCidadeController;
begin
  Result := Self.Create;
end;


end.
