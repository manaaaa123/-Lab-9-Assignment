% AND truth table
and(true,true,true).
and(true,false,false).
and(false,true,false).
and(false,false,false).

% OR truth table
or(true,true,true).
or(true,false,true).
or(false,true,true).
or(false,false,false).

% Negation
neg(true,false).
neg(false,true).

% (A AND B) OR (NOT A AND NOT B)
% logicGate(I1,I2,Output)
logicGate(A,B,O) :-
    and(A,B,X),
    neg(A,Y),
    neg(B,Z),
    and(Y,Z,W),
    or(X,W,O).



/*
72 ?- logicGate(true,true,O).
O = true.

73 ?- logicGate(true,false,O).
O = false.

74 ?- logicGate(false,true,O).
O = false.

75 ?- logicGate(false,false,O).
O = true.

*/