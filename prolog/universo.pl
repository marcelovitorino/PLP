:-initialization(main).

calc("Terra",1).
calc("Mercurio",0.2408467).
calc("Venus",0.61519726).
calc("Marte",1.8808158).
calc("Jupter",11.862615).
calc("Saturno",29.447498).
calc("Urano",84.016846).
calc("Netuno",164.79132).

terra(Segundos,R):- R is Segundos / 31557600.

calcAnos(Planeta,Segundos,Anos):- terra(Segundos,R),
calc(Planeta,Taxa), Anos is round(R * Taxa).

readString(X):-
    read_line_to_string(user_input, X).

readNum(X):- read_line_to_codes(user_input,Y), string_to_atom(Y, Z), atom_number(Z,X).

main():- readString(Planeta), readNum(Idade), calcAnos(Planeta, Idade, Anos), write(Anos), write(" Anos").