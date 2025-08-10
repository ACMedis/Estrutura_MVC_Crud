unit uQueryFactory;

interface

uses
  uQuery;

type
  iQueryFactory = interface
    ['{3389C2ED-602F-4E91-BBEE-651E49657EB1}']
    function GetQuery: iQuery;
  end;

implementation

end.
