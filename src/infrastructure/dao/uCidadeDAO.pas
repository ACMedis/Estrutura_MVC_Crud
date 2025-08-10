unit uCidadeDao;

interface

uses
  uCrudDao,
  uCidadeDTO,
  Data.DB;

type
  iCidadeDao = interface(iCrudDao<iCidadeDTO>)
    ['{59BD8147-4B5A-4F1A-9B4E-4B3D88B81ABA}']
    function findCidadesByUF(aUF: String): TDataSet;
  end;

implementation

end.
