?-op(200, xfx, head).
?-op(200, xfx, tail).
?-op(700, xfx, iss).

head(H, [H|_]).
H head X :- head(X, H).
tail(T, [_|T]).
T tail X :- tail(X, T).

X iss Y :- X is Y.