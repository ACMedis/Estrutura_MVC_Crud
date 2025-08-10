object FrmCidades: TFrmCidades
  Left = 0
  Top = 0
  Caption = 'FrmCidades'
  ClientHeight = 428
  ClientWidth = 697
  Color = clBtnFace
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
    Left = 24
    Top = 8
    Width = 649
    Height = 192
    DataSource = dsCidades
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estado'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DDD'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end>
  end
  object btnListarCidades: TButton
    Left = 24
    Top = 206
    Width = 145
    Height = 34
    Caption = 'Listar Cidades'
    TabOrder = 1
    OnClick = btnListarCidadesClick
  end
  object edtID: TEdit
    Left = 12
    Top = 291
    Width = 85
    Height = 21
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 103
    Top = 291
    Width = 362
    Height = 21
    TabOrder = 3
  end
  object edtEstado: TEdit
    Left = 484
    Top = 291
    Width = 85
    Height = 21
    TabOrder = 4
  end
  object edtDDD: TEdit
    Left = 588
    Top = 291
    Width = 85
    Height = 21
    TabOrder = 5
  end
  object btnCadastrarCidade: TButton
    Left = 12
    Top = 335
    Width = 145
    Height = 34
    Caption = 'Cadatrar Cidade'
    TabOrder = 6
  end
  object dsCidades: TDataSource
    Left = 520
    Top = 72
  end
end
