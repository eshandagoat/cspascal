program strings;
var
  name, msg : string;
  age : integer;
begin
  writeln('What is your name?');
  readln(name);
  writeln('What is your age?');
  readln(age);
  msg := 'Hi ' + name + '. It is cool that you are ';
  Writeln(msg, age, ' years old');
  Writeln('Your message is ', length(msg) , ' long');
  readln(age);

end.