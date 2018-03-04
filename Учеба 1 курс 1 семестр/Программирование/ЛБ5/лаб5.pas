unit лаб5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
 var
 i,
 j,
 l,
 k,
 n,
 m,
 p:integer;
    x:array[1..100,1..100]of integer;
    y:array[1..100]of integer;

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
  p:=x[1,1];

for i:=1 to n do
  for j:=1 to m do
k:=0;
 for i:=1 to n do
  for j:=1 to m do
    if(p=x[i,j])then
    begin
      k:=k+1;
      y[k]:=j;
    end;

 for l:=1 to k do
 for i:=1 to n do
  for j:=y[l] to m do
    x[i,j]:=x[i,j+1];

  for j:=1 to m-k do
  begin
    for i:=1 to n do
      Memo1.Text:=Memo1.Text+IntToSTr(x[i,j])+' ';
    Memo1.Text:=Memo1.Text+#13#10;
  end;
end;


procedure TForm4.Button2Click(Sender: TObject);
begin
Close;
end;

end.
