inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Hint = ' '
  Caption = 'CADASTRO DE USUARIO'
  ClientHeight = 221
  ClientWidth = 523
  ScreenSnap = True
  ExplicitWidth = 539
  ExplicitHeight = 259
  PixelsPerInch = 96
  TextHeight = 13
  inherited TLblDataCadastro: TRzLabel
    Left = 13
    Top = 152
    ExplicitLeft = 13
    ExplicitTop = 152
  end
  inherited TLblDataAlteracao: TRzLabel
    Left = 268
    Top = 152
    ExplicitLeft = 268
    ExplicitTop = 152
  end
  object TLblUsuario: TRzLabel [2]
    Left = 8
    Top = 8
    Width = 54
    Height = 13
    Caption = 'Usuario *'
    Transparent = True
    WordWrap = True
  end
  object TLblSenha: TRzLabel [3]
    Left = 268
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Senha *'
  end
  object TLblNivelAcesso: TRzLabel [4]
    Left = 8
    Top = 59
    Width = 101
    Height = 13
    Caption = 'N'#237'vel de Acesso *'
  end
  inherited TBtnSalvar: TRzButton
    Top = 194
    FrameColor = 7617536
    Color = 15791348
    HotTrack = True
    ExplicitTop = 194
  end
  inherited TBtnLimpar: TRzButton
    Left = 232
    Top = 194
    FrameColor = 7617536
    Color = 15791348
    HotTrack = True
    ExplicitLeft = 232
    ExplicitTop = 194
  end
  inherited TDateTimePickerDataAlteracao: TRzDateTimePicker
    Left = 388
    Top = 152
    FlatButtons = True
    FrameColor = 12164479
    FrameVisible = True
    ExplicitLeft = 388
    ExplicitTop = 152
  end
  inherited TDateTimePickerDataCadastro: TRzDateTimePicker
    Left = 128
    Top = 152
    FlatButtons = True
    FrameColor = 12164479
    FrameVisible = True
    ExplicitLeft = 128
    ExplicitTop = 152
  end
  inherited TBtnCancelar: TRzBitBtn
    Left = 442
    Top = 194
    FrameColor = 7617536
    Color = 15791348
    HotTrack = True
    ExplicitLeft = 442
    ExplicitTop = 194
  end
  object TEdtSenha: TRzEdit
    Left = 321
    Top = 5
    Width = 121
    Height = 21
    FrameColor = 12164479
    FrameVisible = True
    TabOrder = 5
  end
  object TEdtUsuario: TRzEdit
    Left = 88
    Top = 5
    Width = 161
    Height = 21
    FrameColor = 12164479
    FrameVisible = True
    TabOrder = 6
  end
  object TEdtNivelAcesso: TRzEdit
    Left = 115
    Top = 56
    Width = 246
    Height = 21
    FrameColor = 12164479
    FrameVisible = True
    TabOrder = 7
  end
  object TBtnBuscarNivelAcesso: TRzBitBtn
    Left = 367
    Top = 53
    Width = 98
    Hint = 'BUSCAR PERFIL'
    FrameColor = 7617536
    Caption = 'BUSCAR'
    Color = 15791348
    HotTrack = True
    TabOrder = 8
    Glyph.Data = {
      FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
      180000000000C80A0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F0F0F0F1F1F1F1F1F1F1F1F1F6F6F6FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFDEDEDED9D9D9D9D9D9D9D9D9DDDDDDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFF9F9F9BFBFBFC3C3C3C3C3C3CDCDCDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE7E7E7ADADADBBBBBBF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8686860000000A0A0AC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000
      000000000000002A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC1B1B1B000000000000
      000000232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F00000000000000000000000092
      9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFB0B0B00000000000000000000000004B4B4BFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEEEEEE0707070000000000000000000E0E0EE6E6E6FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3939
      39000000000000000000000000BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999000000000000
      000000000000616161FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5757570000000000000000001E
      1E1EFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E2E2E2919191818181B7B7B7FFFFFFE0E0E0070707000000000000D2D2D2FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C727272702020200
      00000000000000000B0B0B656565DCDCDCB8B8B8DBDBDBFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B20000000000000F0F0F3939394848
      48272727000000000000333333FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF101010000000363636F4F4F4FFFFFFFFFFFFFFFFFF
      C3C3C3000000000000656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF6F6F6F000000252525FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE
      BEBE0000000C0C0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
      0E0E0E000000949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2626
      26000000ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000000000
      0000C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F000000
      7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6000000000000B5B5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B3B3B000000919191FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3636360000005B5B5BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F80F0F0F000000E2E2E2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3000000020202BCBCBCFFFFFFFF
      FFFFFFFFFFFFFFFFFEFEFE353535000000252525FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5252520000000202025B5B5BB5B5B5CACA
      CA979797242424000000000000C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF535353000000000000000000000000000000
      000000121212ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C03C3C3C0000000000000C0C0C6C6C6CFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEFCFCFCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF}
  end
end
