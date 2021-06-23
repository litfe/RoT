object Form_YBComm64_About: TForm_YBComm64_About
  Left = 624
  Top = 495
  BorderStyle = bsDialog
  Caption = 'TYBComm64 About...'
  ClientHeight = 132
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 32
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      07544269746D617076020000424D760200000000000076000000280000002000
      0000200000000100040000000000000200000000000000000000100000000000
      0000000000000000800000800000008080008000000080008000808000008080
      8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00DDDDDDDDDDDDD000DDDDDDDDDDDDDDDDDDDDDDDDDDD0077700DDDDDDDDDD
      DDDDDDDDDDDDD00778877700DDDDDDDDDDDDDDDDDDD007788887777700DDDDDD
      DDDDDDDDD0077888988777777700DDDDDDDDDDD00778889898877777777700DD
      DDDDD007788898988FF8777777777700DDDD777888A8988FF877887777777777
      00DD7F88A8A88FF8800077887777777777007F88A88FF8800833007788777777
      77707F888FF8800B8B3333007788777777707F8FF88008B8B833333300778877
      77707FF8800B8B8B8F833333330077887770D78008B8B8BFFFB8333333330000
      0070DD738B8B8FFFBBFB8333333300B33308DDD3B8BFFFB308BFB83333330FB8
      3330DDD38FFFB30FF38BFB8333303F330030DDD3BFB30FF3B30FBFB8733033F8
      3300DDDD38BFF3B30FF78BFBF7300FB83330DDDDD38BB30FF7B308BFBF803BF8
      3330DDDDDD38BFF7B30FF3FBFBB03FBFF830DDDDDDD38BB30FF3BFBFB8303BFF
      BF80DDDDDDDD08BFF3BBFBF0F8303BFBFB3DDDDDDDD0B0FBBFBFB000B8303FBF
      B3DDDDDDDD3FB30BFB830330FB03FBFB3DDDDDDDDD3F33300F8303BB003FBFB3
      DDDDDDDDDD33B3330B830BFBBFFBB33DDDDDDDDDDD3FBF330FB0BFBFFBBB3DDD
      DDDDDDDDDDD3FBF3300BFFFBBB33DDDDDDDDDDDDDDDD3FBFFFFFBBB333DDDDDD
      DDDDDDDDDDDDD3FBBBBB333DDDDDDDDDDDDDDDDDDDDDDD333333DDDDDDDDDDDD
      DDDD}
    Transparent = True
  end
  object LabelCaption: TLabel
    Left = 72
    Top = 8
    Width = 59
    Height = 13
    Caption = 'TYBComm64'
    Transparent = True
  end
  object LabelVersion: TLabel
    Left = 206
    Top = 11
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Version: 1.00'
    Transparent = True
  end
  object LabelCo: TLabel
    Left = 80
    Top = 32
    Width = 123
    Height = 13
    Caption = 'Copyright (C) Victor Chen'
    Transparent = True
  end
  object LabelHomepage: TLabel
    Left = 80
    Top = 46
    Width = 125
    Height = 13
    Cursor = crHandPoint
    Caption = 'http://www.cppfans.com/'
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LabelHomepageClick
  end
  object LabelEmail: TLabel
    Left = 80
    Top = 60
    Width = 129
    Height = 13
    Cursor = crHandPoint
    Caption = 'Email: victor@cppfans.com'
    ParentShowHint = False
    ShowHint = True
    Transparent = True
    OnClick = LabelEmailClick
  end
  object Bevel1: TBevel
    Left = 0
    Top = 80
    Width = 279
    Height = 2
  end
  object LabelOSVer: TLabel
    Left = 8
    Top = 86
    Width = 150
    Height = 13
    Caption = 'Windows NT 4.0 Service Pack 6'
    Transparent = True
  end
  object LabelPmtUser: TLabel
    Left = 8
    Top = 100
    Width = 22
    Height = 13
    Caption = 'User'
    Transparent = True
  end
  object LabelPmtOrgn: TLabel
    Left = 8
    Top = 114
    Width = 24
    Height = 13
    Caption = 'Orgn'
    Transparent = True
  end
  object LabelUser: TLabel
    Left = 40
    Top = 100
    Width = 35
    Height = 13
    Caption = 'ybchen'
    Transparent = True
  end
  object LabelUserOrg: TLabel
    Left = 40
    Top = 114
    Width = 38
    Height = 13
    Caption = 'cppfans'
    Transparent = True
  end
  object BnOK: TBitBtn
    Left = 195
    Top = 102
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    Default = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777788887777
      77777778888887777777778444448877777777422224488777777A2222224488
      7777A222222224487777A222AAA222488777A22488AA22448877A224877AA224
      4887AAA27777AA224488777777777AA224487777777777AA224877777777777A
      A224777777777777AA227777777777777AA27777777777777777}
    Spacing = 6
    TabOrder = 0
    OnClick = BnOKClick
  end
end
