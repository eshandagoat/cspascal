program gradeclassification(Input, Output);

var
  grade : integer;
  class : char;

function ClassifyGrade(grade : integer) : char;
begin
  if (grade > 89) then classifygrade := 'a' else
  if (grade < 90) and (grade > 79) then classifygrade := 'b' else
  if (grade < 80) and (grade > 70) then classifygrade := 'c' else
  if (grade = 70) then classifygrade := 'd' else
  classifygrade := 'f'

end;
procedure printgrade(class: char);
  begin
  if class = 'a' then writeln('You have an A')
  else if class = 'b' then writeln('You have a B')
  else if class = 'c' then writeln('You have a C')
  else if class = 'd' then writeln('You have a D')
  else writeln('You have an F, you are failing');
  end;

BEGIN
  repeat
    Writeln('What is your grade?');
    read(grade);
    if (grade < 0) or (grade > 100) then writeln('Please enter a grade between 0 and 100');
  until (grade >= 0) and (grade <= 100);
  class := ClassifyGrade(grade);
  Printgrade(class);
  readln(grade);

end.