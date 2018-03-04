unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
n, k: integer;
s , y : real;
begin
n:=StrToInt(Edit1.Text);
s:=0;
for k:=1 to n do
begin
  y:=(-1)/k*(k+1) ;
  s :=s+y
end;
Edit2.Text := FloatToStr(s);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Close ;
end;

end.
