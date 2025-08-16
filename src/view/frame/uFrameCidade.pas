unit uFrameCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls,
  uFramePesquisaController,
  uCidadeDTO;

type
  TFramePesquisa = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Edit1: TEdit;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
  private
    FController: iFramePesquisaController<iCidadeDTO>;
  public
    procedure SetController(aController: iFramePesquisaController<iCidadeDTO>);
  end;

implementation

{$R *.dfm}

{ TFramePesquisa }


procedure TFramePesquisa.Image1Click(Sender: TObject);
begin
  FController.OnClickButtonPesquisa;
end;

procedure TFramePesquisa.SetController(aController: iFramePesquisaController<iCidadeDTO>);
begin
  FController := aController;
end;

end.
