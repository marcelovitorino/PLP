:- initialization main.

main :- abastecer(Preco), writeln(Preco).

abastecer(Preco) :- read(Alcool), read(Gasolina), read(Litro) -> (
    Alcool >= (Gasolina * 0.70), Preco is Litro * Gasolina;
    Alcool < (Gasolina * 0.70), Preco is Litro * Alcool
    ).













%!betterAlcool(Melhor, Alcool, Gasolina) :- Melhor is (Alcool < (Gasolina * 0,70)).




