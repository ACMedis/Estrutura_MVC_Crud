unit uCidadeController;

interface

uses
  Data.DB,
  uCidadeEntity;

type

  iCidadeController = interface
    ['{20CDC621-5F1A-4919-B847-6CF6C5559478}']
    function FindAll: iCidadeController;
    function DataSet: TDataSet;
    function findById(aID: Variant): iCidadeEntity;
  end;

implementation

end.
