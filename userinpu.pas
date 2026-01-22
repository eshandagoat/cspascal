PROGRAM userinput;
const
  size = 7;
type
  gradelist - Array[size] of integer;

VAR
  n, times, i, sum : INTEGER;
  grades : gradelist;
FUNCTION GetValue(low, high : integer) : INTEGER;
  VAR
    num : INTEGER;
  FUNCTION Valid(a, low, high : INTEGER) : Boolean;
    BEGIN
      Valid := (a >= low) AND (a <= high) { in between 0 and 50 }
    END;
  BEGIN
    REPEAT
    Write('Enter a number between ', low, 'and', high');
    Read(num);
    IF NOT Valid(num) THEN Writeln('Try again');
    UNTIL Valid(num);
    GetValue := num;
  END;

BEGIN
{ Ask the user how many numbers they will enter }
{ Loop that many times }
{ Sum up all the numbers the user gives }
  times := getvalue(4,7);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
    grades[i] := GetValue(0, 100);
  END;

  for i := one to times do sum := sum + grades[i];
  Writeln('The sum is equal to ', sum);
  writeln('average = ', sum / times);
  Read(n);
END.

