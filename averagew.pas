program averageweight;

const
  maxsize = 20;

Type
  List =  array[1..maxsize] of real;

var
  weights : list;
  teamsize, i, a : integer;
  average : real;
  sum : real;

Begin
  Writeln('How many players on team?');
  Read(teamsize);

  for i := 1 to teamsize do
  begin
  writeln('What is the weight of player #',i,'?');
  read(weights[i]);
  end;

  for i := 1 to teamsize do writeln(weights[i]);

  sum:= 0;
  for i := 1 to teamsize do
  begin
    sum := sum + weights[i];
  end;

  average := sum / teamsize;
  writeln('The average weight is ', average);
  readln(a);
End.