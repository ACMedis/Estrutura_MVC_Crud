unit uControllerFactoryImpl;

interface

uses
  uControllerFactory,
  uCidadeController,
  uClienteController;


type

  TControllerFactoryImpl = class(TInterfacedObject, iControllerFactory)
    private

    public
      constructor Create;
      destructor Destroy;override;
      class function New: iControllerFactory;
      function GetCidadeController: iCidadeController;
      function GetClienteController: iClienteController;
  end;


implementation

uses
  uCidadeControllerImpl,
  uClienteControllerImpl;

{ TControllerFactoryImpl }

constructor TControllerFactoryImpl.Create;
begin

end;

destructor TControllerFactoryImpl.Destroy;
begin

  inherited;
end;

function TControllerFactoryImpl.GetCidadeController: iCidadeController;
begin
  Result := TCidadeControllerImpl.New;
end;

function TControllerFactoryImpl.GetClienteController: iClienteController;
begin
  Result := TClienteControllerImpl.New;
end;

class function TControllerFactoryImpl.New: iControllerFactory;
begin
  Result := Self.Create;
end;

end.
