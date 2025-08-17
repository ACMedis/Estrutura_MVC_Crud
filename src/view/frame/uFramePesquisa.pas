unit uFramePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls,
  uFramePesquisaController;

type
  TFramePesquisa = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Edit1: TEdit;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
  private
    FController: iFramePesquisaController;

  public
    procedure SetController(aController: iFramePesquisaController);
  end;

implementation

{$R *.dfm}

{ TFramePesquisa }


procedure TFramePesquisa.Image1Click(Sender: TObject);
begin
  FController.OnClickButtonPesquisa;
  Edit1.Text := FController.GetDescricaoFrame;
end;

procedure TFramePesquisa.SetController(aController: iFramePesquisaController);
begin
  FController := aController;
end;

end.
