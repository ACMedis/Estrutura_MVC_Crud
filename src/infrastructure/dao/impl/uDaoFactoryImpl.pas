unit uDaoFactoryImpl;

interface

uses
  uDaoFactory,
  uCidadeDao, uClienteDAO;


type

  TDaoFactoryImpl = class(TInterfacedObject, iDaoFactory)
    private

    public
      constructor Create;
      destructor Destroy;override;
      class function New: iDaoFactory;
      function GetCidadeDao: iCidadeDao;
      function GetClienteDao: iClienteDao;
  end;


implementation

uses
  uCidadeDaoImpl,
  uClienteDAOImpl;

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

function TDaoFactoryImpl.GetClienteDao: iClienteDao;
begin
  Result := TClienteDaoImpl.New;
end;

class function TDaoFactoryImpl.New: iDaoFactory;
begin
  Result := Self.Create;
end;

end.
