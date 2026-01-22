Unit csp;

interface

{list data type}
const
  size = 255;

type
  list = array[0..size] of integer;

{List functions/procedures}
function length(alist : list) : integer;
procedure append(var alist: list; value : integer);
procedure insert(var alist : list; i, value : integer);
procedure remove(var alist : list; i : integer);
procedure printlist( var alist: list);
function sum(alist : list) : integer;
function average(alist : list) : real;
{procedure to fill list with random numbers }
procedure randomlist(var alist : list ; n : integer);
function smallest(alist : list) : integer;
procedure bubblesort(var mylist : list);
function median(alist : list) : real;
function isincreasing(alist : list) : boolean;
function linearsearch(alist : list; value : integer) : boolean;
function binarysearch(alist : list; value : integer) : boolean;
procedure swap(var a, b : integer);
procedure selectionsort(var alist : list);

{ String Functions }
Function Pow(n, p : integer) : integer;
function len( s: string) : integer;
function concat(s1, s2 : string) : string;
function reverse(s : string) : string;
function prefix(s : string; n : integer) : string;
function substring(s: string; start, n : integer) : string;

Implementation

{ List functions/procedures }
procedure printlist(var alist : list);
  var
    i : integer;
  begin
  for i := 1 to length(alist) do
    writeln('Element #', i, ' = ', alist[i]);
  end;

function length(alist : list) : integer;
begin
  length := alist[0];
end;

procedure append(var alist: list; value : integer);
begin
  alist[0] := length(alist) + 1;
  alist[length(alist) ]  := value;
end;

procedure insert(var alist : list; i, value : integer);
var
  a : integer;
begin
  if i <= 0 then
  writeln('invalid')
  else if i > length(alist) then
  append(alist, value)
  else
  begin
  alist[0] := length(alist) + 1;
  for a := 1 to length(alist) - i do
    alist[length(alist) - a + 1] := alist[length(alist) - a];
  alist[i] := value
  end;
  end;

procedure remove(var alist : list; i : integer);
var
  a : integer;
begin
  if (i > length(alist)) or (i < 1) then
  writeln('invalid')
  else
  alist[0] := length(alist) - 1;
  for a := 1 to length(alist) - i + 1 do
  alist[i + a - 1] := alist[i + a];
end;

function sum(alist : list) : integer;
var
  i, total : integer;
begin
  total := 0;
  for i := 1 to length(alist) do
    total := total + alist[i];
  sum := total;
end;

function average(alist : list) : real;
  begin
    average := sum(alist)/ length(alist);
  end;

procedure randomlist(var alist : list ; n : integer);
var
  i : integer;
begin
  randomize;
  for i := 1 to n do
    append(alist, random(100));
end;

function smallest(alist : list) : integer;
var
  min, i : integer;
begin
  min := alist[1];
  for i := 2 to length(alist) do
    if alist[i] < min then
      min := alist[i];
  smallest := min;
end;

procedure bubblesort(var mylist : list);
var
i, j, temp : integer;
begin
  for i := 1 to length(mylist) - 1 do
      for j := 1 to length(mylist) - i do
        if (mylist[j] > mylist [j+1]) then
          swap(mylist[j], mylist[j + 1]);


end;

function median(alist : list) : real;
var
mid : integer;
temp : real;
begin
  bubblesort(alist);
  mid := 0;
  temp := 0;
 if (length(alist) mod 2 = 0) then
   begin
     mid := length(alist) div 2;
     temp := (alist[mid] + alist[mid +1])/2;
   end
 else
   begin
     mid := (length(alist) div 2) + 1 ;
     temp := alist[mid];
   end;
 median := temp;
end;

function isincreasing(alist : list) : boolean;
var
  i : integer;
  stillincreasing : boolean;
begin
  for i := 1 TO (length(alist) - 1) DO
    if alist[i] <= alist[i + 1] then
      stillincreasing := true
    else
      begin
        stillincreasing := false;
        break;
      end;
  isincreasing := stillincreasing;
end;

function linearsearch(alist : list; value : integer) : boolean;
var
 i, count : integer;
 found : boolean;
begin
  found := false;
  count := 0;
  for i := 1 to length(alist) do
  begin
    count := count +1;
    if alist[i] = value then
    begin
      found := true;
      break;
    end;
  end;
  writeln('number of searches = ', count);
  linearsearch := found;
end;

function binarysearch(alist : list; value : integer) : boolean;
var
  l, r, mid, count : integer;
  found : boolean;
begin
  found := false;
  l := 1;
  r := length(alist);
  count := 0;
  repeat
    count := count + 1;
    mid := (l + r) div 2;
    if alist[mid] = value then begin
      found := true;
      break;
    end
    else if alist[mid] < value then l := mid + 1
    else r := mid - 1;
  until l > r;
  writeln('Number of searches = ', count);
  binarysearch := found;
end;

procedure swap(var a, b : integer);
var
  temp : integer;
begin
  temp := a;
  a := b;
  b := temp;
end;

procedure selectionsort(var alist: list);
var
  i, j, min : integer;
begin
  for i := 1 to lengthalist) - 1 do
  begin
    min := alist[i];
    FOR j := i + 1 to length(alist) do
    begin
      if alist[j] < alist[min]  then min := j;
    end
    swap(alist[i], alist[min]);
  end;
end;
{String Function}

function len(s : string) : integer;
  Begin
    Len := ord(s[0]);
    end;

function prefix(s : string; n : integer) : string;
  var
    i : integer;
    temps : string;
  begin
    if n > len(s) then
      n := len(s);
    temps[0] := chr(n);
    for i := 1 to n do
      temps[i] := s[i];
    prefix := temps;
  end;

function substring(s: string; start, n : integer) : string;
  var
    temps : string;
    i : integer;
  begin
    if start > len(s) then
      substring := ''
    else
    begin
     if n > len(s) - start + 1 then
       n := len(s) - start + 1;

    temps[0] := chr(n);
    for i := 1 to n do
      temps[i] := s[start + i - 1];
    substring := temps;
    end;
  end;

function reverse(s: string) : string;
  var
    i : integer;
    temps : string;
  begin
    temps[0] := s[0];
    for i := 1 to len(s) do
      temps[i] := s[len(s) - i + 1];
    reverse := temps;
  end;

function concat(s1, s2 : string) : string;
  var
    temps : string;
    i : integer;
  begin
    temps[0] := chr(len(s1) + Len(s2));

    for i := 1 to len(s1) do
      temps[i] := s1[i];

    for i := 1 to len(s2) do
      temps[i + len(s1)] := s2[i];
    concat := temps;
  end;



function pow(n, p : integer) : integer;
  var
    prod, i : integer;
  Begin
    if p < 0 then prod := 0
    else
    begin
      prod := 1;
      for i := 1 to p do
        prod := prod*n;
      end;
      pow := prod;
    end;
  end.

