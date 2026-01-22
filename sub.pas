program sub;
var
  s1, s2 : string;
  i, j : integer;

function substring(s : string; start, len : integer) : string;
  var
    i : integer;
    temps : string;
  Begin
    If len > length(s) - start + 1 then temps[0] := chr(length(s) - start + 1
    for i := 1 to len do
      temps[i] := s[i + start - 1];
    temps[0] := chr(len);
    substring := temps;
  end;

Begin
  s1 := substring('HelloMrMurryYouSuck', 6, 7);
  writeln('Hello -> ', s1);

  read(i);
End.