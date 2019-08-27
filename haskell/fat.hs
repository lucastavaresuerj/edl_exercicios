
fat :: Int -> Int
fat 0 = 1
fat n = fat(n-1) * n

main = print (fat 21)
