unit uControllerFactory;

interface

uses
  uCidadeController;

type

  iControllerFactory = interface
    ['{6D46873B-7292-4885-BBEA-52CB64408230}']
    function GetCidadeController: iCidadeController;
  end;

implementation

end.
