program P���1;

uses
  Forms,
  U���1 in 'U���1.pas' {Form1},
  ��� in '���.pas' {Form2},
  ��� in '���.pas' {Form3},
  ���5 in '���5.pas' {Form4},
  ���5 in '���5.pas' {Form5};

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
