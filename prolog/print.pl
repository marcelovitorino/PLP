:- initialization main.

imprimeNomeIdade( Nome , Idade ):- write( "Olá " ), write( Nome ),
write( " Legal que você tem " ), write( Idade ), write( " anos." ).


main:- writeln( "Qual seu nome? " ), read( Nome ),writeln( "Qual sua
idade?" ), read( Idade ), imprimeNomeIdade( Nome , Idade ).