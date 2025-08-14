unit uDaoFactory;

interface

uses
  uCidadeDao,
  uClienteDAO;

type

  iDaoFactory = interface
    ['{B9878460-AF99-49CD-AC31-4EE57DC8F972}']
    function GetCidadeDao: iCidadeDao;
    function GetClienteDao: iClienteDao;
  end;

implementation

end.
