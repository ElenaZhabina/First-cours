unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    EChislo1: TEdit;
    EChislo2: TEdit;
    ESumma: TEdit;
    ERazn: TEdit;
    EProizv: TEdit;
    EDelenie: TEdit;
    BRasschet: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure BRasschetClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BRasschetClick(Sender: TObject);
Var
LChislo1,       //������ �����
LChislo2,       //������ �����
LSumma,         //����� �����
LRaznost,       //�������� �����
LProizvedenie,  //������������ �����
LChastnoe: Real //������� �����

begin
 LChislo1 := StrToFloat(EChislo1.Text);
 LChislo2 := StrToFloat(EChislo2.Text);
 LSumma := LChislo1+LChislo2;
 LRaznost:= LChislo1-LChislo2;
 LProizvedenie:= LChislo1*LChislo2;
 LChastnoe:= LChislo1/LChislo2;


 ESumma.Text:=FloatToStr(LSumma);
 ERazn.Text:= FloatToStr(LRaznost);
 EProizv.Text:= FloatToStr(LProizvedenie);
 EDelenie.Text:= FloatToStr(LChastnoe);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Close;
end;




end.
