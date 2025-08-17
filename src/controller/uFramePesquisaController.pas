unit uFramePesquisaController;

interface

uses
  System.SysUtils, Vcl.Forms;

type
  iFramePesquisaController = interface
    ['{EAD4CD73-4E7F-4F62-85BD-153561CA414F}']
    function OnClickButtonPesquisa: iFramePesquisaController;
    function GetItemSelecionado: TObject;
    function GetDescricaoFrame: String;
  end;

implementation

end.
