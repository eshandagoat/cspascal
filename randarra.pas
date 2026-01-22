PROGRAM randarray(output);
{ Create an array type and variable }
CONST
  SIZE = 20;
TYPE
  List = ARRAY[1..SIZE] OF INTEGER;
VAR
  arr : List;
  i, sum : INTEGER;
BEGIN
  Randomize;

  FOR i := 1 TO SIZE DO arr[i] := Random(100);

  { Write a FOR loop to print each element of the array }
  FOR i := round(size/2) TO size DO Writeln('arr[', i,'] = ', arr[i]);

  sum := 0;
  FOR i := 1 TO size DO sum := sum + arr[i];
  Writeln('Sum = ', sum);

  Read(arr[1]);
END.