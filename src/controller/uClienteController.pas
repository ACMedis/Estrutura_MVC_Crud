unit uClienteController;

interface

uses
  uClienteDTO, Data.DB;

type

  iClienteController = interface
    ['{4CF2826D-91D7-4C30-8CD9-F6907F13D246}']
    function SalvarCliente(aCliente: iClienteDto): iClienteController;
    function FindAll(aDataSource: TDataSource): iClienteController;
  end;

implementation

end.
