type Aluno = (String,Float,Float)
type Sala = [Aluno]

s1 = [("aaa",7,8),("bbb",9,5),("ccc",10,9)]

peganotas :: Aluno -> [Float] -> [Float]
peganotas (s,n1,n2) acc = n1:(n2:acc) 

separa :: Float -> Bool
separa x = x>=8

notas :: [Float]
--notas = foldr peganotas [] s1


notas = filter (\x->x>=8) (foldr peganotas [] s1)
--classe :: Sala

main = do
    print notas
