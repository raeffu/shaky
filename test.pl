parent(thomas,robert).
parent(thomas,lisa).
parent(heike,robert).
parent(robert,anna).
parent(robert,petra).
parent(petra,jakob).
parent(sabine, petra).
parent(peter, petra).
female(heike).
female(lisa).
female(anna).
female(petra).
female(sabine).
male(peter).
male(thomas).
male(robert).
male(jakob).

mother(M,C):-
    parent(M,C),
    female(M).

sibling(B,S):-
    parent(X,B),
    parent(X,S).

brother-and-sister(B,S):-
    parent(X,B),
    parent(X,S),
    male(B),
    female(S).

grandmother(G,C):-
    mother(G,M),
    parent(M,C).

ancestor(A,D):-
    parent(A,D); % ; = disjunction (OR)
    parent(A,X), % , = conjunction (AND)
    ancestor(X,D).
