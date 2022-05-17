mother(ann,henry).
mother(ann,mary).
mother(jane,mark).
mother(jane,francis).
mother(annette,jonathan).
mother(mary,bill).
mother(janice,louise).
mother(lucy,janet).
mother(louise,caroline).
mother(caroline,david).
mother(caroline,janet).

father(henry,jonathan).
father(john,mary).
father(francis,william).
father(francis,louise).
father(john,mark).
father(gavin,lucy).
father(john,francis).

parent(victoria,george).
parent(victoria,edward).
parent(X,Y) :- mother(X,Y).
parent(X,Y) :- father(X,Y).
parent(elizabeth,charles).
parent(elizabeth,andrew).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z),ancestor(Z,Y). 

child_of(Child,Parent) :- parent(Parent,Child).

grandfather_of(Grandfather,Child) :- 
  father(Grandfather,Parent),child_of(Child,Parent).
grandmother_of(Grandmother,Child) :- 
  mother(Grandmother,Parent),child_of(Child,Parent).

great_grandfather_of(GreatGrandfather,Child) :-
  father(GreatGrandfather,Grandparent),
  child_of(Parent,Grandparent),
  child_of(Child,Parent).