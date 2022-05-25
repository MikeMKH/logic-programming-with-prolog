factorial(1,1) :- !.
factorial(N,Nfact):-N1 is N-1,
 factorial(N1,Nfact1),Nfact is N*Nfact1.

go :-
  repeat,read_and_check(N,Type),
  write(N),write(' is '),write(Type),nl,N=:=100.
read_and_check(N,Type):-
  write('Enter next number '),read(N),check(N,Type).
check(N,even) :- 0 is N mod 2, !.
check(_,odd).
