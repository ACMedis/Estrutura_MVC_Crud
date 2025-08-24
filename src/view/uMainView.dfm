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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 839
    Height = 49
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 12615680
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 44
      Height = 39
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      ParentBackground = False
      TabOrder = 0
      object Image1: TImage
        Left = 4
        Top = 4
        Width = 36
        Height = 31
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F987000000097048597300000B1300000B1301009A9C18
          000000B46558496649492A000800000006001201030001000000010000001A01
          050001000000560000001B010500010000005E00000028010300010000000200
          0000130203000100000001000000698704000100000066000000000000004800
          0000010000004800000001000000060000900700040000003032313001910700
          040000000102030000A00700040000003031303001A0030001000000FFFF0000
          02A00400010000003000000003A004000100000030000000000000000D834E51
          000000B54944415478DAED96310E82401405A1F10E12AFE639C486421B3D8767
          D370062BFF86866CB2C1CAD93533C92BE8DE003F797DD7383D5D4001BA800274
          0105E8020A64CFBBC835728CECE97219AFC8233245DE25815BE44437DDE01E19
          4B02C9B2B6379F33AF3BE602CFC84037DC20753C94045AF88552C77349201DF1
          A55B8EB8B62FF1D511378702340AD0FC9D805BE807B88568DC42146EA12A5180
          46011AB710805B88C62D44E116AA12056814A05180A679810F04E83031AADD86
          960000000049454E44AE426082}
        Stretch = True
        OnClick = Image1Click
        ExplicitLeft = -32
        ExplicitTop = -32
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 839
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 52
    object btnListarCidades: TButton
      Left = 560
      Top = 64
      Width = 145
      Height = 34
      Caption = 'Listar Cidades'
      TabOrder = 0
      OnClick = btnListarCidadesClick
    end
    object btnCliente: TButton
      Left = 560
      Top = 104
      Width = 145
      Height = 34
      Caption = 'Listar Clientes'
      TabOrder = 1
      OnClick = btnClienteClick
    end
    object SplitView1: TSplitView
      Left = 0
      Top = 0
      Width = 200
      Height = 421
      AnimationDelay = 12
      AnimationStep = 16
      CloseStyle = svcCompact
      Color = clWhite
      OpenedWidth = 200
      Placement = svpLeft
      TabOrder = 2
      ExplicitTop = -3
      DesignSize = (
        200
        421)
      object Image2: TImage
        Left = 24
        Top = 224
        Width = 33
        Height = 33
      end
      object CategoryButtons1: TCategoryButtons
        Left = -19
        Top = 4
        Width = 220
        Height = 166
        ParentCustomHint = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ButtonFlow = cbfVertical
        ButtonOptions = [boFullSize, boShowCaptions, boVerticalCategoryCaptions]
        Categories = <
          item
            Color = clNone
            Collapsed = False
            Items = <
              item
                Caption = 'Lista de Clientes'
              end
              item
                Caption = 'Lista de Cidades'
              end>
            TextColor = clMenuText
          end>
        Color = clWhite
        DoubleBuffered = True
        GradientDirection = gdVertical
        HotButtonColor = clNone
        ParentDoubleBuffered = False
        RegularButtonColor = clNone
        SelectedButtonColor = clNone
        TabOrder = 0
      end
      object btnSair: TButton
        Left = 9
        Top = 384
        Width = 184
        Height = 34
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Button1'
        TabOrder = 1
        OnClick = btnSairClick
      end
    end
  end
end
