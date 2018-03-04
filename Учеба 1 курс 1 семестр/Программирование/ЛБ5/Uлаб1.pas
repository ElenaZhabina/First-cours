unit Uлаб1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Button4: TButton;
    Label7: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses раб, лаб, лаб5, раб5;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form5.Show;
end;

end.
