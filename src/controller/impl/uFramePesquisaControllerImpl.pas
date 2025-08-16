unit uFramePesquisaControllerImpl;

interface

uses
  Vcl.Forms,
  System.SysUtils,
  uFramePesquisaController;

type

  TFramePesquisaControllerImpl<T> = class(TInterfacedObject, iFramePesquisaController<T>)
    private
     FFormPesquisa: TForm;
    public
      constructor Create;
      destructor Destroy;override;
      class function New: iFramePesquisaController<T>;

      function SetFormPesquisa(aForm: TForm): iFramePesquisaController<T>;
      function OnClickButtonPesquisa: iFramePesquisaController<T>;
  end;


implementation

uses
  uFrmCidade;

{ TFramePesquisaControllerImpl }

constructor TFramePesquisaControllerImpl<T>.Create;
begin

end;

destructor TFramePesquisaControllerImpl<T>.Destroy;
begin

  inherited;
end;

class function TFramePesquisaControllerImpl<T>.New: iFramePesquisaController<T>;
begin
  Result := Self.Create;
end;


function TFramePesquisaControllerImpl<T>.OnClickButtonPesquisa: iFramePesquisaController<T>;
begin
  Result := Self;
  if Assigned(FFormPesquisa) then
    FFormPesquisa.ShowModal;

end;

function TFramePesquisaControllerImpl<T>.SetFormPesquisa(aForm: TForm): iFramePesquisaController<T>;
begin
  Result := Self;
  FFormPesquisa := aForm;
end;


end.
