unit uQueryFactoryImpl;

interface

uses
  uQueryFactory, uQuery;

type
  TQueryFactoryImpl = class(TInterfacedObject, iQueryFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iQueryFactory;
      function GetQuery: iQuery;
  end;

implementation

uses
  uQueryFiredacImpl;

{ TQueryFactoryImpl }

constructor TQueryFactoryImpl.Create;
begin

end;

destructor TQueryFactoryImpl.Destroy;
begin

  inherited;
end;

function TQueryFactoryImpl.GetQuery: iQuery;
begin
  Result := TQueryFiredacImpl.New;
end;

class function TQueryFactoryImpl.New: iQueryFactory;
begin
  Result := Self.Create;
end;

end.
