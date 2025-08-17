unit uFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids,
  uClienteController,
  uFramePesquisa,
  uFramePesquisaController,
  uCidadeDTO,
  uFrmCidade;

type
  TFrmCliente = class(TForm)
    edtID: TEdit;
    edtNome: TEdit;
    edtDocumento: TEdit;
    cmbTipoPessoa: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnListarCidades: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    dsCliente: TDataSource;
    FrameCidades: TFramePesquisa;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FClienteController: iClienteController;
    FFrameCidadesController: iFramePesquisaController;

  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

uses
  uClienteDTO,
  uControllerFactoryImpl,
  uFramePesquisaCidadeControllerImpl;

{$R *.dfm}


procedure TFrmCliente.btnListarCidadesClick(Sender: TObject);
begin
  FClienteController.FindAll(dsCliente);
end;

procedure TFrmCliente.Button1Click(Sender: TObject);
var
  vCliente: iClienteDTO;
  vCidade: iCidadeDto;
begin
  if (cmbTipoPessoa.ItemIndex = 0) then
    vCliente := TClienteDTO.NewFisica
  else
    vCliente := TClienteDTO.NewJuridica;

  vCidade := TCidadeDTO.New.Id(1);

  vCliente
    .Nome(edtNome.Text)
    .Documento(edtDocumento.Text)
    .Cidade(vCidade);

  FClienteController
    .SalvarCliente(vCliente)
    .FindAll(dsCliente);


end;

procedure TFrmCliente.Button2Click(Sender: TObject);
begin
  ShowMessage(TCidadeDTO(FFrameCidadesController.GetItemSelecionado).Nome );
end;

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  FClienteController := TControllerFactoryImpl.New.GetClienteController;
  FFrameCidadesController := TFramePesquisaCidadeControllerImpl.New;
  FrameCidades.SetController(FFrameCidadesController);
end;

procedure TFrmCliente.FormDestroy(Sender: TObject);
begin
  //
end;

end.
