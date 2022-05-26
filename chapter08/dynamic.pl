:- dynamic(animal/1).

% add using 'animal'. like 'lily'. and 'end'.
add_data :-
  repeat,read(Animal),process_add_data(Animal),Animal=end. 
process_add_data(end) :- !.
process_add_data(X) :- animal(X),!.
process_add_data(Animal) :- assertz(animal(Animal)),!.
