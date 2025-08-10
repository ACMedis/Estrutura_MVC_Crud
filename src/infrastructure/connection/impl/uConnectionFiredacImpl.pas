unit uConnectionFiredacImpl;

interface

uses
  Firedac.Stan.Intf,
  Firedac.Stan.Option,
  Firedac.Stan.Error,
  Firedac.UI.Intf,
  Firedac.Phys.Intf,
  Firedac.Stan.Def,
  Firedac.Stan.Pool,
  Firedac.Stan.Async,
  Firedac.Phys,
  Firedac.Phys.SQLite,
  Firedac.Phys.SQLiteDef,
  Firedac.Stan.ExprFuncs,
  Firedac.VCLUI.Wait,
  Firedac.DApt,
  Firedac.Comp.Client,
  Firedac.Stan.Param,
  System.Classes,
  Data.DB,
  uConnection;

type
  TConnectionFiredacImpl = class(TInterfacedObject, iConnection)
    private
      FConnection: TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iConnection;
      function GetConnection: TComponent;
  end;

var
  vConnectionFiredac: iConnection;

implementation

{ TConnectionFiredacImpl }

constructor TConnectionFiredacImpl.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FConnection.Params.DriverID := 'SQLite';
  FConnection.Params.Database := 'D:\workspace-acm\Delphi\ExemploMVC_CRUD\refactordb.db3';
  FConnection.Params.Add('LockingMode=Normal');
  FConnection.Connected;
end;

destructor TConnectionFiredacImpl.Destroy;
begin
  FConnection.DisposeOf;
  inherited;
end;

function TConnectionFiredacImpl.GetConnection: TComponent;
begin
  Result := FConnection;
end;

class function TConnectionFiredacImpl.New: iConnection;
begin
  if not Assigned(vConnectionFiredac) then
    vConnectionFiredac := Self.Create;
  Result := vConnectionFiredac;
end;

end.
