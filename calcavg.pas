program calc_avg;

const
  maxsize = 20;

type
  list = array[1..maxsize] of real;
var
  i, gradenum : integer;
  grade : list;
  average, sum, avg : real;

function calcavg : real;
  begin
    repeat
      writeln('How many assignments?');
      readln(gradenum);
      If (gradenum < 1) or (gradenum > maxsize) then writeln('Try Again');
    until (gradenum > 1) and (gradenum <= maxsize);
  for i := 1 to gradenum do
    begin
      writeln('Grade in assignment #',i,' :');
      readln(grade[i]);
    end;
  sum:= 0;
  for i := 1 to gradenum do
    sum := sum + grade[i];
    average := sum / gradenum;
    calcavg := average;
  end;

function gradeletter(avg : real) : char;
  begin
  if (avg > 89.5) then gradeletter := 'A'
  else if (avg > 79.5) then gradeletter := 'B'
  else if (AVG > 70.5) then gradeletter := 'C'
  else if (avg > 69.5) then gradeletter := 'D'
  else gradeletter := 'F';
  end;

Begin
  calcavg;
  writeln('Average is ',average, ' and the grade letter is ', gradeletter(average));
  readln(i);
End.