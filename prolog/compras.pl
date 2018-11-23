:-initialization main.


menor(Ele, N, Menor):-K is N - 1 ->( N =< 0, Menor is Ele, !;
read(prox) ->(prox < Ele, menor(prox, K, Menor);
 menor(Ele, K, Menor))).


rec(0, Troco):- writeln(Troco),!.
rec(N, Troco):- K is N - 1, read(Budget), read(Items),Q is Items - 1, read(FirstItem),
menor(FirstItem, Q, Menor),Change is mod(Budget, Menor), T is Troco + Change,  rec(K, T).


main :- read(Iterations), rec(Iterations, 0).


