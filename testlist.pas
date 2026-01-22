program listtests;
uses csp;
var
 mylist : list;
 i : integer;


begin
  writeln('length of list = ', listlength(mylist));
  append(mylist, 5);
  append(mylist, 8);
  append(mylist, -50);
  append(mylist, 16);
  writeln('Length of list = ', listlength(mylist));

  printlist(mylist);

  append(mylist, 20);
  append(mylist, 15);

  readln(i);

end.