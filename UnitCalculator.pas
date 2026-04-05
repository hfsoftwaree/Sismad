unit UnitCalculator;


interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes,
  Forms, Buttons, Controls, StdCtrls, ExtCtrls, Menus, ENumEd,
  CJVScrollLabel;

type
  TCalcStatus = (CS_FIRST, CS_VALID, CS_ERROR);

type
  TCalculator = class(TForm)
    MainPanel: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button0: TButton;
    DisplayPanel: TPanel;
    ButtonComma: TButton;
    Panel3: TPanel;
    resultLabel: TLabel;
    ButtonDiv: TButton;
    ButtonMult: TButton;
    ButtonSub: TButton;
    ButtonAdd: TButton;
    ButtonSign: TButton;
    BottomPanel: TPanel;
    ButtonC: TButton;
    ButtonEq: TButton;
    BitBtn1: TBitBtn;
    CJVScrollLabel1: TCJVScrollLabel;
    procedure CalcButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private-Deklarationen }
    FResult : Double;
    FDisplayText : String[30];
    FNegative : Boolean;
    FStatus : TCalcStatus;
    FDecimal : Boolean;
    operand : Double;
    operator : Char;

    procedure SetCalcStatus(stat : TCalcStatus);
    function GetCalcStatus : TCalcStatus;
    procedure SetResult(r : Double);
    function GetResult : Double;
    procedure SetDisplayText(s : String);
    function GetDisplayText : String;
    property Status : TCalcStatus read GetCalcStatus write SetCalcStatus;
    property DisplayText : String read GetDisplayText write SetDisplayText;

  public
    { Public-Deklarationen }
    property CalcResult : Double read GetResult write SetResult;

    procedure Clear;
  end;

var
  Calculator: TCalculator;

function ShowCalculator(var number : Double) : Boolean;
{ display modal (inital result=number); return "number", if TRUE }

implementation

uses UnitPrincipal;

{$R *.DFM}

function ShowCalculator(var number : Double) : Boolean;
begin
  Calculator := TCalculator.Create(application);
  try
    Calculator.CalcResult := number;
    if (Calculator.ShowModal = MROK) then
      number := Calculator.CalcResult;
  finally
    Calculator.Free;
  end;
end;


procedure TCalculator.SetCalcStatus(stat : TCalcStatus);
begin
  FStatus := stat;
end;

function TCalculator.GetCalcStatus : TCalcStatus;
begin
  result := FStatus;
end;

procedure TCalculator.SetResult(r : Double);
begin
  FResult := r;
  DisplayText := FloatToStrF(FResult, ffFixed, 10,2);  { 3 dec. places }
end;


function TCalculator.GetResult : Double;
begin
  result := StrToFloat(DisplayText);
end;


procedure TCalculator.SetDisplayText(s : String);
const
  MAX_LEN = 28;
begin
  if (Length(s) <= MAX_LEN) then
    resultLabel.Caption := s
  else
    MessageBeep(MB_ICONSTOP);
end;


function TCalculator.GetDisplayText : String;
begin
  result := resultLabel.Caption;
end;


procedure TCalculator.FormCreate(Sender: TObject);
begin
  Clear;
end;


procedure TCalculator.Clear;
begin
  Status := CS_FIRST;
  DisplayText := '0,00';
  operand := 0;
  operator := #0;
end;


procedure TCalculator.CalcButtonClick(Sender: TObject);
var
  k : Char;
begin
  if (Sender is TButton) then begin
    ButtonEq.SetFocus;  { default button }
    k := Char(TButton(Sender).Tag);
    FormKeyPress(Sender, k);
  end;
end;

procedure TCalculator.FormKeyPress(Sender: TObject; var Key: Char);
const
  KEY_SIGN = '#';
  KEY_CLEAR = 'C';
  KEY_DECIMAL = '.';

  ERR_TXT = 'Error';
var
  k : Char;
begin
  k := UpCase(key);

  if (k = decimalSeparator) then
    k := KEY_DECIMAL;

  if (Status <> CS_ERROR) or (k = KEY_CLEAR) then
  case k of
    '0'..'9': begin
      if (Status = CS_FIRST) or (DisplayText = '0') then
        DisplayText := '';
      Status := CS_VALID;
      DisplayText := DisplayText + k;
    end;

    #8 : begin
      if (Length(DisplayText) > 0) then begin
        DisplayText := Copy(DisplayText, 1, Length(DisplayText)-1);
        if (Length(DisplayText) = 0) then
          DisplayText := '0';
        Status := CS_VALID;
      end;
    end;

    KEY_DECIMAL: begin
      if (Pos(decimalSeparator, DisplayText) = 0) then
        DisplayText := DisplayText + decimalSeparator;
      Status := CS_VALID;
    end;

    '+', '-', '/', '*', '=' : begin
      case operator of
        '+': begin
          CalcResult := CalcResult + operand;
        end;

        '-': begin
          CalcResult := operand - CalcResult;
        end;

        '*': begin
          CalcResult := CalcResult * operand;
        end;

        '/': begin
          if (CalcResult = 0) then
            Status := CS_ERROR
          else
            CalcResult :=  operand / CalcResult;
        end;

      end;

      if (Status <> CS_ERROR) then begin
        Status := CS_FIRST;
        operand := CalcResult;
        operator := k;
      end;
    end;

    KEY_SIGN: begin
      CalcResult := -CalcResult;
    end;

    KEY_CLEAR: begin
      Clear;
    end;

  end;

  if (Status = CS_ERROR) then
    DisplayText := ERR_TXT;
end;


procedure TCalculator.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TCalculator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprincipal.Enabled := True;
end;

procedure TCalculator.FormShow(Sender: TObject);
begin
frmprincipal.Enabled := False;
end;


procedure TCalculator.FormActivate(Sender: TObject);
begin
frmprincipal.Enabled := False;
end;

end.

