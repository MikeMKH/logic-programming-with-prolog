?-op(100,xf,isa_dog).
?-op(100,xf,isa_cat).
?-op(100,xf,is_large).
?-op(100,xf,is_small).
?-op(100,xf,isa_large_dog).
?-op(100,xf,isa_small_animal).
?-op(100,xfy,chases).

fido isa_dog. fido is_large.
mary isa_cat. mary is_large.
rover isa_dog. rover is_small.
jane isa_cat. jane is_small.
tom isa_dog. tom is_small.
harry isa_cat.
fred isa_dog. fred is_large.
henry isa_cat. henry is_large.
bill isa_cat.
steve isa_cat. steve is_large.
jim is_large.
mike is_large.
X isa_large_dog:- X isa_dog,X is_large.
A isa_small_animal:- A isa_dog,A is_small.
B isa_small_animal:- B isa_cat,B is_small.
X chases Y:-
 X isa_large_dog, Y isa_small_animal,
 write(X),write(' chases '),write(Y),nl.