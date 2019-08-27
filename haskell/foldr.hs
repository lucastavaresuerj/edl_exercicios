l1 = [1,2..10]

fold' :: (a -> b -> b) -> b -> [a] -> b
fold' f acc [] = acc
fold' f acc (e:l) = fold' f (f e acc) l

soma :: Int -> Int -> Int
soma x y = x+y

r = fold' soma 0 l1 

main = print r