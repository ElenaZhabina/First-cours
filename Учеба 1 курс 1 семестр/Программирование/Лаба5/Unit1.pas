unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn2: TButton;
    strngrd1: TStringGrid;
    btn4: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    btn1: TButton;
    lbl12: TLabel;
    lbl14: TLabel;
    mmo1: TMemo;
    btn3: TButton;
    lbl13: TLabel;
    btn5: TButton;
    lbl15: TLabel;
    btn6: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: array of array of integer;
  n, m: integer;
implementation

{$R *.dfm}

procedure TForm1.btn4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i, j: integer;
begin
  Randomize;
  n := StrToInt(edt1.text);
  m := StrToInt(edt2.text);
  SetLength(a, N, m);
  for i := 0 to n - 1 do
    for j := 0 to m - 1 do
      a[i, j] := Random(30) - 20;
  with strngrd1 do
  begin
    RowCount := n + 1;
    ColCount := m + 1;
    I := 0;
    for j := 1 to rowcount do
      Cells[i, j] := IntToStr(J);
    j := 0;
    for i := 1 to colcount do
      Cells[i, j] := IntToStr(i);
    for i := 1 to n do
      for j := 1 to m do
        Cells[j, i] := IntToStr(a[i - 1, j - 1]);
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  i, j: integer;
  max, maxi, maxj: integer;
begin
  mmo1.Lines.Clear;
  for i := 0 to n - 1 do
  begin
    max := a[i, 0];
    maxi := i;
    maxj := 0;
    for j := 0 to m - 1 do
      if a[i, j] > max then
      begin
        max := a[i, j];
        maxi := i;
        maxj := j;
      end;
    mmo1.Lines.Add('Максимальный элемент' + inttostr(i + 1) + ' строки =' +
      inttostr(max));
    a[maxi, maxj] := 0;
  end;
  for i := 1 to n do
    for j := 1 to m do
      strngrd1.Cells[j, i] := IntToStr(a[i - 1, j - 1]);
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  i, j: integer;
  max, maxj: integer;
begin
  mmo1.Lines.Clear;
  max := a[0, 0];
  maxj := 0;
  for i := 0 to n - 1 do
    for j := 0 to m - 1 do
      if a[i, j] > max then
      begin
        max := a[i, j];
        maxj := j;
      end;
      mmo1.Lines.Add('Максимальный элемент массива ='+inttostr(max));
  m := m + 1;
  SetLength(a, n, m);
  for j := m - 1 downto maxj + 1 do
    for i := 0 to n - 1 do
      a[i, j] := a[i, j - 1];
  for i := 0 to n - 1 do
    a[i, maxj + 1] := 0;
  with strngrd1 do
  begin
    RowCount := n + 1;
    ColCount := m + 1;
    I := 0;
    for j := 1 to RowCount do
      Cells[i, j] := IntToStr(J);
    j := 0;
    for i := 1 to ColCount do
      Cells[i, j] := IntToStr(i);
    for i := 1 to n do
      for j := 1 to m do
        Cells[j, i] := IntToStr(a[i - 1, j - 1]);
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
var
  i,j:integer;
  p:integer;
begin
  if m>=2 then
  for i:=0 to n-1 do
  begin
   p:=a[i,0];
   a[i,0]:=a[i,m-2];
   a[i,m-2]:=p;
  end;
   for i := 1 to n do
      for j := 1 to m do
        strngrd1.Cells[j, i] := IntToStr(a[i - 1, j - 1]);
end;

procedure TForm1.btn5Click(Sender: TObject);
var
  i, j, k, l: Integer;
  flag:boolean;
begin
  i:=0;
  repeat
  
    for j := 0 to n - 1 do
      if (a[j, i] > 0) and (a[j,i] mod 2 <>0) then
      begin
      for l:=i to m-2 do
        for k := 0 to n - 1 do
         a[k,l]:=a[k,l+1];
         m:=m-1;
         setlength(a,n,m);
         break;
      end;
    flag:=true;
  if m<>0 then
  begin
   for l:=0 to n-1 do
   if (a[l, i] > 0) and (a[l,i] mod 2 <>0)then
   flag:=false;
   if flag then
   i:=i+1;
  end
  else
  i:=m;
  until i > m - 1;
  if m<>0 then begin
  with strngrd1 do
  begin
    RowCount := n + 1;
    ColCount := m + 1;
    I := 0;
    for j := 1 to RowCount do
      Cells[i, j] := IntToStr(J);
    j := 0;
    for i := 1 to ColCount do
      Cells[i, j] := IntToStr(i);
    for i := 1 to n do
      for j := 1 to m do
        Cells[j, i] := IntToStr(a[i - 1, j - 1]);
  end;
  end
  else
  mmo1.Lines.Add('Был удалён весь массив')
end;

end.

