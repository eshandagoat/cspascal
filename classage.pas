program AgeClassifier(Input, Output);
var
  a : integer;
  age: integer;
  class: char;

function ClassifyAge(age : integer) : char;
  Begin
  if (age > 19) then ClassifyAge := 'a' else
  if (age < 13) then ClassifyAge := 'c' else ClassifyAge := 't';
  end;

procedure printageclass(class : char);
  begin
  if class = 'a' then writeln('You are an adult');
  if class = 'c' then writeln('You are a child');
  if class = 't' then writeln('You are a teen');

  end;

BEGIN
  a := 0;
  repeat
  writeln( 'What is your age?');
  read(age);
  IF (age < 0) or (age > 120) THEN writeln ('Please enter a number between 0 and 120')
  until (age <= 120) and (age >= 0);

  class := ClassifyAge(age);
  Printageclass(class);
  readln(age);

End.





