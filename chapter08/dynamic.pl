:- dynamic(animal/1).
?- retractall(animal(_)).

% add using 'animal'. like 'lily'. and 'end'.
add_data :-
  repeat,read(Animal),process_add_data(Animal),Animal=end. 
process_add_data(end) :- !.
process_add_data(X) :- animal(X),!.
process_add_data(Animal) :- assertz(animal(Animal)),!.

display_animal :-
  animal(X),write(X),nl,fail.
display_animal.

remove_data(Animal) :- retract(animal(Animal)).
remove_data(_).
