pred1([_|L],L).

inc([],[]).
inc([X|L], [X1|L1]) :-
  X1 is X + 1,
  inc(L,L1).

palindrome(L) :- reverse(L, R), R = L.