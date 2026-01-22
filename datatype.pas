program datatypes;
uses crt;
var
  s : shortint;
  b : byte;
  c : char;
  i : integer;
  w : word;
  l : longint;
Begin
  c := 'a';
  writeln(c, ' = ', ord(c));
  b := $FF;
  Writeln('b = ', b);
  b := b+1;
  Writeln('b = ', b);
  s := 127;
  writeln('s = ', s);
  s := s + 1;
  writeln('s = ', s);
  Readln(c);
  writeln('i = ', i);
  i := i + 1;
  writeln('i = ', i);
  writeln('w = ', w);
  w := w + 1;
  writeln('w = ', w);

End.