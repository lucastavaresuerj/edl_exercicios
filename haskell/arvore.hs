data Arv = Folha Int | Galho Arv Arv
    deriving Show

arv = (Galho (Galho (Folha 1)(Folha 1)) (Galho (Folha 2)(Folha 2)))    

tamanho :: Arv -> Int
tamanho (Folha _) = 1
tamanho (Galho a1 a2) = (tamanho a1) + (tamanho a2)

main = print ( tamanho arv)
