program Project1;



{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a,b: integer;
begin
  write('The first number: '); readln(a);
  write('The second number: '); readln(b);
  writeln('Sum ',a,' + ',b,' = ',a+b);
  writeln('Residual ',a,' - ',b,' = ',a-b);
  writeln('Generation ',a,' * ',b,' = ',a*b);
  writeln('Segmentation ',a,' / ',b,' = ',(a/b):5:2);
  readln;
end.



