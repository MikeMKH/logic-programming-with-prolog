square_range(N1, N2) :- N1 > N2.
square_range(N1, N2) :-
  N1 =< N2,
  Sq is N1 * N1,
  write(Sq),nl,
  M is N1 + 1,
  square_range(M, N2).
