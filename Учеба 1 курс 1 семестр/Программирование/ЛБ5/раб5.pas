unit раб5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
 var i,j,m,n,k:integer;
    x:array[1..100,1..100]of integer;
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

    for j:=1 to m do
    begin
      k:=x[1,j];
      x[1,j]:=x[n,j];
      x[n,j]:=k;
    end;


  for j:=1 to m do
  begin
    for i:=1 to n do
      Memo1.Text:=Memo1.Text+IntToSTr(x[i,j])+' ';
    Memo1.Text:=Memo1.Text+#13#10;
  end;
end;


procedure TForm5.Button2Click(Sender: TObject);
begin
Close;
end;

end.
