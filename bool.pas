program bool;
uses crt;
var
  a, b : integer;
  p, q : boolean;
  c : char;
begin
  p := 2 + 2 = 4;
  q := false;
  writeln(p);
  if p or q then writeln('if')
  else writeln('else');

  { readln(a); }
  if(a >= 13) and (a <= 19) then writeln('Teenager')
  else if (a > 19) then writeln('Adult')
  else writeln('kid');

  repeat
    if keypressed then
    begin
      c := readkey;
      clrscr;
      a := 1;
    end;
    writeln('a = ', a);
    a := a + 1
  until c = 'q';
  writeln('Out of loop');

  readln(a);
end.