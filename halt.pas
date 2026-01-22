program halt;
var
  i : integer;
Begin
  i := 1;
  while i > 0 do
  Begin
    writeln('i =', i);
    i := i;
    i := i + 1;
  end;
  writeln('After loop i = ', i);
  read(i);
end.