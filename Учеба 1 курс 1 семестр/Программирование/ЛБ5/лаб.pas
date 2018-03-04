unit лаб;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
i,
j,
l,
k,
m,
n,
p,
q,
kol:integer;

    f:boolean;
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
    q:=1; kol:=0;
    while(q<=4)do
      begin
        for p:=1 to m do
          if(x[q,p]=0)then
          begin
            k:=q;
            kol:=kol+1;
               for  i:=n+1 downto k+1 do
              for j:=1 to m do
                x[i,j]:=x[i-1,j];
            for l:=1 to m do
              x[k+1,l]:=0;
            q:=q+1;
            break;
          end;
          q:=q+1;
      end;
  for j:=1 to m do
  begin
    for i:=1 to n+kol do
      Memo1.Text:=Memo1.Text+IntToSTr(x[i,j])+' ';
    Memo1.Text:=Memo1.Text+#13#10;
end;
 end;
procedure TForm3.Button2Click(Sender: TObject);
begin
Close;
end;

end.

