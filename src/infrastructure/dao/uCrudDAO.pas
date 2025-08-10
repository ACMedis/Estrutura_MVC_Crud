unit uCrudDao;


interface

uses
  Data.DB,
  System.Generics.Collections;

type
  iCrudDao<T> = interface
    ['{7850588B-B32C-4E7C-916A-E81AE7D173E1}']
    function Delete(aValue: Integer): iCrudDao<T>;
    function findAll: TDataSet;
    function findById(aID: Variant): T;
    function Insert(aValue: T): iCrudDao<T>;
    function Update(aValue: T): iCrudDao<T>;
  end;

implementation

end.
