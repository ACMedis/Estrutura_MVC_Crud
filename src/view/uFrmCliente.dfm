object FrmCliente: TFrmCliente
  Left = 0
  Top = 0
  Caption = 'FrmCliente'
  ClientHeight = 410
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 16
    Top = 232
    Width = 15
    Height = 20
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 120
    Top = 232
    Width = 41
    Height = 20
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 299
    Width = 78
    Height = 20
    Caption = 'Tipo Pessoa'
  end
  object Label4: TLabel
    Left = 175
    Top = 299
    Width = 78
    Height = 20
    Caption = 'Documento'
  end
  object edtID: TEdit
    Left = 16
    Top = 255
    Width = 89
    Height = 26
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 120
    Top = 255
    Width = 385
    Height = 26
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object edtDocumento: TEdit
    Left = 175
    Top = 319
    Width = 173
    Height = 26
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object cmbTipoPessoa: TComboBox
    Left = 16
    Top = 319
    Width = 145
    Height = 28
    Style = csDropDownList
    Ctl3D = False
    ItemIndex = 0
    ParentCtl3D = False
    TabOrder = 3
    Text = 'F'#237'sica'
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
  object btnListarCidades: TButton
    Left = 6
    Top = 166
    Width = 145
    Height = 34
    Caption = 'Listar'
    TabOrder = 4
    OnClick = btnListarCidadesClick
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 8
    Width = 649
    Height = 152
    DataSource = dsCliente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
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
        Width = 337
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Documento'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cidade'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGray
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 124
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 392
    Top = 316
    Width = 113
    Height = 34
    Caption = 'Gravar'
    TabOrder = 6
    OnClick = Button1Click
  end
  inline FrameCidades: TFramePesquisa
    Left = 16
    Top = 360
    Width = 518
    Height = 42
    TabOrder = 7
    ExplicitLeft = 16
    ExplicitTop = 360
  end
  object dsCliente: TDataSource
    Left = 520
    Top = 72
  end
end
