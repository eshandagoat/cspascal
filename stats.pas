program stats;
uses csp;
var
  mylist : list;
  n : integer;
begin
  { ask user for number of random elements }
    { if user gives  bad number, tell them to try again }
  { fill mylist with n random elemtents }
  { print mylist }
  repeat
    writeln('how many random elements?');
    readln(n);
    if (n <= 0) or (n > size) then
      writeln('bigger than 0 and smaller than ', size,' needed');
  until (n > 0) and (n <= size);
  randomize;
  randomlist(mylist, n);
  printlist(mylist);

  if isincreasing(mylist) then
    writeln('IS INCREASING')
  else
    writeln('NOT INCREASING');
  bubblesort(mylist);
  printlist(mylist);

   if isincreasing(mylist) then
    writeln('IS INCREASING')
  else
    writeln('NOT INCREASING');
  readln;

  writeln('the average = ', average(mylist):3:2 );
  writeln('the median is = ', median(mylist));
  readln;
end.




end.