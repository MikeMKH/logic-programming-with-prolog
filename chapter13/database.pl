:- dynamic animal/1.

initialize :-
  retractall(animal(_)),
  assertz(animal(cat)),
  assertz(animal(dog)).

add(X) :-
  (animal(X), write('Already in the database.'), nl);
  (\+animal(X), assertz(animal(X)), write('Added.'), nl).

remove(X) :-
  (animal(X), retract(animal(X)), write('Removed.'), nl);
  (\+animal(X), write('Not in the database.'), nl).

list :-
  write('The database contains:'), nl,
  animal(X),
  write(X), nl,
  fail.