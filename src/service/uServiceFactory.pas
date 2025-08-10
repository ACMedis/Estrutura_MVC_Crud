unit uServiceFactory;

interface

uses
  uCidadeService;

type

  iServiceFactory = interface
    ['{238A180D-C5EF-4E20-A2BE-A451D7B7B484}']
    function GetCidadeService: iCidadeService;
  end;

implementation

end.
