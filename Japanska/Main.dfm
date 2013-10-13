object frmMainForm: TfrmMainForm
  Left = 0
  Top = 0
  Caption = 'Skriv in och se vad det blir p'#229' japanska'
  ClientHeight = 358
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    577
    358)
  PixelsPerInch = 96
  TextHeight = 13
  object memInput: TcxMemo
    Left = 8
    Top = 20
    Anchors = [akLeft, akTop, akRight]
    Properties.OnChange = btnTranslateClick
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 0
    Height = 89
    Width = 564
  end
  object memOutput: TcxMemo
    Left = 8
    Top = 136
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    TabOrder = 1
    Height = 170
    Width = 564
  end
  object lblInput: TcxLabel
    Left = 8
    Top = 1
    Caption = 'Input'
  end
  object lblOutput: TcxLabel
    Left = 7
    Top = 118
    Caption = 'Output'
  end
  object btnExit: TcxButton
    Left = 494
    Top = 324
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Avsluta'
    TabOrder = 4
    OnClick = btnExitClick
    LookAndFeel.Kind = lfStandard
  end
  object btnSpeak: TcxButton
    Left = 384
    Top = 324
    Width = 75
    Height = 25
    Caption = 'Tala'
    TabOrder = 5
    OnClick = btnSpeakClick
    LookAndFeel.Kind = lfStandard
  end
end
