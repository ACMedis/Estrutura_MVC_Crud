unit uCidadeDaoImpl;

interface

uses
  Data.DB,
  uCidadeDao,
  uCrudDao,
  uCidadeEntity,
  uQuery;

type
  TCidadeDaoImpl = class(TInterfacedObject, iCidadeDao)
    private
      FQuery: iQuery;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iCidadeDao;

    function Delete(aValue: Integer): iCrudDao<iCidadeEntity>;
    function findAll: TDataSet;
    function findById(aID: Variant): iCidadeEntity;
    function Insert(aValue: iCidadeEntity): iCrudDao<iCidadeEntity>;
    function Update(aValue: iCidadeEntity): iCrudDao<iCidadeEntity>;
    function findCidadesByUF(aUF: String): TDataSet;

  end;

const
  SQL_SELECT_ALL_CIDADES = 'SELECT * FROM Cidades ';
  SQL_SELECT_BY_ID = 'SELECT * FROM Cidades WHERE ID = :ID';

implementation

uses
  uQueryFactoryImpl;

{ TCidadeDaoImpl }

constructor TCidadeDaoImpl.Create;
begin
  FQuery := TQueryFactoryImpl.New.GetQuery;
end;

function TCidadeDaoImpl.Delete(aValue: Integer): iCrudDao<iCidadeEntity>;
begin
  Result := iCidadeDao(Self);
end;

destructor TCidadeDaoImpl.Destroy;
begin

  inherited;
end;

function TCidadeDaoImpl.findAll: TDataSet;
begin
  Result := FQuery
              .SQLClear
              .SQL(SQL_SELECT_ALL_CIDADES)
              .Open
              .DataSet;
end;

function TCidadeDaoImpl.findById(aID: Variant): iCidadeEntity;
var
  vDataSet: TDataSet;
begin
  vDataSet := FQuery
                .SQLClear
                .SQL(SQL_SELECT_BY_ID)
                .AddParam('ID', aID)
                .Open
                .DataSet;

  Result := TCidadeEntity
              .New
              .Id(vDataSet.FieldByName('Id').AsInteger)
              .Nome(vDataSet.FieldByName('Nome').AsString)
              .Estado(vDataSet.FieldByName('Estado').AsString)
              .DDD(vDataSet.FieldByName('DDD').AsInteger);

end;

function TCidadeDaoImpl.findCidadesByUF(aUF: String): TDataSet;
begin

end;

function TCidadeDaoImpl.Insert(aValue: iCidadeEntity): iCrudDao<iCidadeEntity>;
begin
  Result := iCidadeDao(Self);
end;

class function TCidadeDaoImpl.New: iCidadeDao;
begin
  Result := Self.Create;
end;

function TCidadeDaoImpl.Update(aValue: iCidadeEntity): iCrudDao<iCidadeEntity>;
begin
  Result := iCidadeDao(Self);
end;

end.
