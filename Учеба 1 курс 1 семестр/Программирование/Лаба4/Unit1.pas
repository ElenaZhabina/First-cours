unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button4: TButton;
    Button5: TButton;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N : Integer;
  M : array of integer; //описание динамического массива целых чисел
  Mas: array of Integer;
implementation

{$R *.dfm}

procedure VivodMas(masiv: array of Integer; Edit: TEdit);
var i: Integer;
begin
Edit.Clear;
for i := 0 to Length(masiv)-1 do Edit.Text := Edit.Text + IntToStr(masiv[i]) + ' ';
end;

procedure TForm1.Button1Click(Sender: TObject);
var i: Integer;
begin
SetLength(Mas, StrToInt(Edit1.Text));
for i := 0 to Length(Mas)-1 do Mas[i] := RandomRange(-10, 60);
VivodMas(Mas, Edit2);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
Close ;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
i, j: Integer;
str: String;
begin
Edit3.Clear;
for i := 0 to Length(Mas)-1 do
begin
// Проверка на кратность трем
// Проверка на нечетность последней цыфры
str := IntToStr(Mas[i]);
Delete(str, 0, Length(str)-1);

if not ((Mas[i] mod 3 = 0) and (StrToInt(str) mod 2 = 1)) then
Edit3.Text := Edit3.Text +' '+ IntToStr(Mas[i]);
end;
end;


procedure TForm1.Button4Click(Sender: TObject);
var
i, Ind: Integer;
str: String;
begin
Edit4.Clear;
Ind := -1;
for i := 0 to Length(Mas)-1 do
begin
str := IntToStr(Abs(Mas[i]));
if (i mod 2 = 0) and (StrToInt(str[1]) = StrToInt(Edit6.Text)) then Ind := i;
end;
if Ind > -1 then
begin
SetLength(Mas, Length(Mas)+1);
for i := Length(Mas)-2 downto Ind do Mas[i+1] := Mas[i];
Mas[Ind] := StrToInt(Edit6.Text);
VivodMas(Mas, Edit4);
end else ShowMessage('Четных элементов, начинающихся с '+Edit6.Text+' нет');

end;


procedure TForm1.Button5Click(Sender: TObject);
var
StartInd, i, verh, niz: Integer;
VremMas: array [1..12] of Integer;
str: String;
begin
Edit5.Clear;
Edit6.Clear;
verh := 1;
niz := 12;
str := '';
if Length(Mas) < 13 then
begin
ShowMessage('В массиве не достаточно элементов! Массив автоматически будет расширен!');
StartInd := Length(Mas);
SetLength(Mas, 13);
for i := StartInd to 12 do Mas[i] := RandomRange(-10, 60);
end;
VivodMas(Mas, Edit5);
for i := 1 to 12 do VremMas[i] := Mas[i];
for i := 1 to 12 do
begin
if i mod 2 = 0 then begin Mas[i] := VremMas[niz]; Dec(niz); end
else begin Mas[i] := VremMas[verh]; Inc(verh); end;
end;

for i := 1 to 12 do str := str+IntToStr(i)+' ['+IntToStr(Mas[i])+']'+#13;
ShowMessage(str);
VivodMas(Mas, Edit5);

end;



procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin Mas := Nil;
 end;


end.
