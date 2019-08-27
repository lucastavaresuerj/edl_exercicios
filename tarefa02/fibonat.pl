fibo(X,Y):-X<2,Y is X.
fibo(X,Y):-fibo(X-1,Z),fibo(X-2,W),Y is (Z+W).
