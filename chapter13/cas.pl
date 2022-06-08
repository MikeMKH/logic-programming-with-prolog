:- dynamic counter/1.
:- retractall(counter(_)).
:- assertz(counter(0)).

% from https://www.swi-prolog.org/pldoc/man?section=transactions
increment(Delta) :-
  repeat,
  transaction(
    (counter(N),
    N1 is N + Delta),
    (retract(counter(_)),
    assertz(counter(N1))),
    counter_lock),!.