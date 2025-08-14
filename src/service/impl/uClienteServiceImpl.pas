unit uClienteServiceImpl;

interface

uses
  uClienteService,
  uClienteDTO,
  uClienteDAO,
  Data.DB;


type

  TClienteServiceImpl = class(TInterfacedObject, iClienteService)
    private
      FClienteDao: iClienteDao;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iClienteService;

      function SalvarCliente(aCliente: iClienteDTO): iClienteService;
      function FindAll: TDataSet;
  end;


implementation

uses
  uDaoFactoryImpl;

{ TClienteServiceImpl }

constructor TClienteServiceImpl.Create;
begin
  FClienteDao := TDaoFactoryImpl.New.GetClienteDao;
end;

destructor TClienteServiceImpl.Destroy;
begin

  inherited;
end;

function TClienteServiceImpl.FindAll: TDataSet;
begin
  Result := FClienteDao.findAll;
end;

class function TClienteServiceImpl.New: iClienteService;
begin
  Result := Self.Create;
end;

function TClienteServiceImpl.SalvarCliente(aCliente: iClienteDTO): iClienteService;
begin

  try
    FClienteDao.Insert(aCliente);
  except
    raise;// TODO: adicionar tratamento para salvar log...
  end;

end;

end.
