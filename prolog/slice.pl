:-initialization main.

slice([H|T],Start,End,Result) :-
    sliceAux([H|T],Start,End,Result,0).

sliceAux([H|T],Start,Cont,[H, Cont],Cont).

sliceAux([H|T],Start,End,Result,Cont) :-
    Cont < Start,
    NCont is Cont + 1,
    sliceAux(T,Start,End,Result,NCont).

sliceAux([H|T],Start,End,[H, Cont | Result],Cont) :-
    NCont is Cont + 1,
    sliceAux(T,Start,End,Result,NCont).

% 
% sliceAux([H|T],Start,End,Result,Cont) :-
%     (((Cont < Start); (Cont > End)), sliceAux([T],Start,End,Result,W), W is Cont + 1);
%     ((Cont >= Start, Cont <= End, insereFim(H,Result, Z), insereFim(Cont,Z,X)),
%     (Cont > End, write(X));
%     (Cont <= End, sliceAux([T],Start,End,X,W), W is Cont + 1)).


main :- 
    read(user_input, Lista), 
    read(user_input, Start), 
    read(user_input, End), 
    slice(Lista,Start,End,Result), 
    writeln(Result); 
    writeln('INVALIDO').

