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
  object DBGrid1: TDBGrid
    Left = 12
    Top = 9
    Width = 815
    Height = 192
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 12
    Top = 291
    Width = 85
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnListarCidades: TButton
    Left = 8
    Top = 207
    Width = 145
    Height = 34
    Caption = 'Listar Cidades'
    TabOrder = 2
    OnClick = btnListarCidadesClick
  end
  object Edit2: TEdit
    Left = 103
    Top = 291
    Width = 362
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 484
    Top = 291
    Width = 85
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit4: TEdit
    Left = 588
    Top = 291
    Width = 85
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object btnCadastrarCidade: TButton
    Left = 8
    Top = 335
    Width = 145
    Height = 34
    Caption = 'Cadatrar Cidade'
    TabOrder = 6
  end
  object Button3: TButton
    Left = 682
    Top = 428
    Width = 145
    Height = 34
    Caption = 'Button1'
    TabOrder = 7
  end
  object DataSource1: TDataSource
    Left = 648
    Top = 96
  end
end
