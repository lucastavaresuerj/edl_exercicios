%fatorial(N, Resultado) :- N<1, Resultado is 1 . % base case
fatorial(0,1).
fatorial(N, Resultado) :- % recursion step
    N1 is N - 1,
    fatorial(N1, Result1),
    Resultado is Result1 * N.