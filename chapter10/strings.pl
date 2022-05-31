spalindrome(S) :-
  name(S, L), reverse(L, L).

remove_final(S, R) :-
  name(S, L), reverse(L, End),
  remove_ending_spaces(End, X),
  reverse(X, Y), name(R, Y).
remove_ending_spaces([], []) :- !.
remove_ending_spaces([32|L], R) :- remove_ending_spaces(L, R), !.
remove_ending_spaces(L, L).

replace_1st_with(C, S, R) :-
  name(S, L), name(C, X),
  replace_1st_with_process(X, L, R1), name(R, R1).
replace_1st_with_process([X], [_|S], [X|S]).