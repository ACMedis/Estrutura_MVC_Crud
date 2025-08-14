object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form1'
  ClientHeight = 470
  ClientWidth = 839
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnListarCidades: TButton
    Left = 8
    Top = 8
    Width = 145
    Height = 34
    Caption = 'Listar Cidades'
    TabOrder = 0
    OnClick = btnListarCidadesClick
  end
  object btnSair: TButton
    Left = 682
    Top = 428
    Width = 145
    Height = 34
    Caption = 'Button1'
    TabOrder = 1
    OnClick = btnSairClick
  end
  object btnCliente: TButton
    Left = 8
    Top = 48
    Width = 145
    Height = 34
    Caption = 'Listar Clientes'
    TabOrder = 2
    OnClick = btnClienteClick
  end
end
