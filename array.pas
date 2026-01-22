program arrays;

Type
  List = array [1..10] of integer;

var
  mylist :list;
  i : integer;
  max, min : integer;

Function minlist(alist : list) : integer;
  var
    min, i : integer;
  begin
    min := mylist[1];
    for i := 2 to 10 do
      if min > mylist[i] then min := mylist[i];

    minlist := min;
  end;

Begin
  randomize;
  for i := 1 to 10 do
    readln(mylist[i]);

  max := mylist[1];
  min := mylist[1];

  for i:= 1 to 10 do
  Begin
    if max < mylist[i] then max := mylist[i];
    if min > mylist[i] then min := mylist[i];
    write(mylist[i], ' ');
  end;

  writeln(' ');
  writeln('Max of list is = ', max);
  Writeln('Min of list is = ', minlist(mylist) );

  readln(i);
End.