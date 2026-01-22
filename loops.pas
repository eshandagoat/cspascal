program loops;
var
  i : integer;
  c : char;
begin

write('Give me a number: ');
Readln(i);

while i <> -1 DO
begin
  writeln('Give me a number: ');
  readln(i);
end;

writeln('Out of loop');
readln(i);
end.