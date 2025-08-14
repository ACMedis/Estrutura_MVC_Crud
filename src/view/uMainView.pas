unit uMainView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    btnListarCidades: TButton;
    btnSair: TButton;
    btnCliente: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uFrmCidade, uFrmCliente;

{$R *.dfm}

procedure TForm1.btnClienteClick(Sender: TObject);
begin
  try
    FrmCliente := TFrmCliente.Create(self);
    FrmCliente.ShowModal;
  finally
    FrmCliente.DisposeOf;
  end;
end;

procedure TForm1.btnListarCidadesClick(Sender: TObject);
begin
  try
    FrmCidades := TFrmCidades.Create(self);
    FrmCidades.ShowModal;
  finally
    FrmCidades.DisposeOf;
  end;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutDown := true;

end;

end.
