type Autores = [String]
type Musica = (String, Int, Int)

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

map' :: (a->b) -> [a] -> [b]
map' f [] = []
map' f (e:l) = f e : map' f l

selectNM :: Musica -> String
selectNM (m,_,_)= m

nomemusica = map' selectNM musicas

main = print nomemusica