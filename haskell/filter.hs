l1 =[1,2..10]

filter' :: (a -> Bool) -> [a] -> [a]
--filter' f l = [ e | e <- l, f e] 
filter' f [] = []
filter' f (e:l) = if f e 
    then e : filter' f l 
    else filter' f l

impar :: Int -> Bool
impar x= (mod x 2)==1

r = filter' impar l1

main = print r