program testconcat;
uses csp;
var
  s : string;

Begin
  if Concat('Mr', 'Murry') = 'MrMurry' then
    writeln('Pass')
  else
   writeln('fail');
  if concat('Hello ', 'world!') = 'Hello world!' then
    writeln('pass')
  else
    writeln('fail');
  if concat('McIntosh', 'High School') = 'McIntoshHigh School' then
    writeln('pass')
    else writeln('fail');



  writeln(reverse('mrmurry'));
  writeln(prefix('mrmurry', 2));
  writeln(substring('mrmurry', 2, 3));


  writeln('test prefix with bad input : ', prefix('mrmurry', 17));
  writeln('tests substring with bad input : ', substring('mrmurry', 6, 7));
  Readln(s);
end.