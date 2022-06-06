sentence --> np, vp.
np --> det, adjective, noun.
np --> adjective, noun.
np --> det, noun.
np --> noun.
vp --> v, np.
vp --> v.
adjective --> [X], {member(X, [little, large, sweet, plush, silly, quick])}.
det --> [X], {member(X, [a, the, an])}.
noun --> [X], {member(X, [dog, cat, bat, lily, rabbit, chicken, duck])}.
v --> [X], {member(X, [chased, saw, got])}.

% ?- phrase(sentence, [lily,got,the,duck]).
% true .

% ?- phrase(sentence, [lily,saw,the,dog]).
% true .

% ?- phrase(sentence, [hat,cat,chased]).
% false.

% ?- phrase(sentence, [silly,lily,got,the,plush,duck]).
% true .