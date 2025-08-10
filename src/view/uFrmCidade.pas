unit uFrmCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCidadeController, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

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
    procedure FormCreate(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    FCidadeController: iCidadeController;
  public
    { Public declarations }
  end;

var
  FrmCidades: TFrmCidades;

implementation

uses
  uControllerFactoryImpl,
  uCidadeDTO;

{$R *.dfm}

procedure TFrmCidades.btnListarCidadesClick(Sender: TObject);
begin
  FCidadeController.FindAll;
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
end;

end.
