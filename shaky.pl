connected(room1, room2).
connected(room2, room3).
connected(room3, room4).

connected(room5, room6).
connected(room5, room7).

path(X, X).
%% path(X, Y):-
%%     connected(X, Y).
path(X, Z):-
    connected(Y, Z),
    path(X, Y).

inRoom(shaky, room1).
inRoom(redBox, room4).

inRoom(blueBox, room0).

goTo(Object, RoomY):-
    % append on stack
    inRoom(Object, RoomX),
    path(RoomX, RoomY).

get(Box, Agent):-
    % append on stack
    inRoom(Box, RoomX),
    goTo(Agent, RoomX).
