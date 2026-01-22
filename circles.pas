PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;
Const
  times = 100;
VAR
  gm, gd, i, a, b, c : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  for i := 1 to times do
  Begin
    Randomize;
    a := random(640);
    b := random(480);
    c := random(100);

    setcolor(random(16));
    Circle(a, b, c);
  end;


  Read(i);
  CloseGraph;
END.
