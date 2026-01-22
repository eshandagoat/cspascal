program userinput;
var
  n : integer;
  times : integer;
  i : integer;
Function getvalue : integer;
  var
    num : integer;
  function valid(a : integer) : boolean;
    begin
    valid := (num >= 0) and (num <= 50);
    end;
  begin
    Repeat
    Writeln('Write a number between 0 and 50');
    Readln(num);
    if not valid(num) then writeln('Try again')
    until valid(num);
    getvalue := num;
  end;

begin
{Ask the user how many numbers they will enter}
{Loop that many  times}
  Write('How many times?');
  Readln(times);
  sum := 0
  for i := 1 to times do
  begin
  n := getvalue;
  end;

end.