unit uQueryFiredacImpl;

interface

uses
	Data.DB,
  Firedac.Stan.Intf,
	Firedac.Stan.Option,
	Firedac.Stan.Param,
	Firedac.Stan.Error,
	Firedac.DatS,
	Firedac.Phys.Intf,
	Firedac.DApt.Intf,
	Firedac.Stan.Async,
	Firedac.DApt,
	Firedac.Comp.DataSet,
	Firedac.Comp.Client,
  uQuery;

type
  TQueryFiredacImpl = class(TInterfacedObject, iQuery)
    private
      FDataSet: TFDQuery;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iQuery;

      function AddParam(aParam: String; aValue: Variant): iQuery;
      function DataSet: TDataSet;
      function ExecSQL: iQuery;
      function Open: iQuery;
      function SQL(aValue: String): iQuery;
      function SQLClear: iQuery;
  end;


implementation

uses
  uConnectionFactoryImpl;

{ TQueryFiredacImpl }

function TQueryFiredacImpl.AddParam(aParam: String; aValue: Variant): iQuery;
begin
  Result := Self;
  FDataSet.ParamByName(aParam).Value := aValue;
end;

constructor TQueryFiredacImpl.Create;
begin
  FDataSet := TFDQuery.Create(Nil);
  FDataSet.Connection := TFDCustomConnection(TConnectionFactoryImpl.New.GetConnection.GetConnection);
end;

function TQueryFiredacImpl.DataSet: TDataSet;
begin
  Result := FDataSet;
end;

destructor TQueryFiredacImpl.Destroy;
begin
  FDataSet.DisposeOf;
  inherited;
end;

function TQueryFiredacImpl.ExecSQL: iQuery;
begin
  Result := Self;
  FDataSet.ExecSQL;
end;

class function TQueryFiredacImpl.New: iQuery;
begin
  Result := Self.Create;
end;

function TQueryFiredacImpl.Open: iQuery;
begin
  Result := Self;
  FDataSet.Open;
end;

function TQueryFiredacImpl.SQL(aValue: String): iQuery;
begin
  Result := Self;
  FDataSet.SQL.Add(aValue);
end;

function TQueryFiredacImpl.SQLClear: iQuery;
begin
  Result := Self;
  FDataSet.SQL.Clear;
end;

end.
