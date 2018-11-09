:- initialization main.

main :- read_line_to_codes(user_input, Idealll),
string_to_atom(Idealll, Atom),
atom_number(Atom, Ideal)., read_line_to_codes(user_input, Atualll),
string_to_atom(Atualll, Atom),
atom_number(Atom, Atual). -> (
        (Ideal - Atual) == 0, writeln("OK");
        writeln("ADEQUADO"), aproximacao(Ideal,Ultima,Atual), Ultima is Ideal - Atual.
        ).


aproximacao(Ideal,Ultima,NovoAtual) :- read_line_to_codes(user_input, NovoAtualll),
string_to_atom(NovoAtualll, Atom),
atom_number(Atom, NovoAtual). -> (
    (Ideal - NovoAtual) == 0, writeln("OK");
    (Ideal - NovoAtual) <= Ultima, writeln("ADEQUADO"), aproximacao(Ideal,Ultima,NovoAtual), Ultima is (Ideal - NovoAtual).;
    (Ideal - NovoAtual) > Ultima, writeln("PROIBIDO"), aproximacao(Ideal,Ultima,NovoAtual), Ultima is (Ideal - NovoAtual).
).




