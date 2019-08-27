fatorial(X,R):- X<2, R is 1.
fatorial(X,R):- fatorial(X-1,Y),R is X*Y.
