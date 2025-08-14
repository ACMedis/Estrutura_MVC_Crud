unit uServiceFactoryImpl;

interface

uses
  uServiceFactory,
  uCidadeService,
  uClienteService;


type

  TServiceFactoryImpl = class(TInterfacedObject, iServiceFactory)
    private

    public
      constructor Create;
      destructor Destroy;override;
      class function New: iServiceFactory;

      function GetCidadeService: iCidadeService;
      function GetClienteService: iClienteService;
  end;


implementation

uses
  uCidadeServiceImpl,
  uClienteServiceImpl;

{ TServiceFactoryImpl }

constructor TServiceFactoryImpl.Create;
begin

end;

destructor TServiceFactoryImpl.Destroy;
begin

  inherited;
end;

function TServiceFactoryImpl.GetCidadeService: iCidadeService;
begin
  Result := TCidadeServiceImpl.New;
end;

function TServiceFactoryImpl.GetClienteService: iClienteService;
begin
  Result := TClienteServiceImpl.New;
end;

class function TServiceFactoryImpl.New: iServiceFactory;
begin
  Result := Self.Create;
end;

end.
