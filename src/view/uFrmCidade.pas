unit uFrmCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCidadeController, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uFramePesquisa, uCidadeDTO;

type
  TFrmCidades = class(TForm)
    DBGrid1: TDBGrid;
    btnListarCidades: TButton;
    dsCidades: TDataSource;
    edtID: TEdit;
    edtNome: TEdit;
    edtEstado: TEdit;
    edtDDD: TEdit;
    btnCadastrarCidade: TButton;
    FramePesquisa1: TFramePesquisa;
    btnConfirmar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnConfirmarClick(Sender: TObject);
  private
    FCidadeController: iCidadeController;
    FEventoSelecionarItem: TProc<iCidadeDTO>;
  public
    procedure SetEventSelecionarItem(aValue: TProc<iCidadeDTO>);
  end;

var
  FrmCidades: TFrmCidades;

implementation

uses
  uControllerFactoryImpl;

{$R *.dfm}

procedure TFrmCidades.btnListarCidadesClick(Sender: TObject);
begin
  FCidadeController.FindAll;
end;

procedure TFrmCidades.btnConfirmarClick(Sender: TObject);
var
  vEntity: iCidadeDTO;
begin
  vEntity := FCidadeController.findById(dsCidades.DataSet.FieldByName('id').AsInteger);
  if Assigned(FEventoSelecionarItem) then
    FEventoSelecionarItem(vEntity);
end;

procedure TFrmCidades.DBGrid1CellClick(Column: TColumn);
var
  vEntity: iCidadeDTO;
begin
  vEntity := FCidadeController.findById(dsCidades.DataSet.FieldByName('id').AsInteger);
  edtID.Text := vEntity.Id.ToString;
  edtNome.Text := vEntity.Nome;
  edtEstado.Text := vEntity.Estado;
  edtDDD.Text := vEntity.DDD.ToString;

end;

procedure TFrmCidades.FormCreate(Sender: TObject);
begin
  FCidadeController := TControllerFactoryImpl
    .New
    .GetCidadeController;
  dsCidades.DataSet := FCidadeController.DataSet;

//  FramePesquisa1.SetController(TFramePesquisaControllerImpl<iCidadeDTO>.New.SetFormPesquisa());

end;

procedure TFrmCidades.SetEventSelecionarItem(aValue: TProc<iCidadeDTO>);
begin
  FEventoSelecionarItem := aValue;
end;

end.
