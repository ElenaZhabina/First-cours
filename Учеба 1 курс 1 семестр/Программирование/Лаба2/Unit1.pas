unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    BSchet: TButton;
    BExit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RGChoise: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit7: TEdit;
    procedure BExitClick(Sender: TObject);
    procedure BSchetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BExitClick(Sender: TObject);
begin
Close ;
end;

procedure TForm1.BSchetClick(Sender: TObject);
Var
a,            //координата Х вершины А
a1,           //координата У вершины А
b,            //координата Х вершины В
b1,           //координата У вершины В
c,            //координата Х вершины С
c1,           //координата У вершины С
S,            //площадь треугольника
P : Real;     //периметр треугольника

begin
StrToFloat(Edit1.Text);
StrToFloat(Edit2.Text);
StrToFloat(Edit3.Text);
StrToFloat(Edit4.Text);
StrToFloat(Edit5.Text);
StrToFloat(Edit6.Text);
case RGChoise.ItemIndex of
0: begin
if ((a-c)>=0) and ((b1-c1)>=0) and ((b-c)>=0)and ((a1-c1)>=0) then
begin
S := ((a-c)+b-(b-c)+(a1-c1))/2;
Edit7.Text := FloatToStr(S);
end
else
Edit7.Text := FloatToStr(S);
end;
1: begin
if ((b-a)>=0) and ((b1-a1)>=0) and ((c-b)>=0)and ((c1-b1)>=0) and ((c-a)>=0)
  and ((c1-a1)>=0) then
begin
P :=((b-a)+(b1-a1))+((c-b)+(c1-b1))+((c-a)+(c1-a1)) ;
Edit7.Text := FloatToStr(P);
end
else
Edit7.Text := FloatToStr(P);



end;



end;

end;


end.
