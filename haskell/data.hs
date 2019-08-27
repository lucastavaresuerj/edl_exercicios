type A = Int 
data Lista = Vazio | Par A Lista
    deriving Show 

list=(Par 1(Par 3 (Par 4(Par 2 (Par 10 Vazio)))))

tamanho :: Lista -> Int
tamanho Vazio     = 0
tamanho (Par _ l) = 1 + tamanho l

soma :: Lista -> Int
soma Vazio     = 0
soma (Par v l) = v + soma l

eh_impar :: Int -> Bool
eh_impar x = (mod x 2) == 1

mult :: Int -> Int -> Int
mult x y =x*y

filter' :: (A->Bool) -> Lista -> Lista
filter' f Vazio     = Vazio
filter' f (Par v l) = if f v then (Par v (filter' f l)) else filter' f l 

foldr' :: (A->b->b) -> Lista -> b -> b
foldr' f Vazio  acc    = acc
foldr' f (Par v l) acc = foldr' f l (f v acc) 

main = do
        print ( soma list )
        print ( tamanho list)
        print (filter' eh_impar list)
        print (foldr' mult list 1 )


