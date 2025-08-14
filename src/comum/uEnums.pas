unit uEnums;

interface

type
  TTipoPessoa = (tpFisica, tpJuridica);

  TTipoPessoaHelper = record helper for TTipoPessoa
      const Codigo: array[TTipoPessoa] of string = ('F', 'J');
    public
      function ToString: String;
      class function FromString(const aValue: String): TTipoPessoa; static;
  end;

implementation

{ TtipoPessoaHelper }

class function TTipoPessoaHelper.FromString(const aValue: String): TTipoPessoa;
begin
  if aValue = 'F' then
    Result := tpFisica
  else if aValue = 'J' then
    Result := tpJuridica
  else
    Result := tpFisica;

end;

function TTipoPessoaHelper.ToString: String;
begin
  Result := Codigo[Self];
end;

end.
