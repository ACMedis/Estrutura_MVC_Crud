unit uFramePesquisaController;

interface

uses
  System.SysUtils, Vcl.Forms;

type
  iFramePesquisaController<T> = interface
    ['{EAD4CD73-4E7F-4F62-85BD-153561CA414F}']
    function SetFormPesquisa(aForm: TForm): iFramePesquisaController<T>;
    function OnClickButtonPesquisa: iFramePesquisaController<T>;
  end;

implementation

end.
