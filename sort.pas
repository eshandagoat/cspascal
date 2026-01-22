program sort;
uses csp;
var
  mylist : list;
  i, j, temp : integer;
begin
  randomlist(mylist, 10);
  writeln('unstorted:');
  printlist(mylist);
  bubblesort(mylist);

  writeln('bubly sorted .oO 0_0');

  printlist(mylist);


  readln;
end.