:- initialization main.
transp('<','--ptr;').
transp('>','++ptr;').
transp('+','++*ptr;').
transp('-','--*ptr;').
transp('.','putchar(*ptr);').
transp(',','*ptr=getchar();').
transp('[','while (*ptr) {').
transp(']','}').
converte([]) :- nl, halt(0).
converte([H|T]) :- 
    transp(H, X), write(X), converte(T).
main :- 
    read(Entrada), atom_chars(Entrada,Lista), converte(Lista).