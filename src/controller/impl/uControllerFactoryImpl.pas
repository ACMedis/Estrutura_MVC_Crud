unit uControllerFactoryImpl;

interface

uses
  uControllerFactory,
  uCidadeController;


type

  TControllerFactoryImpl = class(TInterfacedObject, iControllerFactory)
    private

    public
      constructor Create;
      destructor Destroy;override;
      class function New: iControllerFactory;
      function GetCidadeController: iCidadeController;
  end;


implementation

uses
  uCidadeControllerImpl;

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

class function TControllerFactoryImpl.New: iControllerFactory;
begin
  Result := Self.Create;
end;

end.
