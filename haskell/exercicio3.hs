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

foldr' :: (a-> b -> b) -> b -> [a] -> b
foldr' f acc [] = acc
foldr' f acc (e:l) = foldr' f (f e acc) l

maximo :: Musica -> Int -> Int
maximo (_,_,t) n = max t n

tempomax = foldr' maximo 0 musicas

main = print tempomax