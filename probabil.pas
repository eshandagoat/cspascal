program probability;
var
  i : integer;
  p : integer;
begin
  randomize;
  p := random(10);
  if p < 2 then writeln('Red')
  else if p < 7 then writeln('blue')
  else writeln('yellow');
  readln;
end.