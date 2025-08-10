unit uCidadeDTO;

interface

type
  iCidadeDTO = interface
    ['{5646E143-9F5F-4ABD-8AC2-3D66F48CA2AD}']
    function Id(aValue: Integer): iCidadeDTO; overload;
    function Id: Integer; overload;
    function Nome(aValue: String): iCidadeDTO; overload;
    function Nome: String; overload;
    function Estado(aValue: String): iCidadeDTO; overload;
    function Estado: String; overload;
    function DDD(aValue: Integer): iCidadeDTO; overload;
    function DDD: Integer; overload;
  end;

  TCidadeDTO = class(TInterfacedObject, iCidadeDTO)
    private
      FId: integer;
      FNome: String;
      FEstado: String;
      FDDD: Integer;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iCidadeDTO;

      function Id(aValue: Integer): iCidadeDTO; overload;
      function Id: Integer; overload;
      function Nome(aValue: String): iCidadeDTO; overload;
      function Nome: String; overload;
      function Estado(aValue: String): iCidadeDTO; overload;
      function Estado: String; overload;
      function DDD(aValue: Integer): iCidadeDTO; overload;
      function DDD: Integer; overload;
  end;

implementation

{ TCidadeDTO }

constructor TCidadeDTO.Create;
begin

end;

function TCidadeDTO.DDD(aValue: Integer): iCidadeDTO;
begin
  Result := Self;
  FDDD := aValue;
end;

function TCidadeDTO.DDD: Integer;
begin
  Result := FDDD;
end;

destructor TCidadeDTO.Destroy;
begin

  inherited;
end;

function TCidadeDTO.Estado: String;
begin
  Result := FEstado;
end;

function TCidadeDTO.Estado(aValue: String): iCidadeDTO;
begin
  Result := Self;
  FEstado := aValue;
end;

function TCidadeDTO.Id: Integer;
begin
  Result := FId;
end;

function TCidadeDTO.Id(aValue: Integer): iCidadeDTO;
begin
  Result := Self;
  FId := aValue;
end;

class function TCidadeDTO.New: iCidadeDTO;
begin
  Result := Self.Create;
end;

function TCidadeDTO.Nome(aValue: String): iCidadeDTO;
begin
  Result := Self;
  FNome := aValue;
end;

function TCidadeDTO.Nome: String;
begin
  Result := FNome;
end;

end.
