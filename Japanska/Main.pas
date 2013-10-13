unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMemo;

type
  TfrmMainForm = class(TForm)
    memInput: TcxMemo;
    memOutput: TcxMemo;
    lblInput: TcxLabel;
    lblOutput: TcxLabel;
    btnExit: TcxButton;
    btnSpeak: TcxButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnTranslateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSpeakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainForm: TfrmMainForm;
  spVoice: Variant;
  gJapArray: array[0..25] of String =
  (
      'KA', // A
      'ZU', // B
      'Mi', // C
      'TE', // D
      'KU', // E
      'LU', // F
      'Ji', // G
      'Ri', // H
      'Ki', // I
      'ZU', // J
      'ME', // K
      'TA', // L
      'RiN',// M
      'TO', // N
      'MO', // O
      'NO', // P
      'KE', // Q
      'SHi',// R
      'ARi',// S
      'CHi',// T
      'DO', // U
      'RU', // V
      'MEi',// W
      'NA', // X
      'FU', // Y
      'Z'   // Z
  );

implementation

uses
  ActiveX,
  ComObj;

{$R *.dfm}

procedure TfrmMainForm.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMainForm.btnSpeakClick(Sender: TObject);
begin
  SpVoice.Speak(memOutput.Lines.Text);
end;

procedure TfrmMainForm.btnTranslateClick(Sender: TObject);
var
  vInputCharAsInt, i: Integer;
  vInput, vOutput: String;
begin
  vInput := memInput.Lines.Text;
  vOutput := '';

  for i := 1 to Length(vInput) do
  begin
    if Ord(vInput[i]) >= 65 then    
      vInputCharAsInt := (Ord(vInput[i]) and not (1 shl 5))
    else
     vInputCharAsInt := Ord(vInput[i]);

    if (vInputCharAsInt >= 65) and (vInputCharAsInt <= 90) then
      vOutPut := vOutPut + gJapArray[vInputCharAsInt - 65]
    else
      vOutPut := vOutPut + Char(vInputCharAsInt);
  end;

  memOutput.Lines.Text := vOutPut;
end;

procedure TfrmMainForm.FormCreate(Sender: TObject);
begin
  spVoice := CreateOleObject('SAPI.SpVoice');
end;

initialization
  CoInitialize(nil);

finalization
  CoUnInitialize;

end.
