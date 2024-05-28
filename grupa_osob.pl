% Program Grupa_osob
% Baza wiedzy o grupie ososb i ich upodobaniach
% Definiowane predykaty:
% lubi/2
% opis: lubi(X,Y)-spelniony, gdy, osoba X lubi osobe Y
% jarosz/1
% opis: jarosz(X)-spelniony, gdy X  jest jaroszem
% nie_palacy/1
% opis: nie_palacy(X)-spelniony, gdy X nie pali papierosow.
% lubi_czytac/1
% opis: lubi_czytac(X)-spelniony, gdy X lubi czytac ksiazki
% uprawia_sport/1
% opis: uprawia_sport(X)-spelniony, gdy X uprawia sport
% -----------------------------------------------------------
jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
nie_palacy(ola).
nie_palacy(ewa).
nie_palacy(jan).
lubi_czytac(ola).
lubi_czytac(iza).
lubi_czytac(piotr).
uprawia_sport(ola).
uprawia_sport(jan).
uprawia_sport(piotr).
uprawia_sport(pawel).
lubi(ola,X):-jarosz(X),uprawia_sport(X).
lubi(ewa,X):-nie_palacy(X),jarosz(X).
lubi(iza,X):-lubi_czytac(X).
lubi(iza,X):-uprawia_sport(X),nie_palacy(X).
lubi(jan,X):-uprawia_sport(X).
lubi(piotr,X):-jarosz(X),uprawia_sport(X).
lubi(piotr,X):-lubi_czytac(X).
lubi(pawel,X):-jarosz(X),uprawia_sport(X),lubi_czytac(X).
/*
Program sklada sie z 22 klauzul. 14 faktow i 8 regul.
Program sklada sie z 5 definicji relacji.
*/
