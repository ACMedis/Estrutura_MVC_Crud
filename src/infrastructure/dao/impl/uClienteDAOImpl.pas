unit uClienteDAOImpl;

interface

uses
  Data.DB,
  uClienteDAO,
  uCrudDao,
  uClienteDTO,
  uQuery;


type

  TClienteDAOImpl = class(TInterfacedObject, iClienteDAO)
    private
      FQuery: iQuery;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iClienteDAO;

      function Delete(aValue: Integer): iCrudDao<iClienteDTO>;
      function findAll: TDataSet;
      function FindByDocumento(aValue: String): iClienteDTO;
      function findById(aID: Variant): iClienteDTO;
      function GetProximoId: Integer;
      function Insert(aValue: iClienteDTO): iCrudDao<iClienteDTO>;
      function Update(aValue: iClienteDTO): iCrudDao<iClienteDTO>;
  end;
const
  SQL_INSERT_CLIENTE = 'INSERT INTO clientes(Id, Nome, Documento, TipoPessoa, Id_Cidade) ' +
                       'VALUES(:ID, :NOME, :DOCUMENTO, :TIPOPESSOA, :IDCIDADE)';
  SQL_SELECT_PROXIMO_ID = 'SELECT coalesce(MAX(Id), 0) + 1 as Id FROM clientes';
  SQL_SELECT_FIND_ALL = 'SELECT c.Id, c.Nome, c.Documento, c.tipoPessoa, ci.nome as cidadeNome ' +
                        'FROM clientes c ' +
                        'INNER JOIN cidades ci on ci.id = c.id_cidade';

implementation

uses
  uQueryFactoryImpl, System.Classes, uEnums;

{ TClienteDAOImpl }

constructor TClienteDAOImpl.Create;
begin
  FQuery := TQueryFactoryImpl.New.GetQuery;
end;

function TClienteDAOImpl.Delete(aValue: Integer): iCrudDao<iClienteDTO>;
begin
  Result := iClienteDAO(Self);
end;

destructor TClienteDAOImpl.Destroy;
begin

  inherited;
end;

function TClienteDAOImpl.FindAll: TDataSet;
begin
  Result := FQuery
              .SQLClear
              .SQL(SQL_SELECT_FIND_ALL)
              .Open
              .DataSet;
end;

function TClienteDAOImpl.FindByDocumento(aValue: String): iClienteDTO;
begin

end;

function TClienteDAOImpl.FindById(aID: Variant): iClienteDTO;
begin

end;

function TClienteDAOImpl.GetProximoId: Integer;
begin
  Result := FQuery
            .SQLClear
            .SQL(SQL_SELECT_PROXIMO_ID)
            .Open
            .DataSet
              .FieldByName('ID').AsInteger;
end;

function TClienteDAOImpl.Insert(aValue: iClienteDTO): iCrudDao<iClienteDTO>;
begin
  Result := iClienteDAO(Self);

  aValue.Id(GetProximoId);

  FQuery
    .SQLClear
    .SQL(SQL_INSERT_CLIENTE)
    .AddParam('ID', aValue.Id)
    .AddParam('NOME', aValue.Nome)
    .AddParam('DOCUMENTO', aValue.Documento)
    .AddParam('TIPOPESSOA', aValue.TipoPessoa.ToString)
    .AddParam('IDCIDADE', aValue.Cidade.Id)
    .ExecSQL;
end;

class function TClienteDAOImpl.New: iClienteDAO;
begin
  Result := Self.Create;
end;

function TClienteDAOImpl.Update(aValue: iClienteDTO): iCrudDao<iClienteDTO>;
begin
  Result := iClienteDAO(Self);
end;

end.
