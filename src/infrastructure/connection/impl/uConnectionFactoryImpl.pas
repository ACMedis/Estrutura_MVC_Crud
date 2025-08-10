unit uConnectionFactoryImpl;

interface

uses
  uConnectionFactory,
  uConnection;

type
  TConnectionFactoryImpl = class(TInterfacedObject, iConnectionFactory)
    private
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iConnectionFactory;

      function GetConnection: iConnection;
  end;

implementation

uses
  uConnectionFiredacImpl;

{ TConnectionFactoryImpl }

constructor TConnectionFactoryImpl.Create;
begin

end;

destructor TConnectionFactoryImpl.Destroy;
begin

  inherited;
end;

function TConnectionFactoryImpl.GetConnection: iConnection;
begin
  Result := TConnectionFiredacImpl.New;
end;

class function TConnectionFactoryImpl.New: iConnectionFactory;
begin
  Result := Self.Create;
end;

end.
