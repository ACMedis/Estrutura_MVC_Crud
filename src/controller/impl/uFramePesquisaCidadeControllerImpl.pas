unit uFramePesquisaCidadeControllerImpl;

interface

uses
  Vcl.Forms,
  uFramePesquisaController,
  uCidadeDTO, uFrmCidade;

type
  TFramePesquisaCidadeControllerImpl = class(TInterfacedObject, iFramePesquisaController)
    private
      FFormPesquisa: TFrmCidades;
      FCidadeSelecionada: iCidadeDTO;

      procedure HandleClickConfirma(aValue: iCidadeDTO);
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFramePesquisaController;

      function OnClickButtonPesquisa: iFramePesquisaController;
      function GetItemSelecionado: TObject;
      function GetDescricaoFrame: String;
  end;

const
  DESCRICAO_FRAME = '%s - %s - %s';

implementation

uses
  System.SysUtils;

{ TFramePesquisaCidadeControllerImpl }

constructor TFramePesquisaCidadeControllerImpl.Create;
begin
  FFormPesquisa := TFrmCidades.Create(Nil);
  FFormPesquisa.SetEventSelecionarItem(HandleClickConfirma);
  FCidadeSelecionada := TCidadeDTO.New;
end;

destructor TFramePesquisaCidadeControllerImpl.Destroy;
begin
  FFormPesquisa.DisposeOf;
  inherited;
end;

function TFramePesquisaCidadeControllerImpl.GetDescricaoFrame: String;
begin
  Result := Format(DESCRICAO_FRAME, [
    TCidadeDTO(FCidadeSelecionada).id.ToString,
    TCidadeDTO(FCidadeSelecionada).Nome,
    TCidadeDTO(FCidadeSelecionada).Estado
  ]);
end;

function TFramePesquisaCidadeControllerImpl.GetItemSelecionado: TObject;
begin
  Result := TCidadeDTO(FCidadeSelecionada);
end;

procedure TFramePesquisaCidadeControllerImpl.HandleClickConfirma(aValue: iCidadeDTO);
begin
  FCidadeSelecionada := aValue;
end;

class function TFramePesquisaCidadeControllerImpl.New: iFramePesquisaController;
begin
  Result := Self.Create;
end;

function TFramePesquisaCidadeControllerImpl.OnClickButtonPesquisa: iFramePesquisaController;
begin
  FFormPesquisa.ShowModal;
end;

end.
