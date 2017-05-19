connect(room1, room2).
connect(room2, room3).
connect(room3, room4).

connect(room5, room6).
connect(room5, room7).

connect(X, Y):-
    connect(X, Z),
    connect(Z, Y).

inRoom(shaky, room1).
inRoom(redBox, room4).

inRoom(blueBox, room0).

inRoom(Object, RoomY):-
    % append on stack
    inRoom(Object, RoomX),
    connect(RoomX, RoomY).

get(Box, Agent):-
    % append on stack
    inRoom(Agent, RoomX),
    inRoom(Box, RoomX).
