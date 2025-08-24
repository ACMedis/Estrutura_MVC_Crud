unit uMainView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.WinXCtrls,
  Vcl.CategoryButtons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    btnListarCidades: TButton;
    btnCliente: TButton;
    SplitView1: TSplitView;
    CategoryButtons1: TCategoryButtons;
    btnSair: TButton;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
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

procedure TForm1.Image1Click(Sender: TObject);
begin
  SplitView1.Opened := not SplitView1.Opened;
end;

end.
