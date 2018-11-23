:- initialization(main).
deletaUltimo([_],[]).
deletaUltimo([H|T], Saida):- deletaUltimo(T, Saida2), append([H], Saida2, Saida).
shift(Entrada,Shifted):-deletaUltimo(Entrada,Saida), append([0],Saida,Shifted).
getHead([H|_], H).
myXor(A,B,Xor):- (A == B)->(Xor is 0); Xor is 1.
xor([],[],[]).
xor([H|T], [H2|T2], Saida):- xor(T,T2,Saida2),myXor(H,H2,Xor), append([Xor],Saida2,Saida).
checkIsGray(Bin,Gray):- shift(Bin,Shifted), xor(Bin,Shifted,Xor), (Xor == Gray)->(writeln("is gray"));writeln("not gray").
main :- read(Bin), read(Gray), checkIsGray(Bin,Gray).


