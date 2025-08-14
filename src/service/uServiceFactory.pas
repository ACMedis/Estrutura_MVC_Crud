unit uServiceFactory;

interface

uses
  uCidadeService,
  uClienteService;

type

  iServiceFactory = interface
    ['{238A180D-C5EF-4E20-A2BE-A451D7B7B484}']
    function GetCidadeService: iCidadeService;
    function GetClienteService: iClienteService;
  end;

implementation

end.
