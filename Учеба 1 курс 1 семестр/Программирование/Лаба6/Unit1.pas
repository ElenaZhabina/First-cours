unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
S : string;
i, Cnt : integer;
begin
S := Trim(Edit1.Text);
i := length(S);
Cnt := 0;
while (i > 0) and (S[i] <> ' ') do begin //Русские и английские буквы "К".
if S[i] in ['К', 'к', 'K', 'k'] then Inc(Cnt);
Dec(i);
end;
Edit2.Text := IntToStr(Cnt);

end;

end.
