makelower :-
  get0(X), process_makelower(X).
process_makelower(42).
process_makelower(10) :- nl,makelower.
process_makelower(X) :-
  X =\= 10,
  convert_tolower(X, Y),
  put(Y),makelower.
convert_tolower(X, Y) :-
  X >= 65, X =< 90,
  Y is X + 32.
convert_tolower(X, X) :- X < 65.
convert_tolower(X, X) :- X > 90.

readline :-
  get0(X), process_readline(X).
process_readline(42).
process_readline(10) :- write(10),nl,readline.
process_readline(X) :-
  X =\= 10,
  write(X),write(' '),
  readline.