unit uClienteDTO;

interface

uses
  uEnums, uCidadeDTO;

type
  iClienteDTO = interface
    ['{9CD76FB7-7E45-458B-BD8C-E74A7281D97E}']
    function Id(aValue: Integer): iClienteDTO; overload;
    function Id: Integer; overload;
    function Nome(aValue: String): iClienteDTO; overload;
    function Nome: String; overload;
    function Documento(aValue: String): iClienteDTO; overload;
    function Documento: String; overload;
    function TipoPessoa(aValue: TTipoPessoa): iClienteDTO; overload;
    function TipoPessoa: TTipoPessoa; overload;
    function Cidade(aValue: iCidadeDTO): iClienteDTO;overload;
    function Cidade: iCidadeDTO; overload;
  end;

  TClienteDTO = class(TInterfacedObject, iClienteDTO)
    private
      FId: Integer;
      FNome: String;
      FDocumento: String;
      FTipoPessoa: TTipoPessoa;
      FCidade: iCidadeDTO;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iClienteDTO;
      class function NewFisica: iClienteDTO;
      class function NewJuridica: iClienteDTO;


      function Id(aValue: Integer): iClienteDTO; overload;
      function Id: Integer; overload;
      function Nome(aValue: String): iClienteDTO; overload;
      function Nome: String; overload;
      function Documento(aValue: String): iClienteDTO; overload;
      function Documento: String; overload;
      function TipoPessoa(aValue: TTipoPessoa): iClienteDTO; overload;
      function TipoPessoa: TTipoPessoa; overload;
      function Cidade(aValue: iCidadeDTO): iClienteDTO;overload;
      function Cidade: iCidadeDTO; overload;
  end;


implementation

{ TClienteDTO }

function TClienteDTO.Cidade: iCidadeDTO;
begin
  Result := FCidade;
end;

function TClienteDTO.Cidade(aValue: iCidadeDTO): iClienteDTO;
begin
  FCidade := aValue;
  Result := Self;
end;

constructor TClienteDTO.Create;
begin
  FCidade := TCidadeDTO.New;
end;

destructor TClienteDTO.Destroy;
begin

  inherited;
end;

function TClienteDTO.Documento(aValue: String): iClienteDTO;
begin
  FDocumento := aValue;
  Result := Self;
end;

function TClienteDTO.Documento: String;
begin
  Result := FDocumento;
end;

function TClienteDTO.Id(aValue: Integer): iClienteDTO;
begin
  FId := aValue;
  Result := Self;
end;

function TClienteDTO.Id: Integer;
begin
  Result := FId;
end;

class function TClienteDTO.New: iClienteDTO;
begin
  Result := Self.Create;
end;

class function TClienteDTO.NewFisica: iClienteDTO;
begin
  Result := TClienteDTO.New.TipoPessoa(tpFisica);
end;

class function TClienteDTO.NewJuridica: iClienteDTO;
begin
  Result := TClienteDTO.New.TipoPessoa(tpJuridica);
end;

function TClienteDTO.Nome(aValue: String): iClienteDTO;
begin
  FNome := aValue;
  Result := Self;
end;

function TClienteDTO.Nome: String;
begin
  Result := FNome;
end;

function TClienteDTO.TipoPessoa(aValue: TTipoPessoa): iClienteDTO;
begin
  FTipoPessoa := aValue;
  Result := Self;
end;

function TClienteDTO.TipoPessoa: TTipoPessoa;
begin
  Result := FTipoPessoa;
end;

end.
