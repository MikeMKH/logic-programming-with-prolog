pred1([_|L],L).

inc([],[]).
inc([X|L], [X1|L1]) :-
  X1 is X + 1,
  inc(L,L1).

palindrome(L) :- reverse(L, R), R = L.

putfirst(X,L,[X|L]).

putlast(X,L,R) :- append(L,[X],R).

p1(L,R) :- findall([X],member(X,L),R).
p2(L,R) :- findall(pred(X,X),member(X,L),R).
p3(L,R) :- findall([element,X],member(X,L),R).