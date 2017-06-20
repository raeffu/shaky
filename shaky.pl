connected(room1, room2).
connected(room2, room3).
connected(room3, room4).

connected(room5, room6).
connected(room5, room7).

inRoom(shaky, room1).
inRoom(yellowBox, room2).
inRoom(greenBox, room4).
inRoom(redBox, room4).

inRoom(orangeBox, room5).

inRoom(blueBox, room0).

%% path(X, X).
path(X, Y):-
    connected(X, Y).

path(X, Y):-
    connected(X, Z),
    path(Z, Y).

goTo(Agent, RoomY):-
    inRoom(Agent, RoomX),
    path(RoomX, RoomY).

get(Box, Agent):-
    inRoom(Box, RoomX),
    goTo(Agent, RoomX).

put(Box, Agent, RoomZ):-
    get(Box, Agent),
    goTo(Agent, RoomZ).
