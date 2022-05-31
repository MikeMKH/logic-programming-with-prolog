spalindrome(S) :-
  name(S, L), reverse(L, L).

remove_final(S, R) :-
  name(S, L), reverse(L, End),
  remove_ending_spaces(End, X),
  reverse(X, Y), name(R, Y).
remove_ending_spaces([], []) :- !.
remove_ending_spaces([32|L], R) :- remove_ending_spaces(L, R), !.
remove_ending_spaces(L, L).