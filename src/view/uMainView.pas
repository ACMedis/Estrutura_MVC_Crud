unit uMainView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    btnListarCidades: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btnCadastrarCidade: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnListarCidadesClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uFrmCidade;

{$R *.dfm}

procedure TForm1.btnListarCidadesClick(Sender: TObject);
begin
  try
    FrmCidades := TFrmCidades.Create(self);
    FrmCidades.ShowModal;
  finally
    FrmCidades.DisposeOf;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutDown := true;

end;

end.
