square_range(N1, N2) :- N1 > N2.
square_range(N1, N2) :-
  N1 =< N2,
  Sq is N1 * N1,
  write(Sq),nl,
  M is N1 + 1,
  square_range(M, N2).

prompt :-
  repeat, get0(X), process(X).
process(10) :- nl.
process(63) :-
  nl,
  repeat, get0(X), X =:= 10.
process(X) :-
  X \= 10, X \= 63,
  put(X),fail.

person(john,smith,45,london,doctor).
person(martin,williams,33,birmingham,teacher).
person(henry,smith,26,manchester,plumber).
person(jane,wilson,62,london,teacher).
person(mary,smith,29,glasgow,surveyor).

over40 :-
  person(_,_,Age,_,Profession), Age > 40,
  write(Profession), nl, fail.
over40.