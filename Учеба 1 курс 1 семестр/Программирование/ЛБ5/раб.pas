unit раб;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
var
i,
j,
m,
n,
min,
max:integer;
    nmin , nmax:integer;
    x,y:array[1..100,1..100]of integer;
begin
  n:=StrToInt(Edit1.Text);
  m:=StrToInt(Edit2.Text);
  StringGrid1.ColCount:=n;
  StringGrid1.RowCount:=m;
  Memo1.Clear();
  for i:=1 to  n do
    for j:=1 to m do
    begin
      x[i,j]:=Random(100);
      StringGrid1.Cells[i-1,j-1]:=IntToSTr(x[i,j]);
    end;


  for i:=1 to n do
  begin
    min:=x[i,1];nmin:=1;
    max:=x[i,1];nmax:=1;
    for j:=1 to m do
    begin
      if(abs(x[i,j])<min)then
      begin
        min:=x[i,j];
        nmin:=j;
      end;

      if(x[i,j]>max)then
      begin
        max:=x[i,j];
        nmax:=j;
      end;
    end;

    x[i,nmin]:=x[i,nmax];
  end;


  for j:=1 to m do
  begin
    for i:=1 to n do
      Memo1.Text:=Memo1.Text+IntToSTr(x[i,j])+' ';
    Memo1.Text:=Memo1.Text+#13#10;
  end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
Close;
end;

end.
