unit uCidadeServiceImpl;

interface

uses
  Data.DB,
  uCidadeService,
  uCidadeDao,
  uCidadeDTO;


type

  TCidadeServiceImpl = class(TInterfacedObject, iCidadeService)
    private
      FDao: iCidadeDao;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iCidadeService;

      function FindAll: TDataSet;
      function findById(aID: Variant): iCidadeDTO;
  end;


implementation

uses
  uDaoFactoryImpl;

{ TCidadeServiceImpl }

constructor TCidadeServiceImpl.Create;
begin
  FDao := TDaoFactoryImpl.New.GetCidadeDao;
end;

destructor TCidadeServiceImpl.Destroy;
begin

  inherited;
end;

function TCidadeServiceImpl.FindAll: TDataSet;
begin
  Result := FDao.findAll;
end;

function TCidadeServiceImpl.findById(aID: Variant): iCidadeDTO;
begin
  Result := FDao.findById(aID);
end;

class function TCidadeServiceImpl.New: iCidadeService;
begin
  Result := Self.Create;
end;

end.
