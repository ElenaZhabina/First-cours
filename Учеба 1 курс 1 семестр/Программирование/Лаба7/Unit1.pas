unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl7: TLabel;
    lbl14: TLabel;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl1: TLabel;
    lbl15: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    btn1: TButton;
    btn5: TButton;
    grp2: TGroupBox;
    lbl9: TLabel;
    btn2: TButton;
    grp4: TGroupBox;
    lbl11: TLabel;
    btn4: TButton;
    grp5: TGroupBox;
    lbl12: TLabel;
    btn6: TButton;
    mmo1: TMemo;
    grp3: TGroupBox;
    lbl10: TLabel;
    btn3: TButton;
    mmo2: TMemo;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: array of array of Integer;
  n, m: integer;
  f, f1: textfile;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
  begin
    AssignFile(f, dlgOpen1.FileName);
    mmo1.Lines.LoadFromFile(dlgOpen1.FileName);
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i, j: integer;
  max: integer;
begin
  Reset(f);
  read(f, n);
  read(f, m);
  Readln(f);
  SetLength(a, n, m);
  i := 0;
  while not Eof(f) do
  begin
    j := 0;
    while not Eoln(f) do
    begin
      read(f, a[i, j]);
      Inc(j);
    end;
    inc(i);
    Readln(f);
  end;
  CloseFile(f);
  max := a[0, 0];
  for i := 0 to n - 1 do
    for j := 0 to m - 1 do
      if abs(a[i, j]) > abs(max) then
        max := a[i, j];
  for i := 0 to n - 1 do
    for j := 0 to m - 1 do
      if a[i, j] = 0 then
        a[i, j] := max;
  if dlgSave1.Execute then
  begin
    if Pos('.txt', dlgSave1.FileName) = 0 then
      dlgSave1.filename := dlgSave1.filename + '.txt';
    AssignFile(f1, dlgSave1.FileName);
  end;
  rewrite(f1);
  write(f1, n);
  write(f1, ' ');
  write(f1, m);
  Writeln(f1);
  for i := 0 to n - 1 do
  begin
    for j := 0 to m - 1 do
    begin
      write(f1, a[i, j]);
      if j < m - 1 then
        write(f1, ' ');
    end;
    if (i < n - 1) then
      writeln(f1);
  end;
  CloseFile(f1);
  mmo2.Lines.LoadFromFile(dlgSave1.FileName);
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  i, j: integer;
  max, maxi: integer;
begin
  Reset(f);
  read(f, n);
  read(f, m);
  Readln(f);
  SetLength(a, n, m);
  i := 0;
  while not Eof(f) do
  begin
    j := 0;
    while not Eoln(f) do
    begin
      read(f, a[i, j]);
      Inc(j);
    end;
    inc(i);
    Readln(f);
  end;
  CloseFile(f);
  max := a[0, 0];
  maxi := 0;
  for i := 0 to n - 1 do
    for j := 0 to m - 1 do
      if abs(a[i, j]) > abs(max) then
      begin
        max := a[i, j];
        maxi := i;
      end;
  n := n + 1;
  setlength(a, n, m);
  for j := n - 1 downto maxi + 1 do
    for i := 0 to m - 1 do
      a[j, i] := a[j - 1, i];
  for i := 0 to m - 1 do
    a[maxi + 1, i] := a[n - 1, i];
  if dlgSave1.Execute then
  begin
    if Pos('.txt', dlgSave1.FileName) = 0 then
      dlgSave1.filename := dlgSave1.filename + '.txt';
    AssignFile(f1, dlgSave1.FileName);
  end;
  rewrite(f1);
  write(f1, n);
  write(f1, ' ');
  write(f1, m);
  Writeln(f1);
  for i := 0 to n - 1 do
  begin
    for j := 0 to m - 1 do
    begin
      write(f1, a[i, j]);
      if j < m - 1 then
        write(f1, ' ');
    end;
    if (i < n - 1) then
      writeln(f1);
  end;
  CloseFile(f1);
  mmo2.Lines.LoadFromFile(dlgSave1.FileName);
end;

procedure TForm1.btn6Click(Sender: TObject);
var
  i, j: integer;
  p: integer;
begin
  Reset(f);
  read(f, n);
  read(f, m);
  Readln(f);
  SetLength(a, n, m);
  i := 0;
  while not Eof(f) do
  begin
    j := 0;
    while not Eoln(f) do
    begin
      read(f, a[i, j]);
      Inc(j);
    end;
    inc(i);
    Readln(f);
  end;
  CloseFile(f);
  for i := 0 to n - 1 do
  begin
    p := a[i, m div 2 - 1];
    a[i, m div 2 - 1] := A[i, m div 2];
    A[i, m div 2] := p;
  end;
  if dlgSave1.Execute then
  begin
    if Pos('.txt', dlgSave1.FileName) = 0 then
      dlgSave1.filename := dlgSave1.filename + '.txt';
    AssignFile(f1, dlgSave1.FileName);
  end;
  rewrite(f1);
  write(f1, n);
  write(f1, ' ');
  write(f1, m);
  Writeln(f1);
  for i := 0 to n - 1 do
  begin
    for j := 0 to m - 1 do
    begin
      write(f1, a[i, j]);
      if j < m - 1 then
        write(f1, ' ');
    end;
    if (i < n - 1) then
      writeln(f1);
  end;
  CloseFile(f1);
  mmo2.Lines.LoadFromFile(dlgSave1.FileName);
end;

procedure TForm1.btn4Click(Sender: TObject);
var
  i, j, k, l: integer;
  p: integer;
  flag: Boolean;
begin
  Reset(f);
  read(f, n);
  read(f, m);
  Readln(f);
  SetLength(a, n, m);
  i := 0;
  while not Eof(f) do
  begin
    j := 0;
    while not Eoln(f) do
    begin
      read(f, a[i, j]);
      Inc(j);
    end;
    inc(i);
    Readln(f);
  end;
  CloseFile(f);
  j := 0;
  while (j <= n - 1) do
  begin
    for i := 0 to m - 1 do
      if a[j, i] = 0 then
      begin
        if j < n - 1 then
        begin
          for l := j to n - 2 do
            for k := 0 to m - 1 do
              a[l, k] := a[l + 1, k];
          n := n - 1;
          SetLength(a, n, m);
          break;
        end
        else
        begin
          n := n - 1;
          SetLength(a, n, m);
          break;
        end;
      end;
    flag := True;
    if (j<=n-1) and (n<>0) then
    for i := 0 to m - 1 do
      if a[j, i] = 0 then
        flag := false;
    if flag then
      Inc(j);
  end;
  if dlgSave1.Execute then
  begin
    if Pos('.txt', dlgSave1.FileName) = 0 then
      dlgSave1.filename := dlgSave1.filename + '.txt';
    AssignFile(f1, dlgSave1.FileName);
  end;

  rewrite(f1);
  write(f1, n);
  write(f1, ' ');
  write(f1, m);
  Writeln(f1);
  for i := 0 to n - 1 do
  begin
    for j := 0 to m - 1 do
    begin
      write(f1, a[i, j]);
      if j < m - 1 then
        write(f1, ' ');
    end;
    if (i < n - 1) then
      writeln(f1);
  end;
  CloseFile(f1);
  mmo2.Lines.LoadFromFile(dlgSave1.FileName);

end;

end.

