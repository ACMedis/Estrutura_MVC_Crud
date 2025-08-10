unit uCidadeService;

interface

uses
  Data.DB, uCidadeEntity;

type

  iCidadeService = interface
    ['{8380DA0C-7F0B-4C21-B4B5-A768DFA27461}']
    function FindAll: TDataSet;
    function findById(aID: Variant): iCidadeEntity;
  end;

implementation

end.
