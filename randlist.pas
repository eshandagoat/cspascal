program randlist;
uses csp;
var
  mylist : list;
  i : integer;
BEGIN
  randomize;
  for i := 1 to 20 do
    append(mylist, random(67) + 1);
  printlist(mylist);

  {see if 67 is in the list }
  for i := 1 to length(mylist) do
  if mylist[i] = 67 then
  writeln('yay 67 !!');
  readln;
END.