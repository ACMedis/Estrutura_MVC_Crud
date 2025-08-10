unit uCidadeEntity;

interface

type
  iCidadeEntity = interface
    ['{5646E143-9F5F-4ABD-8AC2-3D66F48CA2AD}']
    function Id(aValue: Integer): iCidadeEntity; overload;
    function Id: Integer; overload;
    function Nome(aValue: String): iCidadeEntity; overload;
    function Nome: String; overload;
    function Estado(aValue: String): iCidadeEntity; overload;
    function Estado: String; overload;
    function DDD(aValue: Integer): iCidadeEntity; overload;
    function DDD: Integer; overload;
  end;

  TCidadeEntity = class(TInterfacedObject, iCidadeEntity)
    private
      FId: integer;
      FNome: String;
      FEstado: String;
      FDDD: Integer;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iCidadeEntity;

      function Id(aValue: Integer): iCidadeEntity; overload;
      function Id: Integer; overload;
      function Nome(aValue: String): iCidadeEntity; overload;
      function Nome: String; overload;
      function Estado(aValue: String): iCidadeEntity; overload;
      function Estado: String; overload;
      function DDD(aValue: Integer): iCidadeEntity; overload;
      function DDD: Integer; overload;
  end;

implementation

{ TCidadeEntity }

constructor TCidadeEntity.Create;
begin

end;

function TCidadeEntity.DDD(aValue: Integer): iCidadeEntity;
begin
  Result := Self;
  FDDD := aValue;
end;

function TCidadeEntity.DDD: Integer;
begin
  Result := FDDD;
end;

destructor TCidadeEntity.Destroy;
begin

  inherited;
end;

function TCidadeEntity.Estado: String;
begin
  Result := FEstado;
end;

function TCidadeEntity.Estado(aValue: String): iCidadeEntity;
begin
  Result := Self;
  FEstado := aValue;
end;

function TCidadeEntity.Id: Integer;
begin
  Result := FId;
end;

function TCidadeEntity.Id(aValue: Integer): iCidadeEntity;
begin
  Result := Self;
  FId := aValue;
end;

class function TCidadeEntity.New: iCidadeEntity;
begin
  Result := Self.Create;
end;

function TCidadeEntity.Nome(aValue: String): iCidadeEntity;
begin
  Result := Self;
  FNome := aValue;
end;

function TCidadeEntity.Nome: String;
begin
  Result := FNome;
end;

end.
