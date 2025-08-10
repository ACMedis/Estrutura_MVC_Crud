unit uQuery;

interface

uses
  Data.DB;

type
  iQuery = interface
    ['{3DE0DA6C-8249-4E8C-96DA-CF06EA74D784}']
    function AddParam(aParam: String; aValue: Variant): iQuery;
    function DataSet: TDataSet;
    function ExecSQL: iQuery;
    function Open: iQuery;
    function SQL(aValue: String): iQuery;
    function SQLClear: iQuery;
  end;

implementation

end.
