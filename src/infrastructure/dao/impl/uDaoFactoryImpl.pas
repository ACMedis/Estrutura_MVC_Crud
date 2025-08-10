unit uDaoFactoryImpl;

interface

uses
  uDaoFactory,
  uCidadeDao;


type

  TDaoFactoryImpl = class(TInterfacedObject, iDaoFactory)
    private

    public
      constructor Create;
      destructor Destroy;override;
      class function New: iDaoFactory;
      function GetCidadeDao: iCidadeDao;
  end;


implementation

uses
  uCidadeDaoImpl;

{ TDaoFactoryImpl }

constructor TDaoFactoryImpl.Create;
begin

end;

destructor TDaoFactoryImpl.Destroy;
begin

  inherited;
end;

function TDaoFactoryImpl.GetCidadeDao: iCidadeDao;
begin
  Result := TCidadeDaoImpl.New;
end;

class function TDaoFactoryImpl.New: iDaoFactory;
begin
  Result := Self.Create;
end;

end.
