unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
Var
k : Integer  ;
e, y, s :real;
begin
e :=StrToFloat(Edit1.Text);
k :=1;
s :=0;
repeat
y:= k+1;
s :=s+y;
k :=k+1;
until y>=e;
Edit2.Text :=FloatToStr(s)+ '  ' + IntToStr(k);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Close ;
   end ;
end.
