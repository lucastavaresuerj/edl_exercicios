 
fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo n = (fibo (n-1) + fibo (n-2))

f = fibo 8

main= print f