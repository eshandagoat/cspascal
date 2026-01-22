program SoftballHeights;

const
  maxsize = 22;
Type
  list = array[1..maxsize] of integer;

var
  heights : list;
  teamnum, sum, i : integer;
  average : real;



begin
  writeln('How many players on the team?');
  readln(teamnum);
  for i := 1 to teamnum do
  begin
  writeln('What is the height of player #',i,'?');
  readln(heights[i]);
  end;

  for i:= 1 to teamnum do
  writeln(heights[i]);

  sum := 0;
  for i := 1 to teamnum do
  sum := sum + heights[i];

  average := sum/teamnum;
  writeln(average);

  readln(i)

end.