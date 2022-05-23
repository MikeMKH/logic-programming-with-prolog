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

copyterms(Input, Output) :-
  seeing(S),telling(T),
  see(Input),tell(Output),
  copying,
  seen,see(S),told,tell(T).
copying :- read(X),process_copying(X).
process_copying(end_of_file).
process_copying(X) :-
  X \= end_of_file,
  write(X),write('.'),nl,copying.

readline :-
  get0(X), process_readline(X).
process_readline(42).
process_readline(10) :- write(10),nl,readline.
process_readline(X) :-
  X =\= 10,
  write(X),write(' '),
  readline.

combine(In1, In2, Out) :-
  seeing(S),telling(T),
  tell(Out),
  see(In1),copyfile,seen,
  see(In2),copyfile,seen,
  seen,see(S),told,tell(T).
copyfile :-
  read(X),process_copyfile(X).
process_copyfile(end_of_file).
process_copyfile(X) :-
  write(X),nl,copyfile.