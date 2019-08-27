/*Arvore genealogica dos deuses da mitologia grega*/

/*CRIADORES*/
criou(chaos, [tartaro, gaia, eros, nix, erebo, anteros]).
criou(gaia, uranos).
criou(gaia, gaiagaia).
criou([gaia, uranos], 
    [ciclopes, cronos, reia, febe, ceos, 
    hiperiao, japeto, oceano, tetis, equidna]).
criou([reia,cronos],[hestia, demeter, hera, hades, poseidon, zeus] ).
criou([zeus,demeter],[persefone, zagreu]).
criou([zeus,hera],[ares, ilitia, eris, hebe, hefesto, angelo]).
criou([zeus,leto],[apolo, artemis]).
criou([a],b).
criou(0,1).
criou(1,2).
criou(2,4).

/*soma(X,Y):-gerou(X,Y), Y is X+X.*/

/*CASO SEJA UMA LISTA, USAMOS ESSES PREDICADOS*/
gerou(X, Y) :- criou(X,Y).
gerou(X, Y) :- 
    criou(X, Z),
    member(Y, Z).  
gerou(X, Y) :- 
    criou(Z, W), 
    member(X, Z),
    member(Y, W).
parente(X, Y) :- gerou(X, Y).
parente(X, Y) :- criou(X,Z) , gerou(Z,Y).

/*CASO SEJA APENAS TERMOS, USAMOS ESSES PREDICADOS*/

permutation([], []).
permutation(List, [Element | Permutation]) :-
select(Element, List, Rest),
permutation(Rest, Permutation).
