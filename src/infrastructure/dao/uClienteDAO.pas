unit uClienteDAO;

interface

uses
  uCrudDao,
  uClienteDTO;

type

  iClienteDAO = interface(iCrudDAO<iClienteDTO>)
    ['{3CAF26AE-E6A3-40D9-BAD5-E24DD802F249}']
    function FindByDocumento(aValue: String): iClienteDTO;
    function GetProximoId: Integer;
  end;

implementation

end.
