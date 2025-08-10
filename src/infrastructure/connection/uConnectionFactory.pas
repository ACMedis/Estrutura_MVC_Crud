unit uConnectionFactory;

interface

uses
  uConnection;

type
  iConnectionFactory = interface
    ['{5C77F1BC-B7C3-4DFE-93A4-D73B69EB6103}']
    function GetConnection: iConnection;
  end;
implementation

end.
