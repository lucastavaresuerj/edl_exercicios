l1 = [1,2,3,4]

map' :: (a->b) -> [a] -> [b]
map' f l = [ f e | e <- l] 
--map' f []= []
--map' f (e:l) = f e : map' f l

duplica :: Int -> Int
duplica x= x*2

r = (\x -> x*2) 2
s = map' duplica l1
--main= print r
main= print s