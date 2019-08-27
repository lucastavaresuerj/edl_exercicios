type Autores = [String]
type Musica = (String, Int, Int)
type MUA = (String,Autores,Int)

bandas :: [Autores]
bandas = [ ["Gilberto Gil"],
    ["Victor","Leo"],
    ["Gonzagao"],
    ["Claudinho","Bochecha"]
    ]
musicas :: [Musica]
musicas = [ ("Aquele Abraco", 1, 100),
    ("Esperando na Janela", 1, 150),
    ("Borboletas", 2, 120),
    ("Asa Branca", 3, 120),
    ("Assum Preto", 3, 140),
    ("Vem Morena", 3, 200),
    ("Nosso Sonho", 4, 150),
    ("Quero te Encontrar", 4, 100) ]

foldl' :: (a-> b -> b) -> [a] -> b -> b
foldl' f [] acc = acc
foldl' f (e:l) acc = foldl' f l ( f e acc) 

filter' :: (a -> Bool) -> [a] -> [a]
filter' f [] = []
filter' f (e:l) = if (f e) then e:filter' f l else filter' f l

map' :: (a->b) -> [a] -> [b]
map' f [] =[]
map' f (e:l) = f e:map' f l

criaMUA :: Musica -> [MUA] -> [MUA]
criaMUA (m,i,t) ma = (m,autormusica i bandas,t):ma

autormusica :: Int -> [Autores] -> Autores
autormusica 1 (e:l) = e
autormusica n (e:l) = autormusica (n-1) l

transfbanda:: Autores -> String
transfbanda [] = ""
--transfbanda (a:l) = a++","++(transfbanda l)
transfbanda (a:l) = if (l==[]) then a++(transfbanda []) else  a++","++(transfbanda l)



pretyprint :: MUA -> String
pretyprint (m,a,t) = "Nome: " ++ m++"\n" ++"Autores: "++transfbanda a++"\n"++ "Duracao: "++(show t)++"\n"

junta :: String -> String -> String
junta a b = a++"\n"++b

mau =foldl' criaMUA musicas [] 
prepri = map' pretyprint mau 
tudo = foldl' junta prepri ""


main = putStr tudo

--juntar as musicas com os autores usando
--  fold para acumular usando a função criaMUA
--  criaMUA pega uma musica e junta com o seu autor usando autormusica
--  autormusica que pega um indice e retorna os autores
--
--tranformar tudo em strings usando
--  map para tranformar usando pretyprint 
--  pretyprint para formatar como a string vai ficar usando transfbanda para formatar o Autor
--  pega Autor e formata para uma string 
--
--juntar todas as Strings usando
--  fold com um acumulador para strings usando o junta
--  junta pega duas strings e junta, no caso a string e o acumulador

