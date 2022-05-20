makelower :-
  get0(X), process_makelower(X).
process_makelower(42).
process_makelower(13) :- nl.
process_makelower(X) :-
  X =\= 13,
  convert_tolower(X, Y),
  put(Y),makelower.
convert_tolower(X, Y) :-
  X >= 65, X =< 90,
  Y is X + 32.
convert_tolower(X, X) :- X < 65.
convert_tolower(X, X) :- X > 90.