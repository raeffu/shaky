connected(room1, room2).
connected(room2, room3).
connected(room3, room4).

path(X, Y):-
    %% append([connected(X, Y)], [], Stack),
    connected(X, Y).
path(X, Y):-
    %% append([connected(X, Z)], [path(Z, Y)], Stack),
    connected(X, Z),
    path(Z, Y).

recurse([]).
recurse([H|T]) :-
        writeln(H),
        recurse(T).
