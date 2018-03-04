program Pлаб1;

uses
  Forms,
  Uлаб1 in 'Uлаб1.pas' {Form1},
  раб in 'раб.pas' {Form2},
  лаб in 'лаб.pas' {Form3},
  лаб5 in 'лаб5.pas' {Form4},
  раб5 in 'раб5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
