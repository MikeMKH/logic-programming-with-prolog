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
process(63) :- nl.
process(X) :-
  X \= 10, X \= 63,
  put(X),fail.
