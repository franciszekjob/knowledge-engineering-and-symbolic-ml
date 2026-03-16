% zad 1
elem(X, [X|_]).
 
elem(X, [_|T]) :- 
    elem(X, T).

% zad 2
l([], 0).

l([_|T], L) :- 
    l(T, L1), 
    L is L1 + 1.

% zad 3 (silnia zapamiętuje poprzednie wyniki)
:- dynamic s/2.

s(0, 1).

silnia(N, X) :-
    s(N, X),         
    !.

silnia(N, X) :-
    N > 0,
    N1 is N - 1,
    silnia(N1, X1),
    X is N * X1,
    asserta(s(N, X)).
