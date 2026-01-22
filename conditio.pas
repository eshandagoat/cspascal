Program conditionals;
var
  num, guess, i : integer;
Begin
  Randomize;
  num := Random(10);

  Repeat
    write('Guess a number between 0 and 10: ');
    Read(guess);
    if guess < num then writeln('Incorrect, too low')
    else if guess > num then writeln('incorrect, too high')
    else writeln('That is correct');
  Until num = guess;

  Read(guess)
End.