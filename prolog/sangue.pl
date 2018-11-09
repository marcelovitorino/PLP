:- initialization main.

sangueO('o','doar_e_receber').
sangueO('a','doar').
sangueO('b','doar').
sangueO('ab','doar').

sangueA('o','deceber').
sangueA('a','doar_e_receber').
sangueA('b','incompativel').
sangueA('ab','doar').

sangueB('o','receber').
sangueB('a','incompativel').
sangueB('b','doar_e_receber').
sangueB('ab','doar').

sangueAB('o','receber').
sangueAB('a','receber').
sangueAB('b','receber').
sangueAB('ab','doar_e_receber').

sangue(Resposta) :- read(Doador),read(Receptor) -> (
        Doador == 'o', sangueO(Receptor,X), Resposta = X;
        Doador == 'a', sangueA(Receptor,X), Resposta = X;
        Doador == 'b', sangueB(Receptor,X), Resposta = X;
        Doador == 'ab', sangueAB(Receptor,X), Resposta = X
        ).

main :- sangue(Resposta), writeln(Resposta).






