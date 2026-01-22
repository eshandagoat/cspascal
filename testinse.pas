PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 8);
  Append(myList, 10);
  Append(myList, 12);
  Append(myList, 7);
  Insert(myList, 10, 100);
  remove(mylist,3);
  PrintList(myList);
  writeln('Sum of list = ', sum(mylist));
  writeln('average of list = ', average(mylist));
  readln;
END.