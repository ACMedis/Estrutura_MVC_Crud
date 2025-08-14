unit uClienteService;

interface

uses
  uClienteDTO,
  Data.DB;

type

  iClienteService = interface
    ['{4C7ECF00-AE24-4B94-855C-87041886B50B}']
    function SalvarCliente(aCliente: iClienteDTO): iClienteService;
    function FindAll: TDataSet;
  end;

implementation

end.
